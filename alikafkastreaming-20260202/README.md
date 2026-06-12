English | [简体中文](README-CN.md)

![](https://aliyunsdk-pages.alicdn.com/icons/AlibabaCloud.svg)

## Alibaba Cloud AlikafkaStreaming SDK for Swift

## Requirements

- iOS 13.3+ / macOS 10.15+
- Xcode 11.3+
- Swift 5.6

## Installation

### Carthage

To integrate `AlibabacloudAlikafkaStreaming20260202` into your Xcode project using [Carthage](https://github.com/Carthage/Carthage), specify it in your `Cartfile`:

```ogdl
github "alibabacloud-sdk-swift/alikafkastreaming-20260202" "1.0.0"
```

### Swift Package Manager

To integrate `AlibabacloudAlikafkaStreaming20260202` into your Xcode project using [Swift Package Manager](https://swift.org/package-manager/) , adding `AlibabacloudAlikafkaStreaming20260202` to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/alibabacloud-sdk-swift/alikafkastreaming-20260202.git", from: "1.0.0")
]
```

In addition, you also need to add `"AlibabacloudAlikafkaStreaming20260202"` to the `dependencies` of the `target`, as follows:

```swift
.target(
    name: "<your-project-name>",
    dependencies: [
        "AlibabacloudAlikafkaStreaming20260202",
    ])
```

## Issues

[Opening an Issue](https://github.com/alibabacloud-sdk-swift/alikafkastreaming-20260202/issues/new), Issues not conforming to the guidelines may be closed immediately.

## Changelog

Detailed changes for each release are documented in the [release notes](./ChangeLog.txt).

## References

* [OpenAPI Developer Portal](https://next.api.alibabacloud.com/home)
- [Latest Release](https://github.com/alibabacloud-sdk-swift/alikafkastreaming-20260202)

## License

[Apache-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Copyright (c) 2009-present, Alibaba Cloud All rights reserved.
