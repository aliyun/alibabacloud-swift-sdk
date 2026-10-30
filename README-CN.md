# Alibaba Cloud SDK for Swift

[English](README.md) | 简体中文

Alibaba Cloud SDK for Swift 是阿里云 OpenAPI V2.0 的 Swift SDK。本仓库包含各产品的生成代码；使用 Swift Package Manager 时，请选择对应产品的独立包。以下以 ECS 的 `DescribeRegions` 接口为例。

## 环境要求

| 平台 | Swift 工具链 | 系统要求 |
| --- | --- | --- |
| macOS | 5.6 或更高 | macOS 10.15 或更高 |
| Linux | 5.9 或更高 | 使用支持该 Swift 工具链的 Linux 发行版 |

使用 `swift --version` 检查工具链。以下示例基于 Swift 5.9 的包清单。

## 创建项目

在 macOS 或 Linux 上创建一个新的可执行项目：

```sh
mkdir -p ecs-example/Sources/ECSExample
cd ecs-example
```

创建 `Package.swift`：

```swift
// swift-tools-version: 5.9
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

已有项目使用 Linux 时，请确保 Tea、OpenAPI 和 TeaUtils 依赖解析到 1.1.0 或更高版本；如果 `Package.resolved` 锁定了旧版本，请更新依赖。

## 配置凭证

使用有 ECS `DescribeRegions` 权限的 RAM 身份或临时 STS 凭证，运行前在当前终端设置环境变量，不要将凭证写入代码或提交到仓库：

```sh
export ALIBABA_CLOUD_ACCESS_KEY_ID='<access-key-id>'
export ALIBABA_CLOUD_ACCESS_KEY_SECRET='<access-key-secret>'
# 使用 STS 临时凭证时也需要设置：
export ALIBABA_CLOUD_SECURITY_TOKEN='<security-token>'
```

示例使用杭州地域的公网 endpoint；实际使用时请按产品和地域选择 endpoint。更多信息请参阅 [Endpoint 文档](https://help.aliyun.com/zh/openapi/endpoints?spm=a2c4g.11186623.0.0.75ce32e8VIqmhF)。

## macOS 示例

将以下代码保存为 `Sources/ECSExample/App.swift`：

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
        print(response.toMap())
    }
}

@main
struct App {
    static func main() async throws {
        try await Client.main()
    }
}
```

## Linux 示例

将以下代码保存为 `Sources/ECSExample/App.swift`：

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
        print(response.toMap())
    }
}

@main
struct App {
    static func main() async throws {
        try await Client.main()
    }
}
```

在项目目录运行 `swift run ECSExample`。如果调用失败，请检查凭证权限、endpoint、网络连接和依赖版本。其他产品的包名、版本和 API 参数请参阅本仓库对应产品目录及 [OpenAPI 开发者门户](https://next.api.aliyun.com/)。

## 许可证

[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
