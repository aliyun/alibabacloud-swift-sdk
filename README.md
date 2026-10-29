English | [简体中文](README-CN.md)

# Alibaba Cloud SDK for Swift

The Alibaba Cloud SDK for Swift provides access to Alibaba Cloud OpenAPI V2.0. Each product is published as a separate Swift package. This guide uses the ECS `DescribeRegions` API as an example.

## Requirements

| Platform | Swift | Operating system |
| --- | --- | --- |
| macOS | 5.7 or later | macOS 10.15 or later |
| Linux | 5.9 or later | A Linux distribution supported by the Swift toolchain |

Check your toolchain with `swift --version`. The example package below uses Swift tools version 5.7; use Swift 5.9 or later on Linux. Linux requires Tea, OpenAPI, and TeaUtils 1.1.0 or later. If your project locks older versions, update the dependencies and check `Package.resolved`.

## Create a project

Create a new executable project on macOS or Linux:

```sh
mkdir -p ecs-example/Sources/ECSExample
cd ecs-example
```

Create `Package.swift`:

```swift
// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "ECSExample",
    platforms: [.macOS(.v10_15)],
    dependencies: [
        .package(url: "https://github.com/alibabacloud-sdk-swift/ecs-20140526.git", from: "5.11.8"),
        .package(url: "https://github.com/aliyun/tea-swift.git", from: "1.1.0"),
        .package(url: "https://github.com/alibabacloud-sdk-swift/darabonba-openapi.git", from: "1.1.0"),
        .package(url: "https://github.com/alibabacloud-sdk-swift/tea-utils.git", from: "1.1.0")
    ],
    targets: [
        .executableTarget(name: "ECSExample", dependencies: [
            .product(name: "AlibabacloudEcs20140526", package: "ecs-20140526"),
            .product(name: "AlibabacloudOpenApi", package: "darabonba-openapi"),
            .product(name: "TeaUtils", package: "tea-utils")
        ])
    ]
)
```

Save the example for your platform as `Sources/ECSExample/App.swift`.

## Configure credentials

Use a RAM identity with permission to call ECS `DescribeRegions`, or temporary STS credentials. Set the following environment variables in your terminal; do not hard-code credentials or commit them to a repository:

```sh
export ALIBABA_CLOUD_ACCESS_KEY_ID='<access-key-id>'
export ALIBABA_CLOUD_ACCESS_KEY_SECRET='<access-key-secret>'
# Also set this when using temporary STS credentials:
export ALIBABA_CLOUD_SECURITY_TOKEN='<security-token>'
```

The examples use the public endpoint for the Hangzhou region. Select an endpoint for your product and region; see [Endpoints](https://www.alibabacloud.com/help/en/openapi/endpoints) for details.

## macOS example

```swift
import Foundation
import AlibabacloudEcs20140526
import AlibabacloudOpenApi
import TeaUtils

enum Client {
    static func createClient() throws -> AlibabacloudEcs20140526.Client {
        let env = ProcessInfo.processInfo.environment
        guard let id = env["ALIBABA_CLOUD_ACCESS_KEY_ID"], !id.isEmpty,
              let secret = env["ALIBABA_CLOUD_ACCESS_KEY_SECRET"], !secret.isEmpty else {
            fatalError("Set ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET")
        }
        let config = AlibabacloudOpenApi.Config([
            "accessKeyId": id,
            "accessKeySecret": secret
        ])
        config.securityToken = env["ALIBABA_CLOUD_SECURITY_TOKEN"]
        config.endpoint = "ecs.cn-hangzhou.aliyuncs.com"
        return try AlibabacloudEcs20140526.Client(config)
    }

    static func main() async throws {
        let client = try createClient()
        let request = AlibabacloudEcs20140526.DescribeRegionsRequest([:])
        let runtime = TeaUtils.RuntimeOptions([:])
        let response = try await client.describeRegionsWithOptions(request, runtime)
        print("Request ID: \(response.body?.requestId ?? "")")
    }
}

@main
struct App {
    static func main() async throws {
        try await Client.main()
    }
}
```

## Linux example

```swift
import Foundation
import AlibabacloudEcs20140526
import AlibabacloudOpenApi
import TeaUtils

enum Client {
    static func createClient() throws -> AlibabacloudEcs20140526.Client {
        let env = ProcessInfo.processInfo.environment
        guard let id = env["ALIBABA_CLOUD_ACCESS_KEY_ID"], !id.isEmpty,
              let secret = env["ALIBABA_CLOUD_ACCESS_KEY_SECRET"], !secret.isEmpty else {
            fatalError("Set ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET")
        }
        let config = AlibabacloudOpenApi.Config([
            "accessKeyId": id,
            "accessKeySecret": secret
        ])
        config.securityToken = env["ALIBABA_CLOUD_SECURITY_TOKEN"]
        config.endpoint = "ecs.cn-hangzhou.aliyuncs.com"
        return try AlibabacloudEcs20140526.Client(config)
    }

    static func main() async throws {
        let client = try createClient()
        let request = AlibabacloudEcs20140526.DescribeRegionsRequest([:])
        let runtime = TeaUtils.RuntimeOptions([:])
        let response = try await client.describeRegionsWithOptions(request, runtime)
        print("Request ID: \(response.body?.requestId ?? "")")
    }
}

@main
struct App {
    static func main() async throws {
        try await Client.main()
    }
}
```

Run `swift run ECSExample` in the project directory. If the call fails, check the credentials, permissions, endpoint, network connection, and dependency versions. For other products, see their directories in this repository and the [OpenAPI Developer Portal](https://api.alibabacloud.com/).

## License

[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
