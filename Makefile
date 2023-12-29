proto:
	mkdir -p lib/generated/protos
	protoc --dart_out=grpc:lib/generated/protos -Iprotos ./quarterback-protos/protos/*.proto google/protobuf/timestamp.proto --proto_path=./quarterback-protos/protos

splash:
	dart run flutter_native_splash:create