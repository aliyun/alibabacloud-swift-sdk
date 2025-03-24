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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BundleId") {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("EncodedIcon") {
            self.encodedIcon = dict["EncodedIcon"] as! String
        }
        if dict.keys.contains("IndustryId") {
            self.industryId = dict["IndustryId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PackageName") {
            self.packageName = dict["PackageName"] as! String
        }
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppKey") {
                self.appKey = dict["AppKey"] as! String
            }
            if dict.keys.contains("BundleId") {
                self.bundleId = dict["BundleId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PackageName") {
                self.packageName = dict["PackageName"] as! String
            }
            if dict.keys.contains("ProductId") {
                self.productId = dict["ProductId"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInfo") {
            var model = CreateAppResponseBody.AppInfo()
            model.fromMap(dict["AppInfo"] as! [String: Any])
            self.appInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! Int32
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("ProxyAction") {
            self.proxyAction = dict["ProxyAction"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDashboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! Int32
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class ListAppsResponseBody : Tea.TeaModel {
    public class AppInfos : Tea.TeaModel {
        public class AppInfo : Tea.TeaModel {
            public var appKey: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppKey") {
                    self.appKey = dict["AppKey"] as! String
                }
                if dict.keys.contains("BundleId") {
                    self.bundleId = dict["BundleId"] as! String
                }
                if dict.keys.contains("EncodedIcon") {
                    self.encodedIcon = dict["EncodedIcon"] as! String
                }
                if dict.keys.contains("IndustryId") {
                    self.industryId = dict["IndustryId"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PackageName") {
                    self.packageName = dict["PackageName"] as! String
                }
                if dict.keys.contains("Readonly") {
                    self.readonly = dict["Readonly"] as! Bool
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInfo") {
                var tmp : [ListAppsResponseBody.AppInfos.AppInfo] = []
                for v in dict["AppInfo"] as! [Any] {
                    var model = ListAppsResponseBody.AppInfos.AppInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInfos") {
            var model = ListAppsResponseBody.AppInfos()
            model.fromMap(dict["AppInfos"] as! [String: Any])
            self.appInfos = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
        if dict.keys.contains("UbsmsStatus") {
            self.ubsmsStatus = dict["UbsmsStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductsRequest : Tea.TeaModel {
    public var offset: Int32?

    public var productName: String?

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
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.simple != nil {
            map["Simple"] = self.simple!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int32
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("Simple") {
            self.simple = dict["Simple"] as! Bool
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EncodedIcon") {
                    self.encodedIcon = dict["EncodedIcon"] as! String
                }
                if dict.keys.contains("IndustryId") {
                    self.industryId = dict["IndustryId"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Platforms") {
                    self.platforms = dict["Platforms"] as! String
                }
                if dict.keys.contains("ProductId") {
                    self.productId = dict["ProductId"] as! Int32
                }
                if dict.keys.contains("Readonly") {
                    self.readonly = dict["Readonly"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProductInfo") {
                var tmp : [ListProductsResponseBody.ProductInfos.ProductInfo] = []
                for v in dict["ProductInfo"] as! [Any] {
                    var model = ListProductsResponseBody.ProductInfos.ProductInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductInfos") {
            var model = ListProductsResponseBody.ProductInfos()
            model.fromMap(dict["ProductInfos"] as! [String: Any])
            self.productInfos = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
        if dict.keys.contains("UbsmsStatus") {
            self.ubsmsStatus = dict["UbsmsStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("BundleId") {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("EncodedIcon") {
            self.encodedIcon = dict["EncodedIcon"] as! String
        }
        if dict.keys.contains("IndustryId") {
            self.industryId = dict["IndustryId"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PackageName") {
            self.packageName = dict["PackageName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OpenEmasServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppKey") {
                self.appKey = dict["AppKey"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("BundleId") {
                self.bundleId = dict["BundleId"] as! String
            }
            if dict.keys.contains("CertDevelopAvail") {
                self.certDevelopAvail = dict["CertDevelopAvail"] as! Bool
            }
            if dict.keys.contains("CertDevelopExpiration") {
                self.certDevelopExpiration = dict["CertDevelopExpiration"] as! String
            }
            if dict.keys.contains("CertProductAvail") {
                self.certProductAvail = dict["CertProductAvail"] as! Bool
            }
            if dict.keys.contains("CertProductExpiration") {
                self.certProductExpiration = dict["CertProductExpiration"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EncodedIcon") {
                self.encodedIcon = dict["EncodedIcon"] as! String
            }
            if dict.keys.contains("IndustryId") {
                self.industryId = dict["IndustryId"] as! Int32
            }
            if dict.keys.contains("PackageName") {
                self.packageName = dict["PackageName"] as! String
            }
            if dict.keys.contains("ProductId") {
                self.productId = dict["ProductId"] as! Int64
            }
            if dict.keys.contains("Readonly") {
                self.readonly = dict["Readonly"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInfo") {
            var model = QueryAppInfoResponseBody.AppInfo()
            model.fromMap(dict["AppInfo"] as! [String: Any])
            self.appInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAppInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TlogRsaSecret") {
                    self.tlogRsaSecret = dict["TlogRsaSecret"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppKey") {
                self.appKey = dict["AppKey"] as! String
            }
            if dict.keys.contains("AppSecret") {
                self.appSecret = dict["AppSecret"] as! String
            }
            if dict.keys.contains("ExtConfig") {
                var model = QueryAppSecurityInfoResponseBody.AppSecurityInfo.ExtConfig()
                model.fromMap(dict["ExtConfig"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppSecurityInfo") {
            var model = QueryAppSecurityInfoResponseBody.AppSecurityInfo()
            model.fromMap(dict["AppSecurityInfo"] as! [String: Any])
            self.appSecurityInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAppSecurityInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class QueryProductInfoResponseBody : Tea.TeaModel {
    public class ProductInfo : Tea.TeaModel {
        public var encodedIcon: String?

        public var iconName: String?

        public var industryId: Int32?

        public var name: String?

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
            if self.readonly != nil {
                map["Readonly"] = self.readonly!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EncodedIcon") {
                self.encodedIcon = dict["EncodedIcon"] as! String
            }
            if dict.keys.contains("IconName") {
                self.iconName = dict["IconName"] as! String
            }
            if dict.keys.contains("IndustryId") {
                self.industryId = dict["IndustryId"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Readonly") {
                self.readonly = dict["Readonly"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductInfo") {
            var model = QueryProductInfoResponseBody.ProductInfo()
            model.fromMap(dict["ProductInfo"] as! [String: Any])
            self.productInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryProductInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
