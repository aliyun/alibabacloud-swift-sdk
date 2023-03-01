English | [简体中文](README-CN.md)

![](https://aliyunsdk-pages.alicdn.com/icons/AlibabaCloud.svg)

## Alibaba Cloud FC-Open SDK for Swift

## Requirements

- iOS 13.3+ / macOS 10.15+
- Xcode 11.3+
- Swift 5.6

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate `AlibabacloudFCOpen20210406` into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'AlibabacloudFCOpen20210406', '~> 2.0.2'
```

### Carthage

To integrate `AlibabacloudFCOpen20210406` into your Xcode project using [Carthage](https://github.com/Carthage/Carthage), specify it in your `Cartfile`:

```ogdl
github "alibabacloud-sdk-swift/fc-open-20210406" "2.0.2"
```

### Swift Package Manager

To integrate `AlibabacloudFCOpen20210406` into your Xcode project using [Swift Package Manager](https://swift.org/package-manager/) , adding `AlibabacloudFCOpen20210406` to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/alibabacloud-sdk-swift/fc-open-20210406.git", from: "2.0.2")
]
```

In addition, you also need to add `"AlibabacloudFCOpen20210406"` to the `dependencies` of the `target`, as follows:

```swift
.target(
    name: "<your-project-name>",
    dependencies: [
        "AlibabacloudFCOpen20210406",
    ])
```

## Issues

[Opening an Issue](https://github.com/alibabacloud-sdk-swift/fc-open-20210406/issues/new), Issues not conforming to the guidelines may be closed immediately.

## Changelog

Detailed changes for each release are documented in the [release notes](./ChangeLog.txt).

## References

* [OpenAPI Developer Portal](https://next.api.alibabacloud.com/home)
- [Latest Release](https://github.com/alibabacloud-sdk-swift/fc-open-20210406)

## License

[Apache-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Copyright (c) 2009-present, Alibaba Cloud All rights reserved.
