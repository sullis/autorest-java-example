setup:
	npm install -g autorest
	autorest --latest

yaml:
	mkdir -p src/main/resources
	cd src/main/resources && curl -O https://raw.githubusercontent.com/Azure/autorest/master/Samples/1b-code-generation-multilang/petstore.yaml

codegen:
	autorest --input-file=src/main/resources/petstore.yaml --java --output-folder=. --namespace=com.example.petstore
