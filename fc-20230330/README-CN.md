[English](README.md) | 简体中文

![](https://aliyunsdk-pages.alicdn.com/icons/AlibabaCloud.svg)

## Alibaba Cloud FC SDK for Swift

## 依赖

- iOS 13.3+ / macOS 10.15+
- Xcode 11.3+
- Swift 5.6

## 安装

### Carthage

要使用 [Carthage](https://github.com/Carthage/Carthage) 将 `AlibabacloudFC20230330` 集成到你的 Xcode 项目中，需要在 `Cartfile` 中定义以下内容:

```ogdl
github "alibabacloud-sdk-swift/fc-20230330" "4.4.1"
```

### Swift 包管理工具

要使用 [Swift Package Manager](https://swift.org/package-manager/) 将 `AlibabacloudFC20230330` 集成到你的 Xcode 项目中，请将 `AlibabacloudFC20230330` 添加至你的 `Package.swift` 文件的 dependencies 数组内容中:

```swift
dependencies: [
    .package(url: "https://github.com/alibabacloud-sdk-swift/fc-20230330.git", from: "4.4.1")
]
```

另外，还需要在 `target` 的 `dependencies` 中添加 `"AlibabacloudFC20230330"`，如下：

```swift
.target(
    name: "<your-project-name>",
    dependencies: [
        "AlibabacloudFC20230330",
    ]),
```

## 问题

[提交 Issue](https://github.com/alibabacloud-sdk-swift/fc-20230330/issues/new)，不符合指南的问题可能会立即关闭。

## 发行说明

每个版本的详细更改记录在[发行说明](./ChangeLog.txt)中。

## 相关

* [开发者门户](https://next.api.aliyun.com/home)
* [最新源码](https://github.com/alibabacloud-sdk-swift/fc-20230330)

## 许可证

[Apache-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Copyright (c) 2009-present, Alibaba Cloud All rights reserved.
