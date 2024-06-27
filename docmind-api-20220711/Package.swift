// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
        name: "AlibabacloudDocmindApi20220711",
        platforms: [.macOS(.v10_15),
                    .iOS(.v13),
                    .tvOS(.v13),
                    .watchOS(.v6)],
        products: [
            .library(
                    name: "AlibabacloudDocmindApi20220711",
                    targets: ["AlibabacloudDocmindApi20220711"])
        ],
        dependencies: [
            // Dependencies declare other packages that this package depends on.
            .package(url: "https://github.com/aliyun/tea-swift.git", from: "1.0.0"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/tea-utils", from: "1.0.5"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/tea-oss-sdk", from: "1.0.0"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/openplatform-20191219", from: "1.0.0"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/tea-oss-utils", from: "1.0.1"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/tea-fileform", from: "1.0.3"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/darabonba-openapi", from: "1.0.5"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/openapi-util", from: "1.0.1"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/endpoint-util", from: "1.0.0"),
        ],
        targets: [
            .target(
                    name: "AlibabacloudDocmindApi20220711",
                    dependencies: [
                        .product(name: "Tea", package: "tea-swift"),
                        .product(name: "TeaUtils", package: "tea-utils"),
                        .product(name: "AlibabaCloudOssSdk", package: "tea-oss-sdk"),
                        .product(name: "AlibabacloudOpenPlatform20191219", package: "openplatform-20191219"),
                        .product(name: "AlibabaCloudOSSUtil", package: "tea-oss-utils"),
                        .product(name: "TeaFileForm", package: "tea-fileform"),
                        .product(name: "AlibabacloudOpenApi", package: "darabonba-openapi"),
                        .product(name: "AlibabaCloudOpenApiUtil", package: "openapi-util"),
                        .product(name: "AlibabacloudEndpointUtil", package: "endpoint-util")
                    ]),
        ],
        swiftLanguageVersions: [.v5]
)
