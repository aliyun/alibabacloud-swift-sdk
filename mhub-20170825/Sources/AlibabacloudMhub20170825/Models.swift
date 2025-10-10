import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAppRequest : Tea.TeaModel {
    public var bundleId: String?

    public var encodedIcon: String?

    public var industryId: String?

    public var name: String?

    public var packageName: String?

    public var productId: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.encodedIcon != nil {
            map["EncodedIcon"] = self.encodedIcon!
        }
        if self.industryId != nil {
            map["IndustryId"] = self.industryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.packageName != nil {
            map["PackageName"] = self.packageName!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BundleId"] as? String {
            self.bundleId = value
        }
        if let value = dict["EncodedIcon"] as? String {
            self.encodedIcon = value
        }
        if let value = dict["IndustryId"] as? String {
            self.industryId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PackageName"] as? String {
            self.packageName = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public class AppInfo : Tea.TeaModel {
        public var appKey: String?

        public var bundleId: String?

        public var createTime: String?

        public var description_: String?

        public var modifyTime: String?

        public var name: String?

        public var packageName: String?

        public var productId: Int32?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.bundleId != nil {
                map["BundleId"] = self.bundleId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.packageName != nil {
                map["PackageName"] = self.packageName!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppKey"] as? String {
                self.appKey = value
            }
            if let value = dict["BundleId"] as? String {
                self.bundleId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PackageName"] as? String {
                self.packageName = value
            }
            if let value = dict["ProductId"] as? Int32 {
                self.productId = value
            }
            if let value = dict["Type"] as? Int32 {
                self.type = value
            }
        }
    }
    public var appInfo: CreateAppResponseBody.AppInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInfo != nil {
            map["AppInfo"] = self.appInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInfo"] as? [String: Any?] {
            var model = CreateAppResponseBody.AppInfo()
            model.fromMap(value)
            self.appInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProductRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreateProductResponseBody : Tea.TeaModel {
    public var productId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAppRequest : Tea.TeaModel {
    public var appKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
    }
}

public class DeleteAppResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteProductRequest : Tea.TeaModel {
    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
    }
}

public class DeleteProductResponseBody : Tea.TeaModel {
    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDashboardRequest : Tea.TeaModel {
    public var appKey: String?

    public var appType: Int32?

    public var appVersion: String?

    public var endTime: Int64?

    public var keyword: String?

    public var proxyAction: String?

    public var serviceName: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.proxyAction != nil {
            map["ProxyAction"] = self.proxyAction!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
        if let value = dict["AppType"] as? Int32 {
            self.appType = value
        }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["ProxyAction"] as? String {
            self.proxyAction = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDashboardResponseBody : Tea.TeaModel {
    public var model: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDashboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDashboardResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDashboardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppsRequest : Tea.TeaModel {
    public var osType: Int32?

    public var page: String?

    public var pageSize: String?

    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OsType"] as? Int32 {
            self.osType = value
        }
        if let value = dict["Page"] as? String {
            self.page = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
    }
}

public class ListAppsResponseBody : Tea.TeaModel {
    public class AppInfos : Tea.TeaModel {
        public class AppInfo : Tea.TeaModel {
            public var appKey: String?

            public var appName: String?

            public var bundleId: String?

            public var encodedIcon: String?

            public var industryId: Int32?

            public var name: String?

            public var packageName: String?

            public var readonly: Bool?

            public var type: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.bundleId != nil {
                    map["BundleId"] = self.bundleId!
                }
                if self.encodedIcon != nil {
                    map["EncodedIcon"] = self.encodedIcon!
                }
                if self.industryId != nil {
                    map["IndustryId"] = self.industryId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.packageName != nil {
                    map["PackageName"] = self.packageName!
                }
                if self.readonly != nil {
                    map["Readonly"] = self.readonly!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppKey"] as? String {
                    self.appKey = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["BundleId"] as? String {
                    self.bundleId = value
                }
                if let value = dict["EncodedIcon"] as? String {
                    self.encodedIcon = value
                }
                if let value = dict["IndustryId"] as? Int32 {
                    self.industryId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PackageName"] as? String {
                    self.packageName = value
                }
                if let value = dict["Readonly"] as? Bool {
                    self.readonly = value
                }
                if let value = dict["Type"] as? Int32 {
                    self.type = value
                }
            }
        }
        public var appInfo: [ListAppsResponseBody.AppInfos.AppInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appInfo != nil {
                var tmp : [Any] = []
                for k in self.appInfo! {
                    tmp.append(k.toMap())
                }
                map["AppInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInfo"] as? [Any?] {
                var tmp : [ListAppsResponseBody.AppInfos.AppInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListAppsResponseBody.AppInfos.AppInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appInfo = tmp
            }
        }
    }
    public var appInfos: ListAppsResponseBody.AppInfos?

    public var requestId: String?

    public var total: Int32?

    public var ubsmsStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInfos != nil {
            map["AppInfos"] = self.appInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.ubsmsStatus != nil {
            map["UbsmsStatus"] = self.ubsmsStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInfos"] as? [String: Any?] {
            var model = ListAppsResponseBody.AppInfos()
            model.fromMap(value)
            self.appInfos = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
        if let value = dict["UbsmsStatus"] as? String {
            self.ubsmsStatus = value
        }
    }
}

public class ListAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAppsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProductsRequest : Tea.TeaModel {
    public var offset: Int32?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productName: String?

    public var searchKeyWord: String?

    public var simple: Bool?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.simple != nil {
            map["Simple"] = self.simple!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["SearchKeyWord"] as? String {
            self.searchKeyWord = value
        }
        if let value = dict["Simple"] as? Bool {
            self.simple = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListProductsResponseBody : Tea.TeaModel {
    public class ProductInfos : Tea.TeaModel {
        public class ProductInfo : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var encodedIcon: String?

            public var industryId: Int32?

            public var name: String?

            public var platforms: String?

            public var productId: Int32?

            public var readonly: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.encodedIcon != nil {
                    map["EncodedIcon"] = self.encodedIcon!
                }
                if self.industryId != nil {
                    map["IndustryId"] = self.industryId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.platforms != nil {
                    map["Platforms"] = self.platforms!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.readonly != nil {
                    map["Readonly"] = self.readonly!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EncodedIcon"] as? String {
                    self.encodedIcon = value
                }
                if let value = dict["IndustryId"] as? Int32 {
                    self.industryId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Platforms"] as? String {
                    self.platforms = value
                }
                if let value = dict["ProductId"] as? Int32 {
                    self.productId = value
                }
                if let value = dict["Readonly"] as? Bool {
                    self.readonly = value
                }
            }
        }
        public var productInfo: [ListProductsResponseBody.ProductInfos.ProductInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productInfo != nil {
                var tmp : [Any] = []
                for k in self.productInfo! {
                    tmp.append(k.toMap())
                }
                map["ProductInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductInfo"] as? [Any?] {
                var tmp : [ListProductsResponseBody.ProductInfos.ProductInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListProductsResponseBody.ProductInfos.ProductInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.productInfo = tmp
            }
        }
    }
    public var productInfos: ListProductsResponseBody.ProductInfos?

    public var requestId: String?

    public var total: Int32?

    public var ubsmsStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.productInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productInfos != nil {
            map["ProductInfos"] = self.productInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.ubsmsStatus != nil {
            map["UbsmsStatus"] = self.ubsmsStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductInfos"] as? [String: Any?] {
            var model = ListProductsResponseBody.ProductInfos()
            model.fromMap(value)
            self.productInfos = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
        if let value = dict["UbsmsStatus"] as? String {
            self.ubsmsStatus = value
        }
    }
}

public class ListProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProductsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAppRequest : Tea.TeaModel {
    public var appKey: String?

    public var bundleId: String?

    public var encodedIcon: String?

    public var industryId: Int32?

    public var name: String?

    public var packageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.encodedIcon != nil {
            map["EncodedIcon"] = self.encodedIcon!
        }
        if self.industryId != nil {
            map["IndustryId"] = self.industryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.packageName != nil {
            map["PackageName"] = self.packageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
        if let value = dict["BundleId"] as? String {
            self.bundleId = value
        }
        if let value = dict["EncodedIcon"] as? String {
            self.encodedIcon = value
        }
        if let value = dict["IndustryId"] as? Int32 {
            self.industryId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PackageName"] as? String {
            self.packageName = value
        }
    }
}

public class ModifyAppResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyProductRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
    }
}

public class ModifyProductResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenEmasServiceRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
    }
}

public class OpenEmasServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class OpenEmasServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenEmasServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OpenEmasServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAppInfoRequest : Tea.TeaModel {
    public var appKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
    }
}

public class QueryAppInfoResponseBody : Tea.TeaModel {
    public class AppInfo : Tea.TeaModel {
        public var appKey: String?

        public var appName: String?

        public var bundleId: String?

        public var certDevelopAvail: Bool?

        public var certDevelopExpiration: String?

        public var certProductAvail: Bool?

        public var certProductExpiration: String?

        public var createTime: String?

        public var encodedIcon: String?

        public var industryId: Int32?

        public var packageName: String?

        public var productId: Int64?

        public var readonly: Bool?

        public var status: Int32?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.bundleId != nil {
                map["BundleId"] = self.bundleId!
            }
            if self.certDevelopAvail != nil {
                map["CertDevelopAvail"] = self.certDevelopAvail!
            }
            if self.certDevelopExpiration != nil {
                map["CertDevelopExpiration"] = self.certDevelopExpiration!
            }
            if self.certProductAvail != nil {
                map["CertProductAvail"] = self.certProductAvail!
            }
            if self.certProductExpiration != nil {
                map["CertProductExpiration"] = self.certProductExpiration!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.encodedIcon != nil {
                map["EncodedIcon"] = self.encodedIcon!
            }
            if self.industryId != nil {
                map["IndustryId"] = self.industryId!
            }
            if self.packageName != nil {
                map["PackageName"] = self.packageName!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.readonly != nil {
                map["Readonly"] = self.readonly!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppKey"] as? String {
                self.appKey = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["BundleId"] as? String {
                self.bundleId = value
            }
            if let value = dict["CertDevelopAvail"] as? Bool {
                self.certDevelopAvail = value
            }
            if let value = dict["CertDevelopExpiration"] as? String {
                self.certDevelopExpiration = value
            }
            if let value = dict["CertProductAvail"] as? Bool {
                self.certProductAvail = value
            }
            if let value = dict["CertProductExpiration"] as? String {
                self.certProductExpiration = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EncodedIcon"] as? String {
                self.encodedIcon = value
            }
            if let value = dict["IndustryId"] as? Int32 {
                self.industryId = value
            }
            if let value = dict["PackageName"] as? String {
                self.packageName = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["Readonly"] as? Bool {
                self.readonly = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Type"] as? Int32 {
                self.type = value
            }
        }
    }
    public var appInfo: QueryAppInfoResponseBody.AppInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInfo != nil {
            map["AppInfo"] = self.appInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInfo"] as? [String: Any?] {
            var model = QueryAppInfoResponseBody.AppInfo()
            model.fromMap(value)
            self.appInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryAppInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAppInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryAppInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAppSecurityInfoRequest : Tea.TeaModel {
    public var appKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
    }
}

public class QueryAppSecurityInfoResponseBody : Tea.TeaModel {
    public class AppSecurityInfo : Tea.TeaModel {
        public class ExtConfig : Tea.TeaModel {
            public var tlogRsaSecret: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tlogRsaSecret != nil {
                    map["TlogRsaSecret"] = self.tlogRsaSecret!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TlogRsaSecret"] as? String {
                    self.tlogRsaSecret = value
                }
            }
        }
        public var appKey: String?

        public var appSecret: String?

        public var extConfig: QueryAppSecurityInfoResponseBody.AppSecurityInfo.ExtConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.appSecret != nil {
                map["AppSecret"] = self.appSecret!
            }
            if self.extConfig != nil {
                map["ExtConfig"] = self.extConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppKey"] as? String {
                self.appKey = value
            }
            if let value = dict["AppSecret"] as? String {
                self.appSecret = value
            }
            if let value = dict["ExtConfig"] as? [String: Any?] {
                var model = QueryAppSecurityInfoResponseBody.AppSecurityInfo.ExtConfig()
                model.fromMap(value)
                self.extConfig = model
            }
        }
    }
    public var appSecurityInfo: QueryAppSecurityInfoResponseBody.AppSecurityInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appSecurityInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appSecurityInfo != nil {
            map["AppSecurityInfo"] = self.appSecurityInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppSecurityInfo"] as? [String: Any?] {
            var model = QueryAppSecurityInfoResponseBody.AppSecurityInfo()
            model.fromMap(value)
            self.appSecurityInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryAppSecurityInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAppSecurityInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryAppSecurityInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryProductInfoRequest : Tea.TeaModel {
    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
    }
}

public class QueryProductInfoResponseBody : Tea.TeaModel {
    public class ProductInfo : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var encodedIcon: String?

        public var iconName: String?

        public var industryId: Int32?

        public var name: String?

        public var platforms: String?

        public var productId: Int32?

        public var readonly: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.encodedIcon != nil {
                map["EncodedIcon"] = self.encodedIcon!
            }
            if self.iconName != nil {
                map["IconName"] = self.iconName!
            }
            if self.industryId != nil {
                map["IndustryId"] = self.industryId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.platforms != nil {
                map["Platforms"] = self.platforms!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.readonly != nil {
                map["Readonly"] = self.readonly!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EncodedIcon"] as? String {
                self.encodedIcon = value
            }
            if let value = dict["IconName"] as? String {
                self.iconName = value
            }
            if let value = dict["IndustryId"] as? Int32 {
                self.industryId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Platforms"] as? String {
                self.platforms = value
            }
            if let value = dict["ProductId"] as? Int32 {
                self.productId = value
            }
            if let value = dict["Readonly"] as? Bool {
                self.readonly = value
            }
        }
    }
    public var productInfo: QueryProductInfoResponseBody.ProductInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.productInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productInfo != nil {
            map["ProductInfo"] = self.productInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductInfo"] as? [String: Any?] {
            var model = QueryProductInfoResponseBody.ProductInfo()
            model.fromMap(value)
            self.productInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryProductInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryProductInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryProductInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
