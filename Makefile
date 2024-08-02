pullpb:
	git submodule update --remote --init --recursive

proto:
	mkdir -p lib/generated/protos
	protoc --dart_out=grpc:lib/generated/protos -Iprotos ./quarterback-protos/protos/*.proto google/protobuf/timestamp.proto --proto_path=./quarterback-protos/protos

splash:
	dart run flutter_native_splash:create

icon:
	dart run flutter_launcher_icons

build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs