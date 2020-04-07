printf 'Removing generated files.\n\n'
rm -rf generated/Agrirouter 

printf 'Create folders.\n\n'
mkdir generated
mkdir generated/Agrirouter
mkdir generated/Agrirouter/TMT


printf 'Generating files | TMT\n\n' 
protoc -Igoogle/protobuf -Iagrirouter/protobuf/ --csharp_out=generated/Agrirouter/TMT agrirouter/protobuf/tmt/*.proto

printf 'Exchange files from the solution.\n\n'
rm -rf AgrirouterTMTProtobufDefinitions/AgrirouterTMTProtobufDefinitions/Agrirouter
mv generated/Agrirouter AgrirouterTMTProtobufDefinitions/AgrirouterTMTProtobufDefinitions

printf 'Clean up.\n\n'
rm -rf generated
