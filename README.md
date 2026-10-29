# Alibaba Cloud SDK for Swift

Alibaba Cloud SDK for Swift 是阿里云 OpenAPI V2.0 的 Swift SDK。本仓库包含各产品的生成代码；通过 Swift Package Manager 接入时，请选择对应产品的独立包。以下以 ECS 的 `DescribeRegions` 接口为例。

## 环境要求

| 平台 | Swift 工具链 | 系统要求 |
| --- | --- | --- |
| macOS | 建议 5.9 或更高 | macOS 10.15 或更高 |
| Linux | 5.9 或更高 | 使用支持该 Swift 工具链的 Linux 发行版 |

示例所用 ECS SDK 和 [Tea 1.1.0](https://github.com/aliyun/tea-swift/blob/1.1.0/Package.swift) 的清单声明 Swift tools 5.6，但 ECS 生成代码使用了 Swift 5.7 引入的语法，不能仅凭清单推断 Swift 5.6 可用。Tea 在 Linux 上明确要求 Swift 5.9 或更高。具体产品及其依赖可能有不同要求，请检查对应包的 `Package.swift`。Linux 需要解析到支持 Linux 的基础依赖；下面的示例将 Tea、OpenAPI 和 TeaUtils 的最低版本设为 1.1.0。已有项目若锁定了旧版本，请更新依赖并检查 `Package.resolved`。SDK 包使用 Swift 5 语言模式；使用 Swift 6 工具链不代表已验证 Swift 6 严格并发模式。

用 `swift --version` 检查工具链。以下完整示例的 `Package.swift` 使用 Swift 5.9，因此在两个平台上运行示例均需要 Swift 5.9 或更高版本。

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

将下面适用于目标平台的示例保存为 `Sources/ECSExample/App.swift`。两个示例可以互换运行：macOS 示例使用 ECS 产品客户端，Linux 示例展示通用 OpenAPI 客户端。

## 配置凭证

使用有 ECS `DescribeRegions` 权限的 RAM 身份或临时 STS 凭证，运行前在当前终端设置环境变量，不要将凭证写入代码或提交到仓库：

```sh
export ALIBABA_CLOUD_ACCESS_KEY_ID='<access-key-id>'
export ALIBABA_CLOUD_ACCESS_KEY_SECRET='<access-key-secret>'
# 使用 STS 临时凭证时也需要设置：
export ALIBABA_CLOUD_SECURITY_TOKEN='<security-token>'
```

使用长期 AccessKey 时不要设置 `ALIBABA_CLOUD_SECURITY_TOKEN`。示例使用杭州地域的公网 endpoint；实际使用时请按产品和地域选择 endpoint。

## macOS 示例：ECS 产品客户端

```swift
import Foundation
import AlibabacloudOpenApi
import AlibabacloudEcs20140526

@main
struct App {
    static func main() async throws {
        let env = ProcessInfo.processInfo.environment
        guard let id = env["ALIBABA_CLOUD_ACCESS_KEY_ID"], !id.isEmpty,
              let secret = env["ALIBABA_CLOUD_ACCESS_KEY_SECRET"], !secret.isEmpty else {
            fatalError("Set ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET")
        }
        let config = Config(["accessKeyId": id, "accessKeySecret": secret])
        config.securityToken = env["ALIBABA_CLOUD_SECURITY_TOKEN"]
        config.endpoint = "ecs.cn-hangzhou.aliyuncs.com"
        let client = try AlibabacloudEcs20140526.Client(config)
        let response = try await client.describeRegions(DescribeRegionsRequest())
        print("Request ID: \(response.body?.requestId ?? "")")
        for region in response.body?.regions?.region ?? [] {
            print(region.regionId ?? "")
        }
    }
}
```

## Linux 示例：通用 OpenAPI 客户端

```swift
import Foundation
import AlibabacloudOpenApi
import TeaUtils

@main
struct App {
    static func main() async throws {
        let env = ProcessInfo.processInfo.environment
        guard let id = env["ALIBABA_CLOUD_ACCESS_KEY_ID"], !id.isEmpty,
              let secret = env["ALIBABA_CLOUD_ACCESS_KEY_SECRET"], !secret.isEmpty else {
            fatalError("Set ALIBABA_CLOUD_ACCESS_KEY_ID and ALIBABA_CLOUD_ACCESS_KEY_SECRET")
        }
        let config = Config(["accessKeyId": id, "accessKeySecret": secret])
        config.securityToken = env["ALIBABA_CLOUD_SECURITY_TOKEN"]
        config.endpoint = "ecs.cn-hangzhou.aliyuncs.com"
        let client = try AlibabacloudOpenApi.Client(config)
        let params = Params([
            "action": "DescribeRegions", "version": "2014-05-26",
            "protocol": "HTTPS", "method": "POST", "pathname": "/",
            "authType": "AK", "style": "RPC",
            "reqBodyType": "formData", "bodyType": "json"
        ])
        let response = try await client.callApi(params, OpenApiRequest([:]), RuntimeOptions([:]))
        if let body = response["body"] as? [String: Any] {
            print("Request ID: \(body["RequestId"] ?? "")")
            print("Regions: \(body["Regions"] ?? "")")
        }
    }
}
```

在项目目录运行 `swift run ECSExample`。如果调用失败，请检查凭证权限、endpoint、网络连接和依赖版本。其他产品的包名、版本和 API 参数请参阅本仓库对应产品目录及 [OpenAPI 开发者门户](https://next.api.aliyun.com/)。

## 许可证

[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
