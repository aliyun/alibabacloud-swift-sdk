English | [简体中文](README-CN.md)

![](https://aliyunsdk-pages.alicdn.com/icons/AlibabaCloud.svg)

## Alibaba Cloud AiMiaoBi SDK for Swift

## Requirements

- iOS 13.3+ / macOS 10.15+
- Xcode 11.3+
- Swift 5.6

## Installation

### Carthage

To integrate `AlibabacloudAiMiaoBi20230801` into your Xcode project using [Carthage](https://github.com/Carthage/Carthage), specify it in your `Cartfile`:

```ogdl
github "alibabacloud-sdk-swift/aimiaobi-20230801" "1.39.1"
```

### Swift Package Manager

To integrate `AlibabacloudAiMiaoBi20230801` into your Xcode project using [Swift Package Manager](https://swift.org/package-manager/) , adding `AlibabacloudAiMiaoBi20230801` to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/alibabacloud-sdk-swift/aimiaobi-20230801.git", from: "1.39.1")
]
```

In addition, you also need to add `"AlibabacloudAiMiaoBi20230801"` to the `dependencies` of the `target`, as follows:

```swift
.target(
    name: "<your-project-name>",
    dependencies: [
        "AlibabacloudAiMiaoBi20230801",
    ])
```

## Issues

[Opening an Issue](https://github.com/alibabacloud-sdk-swift/aimiaobi-20230801/issues/new), Issues not conforming to the guidelines may be closed immediately.

## Changelog

Detailed changes for each release are documented in the [release notes](./ChangeLog.txt).

## References

* [OpenAPI Developer Portal](https://next.api.alibabacloud.com/home)
- [Latest Release](https://github.com/alibabacloud-sdk-swift/aimiaobi-20230801)

## License

[Apache-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Copyright (c) 2009-present, Alibaba Cloud All rights reserved.
