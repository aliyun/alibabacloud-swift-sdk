// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
        name: "AlibabacloudSls20201230",
        platforms: [.macOS(.v10_15),
                    .iOS(.v13),
                    .tvOS(.v13),
                    .watchOS(.v6)],
        products: [
            .library(
                    name: "AlibabacloudSls20201230",
                    targets: ["AlibabacloudSls20201230"])
        ],
        dependencies: [
            // Dependencies declare other packages that this package depends on.
            .package(url: "https://github.com/aliyun/tea-swift.git", from: "1.0.3"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/tea-utils", from: "1.0.6"),
            .package(url: "https://github.com/alibabacloud/alibabacloud_GatewaySLS.git", from: "0.1.11"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/darabonba-openapi", from: "1.0.7"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/openapi-util", from: "1.0.1"),
        ],
        targets: [
            .target(
                    name: "AlibabacloudSls20201230",
                    dependencies: [
                        .product(name: "Tea", package: "tea-swift"),
                        .product(name: "TeaUtils", package: "tea-utils"),
                        .product(name: "alibabacloud_GatewaySLS", package: "alibabacloud_GatewaySLS"),
                        .product(name: "AlibabacloudOpenApi", package: "darabonba-openapi"),
                        .product(name: "AlibabaCloudOpenApiUtil", package: "openapi-util")
                    ]),
        ],
        swiftLanguageVersions: [.v5]
)
