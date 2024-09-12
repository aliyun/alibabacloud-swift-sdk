import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AccessPageGetAclRequest : Tea.TeaModel {
    public var accessPageId: String?

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
        if self.accessPageId != nil {
            map["AccessPageId"] = self.accessPageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessPageId") {
            self.accessPageId = dict["AccessPageId"] as! String
        }
    }
}

public class AccessPageGetAclResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessMode: String?

        public var accessUrl: String?

        public var effectTime: Int32?

        public var unit: String?

        public var urlExpireTime: String?

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
            if self.accessMode != nil {
                map["AccessMode"] = self.accessMode!
            }
            if self.accessUrl != nil {
                map["AccessUrl"] = self.accessUrl!
            }
            if self.effectTime != nil {
                map["EffectTime"] = self.effectTime!
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            if self.urlExpireTime != nil {
                map["UrlExpireTime"] = self.urlExpireTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessMode") {
                self.accessMode = dict["AccessMode"] as! String
            }
            if dict.keys.contains("AccessUrl") {
                self.accessUrl = dict["AccessUrl"] as! String
            }
            if dict.keys.contains("EffectTime") {
                self.effectTime = dict["EffectTime"] as! Int32
            }
            if dict.keys.contains("Unit") {
                self.unit = dict["Unit"] as! String
            }
            if dict.keys.contains("UrlExpireTime") {
                self.urlExpireTime = dict["UrlExpireTime"] as! String
            }
        }
    }
    public var code: String?

    public var data: [AccessPageGetAclResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [AccessPageGetAclResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = AccessPageGetAclResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class AccessPageGetAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AccessPageGetAclResponseBody?

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
            var model = AccessPageGetAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AccessPageSetAclRequest : Tea.TeaModel {
    public var accessMode: String?

    public var accessPageId: String?

    public var accessPageName: String?

    public var effectTime: Int32?

    public var unit: String?

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
        if self.accessMode != nil {
            map["AccessMode"] = self.accessMode!
        }
        if self.accessPageId != nil {
            map["AccessPageId"] = self.accessPageId!
        }
        if self.accessPageName != nil {
            map["AccessPageName"] = self.accessPageName!
        }
        if self.effectTime != nil {
            map["EffectTime"] = self.effectTime!
        }
        if self.unit != nil {
            map["Unit"] = self.unit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessMode") {
            self.accessMode = dict["AccessMode"] as! String
        }
        if dict.keys.contains("AccessPageId") {
            self.accessPageId = dict["AccessPageId"] as! String
        }
        if dict.keys.contains("AccessPageName") {
            self.accessPageName = dict["AccessPageName"] as! String
        }
        if dict.keys.contains("EffectTime") {
            self.effectTime = dict["EffectTime"] as! Int32
        }
        if dict.keys.contains("Unit") {
            self.unit = dict["Unit"] as! String
        }
    }
}

public class AccessPageSetAclResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class AccessPageSetAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AccessPageSetAclResponseBody?

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
            var model = AccessPageSetAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApproveOtaTaskRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var bizRegionId: String?

    public var otaType: String?

    public var startTime: String?

    public var taskId: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.otaType != nil {
            map["OtaType"] = self.otaType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("OtaType") {
            self.otaType = dict["OtaType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ApproveOtaTaskResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ApproveOtaTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApproveOtaTaskResponseBody?

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
            var model = ApproveOtaTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AskSessionPackagePriceRequest : Tea.TeaModel {
    public var chargeType: String?

    public var maxSessions: Int32?

    public var period: Int32?

    public var periodUnit: String?

    public var region: String?

    public var sessionPackageType: String?

    public var sessionSpec: String?

    public var sessionType: String?

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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.maxSessions != nil {
            map["MaxSessions"] = self.maxSessions!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.sessionPackageType != nil {
            map["SessionPackageType"] = self.sessionPackageType!
        }
        if self.sessionSpec != nil {
            map["SessionSpec"] = self.sessionSpec!
        }
        if self.sessionType != nil {
            map["SessionType"] = self.sessionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("MaxSessions") {
            self.maxSessions = dict["MaxSessions"] as! Int32
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SessionPackageType") {
            self.sessionPackageType = dict["SessionPackageType"] as! String
        }
        if dict.keys.contains("SessionSpec") {
            self.sessionSpec = dict["SessionSpec"] as! String
        }
        if dict.keys.contains("SessionType") {
            self.sessionType = dict["SessionType"] as! String
        }
    }
}

public class AskSessionPackagePriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Price : Tea.TeaModel {
            public var currency: String?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var tradePrice: Double?

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
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") {
                    self.discountPrice = dict["DiscountPrice"] as! Double
                }
                if dict.keys.contains("OriginalPrice") {
                    self.originalPrice = dict["OriginalPrice"] as! Double
                }
                if dict.keys.contains("TradePrice") {
                    self.tradePrice = dict["TradePrice"] as! Double
                }
            }
        }
        public var price: AskSessionPackagePriceResponseBody.Data.Price?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.price?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.price != nil {
                map["Price"] = self.price?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Price") {
                var model = AskSessionPackagePriceResponseBody.Data.Price()
                model.fromMap(dict["Price"] as! [String: Any])
                self.price = model
            }
        }
    }
    public var data: [AskSessionPackagePriceResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [AskSessionPackagePriceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = AskSessionPackagePriceResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AskSessionPackagePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AskSessionPackagePriceResponseBody?

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
            var model = AskSessionPackagePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AskSessionPackageRenewPriceRequest : Tea.TeaModel {
    public var period: Int32?

    public var periodUnit: String?

    public var sessionPackageId: String?

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
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.sessionPackageId != nil {
            map["SessionPackageId"] = self.sessionPackageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("SessionPackageId") {
            self.sessionPackageId = dict["SessionPackageId"] as! String
        }
    }
}

public class AskSessionPackageRenewPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Price : Tea.TeaModel {
            public var currency: String?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var tradePrice: Double?

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
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") {
                    self.discountPrice = dict["DiscountPrice"] as! Double
                }
                if dict.keys.contains("OriginalPrice") {
                    self.originalPrice = dict["OriginalPrice"] as! Double
                }
                if dict.keys.contains("TradePrice") {
                    self.tradePrice = dict["TradePrice"] as! Double
                }
            }
        }
        public var price: AskSessionPackageRenewPriceResponseBody.Data.Price?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.price?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.price != nil {
                map["Price"] = self.price?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Price") {
                var model = AskSessionPackageRenewPriceResponseBody.Data.Price()
                model.fromMap(dict["Price"] as! [String: Any])
                self.price = model
            }
        }
    }
    public var data: [AskSessionPackageRenewPriceResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [AskSessionPackageRenewPriceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = AskSessionPackageRenewPriceResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AskSessionPackageRenewPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AskSessionPackageRenewPriceResponseBody?

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
            var model = AskSessionPackageRenewPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AuthorizeInstanceGroupRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var authorizeUserIds: [String]?

    public var productType: String?

    public var unAuthorizeUserIds: [String]?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.authorizeUserIds != nil {
            map["AuthorizeUserIds"] = self.authorizeUserIds!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.unAuthorizeUserIds != nil {
            map["UnAuthorizeUserIds"] = self.unAuthorizeUserIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AuthorizeUserIds") {
            self.authorizeUserIds = dict["AuthorizeUserIds"] as! [String]
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("UnAuthorizeUserIds") {
            self.unAuthorizeUserIds = dict["UnAuthorizeUserIds"] as! [String]
        }
    }
}

public class AuthorizeInstanceGroupResponseBody : Tea.TeaModel {
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

public class AuthorizeInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeInstanceGroupResponseBody?

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
            var model = AuthorizeInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BuySessionPackageRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var chargeType: String?

    public var maxSessions: Int32?

    public var period: Int32?

    public var periodUnit: String?

    public var projectId: String?

    public var region: String?

    public var sessionPackageName: String?

    public var sessionPackageType: String?

    public var sessionSpec: String?

    public var sessionType: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.maxSessions != nil {
            map["MaxSessions"] = self.maxSessions!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.sessionPackageName != nil {
            map["SessionPackageName"] = self.sessionPackageName!
        }
        if self.sessionPackageType != nil {
            map["SessionPackageType"] = self.sessionPackageType!
        }
        if self.sessionSpec != nil {
            map["SessionSpec"] = self.sessionSpec!
        }
        if self.sessionType != nil {
            map["SessionType"] = self.sessionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("MaxSessions") {
            self.maxSessions = dict["MaxSessions"] as! Int32
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SessionPackageName") {
            self.sessionPackageName = dict["SessionPackageName"] as! String
        }
        if dict.keys.contains("SessionPackageType") {
            self.sessionPackageType = dict["SessionPackageType"] as! String
        }
        if dict.keys.contains("SessionSpec") {
            self.sessionSpec = dict["SessionSpec"] as! String
        }
        if dict.keys.contains("SessionType") {
            self.sessionType = dict["SessionType"] as! String
        }
    }
}

public class BuySessionPackageResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var sessionPackageId: Int64?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionPackageId != nil {
            map["SessionPackageId"] = self.sessionPackageId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionPackageId") {
            self.sessionPackageId = dict["SessionPackageId"] as! Int64
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class BuySessionPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BuySessionPackageResponseBody?

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
            var model = BuySessionPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelOtaTaskRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var taskId: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CancelOtaTaskResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelOtaTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelOtaTaskResponseBody?

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
            var model = CancelOtaTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccessPageRequest : Tea.TeaModel {
    public var accessPageName: String?

    public var cloudEnvId: String?

    public var effectTime: Int32?

    public var projectId: String?

    public var projectName: String?

    public var unit: String?

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
        if self.accessPageName != nil {
            map["AccessPageName"] = self.accessPageName!
        }
        if self.cloudEnvId != nil {
            map["CloudEnvId"] = self.cloudEnvId!
        }
        if self.effectTime != nil {
            map["EffectTime"] = self.effectTime!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.unit != nil {
            map["Unit"] = self.unit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessPageName") {
            self.accessPageName = dict["AccessPageName"] as! String
        }
        if dict.keys.contains("CloudEnvId") {
            self.cloudEnvId = dict["CloudEnvId"] as! String
        }
        if dict.keys.contains("EffectTime") {
            self.effectTime = dict["EffectTime"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Unit") {
            self.unit = dict["Unit"] as! String
        }
    }
}

public class CreateAccessPageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class CreateAccessPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessPageResponseBody?

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
            var model = CreateAccessPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppInstanceGroupRequest : Tea.TeaModel {
    public class Network : Tea.TeaModel {
        public class DomainRules : Tea.TeaModel {
            public var domain: String?

            public var policy: String?

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
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("Policy") {
                    self.policy = dict["Policy"] as! String
                }
            }
        }
        public class Routes : Tea.TeaModel {
            public var destination: String?

            public var mode: String?

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
                if self.destination != nil {
                    map["Destination"] = self.destination!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Destination") {
                    self.destination = dict["Destination"] as! String
                }
                if dict.keys.contains("Mode") {
                    self.mode = dict["Mode"] as! String
                }
            }
        }
        public var domainRules: [CreateAppInstanceGroupRequest.Network.DomainRules]?

        public var ipExpireMinutes: Int32?

        public var routes: [CreateAppInstanceGroupRequest.Network.Routes]?

        public var strategyType: String?

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
            if self.domainRules != nil {
                var tmp : [Any] = []
                for k in self.domainRules! {
                    tmp.append(k.toMap())
                }
                map["DomainRules"] = tmp
            }
            if self.ipExpireMinutes != nil {
                map["IpExpireMinutes"] = self.ipExpireMinutes!
            }
            if self.routes != nil {
                var tmp : [Any] = []
                for k in self.routes! {
                    tmp.append(k.toMap())
                }
                map["Routes"] = tmp
            }
            if self.strategyType != nil {
                map["StrategyType"] = self.strategyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainRules") {
                var tmp : [CreateAppInstanceGroupRequest.Network.DomainRules] = []
                for v in dict["DomainRules"] as! [Any] {
                    var model = CreateAppInstanceGroupRequest.Network.DomainRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainRules = tmp
            }
            if dict.keys.contains("IpExpireMinutes") {
                self.ipExpireMinutes = dict["IpExpireMinutes"] as! Int32
            }
            if dict.keys.contains("Routes") {
                var tmp : [CreateAppInstanceGroupRequest.Network.Routes] = []
                for v in dict["Routes"] as! [Any] {
                    var model = CreateAppInstanceGroupRequest.Network.Routes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.routes = tmp
            }
            if dict.keys.contains("StrategyType") {
                self.strategyType = dict["StrategyType"] as! String
            }
        }
    }
    public class NodePool : Tea.TeaModel {
        public class RecurrenceSchedules : Tea.TeaModel {
            public class TimerPeriods : Tea.TeaModel {
                public var amount: Int32?

                public var endTime: String?

                public var startTime: String?

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
                    if self.amount != nil {
                        map["Amount"] = self.amount!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Amount") {
                        self.amount = dict["Amount"] as! Int32
                    }
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                }
            }
            public var recurrenceType: String?

            public var recurrenceValues: [Int32]?

            public var timerPeriods: [CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules.TimerPeriods]?

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
                if self.recurrenceType != nil {
                    map["RecurrenceType"] = self.recurrenceType!
                }
                if self.recurrenceValues != nil {
                    map["RecurrenceValues"] = self.recurrenceValues!
                }
                if self.timerPeriods != nil {
                    var tmp : [Any] = []
                    for k in self.timerPeriods! {
                        tmp.append(k.toMap())
                    }
                    map["TimerPeriods"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RecurrenceType") {
                    self.recurrenceType = dict["RecurrenceType"] as! String
                }
                if dict.keys.contains("RecurrenceValues") {
                    self.recurrenceValues = dict["RecurrenceValues"] as! [Int32]
                }
                if dict.keys.contains("TimerPeriods") {
                    var tmp : [CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules.TimerPeriods] = []
                    for v in dict["TimerPeriods"] as! [Any] {
                        var model = CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules.TimerPeriods()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.timerPeriods = tmp
                }
            }
        }
        public var maxIdleAppInstanceAmount: Int32?

        public var maxScalingAmount: Int32?

        public var nodeAmount: Int32?

        public var nodeCapacity: Int32?

        public var nodeInstanceType: String?

        public var recurrenceSchedules: [CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules]?

        public var scalingDownAfterIdleMinutes: Int32?

        public var scalingStep: Int32?

        public var scalingUsageThreshold: String?

        public var strategyDisableDate: String?

        public var strategyEnableDate: String?

        public var strategyType: String?

        public var warmUp: Bool?

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
            if self.maxIdleAppInstanceAmount != nil {
                map["MaxIdleAppInstanceAmount"] = self.maxIdleAppInstanceAmount!
            }
            if self.maxScalingAmount != nil {
                map["MaxScalingAmount"] = self.maxScalingAmount!
            }
            if self.nodeAmount != nil {
                map["NodeAmount"] = self.nodeAmount!
            }
            if self.nodeCapacity != nil {
                map["NodeCapacity"] = self.nodeCapacity!
            }
            if self.nodeInstanceType != nil {
                map["NodeInstanceType"] = self.nodeInstanceType!
            }
            if self.recurrenceSchedules != nil {
                var tmp : [Any] = []
                for k in self.recurrenceSchedules! {
                    tmp.append(k.toMap())
                }
                map["RecurrenceSchedules"] = tmp
            }
            if self.scalingDownAfterIdleMinutes != nil {
                map["ScalingDownAfterIdleMinutes"] = self.scalingDownAfterIdleMinutes!
            }
            if self.scalingStep != nil {
                map["ScalingStep"] = self.scalingStep!
            }
            if self.scalingUsageThreshold != nil {
                map["ScalingUsageThreshold"] = self.scalingUsageThreshold!
            }
            if self.strategyDisableDate != nil {
                map["StrategyDisableDate"] = self.strategyDisableDate!
            }
            if self.strategyEnableDate != nil {
                map["StrategyEnableDate"] = self.strategyEnableDate!
            }
            if self.strategyType != nil {
                map["StrategyType"] = self.strategyType!
            }
            if self.warmUp != nil {
                map["WarmUp"] = self.warmUp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxIdleAppInstanceAmount") {
                self.maxIdleAppInstanceAmount = dict["MaxIdleAppInstanceAmount"] as! Int32
            }
            if dict.keys.contains("MaxScalingAmount") {
                self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
            }
            if dict.keys.contains("NodeAmount") {
                self.nodeAmount = dict["NodeAmount"] as! Int32
            }
            if dict.keys.contains("NodeCapacity") {
                self.nodeCapacity = dict["NodeCapacity"] as! Int32
            }
            if dict.keys.contains("NodeInstanceType") {
                self.nodeInstanceType = dict["NodeInstanceType"] as! String
            }
            if dict.keys.contains("RecurrenceSchedules") {
                var tmp : [CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules] = []
                for v in dict["RecurrenceSchedules"] as! [Any] {
                    var model = CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recurrenceSchedules = tmp
            }
            if dict.keys.contains("ScalingDownAfterIdleMinutes") {
                self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
            }
            if dict.keys.contains("ScalingStep") {
                self.scalingStep = dict["ScalingStep"] as! Int32
            }
            if dict.keys.contains("ScalingUsageThreshold") {
                self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
            }
            if dict.keys.contains("StrategyDisableDate") {
                self.strategyDisableDate = dict["StrategyDisableDate"] as! String
            }
            if dict.keys.contains("StrategyEnableDate") {
                self.strategyEnableDate = dict["StrategyEnableDate"] as! String
            }
            if dict.keys.contains("StrategyType") {
                self.strategyType = dict["StrategyType"] as! String
            }
            if dict.keys.contains("WarmUp") {
                self.warmUp = dict["WarmUp"] as! Bool
            }
        }
    }
    public class RuntimePolicy : Tea.TeaModel {
        public var debugMode: String?

        public var sessionType: String?

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
            if self.debugMode != nil {
                map["DebugMode"] = self.debugMode!
            }
            if self.sessionType != nil {
                map["SessionType"] = self.sessionType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DebugMode") {
                self.debugMode = dict["DebugMode"] as! String
            }
            if dict.keys.contains("SessionType") {
                self.sessionType = dict["SessionType"] as! String
            }
        }
    }
    public class SecurityPolicy : Tea.TeaModel {
        public var resetAfterUnbind: Bool?

        public var skipUserAuthCheck: Bool?

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
            if self.resetAfterUnbind != nil {
                map["ResetAfterUnbind"] = self.resetAfterUnbind!
            }
            if self.skipUserAuthCheck != nil {
                map["SkipUserAuthCheck"] = self.skipUserAuthCheck!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResetAfterUnbind") {
                self.resetAfterUnbind = dict["ResetAfterUnbind"] as! Bool
            }
            if dict.keys.contains("SkipUserAuthCheck") {
                self.skipUserAuthCheck = dict["SkipUserAuthCheck"] as! Bool
            }
        }
    }
    public class StoragePolicy : Tea.TeaModel {
        public var storageTypeList: [String]?

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
            if self.storageTypeList != nil {
                map["StorageTypeList"] = self.storageTypeList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StorageTypeList") {
                self.storageTypeList = dict["StorageTypeList"] as! [String]
            }
        }
    }
    public class UserDefinePolicy : Tea.TeaModel {
        public var customConfig: String?

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
            if self.customConfig != nil {
                map["CustomConfig"] = self.customConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomConfig") {
                self.customConfig = dict["CustomConfig"] as! String
            }
        }
    }
    public class UserInfo : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class VideoPolicy : Tea.TeaModel {
        public var frameRate: Int32?

        public var sessionResolutionHeight: Int32?

        public var sessionResolutionWidth: Int32?

        public var streamingMode: String?

        public var terminalResolutionAdaptive: Bool?

        public var webrtc: Bool?

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
            if self.frameRate != nil {
                map["FrameRate"] = self.frameRate!
            }
            if self.sessionResolutionHeight != nil {
                map["SessionResolutionHeight"] = self.sessionResolutionHeight!
            }
            if self.sessionResolutionWidth != nil {
                map["SessionResolutionWidth"] = self.sessionResolutionWidth!
            }
            if self.streamingMode != nil {
                map["StreamingMode"] = self.streamingMode!
            }
            if self.terminalResolutionAdaptive != nil {
                map["TerminalResolutionAdaptive"] = self.terminalResolutionAdaptive!
            }
            if self.webrtc != nil {
                map["Webrtc"] = self.webrtc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FrameRate") {
                self.frameRate = dict["FrameRate"] as! Int32
            }
            if dict.keys.contains("SessionResolutionHeight") {
                self.sessionResolutionHeight = dict["SessionResolutionHeight"] as! Int32
            }
            if dict.keys.contains("SessionResolutionWidth") {
                self.sessionResolutionWidth = dict["SessionResolutionWidth"] as! Int32
            }
            if dict.keys.contains("StreamingMode") {
                self.streamingMode = dict["StreamingMode"] as! String
            }
            if dict.keys.contains("TerminalResolutionAdaptive") {
                self.terminalResolutionAdaptive = dict["TerminalResolutionAdaptive"] as! Bool
            }
            if dict.keys.contains("Webrtc") {
                self.webrtc = dict["Webrtc"] as! Bool
            }
        }
    }
    public var appCenterImageId: String?

    public var appInstanceGroupName: String?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bizRegionId: String?

    public var chargeResourceMode: String?

    public var chargeType: String?

    public var network: CreateAppInstanceGroupRequest.Network?

    public var nodePool: CreateAppInstanceGroupRequest.NodePool?

    public var period: Int32?

    public var periodUnit: String?

    public var preOpenAppId: String?

    public var productType: String?

    public var promotionId: String?

    public var runtimePolicy: CreateAppInstanceGroupRequest.RuntimePolicy?

    public var securityPolicy: CreateAppInstanceGroupRequest.SecurityPolicy?

    public var sessionTimeout: Int32?

    public var storagePolicy: CreateAppInstanceGroupRequest.StoragePolicy?

    public var userDefinePolicy: CreateAppInstanceGroupRequest.UserDefinePolicy?

    public var userInfo: CreateAppInstanceGroupRequest.UserInfo?

    public var users: [String]?

    public var videoPolicy: CreateAppInstanceGroupRequest.VideoPolicy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.network?.validate()
        try self.nodePool?.validate()
        try self.runtimePolicy?.validate()
        try self.securityPolicy?.validate()
        try self.storagePolicy?.validate()
        try self.userDefinePolicy?.validate()
        try self.userInfo?.validate()
        try self.videoPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCenterImageId != nil {
            map["AppCenterImageId"] = self.appCenterImageId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeResourceMode != nil {
            map["ChargeResourceMode"] = self.chargeResourceMode!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.network != nil {
            map["Network"] = self.network?.toMap()
        }
        if self.nodePool != nil {
            map["NodePool"] = self.nodePool?.toMap()
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.preOpenAppId != nil {
            map["PreOpenAppId"] = self.preOpenAppId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.runtimePolicy != nil {
            map["RuntimePolicy"] = self.runtimePolicy?.toMap()
        }
        if self.securityPolicy != nil {
            map["SecurityPolicy"] = self.securityPolicy?.toMap()
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.storagePolicy != nil {
            map["StoragePolicy"] = self.storagePolicy?.toMap()
        }
        if self.userDefinePolicy != nil {
            map["UserDefinePolicy"] = self.userDefinePolicy?.toMap()
        }
        if self.userInfo != nil {
            map["UserInfo"] = self.userInfo?.toMap()
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        if self.videoPolicy != nil {
            map["VideoPolicy"] = self.videoPolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCenterImageId") {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ChargeResourceMode") {
            self.chargeResourceMode = dict["ChargeResourceMode"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Network") {
            var model = CreateAppInstanceGroupRequest.Network()
            model.fromMap(dict["Network"] as! [String: Any])
            self.network = model
        }
        if dict.keys.contains("NodePool") {
            var model = CreateAppInstanceGroupRequest.NodePool()
            model.fromMap(dict["NodePool"] as! [String: Any])
            self.nodePool = model
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PreOpenAppId") {
            self.preOpenAppId = dict["PreOpenAppId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("RuntimePolicy") {
            var model = CreateAppInstanceGroupRequest.RuntimePolicy()
            model.fromMap(dict["RuntimePolicy"] as! [String: Any])
            self.runtimePolicy = model
        }
        if dict.keys.contains("SecurityPolicy") {
            var model = CreateAppInstanceGroupRequest.SecurityPolicy()
            model.fromMap(dict["SecurityPolicy"] as! [String: Any])
            self.securityPolicy = model
        }
        if dict.keys.contains("SessionTimeout") {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
        if dict.keys.contains("StoragePolicy") {
            var model = CreateAppInstanceGroupRequest.StoragePolicy()
            model.fromMap(dict["StoragePolicy"] as! [String: Any])
            self.storagePolicy = model
        }
        if dict.keys.contains("UserDefinePolicy") {
            var model = CreateAppInstanceGroupRequest.UserDefinePolicy()
            model.fromMap(dict["UserDefinePolicy"] as! [String: Any])
            self.userDefinePolicy = model
        }
        if dict.keys.contains("UserInfo") {
            var model = CreateAppInstanceGroupRequest.UserInfo()
            model.fromMap(dict["UserInfo"] as! [String: Any])
            self.userInfo = model
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
        if dict.keys.contains("VideoPolicy") {
            var model = CreateAppInstanceGroupRequest.VideoPolicy()
            model.fromMap(dict["VideoPolicy"] as! [String: Any])
            self.videoPolicy = model
        }
    }
}

public class CreateAppInstanceGroupShrinkRequest : Tea.TeaModel {
    public var appCenterImageId: String?

    public var appInstanceGroupName: String?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bizRegionId: String?

    public var chargeResourceMode: String?

    public var chargeType: String?

    public var networkShrink: String?

    public var nodePoolShrink: String?

    public var period: Int32?

    public var periodUnit: String?

    public var preOpenAppId: String?

    public var productType: String?

    public var promotionId: String?

    public var runtimePolicyShrink: String?

    public var securityPolicyShrink: String?

    public var sessionTimeout: Int32?

    public var storagePolicyShrink: String?

    public var userDefinePolicyShrink: String?

    public var userInfoShrink: String?

    public var users: [String]?

    public var videoPolicyShrink: String?

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
        if self.appCenterImageId != nil {
            map["AppCenterImageId"] = self.appCenterImageId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeResourceMode != nil {
            map["ChargeResourceMode"] = self.chargeResourceMode!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.networkShrink != nil {
            map["Network"] = self.networkShrink!
        }
        if self.nodePoolShrink != nil {
            map["NodePool"] = self.nodePoolShrink!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.preOpenAppId != nil {
            map["PreOpenAppId"] = self.preOpenAppId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.runtimePolicyShrink != nil {
            map["RuntimePolicy"] = self.runtimePolicyShrink!
        }
        if self.securityPolicyShrink != nil {
            map["SecurityPolicy"] = self.securityPolicyShrink!
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.storagePolicyShrink != nil {
            map["StoragePolicy"] = self.storagePolicyShrink!
        }
        if self.userDefinePolicyShrink != nil {
            map["UserDefinePolicy"] = self.userDefinePolicyShrink!
        }
        if self.userInfoShrink != nil {
            map["UserInfo"] = self.userInfoShrink!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        if self.videoPolicyShrink != nil {
            map["VideoPolicy"] = self.videoPolicyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCenterImageId") {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ChargeResourceMode") {
            self.chargeResourceMode = dict["ChargeResourceMode"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Network") {
            self.networkShrink = dict["Network"] as! String
        }
        if dict.keys.contains("NodePool") {
            self.nodePoolShrink = dict["NodePool"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PreOpenAppId") {
            self.preOpenAppId = dict["PreOpenAppId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("RuntimePolicy") {
            self.runtimePolicyShrink = dict["RuntimePolicy"] as! String
        }
        if dict.keys.contains("SecurityPolicy") {
            self.securityPolicyShrink = dict["SecurityPolicy"] as! String
        }
        if dict.keys.contains("SessionTimeout") {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
        if dict.keys.contains("StoragePolicy") {
            self.storagePolicyShrink = dict["StoragePolicy"] as! String
        }
        if dict.keys.contains("UserDefinePolicy") {
            self.userDefinePolicyShrink = dict["UserDefinePolicy"] as! String
        }
        if dict.keys.contains("UserInfo") {
            self.userInfoShrink = dict["UserInfo"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
        if dict.keys.contains("VideoPolicy") {
            self.videoPolicyShrink = dict["VideoPolicy"] as! String
        }
    }
}

public class CreateAppInstanceGroupResponseBody : Tea.TeaModel {
    public class AppInstanceGroupModel : Tea.TeaModel {
        public var appInstanceGroupId: String?

        public var nodePoolId: String?

        public var orderId: String?

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
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.nodePoolId != nil {
                map["NodePoolId"] = self.nodePoolId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInstanceGroupId") {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("NodePoolId") {
                self.nodePoolId = dict["NodePoolId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
        }
    }
    public var appInstanceGroupModel: CreateAppInstanceGroupResponseBody.AppInstanceGroupModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appInstanceGroupModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceGroupModel != nil {
            map["AppInstanceGroupModel"] = self.appInstanceGroupModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupModel") {
            var model = CreateAppInstanceGroupResponseBody.AppInstanceGroupModel()
            model.fromMap(dict["AppInstanceGroupModel"] as! [String: Any])
            self.appInstanceGroupModel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppInstanceGroupResponseBody?

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
            var model = CreateAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateImageFromAppInstanceGroupRequest : Tea.TeaModel {
    public var appCenterImageName: String?

    public var appInstanceGroupId: String?

    public var productType: String?

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
        if self.appCenterImageName != nil {
            map["AppCenterImageName"] = self.appCenterImageName!
        }
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCenterImageName") {
            self.appCenterImageName = dict["AppCenterImageName"] as! String
        }
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class CreateImageFromAppInstanceGroupResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateImageFromAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageFromAppInstanceGroupResponseBody?

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
            var model = CreateImageFromAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var clipboard: Int32?

    public var cloudEnvId: String?

    public var contentId: String?

    public var description_: String?

    public var fileTransfer: Int32?

    public var frameRate: Int32?

    public var keepAliveDuration: Int32?

    public var projectName: String?

    public var sessionResolutionHeight: Int32?

    public var sessionResolutionWidth: Int32?

    public var sessionSpec: String?

    public var streamingMode: String?

    public var terminalResolutionAdaptation: Bool?

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
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.cloudEnvId != nil {
            map["CloudEnvId"] = self.cloudEnvId!
        }
        if self.contentId != nil {
            map["ContentId"] = self.contentId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileTransfer != nil {
            map["FileTransfer"] = self.fileTransfer!
        }
        if self.frameRate != nil {
            map["FrameRate"] = self.frameRate!
        }
        if self.keepAliveDuration != nil {
            map["KeepAliveDuration"] = self.keepAliveDuration!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sessionResolutionHeight != nil {
            map["SessionResolutionHeight"] = self.sessionResolutionHeight!
        }
        if self.sessionResolutionWidth != nil {
            map["SessionResolutionWidth"] = self.sessionResolutionWidth!
        }
        if self.sessionSpec != nil {
            map["SessionSpec"] = self.sessionSpec!
        }
        if self.streamingMode != nil {
            map["StreamingMode"] = self.streamingMode!
        }
        if self.terminalResolutionAdaptation != nil {
            map["TerminalResolutionAdaptation"] = self.terminalResolutionAdaptation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clipboard") {
            self.clipboard = dict["Clipboard"] as! Int32
        }
        if dict.keys.contains("CloudEnvId") {
            self.cloudEnvId = dict["CloudEnvId"] as! String
        }
        if dict.keys.contains("ContentId") {
            self.contentId = dict["ContentId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileTransfer") {
            self.fileTransfer = dict["FileTransfer"] as! Int32
        }
        if dict.keys.contains("FrameRate") {
            self.frameRate = dict["FrameRate"] as! Int32
        }
        if dict.keys.contains("KeepAliveDuration") {
            self.keepAliveDuration = dict["KeepAliveDuration"] as! Int32
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SessionResolutionHeight") {
            self.sessionResolutionHeight = dict["SessionResolutionHeight"] as! Int32
        }
        if dict.keys.contains("SessionResolutionWidth") {
            self.sessionResolutionWidth = dict["SessionResolutionWidth"] as! Int32
        }
        if dict.keys.contains("SessionSpec") {
            self.sessionSpec = dict["SessionSpec"] as! String
        }
        if dict.keys.contains("StreamingMode") {
            self.streamingMode = dict["StreamingMode"] as! String
        }
        if dict.keys.contains("TerminalResolutionAdaptation") {
            self.terminalResolutionAdaptation = dict["TerminalResolutionAdaptation"] as! Bool
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectResponseBody?

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
            var model = CreateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessPageRequest : Tea.TeaModel {
    public var accessPageId: String?

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
        if self.accessPageId != nil {
            map["AccessPageId"] = self.accessPageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessPageId") {
            self.accessPageId = dict["AccessPageId"] as! String
        }
    }
}

public class DeleteAccessPageResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class DeleteAccessPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessPageResponseBody?

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
            var model = DeleteAccessPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppInstanceGroupRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var productType: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class DeleteAppInstanceGroupResponseBody : Tea.TeaModel {
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

public class DeleteAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppInstanceGroupResponseBody?

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
            var model = DeleteAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppInstancesRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceIds: [String]?

    public var productType: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceIds != nil {
            map["AppInstanceIds"] = self.appInstanceIds!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceIds") {
            self.appInstanceIds = dict["AppInstanceIds"] as! [String]
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class DeleteAppInstancesResponseBody : Tea.TeaModel {
    public class DeleteAppInstanceModels : Tea.TeaModel {
        public var appInstanceId: String?

        public var code: String?

        public var message: String?

        public var success: Bool?

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
            if self.appInstanceId != nil {
                map["AppInstanceId"] = self.appInstanceId!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInstanceId") {
                self.appInstanceId = dict["AppInstanceId"] as! String
            }
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var deleteAppInstanceModels: [DeleteAppInstancesResponseBody.DeleteAppInstanceModels]?

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
        if self.deleteAppInstanceModels != nil {
            var tmp : [Any] = []
            for k in self.deleteAppInstanceModels! {
                tmp.append(k.toMap())
            }
            map["DeleteAppInstanceModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeleteAppInstanceModels") {
            var tmp : [DeleteAppInstancesResponseBody.DeleteAppInstanceModels] = []
            for v in dict["DeleteAppInstanceModels"] as! [Any] {
                var model = DeleteAppInstancesResponseBody.DeleteAppInstanceModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deleteAppInstanceModels = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAppInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppInstancesResponseBody?

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
            var model = DeleteAppInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProjectRequest : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class DeleteProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProjectResponseBody?

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
            var model = DeleteProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessPageSessionRequest : Tea.TeaModel {
    public var accessPageId: String?

    public var accessPageToken: String?

    public var externalUserId: String?

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
        if self.accessPageId != nil {
            map["AccessPageId"] = self.accessPageId!
        }
        if self.accessPageToken != nil {
            map["AccessPageToken"] = self.accessPageToken!
        }
        if self.externalUserId != nil {
            map["ExternalUserId"] = self.externalUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessPageId") {
            self.accessPageId = dict["AccessPageId"] as! String
        }
        if dict.keys.contains("AccessPageToken") {
            self.accessPageToken = dict["AccessPageToken"] as! String
        }
        if dict.keys.contains("ExternalUserId") {
            self.externalUserId = dict["ExternalUserId"] as! String
        }
    }
}

public class GetAccessPageSessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var connectTicket: String?

        public var flowId: String?

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
            if self.connectTicket != nil {
                map["ConnectTicket"] = self.connectTicket!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectTicket") {
                self.connectTicket = dict["ConnectTicket"] as! String
            }
            if dict.keys.contains("FlowId") {
                self.flowId = dict["FlowId"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetAccessPageSessionResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetAccessPageSessionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class GetAccessPageSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessPageSessionResponseBody?

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
            var model = GetAccessPageSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppInstanceGroupRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var productType: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class GetAppInstanceGroupResponseBody : Tea.TeaModel {
    public class AppInstanceGroupModels : Tea.TeaModel {
        public class Apps : Tea.TeaModel {
            public var appIcon: String?

            public var appId: String?

            public var appName: String?

            public var appVersion: String?

            public var appVersionName: String?

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
                if self.appIcon != nil {
                    map["AppIcon"] = self.appIcon!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appVersion != nil {
                    map["AppVersion"] = self.appVersion!
                }
                if self.appVersionName != nil {
                    map["AppVersionName"] = self.appVersionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppIcon") {
                    self.appIcon = dict["AppIcon"] as! String
                }
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppVersion") {
                    self.appVersion = dict["AppVersion"] as! String
                }
                if dict.keys.contains("AppVersionName") {
                    self.appVersionName = dict["AppVersionName"] as! String
                }
            }
        }
        public class NodePool : Tea.TeaModel {
            public class RecurrenceSchedules : Tea.TeaModel {
                public class TimerPeriods : Tea.TeaModel {
                    public var amount: Int32?

                    public var endTime: String?

                    public var startTime: String?

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
                        if self.amount != nil {
                            map["Amount"] = self.amount!
                        }
                        if self.endTime != nil {
                            map["EndTime"] = self.endTime!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Amount") {
                            self.amount = dict["Amount"] as! Int32
                        }
                        if dict.keys.contains("EndTime") {
                            self.endTime = dict["EndTime"] as! String
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! String
                        }
                    }
                }
                public var recurrenceType: String?

                public var recurrenceValues: [Int32]?

                public var timerPeriods: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods]?

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
                    if self.recurrenceType != nil {
                        map["RecurrenceType"] = self.recurrenceType!
                    }
                    if self.recurrenceValues != nil {
                        map["RecurrenceValues"] = self.recurrenceValues!
                    }
                    if self.timerPeriods != nil {
                        var tmp : [Any] = []
                        for k in self.timerPeriods! {
                            tmp.append(k.toMap())
                        }
                        map["TimerPeriods"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RecurrenceType") {
                        self.recurrenceType = dict["RecurrenceType"] as! String
                    }
                    if dict.keys.contains("RecurrenceValues") {
                        self.recurrenceValues = dict["RecurrenceValues"] as! [Int32]
                    }
                    if dict.keys.contains("TimerPeriods") {
                        var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods] = []
                        for v in dict["TimerPeriods"] as! [Any] {
                            var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.timerPeriods = tmp
                    }
                }
            }
            public var amount: Int32?

            public var maxIdleAppInstanceAmount: Int32?

            public var maxScalingAmount: Int32?

            public var nodeAmount: Int32?

            public var nodeCapacity: Int32?

            public var nodeInstanceType: String?

            public var nodePoolId: String?

            public var nodeTypeName: String?

            public var nodeUsed: Int32?

            public var recurrenceSchedules: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules]?

            public var scalingDownAfterIdleMinutes: Int32?

            public var scalingNodeAmount: Int32?

            public var scalingNodeUsed: Int32?

            public var scalingStep: Int32?

            public var scalingUsageThreshold: String?

            public var strategyDisableDate: String?

            public var strategyEnableDate: String?

            public var strategyType: String?

            public var warmUp: Bool?

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
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.maxIdleAppInstanceAmount != nil {
                    map["MaxIdleAppInstanceAmount"] = self.maxIdleAppInstanceAmount!
                }
                if self.maxScalingAmount != nil {
                    map["MaxScalingAmount"] = self.maxScalingAmount!
                }
                if self.nodeAmount != nil {
                    map["NodeAmount"] = self.nodeAmount!
                }
                if self.nodeCapacity != nil {
                    map["NodeCapacity"] = self.nodeCapacity!
                }
                if self.nodeInstanceType != nil {
                    map["NodeInstanceType"] = self.nodeInstanceType!
                }
                if self.nodePoolId != nil {
                    map["NodePoolId"] = self.nodePoolId!
                }
                if self.nodeTypeName != nil {
                    map["NodeTypeName"] = self.nodeTypeName!
                }
                if self.nodeUsed != nil {
                    map["NodeUsed"] = self.nodeUsed!
                }
                if self.recurrenceSchedules != nil {
                    var tmp : [Any] = []
                    for k in self.recurrenceSchedules! {
                        tmp.append(k.toMap())
                    }
                    map["RecurrenceSchedules"] = tmp
                }
                if self.scalingDownAfterIdleMinutes != nil {
                    map["ScalingDownAfterIdleMinutes"] = self.scalingDownAfterIdleMinutes!
                }
                if self.scalingNodeAmount != nil {
                    map["ScalingNodeAmount"] = self.scalingNodeAmount!
                }
                if self.scalingNodeUsed != nil {
                    map["ScalingNodeUsed"] = self.scalingNodeUsed!
                }
                if self.scalingStep != nil {
                    map["ScalingStep"] = self.scalingStep!
                }
                if self.scalingUsageThreshold != nil {
                    map["ScalingUsageThreshold"] = self.scalingUsageThreshold!
                }
                if self.strategyDisableDate != nil {
                    map["StrategyDisableDate"] = self.strategyDisableDate!
                }
                if self.strategyEnableDate != nil {
                    map["StrategyEnableDate"] = self.strategyEnableDate!
                }
                if self.strategyType != nil {
                    map["StrategyType"] = self.strategyType!
                }
                if self.warmUp != nil {
                    map["WarmUp"] = self.warmUp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Amount") {
                    self.amount = dict["Amount"] as! Int32
                }
                if dict.keys.contains("MaxIdleAppInstanceAmount") {
                    self.maxIdleAppInstanceAmount = dict["MaxIdleAppInstanceAmount"] as! Int32
                }
                if dict.keys.contains("MaxScalingAmount") {
                    self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
                }
                if dict.keys.contains("NodeAmount") {
                    self.nodeAmount = dict["NodeAmount"] as! Int32
                }
                if dict.keys.contains("NodeCapacity") {
                    self.nodeCapacity = dict["NodeCapacity"] as! Int32
                }
                if dict.keys.contains("NodeInstanceType") {
                    self.nodeInstanceType = dict["NodeInstanceType"] as! String
                }
                if dict.keys.contains("NodePoolId") {
                    self.nodePoolId = dict["NodePoolId"] as! String
                }
                if dict.keys.contains("NodeTypeName") {
                    self.nodeTypeName = dict["NodeTypeName"] as! String
                }
                if dict.keys.contains("NodeUsed") {
                    self.nodeUsed = dict["NodeUsed"] as! Int32
                }
                if dict.keys.contains("RecurrenceSchedules") {
                    var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules] = []
                    for v in dict["RecurrenceSchedules"] as! [Any] {
                        var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.recurrenceSchedules = tmp
                }
                if dict.keys.contains("ScalingDownAfterIdleMinutes") {
                    self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
                }
                if dict.keys.contains("ScalingNodeAmount") {
                    self.scalingNodeAmount = dict["ScalingNodeAmount"] as! Int32
                }
                if dict.keys.contains("ScalingNodeUsed") {
                    self.scalingNodeUsed = dict["ScalingNodeUsed"] as! Int32
                }
                if dict.keys.contains("ScalingStep") {
                    self.scalingStep = dict["ScalingStep"] as! Int32
                }
                if dict.keys.contains("ScalingUsageThreshold") {
                    self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
                }
                if dict.keys.contains("StrategyDisableDate") {
                    self.strategyDisableDate = dict["StrategyDisableDate"] as! String
                }
                if dict.keys.contains("StrategyEnableDate") {
                    self.strategyEnableDate = dict["StrategyEnableDate"] as! String
                }
                if dict.keys.contains("StrategyType") {
                    self.strategyType = dict["StrategyType"] as! String
                }
                if dict.keys.contains("WarmUp") {
                    self.warmUp = dict["WarmUp"] as! Bool
                }
            }
        }
        public class OtaInfo : Tea.TeaModel {
            public var newOtaVersion: String?

            public var otaVersion: String?

            public var taskId: String?

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
                if self.newOtaVersion != nil {
                    map["NewOtaVersion"] = self.newOtaVersion!
                }
                if self.otaVersion != nil {
                    map["OtaVersion"] = self.otaVersion!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NewOtaVersion") {
                    self.newOtaVersion = dict["NewOtaVersion"] as! String
                }
                if dict.keys.contains("OtaVersion") {
                    self.otaVersion = dict["OtaVersion"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
            }
        }
        public var amount: Int32?

        public var appCenterImageId: String?

        public var appCenterImageName: String?

        public var appInstanceGroupId: String?

        public var appInstanceGroupName: String?

        public var appInstanceType: String?

        public var appInstanceTypeName: String?

        public var appPolicyId: String?

        public var apps: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps]?

        public var chargeResourceMode: String?

        public var chargeType: String?

        public var expiredTime: String?

        public var gmtCreate: String?

        public var maxAmount: Int32?

        public var minAmount: Int32?

        public var nodePool: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool]?

        public var osType: String?

        public var otaInfo: GetAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo?

        public var productType: String?

        public var regionId: String?

        public var reserveAmountRatio: String?

        public var reserveMaxAmount: Int32?

        public var reserveMinAmount: Int32?

        public var resourceStatus: String?

        public var scalingDownAfterIdleMinutes: Int32?

        public var scalingStep: Int32?

        public var scalingUsageThreshold: String?

        public var sessionTimeout: String?

        public var skipUserAuthCheck: Bool?

        public var specId: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.otaInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.appCenterImageId != nil {
                map["AppCenterImageId"] = self.appCenterImageId!
            }
            if self.appCenterImageName != nil {
                map["AppCenterImageName"] = self.appCenterImageName!
            }
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.appInstanceGroupName != nil {
                map["AppInstanceGroupName"] = self.appInstanceGroupName!
            }
            if self.appInstanceType != nil {
                map["AppInstanceType"] = self.appInstanceType!
            }
            if self.appInstanceTypeName != nil {
                map["AppInstanceTypeName"] = self.appInstanceTypeName!
            }
            if self.appPolicyId != nil {
                map["AppPolicyId"] = self.appPolicyId!
            }
            if self.apps != nil {
                var tmp : [Any] = []
                for k in self.apps! {
                    tmp.append(k.toMap())
                }
                map["Apps"] = tmp
            }
            if self.chargeResourceMode != nil {
                map["ChargeResourceMode"] = self.chargeResourceMode!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.maxAmount != nil {
                map["MaxAmount"] = self.maxAmount!
            }
            if self.minAmount != nil {
                map["MinAmount"] = self.minAmount!
            }
            if self.nodePool != nil {
                var tmp : [Any] = []
                for k in self.nodePool! {
                    tmp.append(k.toMap())
                }
                map["NodePool"] = tmp
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.otaInfo != nil {
                map["OtaInfo"] = self.otaInfo?.toMap()
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.reserveAmountRatio != nil {
                map["ReserveAmountRatio"] = self.reserveAmountRatio!
            }
            if self.reserveMaxAmount != nil {
                map["ReserveMaxAmount"] = self.reserveMaxAmount!
            }
            if self.reserveMinAmount != nil {
                map["ReserveMinAmount"] = self.reserveMinAmount!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.scalingDownAfterIdleMinutes != nil {
                map["ScalingDownAfterIdleMinutes"] = self.scalingDownAfterIdleMinutes!
            }
            if self.scalingStep != nil {
                map["ScalingStep"] = self.scalingStep!
            }
            if self.scalingUsageThreshold != nil {
                map["ScalingUsageThreshold"] = self.scalingUsageThreshold!
            }
            if self.sessionTimeout != nil {
                map["SessionTimeout"] = self.sessionTimeout!
            }
            if self.skipUserAuthCheck != nil {
                map["SkipUserAuthCheck"] = self.skipUserAuthCheck!
            }
            if self.specId != nil {
                map["SpecId"] = self.specId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! Int32
            }
            if dict.keys.contains("AppCenterImageId") {
                self.appCenterImageId = dict["AppCenterImageId"] as! String
            }
            if dict.keys.contains("AppCenterImageName") {
                self.appCenterImageName = dict["AppCenterImageName"] as! String
            }
            if dict.keys.contains("AppInstanceGroupId") {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("AppInstanceGroupName") {
                self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
            }
            if dict.keys.contains("AppInstanceType") {
                self.appInstanceType = dict["AppInstanceType"] as! String
            }
            if dict.keys.contains("AppInstanceTypeName") {
                self.appInstanceTypeName = dict["AppInstanceTypeName"] as! String
            }
            if dict.keys.contains("AppPolicyId") {
                self.appPolicyId = dict["AppPolicyId"] as! String
            }
            if dict.keys.contains("Apps") {
                var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps] = []
                for v in dict["Apps"] as! [Any] {
                    var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apps = tmp
            }
            if dict.keys.contains("ChargeResourceMode") {
                self.chargeResourceMode = dict["ChargeResourceMode"] as! String
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("MaxAmount") {
                self.maxAmount = dict["MaxAmount"] as! Int32
            }
            if dict.keys.contains("MinAmount") {
                self.minAmount = dict["MinAmount"] as! Int32
            }
            if dict.keys.contains("NodePool") {
                var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool] = []
                for v in dict["NodePool"] as! [Any] {
                    var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodePool = tmp
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("OtaInfo") {
                var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo()
                model.fromMap(dict["OtaInfo"] as! [String: Any])
                self.otaInfo = model
            }
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ReserveAmountRatio") {
                self.reserveAmountRatio = dict["ReserveAmountRatio"] as! String
            }
            if dict.keys.contains("ReserveMaxAmount") {
                self.reserveMaxAmount = dict["ReserveMaxAmount"] as! Int32
            }
            if dict.keys.contains("ReserveMinAmount") {
                self.reserveMinAmount = dict["ReserveMinAmount"] as! Int32
            }
            if dict.keys.contains("ResourceStatus") {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("ScalingDownAfterIdleMinutes") {
                self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
            }
            if dict.keys.contains("ScalingStep") {
                self.scalingStep = dict["ScalingStep"] as! Int32
            }
            if dict.keys.contains("ScalingUsageThreshold") {
                self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
            }
            if dict.keys.contains("SessionTimeout") {
                self.sessionTimeout = dict["SessionTimeout"] as! String
            }
            if dict.keys.contains("SkipUserAuthCheck") {
                self.skipUserAuthCheck = dict["SkipUserAuthCheck"] as! Bool
            }
            if dict.keys.contains("SpecId") {
                self.specId = dict["SpecId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var appInstanceGroupModels: GetAppInstanceGroupResponseBody.AppInstanceGroupModels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appInstanceGroupModels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceGroupModels != nil {
            map["AppInstanceGroupModels"] = self.appInstanceGroupModels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupModels") {
            var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels()
            model.fromMap(dict["AppInstanceGroupModels"] as! [String: Any])
            self.appInstanceGroupModels = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppInstanceGroupResponseBody?

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
            var model = GetAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConnectionTicketRequest : Tea.TeaModel {
    public var appId: String?

    public var appInstanceGroupIdList: [String]?

    public var appInstanceId: String?

    public var appInstancePersistentId: String?

    public var appStartParam: String?

    public var appVersion: String?

    public var bizRegionId: String?

    public var endUserId: String?

    public var productType: String?

    public var taskId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appInstanceGroupIdList != nil {
            map["AppInstanceGroupIdList"] = self.appInstanceGroupIdList!
        }
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.appInstancePersistentId != nil {
            map["AppInstancePersistentId"] = self.appInstancePersistentId!
        }
        if self.appStartParam != nil {
            map["AppStartParam"] = self.appStartParam!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupIdList") {
            self.appInstanceGroupIdList = dict["AppInstanceGroupIdList"] as! [String]
        }
        if dict.keys.contains("AppInstanceId") {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("AppInstancePersistentId") {
            self.appInstancePersistentId = dict["AppInstancePersistentId"] as! String
        }
        if dict.keys.contains("AppStartParam") {
            self.appStartParam = dict["AppStartParam"] as! String
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetConnectionTicketResponseBody : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var appInstancePersistentId: String?

    public var bizRegionId: String?

    public var osType: String?

    public var requestId: String?

    public var taskId: String?

    public var taskStatus: String?

    public var tenantId: Int64?

    public var ticket: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.appInstancePersistentId != nil {
            map["AppInstancePersistentId"] = self.appInstancePersistentId!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceId") {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("AppInstancePersistentId") {
            self.appInstancePersistentId = dict["AppInstancePersistentId"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Ticket") {
            self.ticket = dict["Ticket"] as! String
        }
    }
}

public class GetConnectionTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConnectionTicketResponseBody?

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
            var model = GetConnectionTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDebugAppInstanceRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var productType: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class GetDebugAppInstanceResponseBody : Tea.TeaModel {
    public var appId: String?

    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var appVersion: String?

    public var authCode: String?

    public var requestId: String?

    public var userId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceId") {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("AuthCode") {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetDebugAppInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDebugAppInstanceResponseBody?

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
            var model = GetDebugAppInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOtaTaskByTaskIdRequest : Tea.TeaModel {
    public var taskId: String?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetOtaTaskByTaskIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var otaVersion: String?

    public var releaseNote: String?

    public var requestId: String?

    public var taskStartTime: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.otaVersion != nil {
            map["OtaVersion"] = self.otaVersion!
        }
        if self.releaseNote != nil {
            map["ReleaseNote"] = self.releaseNote!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskStartTime != nil {
            map["TaskStartTime"] = self.taskStartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OtaVersion") {
            self.otaVersion = dict["OtaVersion"] as! String
        }
        if dict.keys.contains("ReleaseNote") {
            self.releaseNote = dict["ReleaseNote"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskStartTime") {
            self.taskStartTime = dict["TaskStartTime"] as! String
        }
    }
}

public class GetOtaTaskByTaskIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOtaTaskByTaskIdResponseBody?

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
            var model = GetOtaTaskByTaskIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectPoliciesRequest : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetProjectPoliciesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clipboard: Int32?

        public var fileTransfer: Int32?

        public var frameRate: String?

        public var keepAliveDuration: Int32?

        public var maxHours: Int32?

        public var maxSessions: Int32?

        public var projectId: String?

        public var sessionResolutionHeight: Int32?

        public var sessionResolutionWidth: Int32?

        public var sessionSpec: String?

        public var streamingMode: String?

        public var terminalResolutionAdaptation: Bool?

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
            if self.clipboard != nil {
                map["Clipboard"] = self.clipboard!
            }
            if self.fileTransfer != nil {
                map["FileTransfer"] = self.fileTransfer!
            }
            if self.frameRate != nil {
                map["FrameRate"] = self.frameRate!
            }
            if self.keepAliveDuration != nil {
                map["KeepAliveDuration"] = self.keepAliveDuration!
            }
            if self.maxHours != nil {
                map["MaxHours"] = self.maxHours!
            }
            if self.maxSessions != nil {
                map["MaxSessions"] = self.maxSessions!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.sessionResolutionHeight != nil {
                map["SessionResolutionHeight"] = self.sessionResolutionHeight!
            }
            if self.sessionResolutionWidth != nil {
                map["SessionResolutionWidth"] = self.sessionResolutionWidth!
            }
            if self.sessionSpec != nil {
                map["SessionSpec"] = self.sessionSpec!
            }
            if self.streamingMode != nil {
                map["StreamingMode"] = self.streamingMode!
            }
            if self.terminalResolutionAdaptation != nil {
                map["TerminalResolutionAdaptation"] = self.terminalResolutionAdaptation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Clipboard") {
                self.clipboard = dict["Clipboard"] as! Int32
            }
            if dict.keys.contains("FileTransfer") {
                self.fileTransfer = dict["FileTransfer"] as! Int32
            }
            if dict.keys.contains("FrameRate") {
                self.frameRate = dict["FrameRate"] as! String
            }
            if dict.keys.contains("KeepAliveDuration") {
                self.keepAliveDuration = dict["KeepAliveDuration"] as! Int32
            }
            if dict.keys.contains("MaxHours") {
                self.maxHours = dict["MaxHours"] as! Int32
            }
            if dict.keys.contains("MaxSessions") {
                self.maxSessions = dict["MaxSessions"] as! Int32
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("SessionResolutionHeight") {
                self.sessionResolutionHeight = dict["SessionResolutionHeight"] as! Int32
            }
            if dict.keys.contains("SessionResolutionWidth") {
                self.sessionResolutionWidth = dict["SessionResolutionWidth"] as! Int32
            }
            if dict.keys.contains("SessionSpec") {
                self.sessionSpec = dict["SessionSpec"] as! String
            }
            if dict.keys.contains("StreamingMode") {
                self.streamingMode = dict["StreamingMode"] as! String
            }
            if dict.keys.contains("TerminalResolutionAdaptation") {
                self.terminalResolutionAdaptation = dict["TerminalResolutionAdaptation"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: GetProjectPoliciesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetProjectPoliciesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class GetProjectPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectPoliciesResponseBody?

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
            var model = GetProjectPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourcePriceRequest : Tea.TeaModel {
    public var amount: Int64?

    public var appInstanceType: String?

    public var bizRegionId: String?

    public var chargeType: String?

    public var nodeInstanceType: String?

    public var period: Int64?

    public var periodUnit: String?

    public var productType: String?

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
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.appInstanceType != nil {
            map["AppInstanceType"] = self.appInstanceType!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.nodeInstanceType != nil {
            map["NodeInstanceType"] = self.nodeInstanceType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! Int64
        }
        if dict.keys.contains("AppInstanceType") {
            self.appInstanceType = dict["AppInstanceType"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("NodeInstanceType") {
            self.nodeInstanceType = dict["NodeInstanceType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class GetResourcePriceResponseBody : Tea.TeaModel {
    public class PriceList : Tea.TeaModel {
        public class Price : Tea.TeaModel {
            public class Promotions : Tea.TeaModel {
                public var optionCode: String?

                public var promotionDesc: String?

                public var promotionId: String?

                public var promotionName: String?

                public var selected: Bool?

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
                    if self.optionCode != nil {
                        map["OptionCode"] = self.optionCode!
                    }
                    if self.promotionDesc != nil {
                        map["PromotionDesc"] = self.promotionDesc!
                    }
                    if self.promotionId != nil {
                        map["PromotionId"] = self.promotionId!
                    }
                    if self.promotionName != nil {
                        map["PromotionName"] = self.promotionName!
                    }
                    if self.selected != nil {
                        map["Selected"] = self.selected!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OptionCode") {
                        self.optionCode = dict["OptionCode"] as! String
                    }
                    if dict.keys.contains("PromotionDesc") {
                        self.promotionDesc = dict["PromotionDesc"] as! String
                    }
                    if dict.keys.contains("PromotionId") {
                        self.promotionId = dict["PromotionId"] as! String
                    }
                    if dict.keys.contains("PromotionName") {
                        self.promotionName = dict["PromotionName"] as! String
                    }
                    if dict.keys.contains("Selected") {
                        self.selected = dict["Selected"] as! Bool
                    }
                }
            }
            public var currency: String?

            public var discountPrice: String?

            public var originalPrice: String?

            public var promotions: [GetResourcePriceResponseBody.PriceList.Price.Promotions]?

            public var tradePrice: String?

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
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.promotions != nil {
                    var tmp : [Any] = []
                    for k in self.promotions! {
                        tmp.append(k.toMap())
                    }
                    map["Promotions"] = tmp
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") {
                    self.discountPrice = dict["DiscountPrice"] as! String
                }
                if dict.keys.contains("OriginalPrice") {
                    self.originalPrice = dict["OriginalPrice"] as! String
                }
                if dict.keys.contains("Promotions") {
                    var tmp : [GetResourcePriceResponseBody.PriceList.Price.Promotions] = []
                    for v in dict["Promotions"] as! [Any] {
                        var model = GetResourcePriceResponseBody.PriceList.Price.Promotions()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.promotions = tmp
                }
                if dict.keys.contains("TradePrice") {
                    self.tradePrice = dict["TradePrice"] as! String
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var description_: String?

            public var ruleId: Int64?

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
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var price: GetResourcePriceResponseBody.PriceList.Price?

        public var priceType: String?

        public var rules: [GetResourcePriceResponseBody.PriceList.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.price?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.price != nil {
                map["Price"] = self.price?.toMap()
            }
            if self.priceType != nil {
                map["PriceType"] = self.priceType!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Price") {
                var model = GetResourcePriceResponseBody.PriceList.Price()
                model.fromMap(dict["Price"] as! [String: Any])
                self.price = model
            }
            if dict.keys.contains("PriceType") {
                self.priceType = dict["PriceType"] as! String
            }
            if dict.keys.contains("Rules") {
                var tmp : [GetResourcePriceResponseBody.PriceList.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = GetResourcePriceResponseBody.PriceList.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
        }
    }
    public class PriceModel : Tea.TeaModel {
        public class Price : Tea.TeaModel {
            public class Promotions : Tea.TeaModel {
                public var optionCode: String?

                public var promotionDesc: String?

                public var promotionId: String?

                public var promotionName: String?

                public var selected: Bool?

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
                    if self.optionCode != nil {
                        map["OptionCode"] = self.optionCode!
                    }
                    if self.promotionDesc != nil {
                        map["PromotionDesc"] = self.promotionDesc!
                    }
                    if self.promotionId != nil {
                        map["PromotionId"] = self.promotionId!
                    }
                    if self.promotionName != nil {
                        map["PromotionName"] = self.promotionName!
                    }
                    if self.selected != nil {
                        map["Selected"] = self.selected!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OptionCode") {
                        self.optionCode = dict["OptionCode"] as! String
                    }
                    if dict.keys.contains("PromotionDesc") {
                        self.promotionDesc = dict["PromotionDesc"] as! String
                    }
                    if dict.keys.contains("PromotionId") {
                        self.promotionId = dict["PromotionId"] as! String
                    }
                    if dict.keys.contains("PromotionName") {
                        self.promotionName = dict["PromotionName"] as! String
                    }
                    if dict.keys.contains("Selected") {
                        self.selected = dict["Selected"] as! Bool
                    }
                }
            }
            public var currency: String?

            public var discountPrice: String?

            public var originalPrice: String?

            public var promotions: [GetResourcePriceResponseBody.PriceModel.Price.Promotions]?

            public var tradePrice: String?

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
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.promotions != nil {
                    var tmp : [Any] = []
                    for k in self.promotions! {
                        tmp.append(k.toMap())
                    }
                    map["Promotions"] = tmp
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") {
                    self.discountPrice = dict["DiscountPrice"] as! String
                }
                if dict.keys.contains("OriginalPrice") {
                    self.originalPrice = dict["OriginalPrice"] as! String
                }
                if dict.keys.contains("Promotions") {
                    var tmp : [GetResourcePriceResponseBody.PriceModel.Price.Promotions] = []
                    for v in dict["Promotions"] as! [Any] {
                        var model = GetResourcePriceResponseBody.PriceModel.Price.Promotions()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.promotions = tmp
                }
                if dict.keys.contains("TradePrice") {
                    self.tradePrice = dict["TradePrice"] as! String
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var description_: String?

            public var ruleId: Int64?

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
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var price: GetResourcePriceResponseBody.PriceModel.Price?

        public var rules: [GetResourcePriceResponseBody.PriceModel.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.price?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.price != nil {
                map["Price"] = self.price?.toMap()
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Price") {
                var model = GetResourcePriceResponseBody.PriceModel.Price()
                model.fromMap(dict["Price"] as! [String: Any])
                self.price = model
            }
            if dict.keys.contains("Rules") {
                var tmp : [GetResourcePriceResponseBody.PriceModel.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = GetResourcePriceResponseBody.PriceModel.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var priceList: [GetResourcePriceResponseBody.PriceList]?

    public var priceModel: GetResourcePriceResponseBody.PriceModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.priceModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.priceList != nil {
            var tmp : [Any] = []
            for k in self.priceList! {
                tmp.append(k.toMap())
            }
            map["PriceList"] = tmp
        }
        if self.priceModel != nil {
            map["PriceModel"] = self.priceModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PriceList") {
            var tmp : [GetResourcePriceResponseBody.PriceList] = []
            for v in dict["PriceList"] as! [Any] {
                var model = GetResourcePriceResponseBody.PriceList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.priceList = tmp
        }
        if dict.keys.contains("PriceModel") {
            var model = GetResourcePriceResponseBody.PriceModel()
            model.fromMap(dict["PriceModel"] as! [String: Any])
            self.priceModel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetResourcePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourcePriceResponseBody?

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
            var model = GetResourcePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceRenewPriceRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var period: Int64?

    public var periodUnit: String?

    public var productType: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class GetResourceRenewPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Price : Tea.TeaModel {
            public class Promotions : Tea.TeaModel {
                public var optionCode: String?

                public var promotionDesc: String?

                public var promotionId: String?

                public var promotionName: String?

                public var selected: Bool?

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
                    if self.optionCode != nil {
                        map["OptionCode"] = self.optionCode!
                    }
                    if self.promotionDesc != nil {
                        map["PromotionDesc"] = self.promotionDesc!
                    }
                    if self.promotionId != nil {
                        map["PromotionId"] = self.promotionId!
                    }
                    if self.promotionName != nil {
                        map["PromotionName"] = self.promotionName!
                    }
                    if self.selected != nil {
                        map["Selected"] = self.selected!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OptionCode") {
                        self.optionCode = dict["OptionCode"] as! String
                    }
                    if dict.keys.contains("PromotionDesc") {
                        self.promotionDesc = dict["PromotionDesc"] as! String
                    }
                    if dict.keys.contains("PromotionId") {
                        self.promotionId = dict["PromotionId"] as! String
                    }
                    if dict.keys.contains("PromotionName") {
                        self.promotionName = dict["PromotionName"] as! String
                    }
                    if dict.keys.contains("Selected") {
                        self.selected = dict["Selected"] as! Bool
                    }
                }
            }
            public var currency: String?

            public var discountPrice: String?

            public var originalPrice: String?

            public var promotions: [GetResourceRenewPriceResponseBody.Data.Price.Promotions]?

            public var tradePrice: String?

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
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.promotions != nil {
                    var tmp : [Any] = []
                    for k in self.promotions! {
                        tmp.append(k.toMap())
                    }
                    map["Promotions"] = tmp
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") {
                    self.discountPrice = dict["DiscountPrice"] as! String
                }
                if dict.keys.contains("OriginalPrice") {
                    self.originalPrice = dict["OriginalPrice"] as! String
                }
                if dict.keys.contains("Promotions") {
                    var tmp : [GetResourceRenewPriceResponseBody.Data.Price.Promotions] = []
                    for v in dict["Promotions"] as! [Any] {
                        var model = GetResourceRenewPriceResponseBody.Data.Price.Promotions()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.promotions = tmp
                }
                if dict.keys.contains("TradePrice") {
                    self.tradePrice = dict["TradePrice"] as! String
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var description_: String?

            public var ruleId: Int64?

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
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var price: GetResourceRenewPriceResponseBody.Data.Price?

        public var rules: [GetResourceRenewPriceResponseBody.Data.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.price?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.price != nil {
                map["Price"] = self.price?.toMap()
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Price") {
                var model = GetResourceRenewPriceResponseBody.Data.Price()
                model.fromMap(dict["Price"] as! [String: Any])
                self.price = model
            }
            if dict.keys.contains("Rules") {
                var tmp : [GetResourceRenewPriceResponseBody.Data.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = GetResourceRenewPriceResponseBody.Data.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
        }
    }
    public var data: GetResourceRenewPriceResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetResourceRenewPriceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetResourceRenewPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceRenewPriceResponseBody?

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
            var model = GetResourceRenewPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccessPagesRequest : Tea.TeaModel {
    public var accessPageId: String?

    public var accessPageName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var sortType: String?

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
        if self.accessPageId != nil {
            map["AccessPageId"] = self.accessPageId!
        }
        if self.accessPageName != nil {
            map["AccessPageName"] = self.accessPageName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessPageId") {
            self.accessPageId = dict["AccessPageId"] as! String
        }
        if dict.keys.contains("AccessPageName") {
            self.accessPageName = dict["AccessPageName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortType") {
            self.sortType = dict["SortType"] as! String
        }
    }
}

public class ListAccessPagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessMode: String?

        public var accessPageId: String?

        public var accessPageName: String?

        public var accessPageState: String?

        public var accessUrl: String?

        public var contentId: String?

        public var contentName: String?

        public var effectTime: Int32?

        public var gmtCreate: String?

        public var projectId: String?

        public var projectName: String?

        public var unit: String?

        public var urlExpireTime: String?

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
            if self.accessMode != nil {
                map["AccessMode"] = self.accessMode!
            }
            if self.accessPageId != nil {
                map["AccessPageId"] = self.accessPageId!
            }
            if self.accessPageName != nil {
                map["AccessPageName"] = self.accessPageName!
            }
            if self.accessPageState != nil {
                map["AccessPageState"] = self.accessPageState!
            }
            if self.accessUrl != nil {
                map["AccessUrl"] = self.accessUrl!
            }
            if self.contentId != nil {
                map["ContentId"] = self.contentId!
            }
            if self.contentName != nil {
                map["ContentName"] = self.contentName!
            }
            if self.effectTime != nil {
                map["EffectTime"] = self.effectTime!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            if self.urlExpireTime != nil {
                map["UrlExpireTime"] = self.urlExpireTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessMode") {
                self.accessMode = dict["AccessMode"] as! String
            }
            if dict.keys.contains("AccessPageId") {
                self.accessPageId = dict["AccessPageId"] as! String
            }
            if dict.keys.contains("AccessPageName") {
                self.accessPageName = dict["AccessPageName"] as! String
            }
            if dict.keys.contains("AccessPageState") {
                self.accessPageState = dict["AccessPageState"] as! String
            }
            if dict.keys.contains("AccessUrl") {
                self.accessUrl = dict["AccessUrl"] as! String
            }
            if dict.keys.contains("ContentId") {
                self.contentId = dict["ContentId"] as! String
            }
            if dict.keys.contains("ContentName") {
                self.contentName = dict["ContentName"] as! String
            }
            if dict.keys.contains("EffectTime") {
                self.effectTime = dict["EffectTime"] as! Int32
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("Unit") {
                self.unit = dict["Unit"] as! String
            }
            if dict.keys.contains("UrlExpireTime") {
                self.urlExpireTime = dict["UrlExpireTime"] as! String
            }
        }
    }
    public var code: String?

    public var count: String?

    public var data: [ListAccessPagesResponseBody.Data]?

    public var message: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListAccessPagesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListAccessPagesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class ListAccessPagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessPagesResponseBody?

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
            var model = ListAccessPagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppInstanceGroupRequest : Tea.TeaModel {
    public var appCenterImageId: String?

    public var appInstanceGroupId: String?

    public var appInstanceGroupName: String?

    public var bizRegionId: String?

    public var nodeInstanceType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: String?

    public var regionId: String?

    public var status: [String]?

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
        if self.appCenterImageId != nil {
            map["AppCenterImageId"] = self.appCenterImageId!
        }
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.nodeInstanceType != nil {
            map["NodeInstanceType"] = self.nodeInstanceType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCenterImageId") {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("NodeInstanceType") {
            self.nodeInstanceType = dict["NodeInstanceType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! [String]
        }
    }
}

public class ListAppInstanceGroupResponseBody : Tea.TeaModel {
    public class AppInstanceGroupModels : Tea.TeaModel {
        public class Apps : Tea.TeaModel {
            public var appIcon: String?

            public var appId: String?

            public var appName: String?

            public var appVersion: String?

            public var appVersionName: String?

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
                if self.appIcon != nil {
                    map["AppIcon"] = self.appIcon!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appVersion != nil {
                    map["AppVersion"] = self.appVersion!
                }
                if self.appVersionName != nil {
                    map["AppVersionName"] = self.appVersionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppIcon") {
                    self.appIcon = dict["AppIcon"] as! String
                }
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppVersion") {
                    self.appVersion = dict["AppVersion"] as! String
                }
                if dict.keys.contains("AppVersionName") {
                    self.appVersionName = dict["AppVersionName"] as! String
                }
            }
        }
        public class NodePool : Tea.TeaModel {
            public class RecurrenceSchedules : Tea.TeaModel {
                public class TimerPeriods : Tea.TeaModel {
                    public var amount: Int32?

                    public var endTime: String?

                    public var startTime: String?

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
                        if self.amount != nil {
                            map["Amount"] = self.amount!
                        }
                        if self.endTime != nil {
                            map["EndTime"] = self.endTime!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Amount") {
                            self.amount = dict["Amount"] as! Int32
                        }
                        if dict.keys.contains("EndTime") {
                            self.endTime = dict["EndTime"] as! String
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! String
                        }
                    }
                }
                public var recurrenceType: String?

                public var recurrenceValues: [Int32]?

                public var timerPeriods: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods]?

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
                    if self.recurrenceType != nil {
                        map["RecurrenceType"] = self.recurrenceType!
                    }
                    if self.recurrenceValues != nil {
                        map["RecurrenceValues"] = self.recurrenceValues!
                    }
                    if self.timerPeriods != nil {
                        var tmp : [Any] = []
                        for k in self.timerPeriods! {
                            tmp.append(k.toMap())
                        }
                        map["TimerPeriods"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RecurrenceType") {
                        self.recurrenceType = dict["RecurrenceType"] as! String
                    }
                    if dict.keys.contains("RecurrenceValues") {
                        self.recurrenceValues = dict["RecurrenceValues"] as! [Int32]
                    }
                    if dict.keys.contains("TimerPeriods") {
                        var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods] = []
                        for v in dict["TimerPeriods"] as! [Any] {
                            var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.timerPeriods = tmp
                    }
                }
            }
            public var amount: Int32?

            public var maxIdleAppInstanceAmount: Int32?

            public var maxScalingAmount: Int32?

            public var nodeAmount: Int32?

            public var nodeCapacity: Int32?

            public var nodeInstanceType: String?

            public var nodePoolId: String?

            public var nodeTypeName: String?

            public var nodeUsed: Int32?

            public var recurrenceSchedules: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules]?

            public var scalingDownAfterIdleMinutes: Int32?

            public var scalingNodeAmount: Int32?

            public var scalingNodeUsed: Int32?

            public var scalingStep: Int32?

            public var scalingUsageThreshold: String?

            public var strategyDisableDate: String?

            public var strategyEnableDate: String?

            public var strategyType: String?

            public var warmUp: Bool?

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
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.maxIdleAppInstanceAmount != nil {
                    map["MaxIdleAppInstanceAmount"] = self.maxIdleAppInstanceAmount!
                }
                if self.maxScalingAmount != nil {
                    map["MaxScalingAmount"] = self.maxScalingAmount!
                }
                if self.nodeAmount != nil {
                    map["NodeAmount"] = self.nodeAmount!
                }
                if self.nodeCapacity != nil {
                    map["NodeCapacity"] = self.nodeCapacity!
                }
                if self.nodeInstanceType != nil {
                    map["NodeInstanceType"] = self.nodeInstanceType!
                }
                if self.nodePoolId != nil {
                    map["NodePoolId"] = self.nodePoolId!
                }
                if self.nodeTypeName != nil {
                    map["NodeTypeName"] = self.nodeTypeName!
                }
                if self.nodeUsed != nil {
                    map["NodeUsed"] = self.nodeUsed!
                }
                if self.recurrenceSchedules != nil {
                    var tmp : [Any] = []
                    for k in self.recurrenceSchedules! {
                        tmp.append(k.toMap())
                    }
                    map["RecurrenceSchedules"] = tmp
                }
                if self.scalingDownAfterIdleMinutes != nil {
                    map["ScalingDownAfterIdleMinutes"] = self.scalingDownAfterIdleMinutes!
                }
                if self.scalingNodeAmount != nil {
                    map["ScalingNodeAmount"] = self.scalingNodeAmount!
                }
                if self.scalingNodeUsed != nil {
                    map["ScalingNodeUsed"] = self.scalingNodeUsed!
                }
                if self.scalingStep != nil {
                    map["ScalingStep"] = self.scalingStep!
                }
                if self.scalingUsageThreshold != nil {
                    map["ScalingUsageThreshold"] = self.scalingUsageThreshold!
                }
                if self.strategyDisableDate != nil {
                    map["StrategyDisableDate"] = self.strategyDisableDate!
                }
                if self.strategyEnableDate != nil {
                    map["StrategyEnableDate"] = self.strategyEnableDate!
                }
                if self.strategyType != nil {
                    map["StrategyType"] = self.strategyType!
                }
                if self.warmUp != nil {
                    map["WarmUp"] = self.warmUp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Amount") {
                    self.amount = dict["Amount"] as! Int32
                }
                if dict.keys.contains("MaxIdleAppInstanceAmount") {
                    self.maxIdleAppInstanceAmount = dict["MaxIdleAppInstanceAmount"] as! Int32
                }
                if dict.keys.contains("MaxScalingAmount") {
                    self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
                }
                if dict.keys.contains("NodeAmount") {
                    self.nodeAmount = dict["NodeAmount"] as! Int32
                }
                if dict.keys.contains("NodeCapacity") {
                    self.nodeCapacity = dict["NodeCapacity"] as! Int32
                }
                if dict.keys.contains("NodeInstanceType") {
                    self.nodeInstanceType = dict["NodeInstanceType"] as! String
                }
                if dict.keys.contains("NodePoolId") {
                    self.nodePoolId = dict["NodePoolId"] as! String
                }
                if dict.keys.contains("NodeTypeName") {
                    self.nodeTypeName = dict["NodeTypeName"] as! String
                }
                if dict.keys.contains("NodeUsed") {
                    self.nodeUsed = dict["NodeUsed"] as! Int32
                }
                if dict.keys.contains("RecurrenceSchedules") {
                    var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules] = []
                    for v in dict["RecurrenceSchedules"] as! [Any] {
                        var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.recurrenceSchedules = tmp
                }
                if dict.keys.contains("ScalingDownAfterIdleMinutes") {
                    self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
                }
                if dict.keys.contains("ScalingNodeAmount") {
                    self.scalingNodeAmount = dict["ScalingNodeAmount"] as! Int32
                }
                if dict.keys.contains("ScalingNodeUsed") {
                    self.scalingNodeUsed = dict["ScalingNodeUsed"] as! Int32
                }
                if dict.keys.contains("ScalingStep") {
                    self.scalingStep = dict["ScalingStep"] as! Int32
                }
                if dict.keys.contains("ScalingUsageThreshold") {
                    self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
                }
                if dict.keys.contains("StrategyDisableDate") {
                    self.strategyDisableDate = dict["StrategyDisableDate"] as! String
                }
                if dict.keys.contains("StrategyEnableDate") {
                    self.strategyEnableDate = dict["StrategyEnableDate"] as! String
                }
                if dict.keys.contains("StrategyType") {
                    self.strategyType = dict["StrategyType"] as! String
                }
                if dict.keys.contains("WarmUp") {
                    self.warmUp = dict["WarmUp"] as! Bool
                }
            }
        }
        public class OtaInfo : Tea.TeaModel {
            public var newOtaVersion: String?

            public var otaVersion: String?

            public var taskId: String?

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
                if self.newOtaVersion != nil {
                    map["NewOtaVersion"] = self.newOtaVersion!
                }
                if self.otaVersion != nil {
                    map["OtaVersion"] = self.otaVersion!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NewOtaVersion") {
                    self.newOtaVersion = dict["NewOtaVersion"] as! String
                }
                if dict.keys.contains("OtaVersion") {
                    self.otaVersion = dict["OtaVersion"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
            }
        }
        public var amount: Int32?

        public var appCenterImageId: String?

        public var appInstanceGroupId: String?

        public var appInstanceGroupName: String?

        public var appInstanceType: String?

        public var appPolicyId: String?

        public var apps: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps]?

        public var chargeResourceMode: String?

        public var chargeType: String?

        public var expiredTime: String?

        public var gmtCreate: String?

        public var maxAmount: Int32?

        public var minAmount: Int32?

        public var nodePool: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool]?

        public var osType: String?

        public var otaInfo: ListAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo?

        public var productType: String?

        public var regionId: String?

        public var reserveAmountRatio: String?

        public var reserveMaxAmount: Int32?

        public var reserveMinAmount: Int32?

        public var resourceStatus: String?

        public var scalingDownAfterIdleMinutes: Int32?

        public var scalingStep: Int32?

        public var scalingUsageThreshold: String?

        public var sessionTimeout: String?

        public var skipUserAuthCheck: Bool?

        public var specId: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.otaInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.appCenterImageId != nil {
                map["AppCenterImageId"] = self.appCenterImageId!
            }
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.appInstanceGroupName != nil {
                map["AppInstanceGroupName"] = self.appInstanceGroupName!
            }
            if self.appInstanceType != nil {
                map["AppInstanceType"] = self.appInstanceType!
            }
            if self.appPolicyId != nil {
                map["AppPolicyId"] = self.appPolicyId!
            }
            if self.apps != nil {
                var tmp : [Any] = []
                for k in self.apps! {
                    tmp.append(k.toMap())
                }
                map["Apps"] = tmp
            }
            if self.chargeResourceMode != nil {
                map["ChargeResourceMode"] = self.chargeResourceMode!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.maxAmount != nil {
                map["MaxAmount"] = self.maxAmount!
            }
            if self.minAmount != nil {
                map["MinAmount"] = self.minAmount!
            }
            if self.nodePool != nil {
                var tmp : [Any] = []
                for k in self.nodePool! {
                    tmp.append(k.toMap())
                }
                map["NodePool"] = tmp
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.otaInfo != nil {
                map["OtaInfo"] = self.otaInfo?.toMap()
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.reserveAmountRatio != nil {
                map["ReserveAmountRatio"] = self.reserveAmountRatio!
            }
            if self.reserveMaxAmount != nil {
                map["ReserveMaxAmount"] = self.reserveMaxAmount!
            }
            if self.reserveMinAmount != nil {
                map["ReserveMinAmount"] = self.reserveMinAmount!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.scalingDownAfterIdleMinutes != nil {
                map["ScalingDownAfterIdleMinutes"] = self.scalingDownAfterIdleMinutes!
            }
            if self.scalingStep != nil {
                map["ScalingStep"] = self.scalingStep!
            }
            if self.scalingUsageThreshold != nil {
                map["ScalingUsageThreshold"] = self.scalingUsageThreshold!
            }
            if self.sessionTimeout != nil {
                map["SessionTimeout"] = self.sessionTimeout!
            }
            if self.skipUserAuthCheck != nil {
                map["SkipUserAuthCheck"] = self.skipUserAuthCheck!
            }
            if self.specId != nil {
                map["SpecId"] = self.specId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! Int32
            }
            if dict.keys.contains("AppCenterImageId") {
                self.appCenterImageId = dict["AppCenterImageId"] as! String
            }
            if dict.keys.contains("AppInstanceGroupId") {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("AppInstanceGroupName") {
                self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
            }
            if dict.keys.contains("AppInstanceType") {
                self.appInstanceType = dict["AppInstanceType"] as! String
            }
            if dict.keys.contains("AppPolicyId") {
                self.appPolicyId = dict["AppPolicyId"] as! String
            }
            if dict.keys.contains("Apps") {
                var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps] = []
                for v in dict["Apps"] as! [Any] {
                    var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apps = tmp
            }
            if dict.keys.contains("ChargeResourceMode") {
                self.chargeResourceMode = dict["ChargeResourceMode"] as! String
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("MaxAmount") {
                self.maxAmount = dict["MaxAmount"] as! Int32
            }
            if dict.keys.contains("MinAmount") {
                self.minAmount = dict["MinAmount"] as! Int32
            }
            if dict.keys.contains("NodePool") {
                var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool] = []
                for v in dict["NodePool"] as! [Any] {
                    var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodePool = tmp
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("OtaInfo") {
                var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo()
                model.fromMap(dict["OtaInfo"] as! [String: Any])
                self.otaInfo = model
            }
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ReserveAmountRatio") {
                self.reserveAmountRatio = dict["ReserveAmountRatio"] as! String
            }
            if dict.keys.contains("ReserveMaxAmount") {
                self.reserveMaxAmount = dict["ReserveMaxAmount"] as! Int32
            }
            if dict.keys.contains("ReserveMinAmount") {
                self.reserveMinAmount = dict["ReserveMinAmount"] as! Int32
            }
            if dict.keys.contains("ResourceStatus") {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("ScalingDownAfterIdleMinutes") {
                self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
            }
            if dict.keys.contains("ScalingStep") {
                self.scalingStep = dict["ScalingStep"] as! Int32
            }
            if dict.keys.contains("ScalingUsageThreshold") {
                self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
            }
            if dict.keys.contains("SessionTimeout") {
                self.sessionTimeout = dict["SessionTimeout"] as! String
            }
            if dict.keys.contains("SkipUserAuthCheck") {
                self.skipUserAuthCheck = dict["SkipUserAuthCheck"] as! Bool
            }
            if dict.keys.contains("SpecId") {
                self.specId = dict["SpecId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var appInstanceGroupModels: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

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
        if self.appInstanceGroupModels != nil {
            var tmp : [Any] = []
            for k in self.appInstanceGroupModels! {
                tmp.append(k.toMap())
            }
            map["AppInstanceGroupModels"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupModels") {
            var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels] = []
            for v in dict["AppInstanceGroupModels"] as! [Any] {
                var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.appInstanceGroupModels = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppInstanceGroupResponseBody?

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
            var model = ListAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppInstancesRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var appInstanceIdList: [String]?

    public var includeDeleted: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: [String]?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.appInstanceIdList != nil {
            map["AppInstanceIdList"] = self.appInstanceIdList!
        }
        if self.includeDeleted != nil {
            map["IncludeDeleted"] = self.includeDeleted!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceId") {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("AppInstanceIdList") {
            self.appInstanceIdList = dict["AppInstanceIdList"] as! [String]
        }
        if dict.keys.contains("IncludeDeleted") {
            self.includeDeleted = dict["IncludeDeleted"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! [String]
        }
    }
}

public class ListAppInstancesResponseBody : Tea.TeaModel {
    public class AppInstanceModels : Tea.TeaModel {
        public class BindInfo : Tea.TeaModel {
            public var endUserId: String?

            public var usageDuration: Int64?

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
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.usageDuration != nil {
                    map["UsageDuration"] = self.usageDuration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndUserId") {
                    self.endUserId = dict["EndUserId"] as! String
                }
                if dict.keys.contains("UsageDuration") {
                    self.usageDuration = dict["UsageDuration"] as! Int64
                }
            }
        }
        public var appInstanceGroupId: String?

        public var appInstanceId: String?

        public var bindInfo: ListAppInstancesResponseBody.AppInstanceModels.BindInfo?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var mainEthPublicIp: String?

        public var sessionStatus: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bindInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.appInstanceId != nil {
                map["AppInstanceId"] = self.appInstanceId!
            }
            if self.bindInfo != nil {
                map["BindInfo"] = self.bindInfo?.toMap()
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.mainEthPublicIp != nil {
                map["MainEthPublicIp"] = self.mainEthPublicIp!
            }
            if self.sessionStatus != nil {
                map["SessionStatus"] = self.sessionStatus!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInstanceGroupId") {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("AppInstanceId") {
                self.appInstanceId = dict["AppInstanceId"] as! String
            }
            if dict.keys.contains("BindInfo") {
                var model = ListAppInstancesResponseBody.AppInstanceModels.BindInfo()
                model.fromMap(dict["BindInfo"] as! [String: Any])
                self.bindInfo = model
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("MainEthPublicIp") {
                self.mainEthPublicIp = dict["MainEthPublicIp"] as! String
            }
            if dict.keys.contains("SessionStatus") {
                self.sessionStatus = dict["SessionStatus"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var appInstanceModels: [ListAppInstancesResponseBody.AppInstanceModels]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

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
        if self.appInstanceModels != nil {
            var tmp : [Any] = []
            for k in self.appInstanceModels! {
                tmp.append(k.toMap())
            }
            map["AppInstanceModels"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceModels") {
            var tmp : [ListAppInstancesResponseBody.AppInstanceModels] = []
            for v in dict["AppInstanceModels"] as! [Any] {
                var model = ListAppInstancesResponseBody.AppInstanceModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.appInstanceModels = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAppInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppInstancesResponseBody?

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
            var model = ListAppInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeInstanceTypeRequest : Tea.TeaModel {
    public var bizRegionId: String?

    public var language: String?

    public var nodeInstanceType: String?

    public var osType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: String?

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
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.nodeInstanceType != nil {
            map["NodeInstanceType"] = self.nodeInstanceType!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("NodeInstanceType") {
            self.nodeInstanceType = dict["NodeInstanceType"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class ListNodeInstanceTypeResponseBody : Tea.TeaModel {
    public class NodeInstanceTypeModels : Tea.TeaModel {
        public var cpu: String?

        public var gpu: String?

        public var gpuMemory: Int64?

        public var maxCapacity: Int32?

        public var memory: Int64?

        public var nodeInstanceType: String?

        public var nodeInstanceTypeFamily: String?

        public var nodeTypeName: String?

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
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.gpu != nil {
                map["Gpu"] = self.gpu!
            }
            if self.gpuMemory != nil {
                map["GpuMemory"] = self.gpuMemory!
            }
            if self.maxCapacity != nil {
                map["MaxCapacity"] = self.maxCapacity!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nodeInstanceType != nil {
                map["NodeInstanceType"] = self.nodeInstanceType!
            }
            if self.nodeInstanceTypeFamily != nil {
                map["NodeInstanceTypeFamily"] = self.nodeInstanceTypeFamily!
            }
            if self.nodeTypeName != nil {
                map["NodeTypeName"] = self.nodeTypeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! String
            }
            if dict.keys.contains("Gpu") {
                self.gpu = dict["Gpu"] as! String
            }
            if dict.keys.contains("GpuMemory") {
                self.gpuMemory = dict["GpuMemory"] as! Int64
            }
            if dict.keys.contains("MaxCapacity") {
                self.maxCapacity = dict["MaxCapacity"] as! Int32
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("NodeInstanceType") {
                self.nodeInstanceType = dict["NodeInstanceType"] as! String
            }
            if dict.keys.contains("NodeInstanceTypeFamily") {
                self.nodeInstanceTypeFamily = dict["NodeInstanceTypeFamily"] as! String
            }
            if dict.keys.contains("NodeTypeName") {
                self.nodeTypeName = dict["NodeTypeName"] as! String
            }
        }
    }
    public var nodeInstanceTypeModels: [ListNodeInstanceTypeResponseBody.NodeInstanceTypeModels]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

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
        if self.nodeInstanceTypeModels != nil {
            var tmp : [Any] = []
            for k in self.nodeInstanceTypeModels! {
                tmp.append(k.toMap())
            }
            map["NodeInstanceTypeModels"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeInstanceTypeModels") {
            var tmp : [ListNodeInstanceTypeResponseBody.NodeInstanceTypeModels] = []
            for v in dict["NodeInstanceTypeModels"] as! [Any] {
                var model = ListNodeInstanceTypeResponseBody.NodeInstanceTypeModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodeInstanceTypeModels = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListNodeInstanceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeInstanceTypeResponseBody?

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
            var model = ListNodeInstanceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOtaTaskRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var otaType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.otaType != nil {
            map["OtaType"] = self.otaType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("OtaType") {
            self.otaType = dict["OtaType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListOtaTaskResponseBody : Tea.TeaModel {
    public class TaskList : Tea.TeaModel {
        public var otaVersion: String?

        public var taskDisplayStatus: String?

        public var taskId: String?

        public var taskStartTime: String?

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
            if self.otaVersion != nil {
                map["OtaVersion"] = self.otaVersion!
            }
            if self.taskDisplayStatus != nil {
                map["TaskDisplayStatus"] = self.taskDisplayStatus!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStartTime != nil {
                map["TaskStartTime"] = self.taskStartTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OtaVersion") {
                self.otaVersion = dict["OtaVersion"] as! String
            }
            if dict.keys.contains("TaskDisplayStatus") {
                self.taskDisplayStatus = dict["TaskDisplayStatus"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskStartTime") {
                self.taskStartTime = dict["TaskStartTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var taskList: [ListOtaTaskResponseBody.TaskList]?

    public var totalCount: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskList != nil {
            var tmp : [Any] = []
            for k in self.taskList! {
                tmp.append(k.toMap())
            }
            map["TaskList"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskList") {
            var tmp : [ListOtaTaskResponseBody.TaskList] = []
            for v in dict["TaskList"] as! [Any] {
                var model = ListOtaTaskResponseBody.TaskList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskList = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListOtaTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOtaTaskResponseBody?

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
            var model = ListOtaTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var projectName: String?

    public var sortType: String?

    public var stateList: [Int32]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.stateList != nil {
            map["StateList"] = self.stateList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SortType") {
            self.sortType = dict["SortType"] as! String
        }
        if dict.keys.contains("StateList") {
            self.stateList = dict["StateList"] as! [Int32]
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessPageId: [Int64]?

        public var availableHours: Int32?

        public var contentId: String?

        public var contentName: String?

        public var createTime: String?

        public var description_: String?

        public var inUseSessions: Int64?

        public var maxHours: Int64?

        public var maxSessions: Int64?

        public var projectId: String?

        public var projectName: String?

        public var projectState: String?

        public var sessionSpec: String?

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
            if self.accessPageId != nil {
                map["AccessPageId"] = self.accessPageId!
            }
            if self.availableHours != nil {
                map["AvailableHours"] = self.availableHours!
            }
            if self.contentId != nil {
                map["ContentId"] = self.contentId!
            }
            if self.contentName != nil {
                map["ContentName"] = self.contentName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.inUseSessions != nil {
                map["InUseSessions"] = self.inUseSessions!
            }
            if self.maxHours != nil {
                map["MaxHours"] = self.maxHours!
            }
            if self.maxSessions != nil {
                map["MaxSessions"] = self.maxSessions!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectState != nil {
                map["ProjectState"] = self.projectState!
            }
            if self.sessionSpec != nil {
                map["SessionSpec"] = self.sessionSpec!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessPageId") {
                self.accessPageId = dict["AccessPageId"] as! [Int64]
            }
            if dict.keys.contains("AvailableHours") {
                self.availableHours = dict["AvailableHours"] as! Int32
            }
            if dict.keys.contains("ContentId") {
                self.contentId = dict["ContentId"] as! String
            }
            if dict.keys.contains("ContentName") {
                self.contentName = dict["ContentName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InUseSessions") {
                self.inUseSessions = dict["InUseSessions"] as! Int64
            }
            if dict.keys.contains("MaxHours") {
                self.maxHours = dict["MaxHours"] as! Int64
            }
            if dict.keys.contains("MaxSessions") {
                self.maxSessions = dict["MaxSessions"] as! Int64
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ProjectState") {
                self.projectState = dict["ProjectState"] as! String
            }
            if dict.keys.contains("SessionSpec") {
                self.sessionSpec = dict["SessionSpec"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListProjectsResponseBody.Data]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: String?

    public var totalCount: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListProjectsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListProjectsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

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
            var model = ListProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegionsRequest : Tea.TeaModel {
    public var bizSource: String?

    public var productType: String?

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
        if self.bizSource != nil {
            map["BizSource"] = self.bizSource!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizSource") {
            self.bizSource = dict["BizSource"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class RegionModels : Tea.TeaModel {
        public var regionId: String?

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
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
        }
    }
    public var regionModels: [ListRegionsResponseBody.RegionModels]?

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
        if self.regionModels != nil {
            var tmp : [Any] = []
            for k in self.regionModels! {
                tmp.append(k.toMap())
            }
            map["RegionModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionModels") {
            var tmp : [ListRegionsResponseBody.RegionModels] = []
            for v in dict["RegionModels"] as! [Any] {
                var model = ListRegionsResponseBody.RegionModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regionModels = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

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
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSessionPackagesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var sessionPackageId: String?

    public var sessionPackageName: String?

    public var sortType: String?

    public var stateList: [Int32]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sessionPackageId != nil {
            map["SessionPackageId"] = self.sessionPackageId!
        }
        if self.sessionPackageName != nil {
            map["SessionPackageName"] = self.sessionPackageName!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.stateList != nil {
            map["StateList"] = self.stateList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SessionPackageId") {
            self.sessionPackageId = dict["SessionPackageId"] as! String
        }
        if dict.keys.contains("SessionPackageName") {
            self.sessionPackageName = dict["SessionPackageName"] as! String
        }
        if dict.keys.contains("SortType") {
            self.sortType = dict["SortType"] as! String
        }
        if dict.keys.contains("StateList") {
            self.stateList = dict["StateList"] as! [Int32]
        }
    }
}

public class ListSessionPackagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstanceObject : Tea.TeaModel {
            public var expiredTime: String?

            public var instanceId: String?

            public var instanceType: String?

            public var resourceId: String?

            public var resourceType: String?

            public var startTime: String?

            public var totalTime: Int64?

            public var usedTime: Int64?

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
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.totalTime != nil {
                    map["TotalTime"] = self.totalTime!
                }
                if self.usedTime != nil {
                    map["UsedTime"] = self.usedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("TotalTime") {
                    self.totalTime = dict["TotalTime"] as! Int64
                }
                if dict.keys.contains("UsedTime") {
                    self.usedTime = dict["UsedTime"] as! Int64
                }
            }
        }
        public var availableHours: Int64?

        public var chargeType: String?

        public var deleteStatus: Int32?

        public var gmtCreate: String?

        public var gmtModifiedTime: String?

        public var instanceObject: ListSessionPackagesResponseBody.Data.InstanceObject?

        public var maxHours: Int64?

        public var maxSessions: Int64?

        public var projectId: String?

        public var projectName: String?

        public var region: String?

        public var sessionPackageId: String?

        public var sessionPackageName: String?

        public var sessionPackageTypeId: String?

        public var sessionSpec: String?

        public var sessionUsageRate: Int64?

        public var state: Int32?

        public var userIdentification: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.instanceObject?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableHours != nil {
                map["AvailableHours"] = self.availableHours!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.deleteStatus != nil {
                map["DeleteStatus"] = self.deleteStatus!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.instanceObject != nil {
                map["InstanceObject"] = self.instanceObject?.toMap()
            }
            if self.maxHours != nil {
                map["MaxHours"] = self.maxHours!
            }
            if self.maxSessions != nil {
                map["MaxSessions"] = self.maxSessions!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.sessionPackageId != nil {
                map["SessionPackageId"] = self.sessionPackageId!
            }
            if self.sessionPackageName != nil {
                map["SessionPackageName"] = self.sessionPackageName!
            }
            if self.sessionPackageTypeId != nil {
                map["SessionPackageTypeId"] = self.sessionPackageTypeId!
            }
            if self.sessionSpec != nil {
                map["SessionSpec"] = self.sessionSpec!
            }
            if self.sessionUsageRate != nil {
                map["SessionUsageRate"] = self.sessionUsageRate!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.userIdentification != nil {
                map["UserIdentification"] = self.userIdentification!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableHours") {
                self.availableHours = dict["AvailableHours"] as! Int64
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("DeleteStatus") {
                self.deleteStatus = dict["DeleteStatus"] as! Int32
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("InstanceObject") {
                var model = ListSessionPackagesResponseBody.Data.InstanceObject()
                model.fromMap(dict["InstanceObject"] as! [String: Any])
                self.instanceObject = model
            }
            if dict.keys.contains("MaxHours") {
                self.maxHours = dict["MaxHours"] as! Int64
            }
            if dict.keys.contains("MaxSessions") {
                self.maxSessions = dict["MaxSessions"] as! Int64
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SessionPackageId") {
                self.sessionPackageId = dict["SessionPackageId"] as! String
            }
            if dict.keys.contains("SessionPackageName") {
                self.sessionPackageName = dict["SessionPackageName"] as! String
            }
            if dict.keys.contains("SessionPackageTypeId") {
                self.sessionPackageTypeId = dict["SessionPackageTypeId"] as! String
            }
            if dict.keys.contains("SessionSpec") {
                self.sessionSpec = dict["SessionSpec"] as! String
            }
            if dict.keys.contains("SessionUsageRate") {
                self.sessionUsageRate = dict["SessionUsageRate"] as! Int64
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! Int32
            }
            if dict.keys.contains("UserIdentification") {
                self.userIdentification = dict["UserIdentification"] as! Int64
            }
        }
    }
    public var data: [ListSessionPackagesResponseBody.Data]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListSessionPackagesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListSessionPackagesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListSessionPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSessionPackagesResponseBody?

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
            var model = ListSessionPackagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTenantConfigResponseBody : Tea.TeaModel {
    public class TenantConfigModel : Tea.TeaModel {
        public var appInstanceGroupExpireRemind: Bool?

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
            if self.appInstanceGroupExpireRemind != nil {
                map["AppInstanceGroupExpireRemind"] = self.appInstanceGroupExpireRemind!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInstanceGroupExpireRemind") {
                self.appInstanceGroupExpireRemind = dict["AppInstanceGroupExpireRemind"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var tenantConfigModel: ListTenantConfigResponseBody.TenantConfigModel?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantConfigModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantConfigModel != nil {
            map["TenantConfigModel"] = self.tenantConfigModel?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantConfigModel") {
            var model = ListTenantConfigResponseBody.TenantConfigModel()
            model.fromMap(dict["TenantConfigModel"] as! [String: Any])
            self.tenantConfigModel = model
        }
    }
}

public class ListTenantConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTenantConfigResponseBody?

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
            var model = ListTenantConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LogOffAllSessionsInAppInstanceGroupRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var productType: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class LogOffAllSessionsInAppInstanceGroupResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class LogOffAllSessionsInAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LogOffAllSessionsInAppInstanceGroupResponseBody?

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
            var model = LogOffAllSessionsInAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MigrateSessionPackageRequest : Tea.TeaModel {
    public var destProjectId: String?

    public var sessionPackageId: String?

    public var sourceProjectId: String?

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
        if self.destProjectId != nil {
            map["DestProjectId"] = self.destProjectId!
        }
        if self.sessionPackageId != nil {
            map["SessionPackageId"] = self.sessionPackageId!
        }
        if self.sourceProjectId != nil {
            map["SourceProjectId"] = self.sourceProjectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestProjectId") {
            self.destProjectId = dict["DestProjectId"] as! String
        }
        if dict.keys.contains("SessionPackageId") {
            self.sessionPackageId = dict["SessionPackageId"] as! String
        }
        if dict.keys.contains("SourceProjectId") {
            self.sourceProjectId = dict["SourceProjectId"] as! String
        }
    }
}

public class MigrateSessionPackageResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class MigrateSessionPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MigrateSessionPackageResponseBody?

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
            var model = MigrateSessionPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppInstanceGroupAttributeRequest : Tea.TeaModel {
    public class Network : Tea.TeaModel {
        public class DomainRules : Tea.TeaModel {
            public var domain: String?

            public var policy: String?

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
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("Policy") {
                    self.policy = dict["Policy"] as! String
                }
            }
        }
        public var domainRules: [ModifyAppInstanceGroupAttributeRequest.Network.DomainRules]?

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
            if self.domainRules != nil {
                var tmp : [Any] = []
                for k in self.domainRules! {
                    tmp.append(k.toMap())
                }
                map["DomainRules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainRules") {
                var tmp : [ModifyAppInstanceGroupAttributeRequest.Network.DomainRules] = []
                for v in dict["DomainRules"] as! [Any] {
                    var model = ModifyAppInstanceGroupAttributeRequest.Network.DomainRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainRules = tmp
            }
        }
    }
    public class NodePool : Tea.TeaModel {
        public var nodeCapacity: Int32?

        public var nodePoolId: String?

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
            if self.nodeCapacity != nil {
                map["NodeCapacity"] = self.nodeCapacity!
            }
            if self.nodePoolId != nil {
                map["NodePoolId"] = self.nodePoolId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeCapacity") {
                self.nodeCapacity = dict["NodeCapacity"] as! Int32
            }
            if dict.keys.contains("NodePoolId") {
                self.nodePoolId = dict["NodePoolId"] as! String
            }
        }
    }
    public class SecurityPolicy : Tea.TeaModel {
        public var resetAfterUnbind: Bool?

        public var skipUserAuthCheck: Bool?

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
            if self.resetAfterUnbind != nil {
                map["ResetAfterUnbind"] = self.resetAfterUnbind!
            }
            if self.skipUserAuthCheck != nil {
                map["SkipUserAuthCheck"] = self.skipUserAuthCheck!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResetAfterUnbind") {
                self.resetAfterUnbind = dict["ResetAfterUnbind"] as! Bool
            }
            if dict.keys.contains("SkipUserAuthCheck") {
                self.skipUserAuthCheck = dict["SkipUserAuthCheck"] as! Bool
            }
        }
    }
    public class StoragePolicy : Tea.TeaModel {
        public var storageTypeList: [String]?

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
            if self.storageTypeList != nil {
                map["StorageTypeList"] = self.storageTypeList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StorageTypeList") {
                self.storageTypeList = dict["StorageTypeList"] as! [String]
            }
        }
    }
    public var appInstanceGroupId: String?

    public var appInstanceGroupName: String?

    public var network: ModifyAppInstanceGroupAttributeRequest.Network?

    public var nodePool: ModifyAppInstanceGroupAttributeRequest.NodePool?

    public var preOpenAppId: String?

    public var preOpenMode: String?

    public var productType: String?

    public var securityPolicy: ModifyAppInstanceGroupAttributeRequest.SecurityPolicy?

    public var sessionTimeout: Int32?

    public var storagePolicy: ModifyAppInstanceGroupAttributeRequest.StoragePolicy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.network?.validate()
        try self.nodePool?.validate()
        try self.securityPolicy?.validate()
        try self.storagePolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
        }
        if self.network != nil {
            map["Network"] = self.network?.toMap()
        }
        if self.nodePool != nil {
            map["NodePool"] = self.nodePool?.toMap()
        }
        if self.preOpenAppId != nil {
            map["PreOpenAppId"] = self.preOpenAppId!
        }
        if self.preOpenMode != nil {
            map["PreOpenMode"] = self.preOpenMode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.securityPolicy != nil {
            map["SecurityPolicy"] = self.securityPolicy?.toMap()
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.storagePolicy != nil {
            map["StoragePolicy"] = self.storagePolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("Network") {
            var model = ModifyAppInstanceGroupAttributeRequest.Network()
            model.fromMap(dict["Network"] as! [String: Any])
            self.network = model
        }
        if dict.keys.contains("NodePool") {
            var model = ModifyAppInstanceGroupAttributeRequest.NodePool()
            model.fromMap(dict["NodePool"] as! [String: Any])
            self.nodePool = model
        }
        if dict.keys.contains("PreOpenAppId") {
            self.preOpenAppId = dict["PreOpenAppId"] as! String
        }
        if dict.keys.contains("PreOpenMode") {
            self.preOpenMode = dict["PreOpenMode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SecurityPolicy") {
            var model = ModifyAppInstanceGroupAttributeRequest.SecurityPolicy()
            model.fromMap(dict["SecurityPolicy"] as! [String: Any])
            self.securityPolicy = model
        }
        if dict.keys.contains("SessionTimeout") {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
        if dict.keys.contains("StoragePolicy") {
            var model = ModifyAppInstanceGroupAttributeRequest.StoragePolicy()
            model.fromMap(dict["StoragePolicy"] as! [String: Any])
            self.storagePolicy = model
        }
    }
}

public class ModifyAppInstanceGroupAttributeShrinkRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceGroupName: String?

    public var networkShrink: String?

    public var nodePoolShrink: String?

    public var preOpenAppId: String?

    public var preOpenMode: String?

    public var productType: String?

    public var securityPolicyShrink: String?

    public var sessionTimeout: Int32?

    public var storagePolicyShrink: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
        }
        if self.networkShrink != nil {
            map["Network"] = self.networkShrink!
        }
        if self.nodePoolShrink != nil {
            map["NodePool"] = self.nodePoolShrink!
        }
        if self.preOpenAppId != nil {
            map["PreOpenAppId"] = self.preOpenAppId!
        }
        if self.preOpenMode != nil {
            map["PreOpenMode"] = self.preOpenMode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.securityPolicyShrink != nil {
            map["SecurityPolicy"] = self.securityPolicyShrink!
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.storagePolicyShrink != nil {
            map["StoragePolicy"] = self.storagePolicyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("Network") {
            self.networkShrink = dict["Network"] as! String
        }
        if dict.keys.contains("NodePool") {
            self.nodePoolShrink = dict["NodePool"] as! String
        }
        if dict.keys.contains("PreOpenAppId") {
            self.preOpenAppId = dict["PreOpenAppId"] as! String
        }
        if dict.keys.contains("PreOpenMode") {
            self.preOpenMode = dict["PreOpenMode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SecurityPolicy") {
            self.securityPolicyShrink = dict["SecurityPolicy"] as! String
        }
        if dict.keys.contains("SessionTimeout") {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
        if dict.keys.contains("StoragePolicy") {
            self.storagePolicyShrink = dict["StoragePolicy"] as! String
        }
    }
}

public class ModifyAppInstanceGroupAttributeResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAppInstanceGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppInstanceGroupAttributeResponseBody?

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
            var model = ModifyAppInstanceGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppPolicyRequest : Tea.TeaModel {
    public class VideoPolicy : Tea.TeaModel {
        public var frameRate: Int32?

        public var sessionResolutionHeight: Int32?

        public var sessionResolutionWidth: Int32?

        public var streamingMode: String?

        public var terminalResolutionAdaptive: Bool?

        public var visualQualityStrategy: String?

        public var webrtc: Bool?

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
            if self.frameRate != nil {
                map["FrameRate"] = self.frameRate!
            }
            if self.sessionResolutionHeight != nil {
                map["SessionResolutionHeight"] = self.sessionResolutionHeight!
            }
            if self.sessionResolutionWidth != nil {
                map["SessionResolutionWidth"] = self.sessionResolutionWidth!
            }
            if self.streamingMode != nil {
                map["StreamingMode"] = self.streamingMode!
            }
            if self.terminalResolutionAdaptive != nil {
                map["TerminalResolutionAdaptive"] = self.terminalResolutionAdaptive!
            }
            if self.visualQualityStrategy != nil {
                map["VisualQualityStrategy"] = self.visualQualityStrategy!
            }
            if self.webrtc != nil {
                map["Webrtc"] = self.webrtc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FrameRate") {
                self.frameRate = dict["FrameRate"] as! Int32
            }
            if dict.keys.contains("SessionResolutionHeight") {
                self.sessionResolutionHeight = dict["SessionResolutionHeight"] as! Int32
            }
            if dict.keys.contains("SessionResolutionWidth") {
                self.sessionResolutionWidth = dict["SessionResolutionWidth"] as! Int32
            }
            if dict.keys.contains("StreamingMode") {
                self.streamingMode = dict["StreamingMode"] as! String
            }
            if dict.keys.contains("TerminalResolutionAdaptive") {
                self.terminalResolutionAdaptive = dict["TerminalResolutionAdaptive"] as! Bool
            }
            if dict.keys.contains("VisualQualityStrategy") {
                self.visualQualityStrategy = dict["VisualQualityStrategy"] as! String
            }
            if dict.keys.contains("Webrtc") {
                self.webrtc = dict["Webrtc"] as! Bool
            }
        }
    }
    public var appPolicyId: String?

    public var productType: String?

    public var videoPolicy: ModifyAppPolicyRequest.VideoPolicy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.videoPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appPolicyId != nil {
            map["AppPolicyId"] = self.appPolicyId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.videoPolicy != nil {
            map["VideoPolicy"] = self.videoPolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppPolicyId") {
            self.appPolicyId = dict["AppPolicyId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("VideoPolicy") {
            var model = ModifyAppPolicyRequest.VideoPolicy()
            model.fromMap(dict["VideoPolicy"] as! [String: Any])
            self.videoPolicy = model
        }
    }
}

public class ModifyAppPolicyShrinkRequest : Tea.TeaModel {
    public var appPolicyId: String?

    public var productType: String?

    public var videoPolicyShrink: String?

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
        if self.appPolicyId != nil {
            map["AppPolicyId"] = self.appPolicyId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.videoPolicyShrink != nil {
            map["VideoPolicy"] = self.videoPolicyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppPolicyId") {
            self.appPolicyId = dict["AppPolicyId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("VideoPolicy") {
            self.videoPolicyShrink = dict["VideoPolicy"] as! String
        }
    }
}

public class ModifyAppPolicyResponseBody : Tea.TeaModel {
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

public class ModifyAppPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppPolicyResponseBody?

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
            var model = ModifyAppPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyNodePoolAttributeRequest : Tea.TeaModel {
    public class NodePoolStrategy : Tea.TeaModel {
        public class RecurrenceSchedules : Tea.TeaModel {
            public class TimerPeriods : Tea.TeaModel {
                public var amount: Int32?

                public var endTime: String?

                public var startTime: String?

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
                    if self.amount != nil {
                        map["Amount"] = self.amount!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Amount") {
                        self.amount = dict["Amount"] as! Int32
                    }
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                }
            }
            public var recurrenceType: String?

            public var recurrenceValues: [Int32]?

            public var timerPeriods: [ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules.TimerPeriods]?

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
                if self.recurrenceType != nil {
                    map["RecurrenceType"] = self.recurrenceType!
                }
                if self.recurrenceValues != nil {
                    map["RecurrenceValues"] = self.recurrenceValues!
                }
                if self.timerPeriods != nil {
                    var tmp : [Any] = []
                    for k in self.timerPeriods! {
                        tmp.append(k.toMap())
                    }
                    map["TimerPeriods"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RecurrenceType") {
                    self.recurrenceType = dict["RecurrenceType"] as! String
                }
                if dict.keys.contains("RecurrenceValues") {
                    self.recurrenceValues = dict["RecurrenceValues"] as! [Int32]
                }
                if dict.keys.contains("TimerPeriods") {
                    var tmp : [ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules.TimerPeriods] = []
                    for v in dict["TimerPeriods"] as! [Any] {
                        var model = ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules.TimerPeriods()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.timerPeriods = tmp
                }
            }
        }
        public var maxIdleAppInstanceAmount: Int32?

        public var maxScalingAmount: Int32?

        public var nodeAmount: Int32?

        public var recurrenceSchedules: [ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules]?

        public var scalingDownAfterIdleMinutes: Int32?

        public var scalingStep: Int32?

        public var scalingUsageThreshold: String?

        public var strategyDisableDate: String?

        public var strategyEnableDate: String?

        public var strategyType: String?

        public var warmUp: Bool?

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
            if self.maxIdleAppInstanceAmount != nil {
                map["MaxIdleAppInstanceAmount"] = self.maxIdleAppInstanceAmount!
            }
            if self.maxScalingAmount != nil {
                map["MaxScalingAmount"] = self.maxScalingAmount!
            }
            if self.nodeAmount != nil {
                map["NodeAmount"] = self.nodeAmount!
            }
            if self.recurrenceSchedules != nil {
                var tmp : [Any] = []
                for k in self.recurrenceSchedules! {
                    tmp.append(k.toMap())
                }
                map["RecurrenceSchedules"] = tmp
            }
            if self.scalingDownAfterIdleMinutes != nil {
                map["ScalingDownAfterIdleMinutes"] = self.scalingDownAfterIdleMinutes!
            }
            if self.scalingStep != nil {
                map["ScalingStep"] = self.scalingStep!
            }
            if self.scalingUsageThreshold != nil {
                map["ScalingUsageThreshold"] = self.scalingUsageThreshold!
            }
            if self.strategyDisableDate != nil {
                map["StrategyDisableDate"] = self.strategyDisableDate!
            }
            if self.strategyEnableDate != nil {
                map["StrategyEnableDate"] = self.strategyEnableDate!
            }
            if self.strategyType != nil {
                map["StrategyType"] = self.strategyType!
            }
            if self.warmUp != nil {
                map["WarmUp"] = self.warmUp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxIdleAppInstanceAmount") {
                self.maxIdleAppInstanceAmount = dict["MaxIdleAppInstanceAmount"] as! Int32
            }
            if dict.keys.contains("MaxScalingAmount") {
                self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
            }
            if dict.keys.contains("NodeAmount") {
                self.nodeAmount = dict["NodeAmount"] as! Int32
            }
            if dict.keys.contains("RecurrenceSchedules") {
                var tmp : [ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules] = []
                for v in dict["RecurrenceSchedules"] as! [Any] {
                    var model = ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recurrenceSchedules = tmp
            }
            if dict.keys.contains("ScalingDownAfterIdleMinutes") {
                self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
            }
            if dict.keys.contains("ScalingStep") {
                self.scalingStep = dict["ScalingStep"] as! Int32
            }
            if dict.keys.contains("ScalingUsageThreshold") {
                self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
            }
            if dict.keys.contains("StrategyDisableDate") {
                self.strategyDisableDate = dict["StrategyDisableDate"] as! String
            }
            if dict.keys.contains("StrategyEnableDate") {
                self.strategyEnableDate = dict["StrategyEnableDate"] as! String
            }
            if dict.keys.contains("StrategyType") {
                self.strategyType = dict["StrategyType"] as! String
            }
            if dict.keys.contains("WarmUp") {
                self.warmUp = dict["WarmUp"] as! Bool
            }
        }
    }
    public var bizRegionId: String?

    public var nodeCapacity: Int32?

    public var nodePoolStrategy: ModifyNodePoolAttributeRequest.NodePoolStrategy?

    public var poolId: String?

    public var productType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodePoolStrategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.nodeCapacity != nil {
            map["NodeCapacity"] = self.nodeCapacity!
        }
        if self.nodePoolStrategy != nil {
            map["NodePoolStrategy"] = self.nodePoolStrategy?.toMap()
        }
        if self.poolId != nil {
            map["PoolId"] = self.poolId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("NodeCapacity") {
            self.nodeCapacity = dict["NodeCapacity"] as! Int32
        }
        if dict.keys.contains("NodePoolStrategy") {
            var model = ModifyNodePoolAttributeRequest.NodePoolStrategy()
            model.fromMap(dict["NodePoolStrategy"] as! [String: Any])
            self.nodePoolStrategy = model
        }
        if dict.keys.contains("PoolId") {
            self.poolId = dict["PoolId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class ModifyNodePoolAttributeShrinkRequest : Tea.TeaModel {
    public var bizRegionId: String?

    public var nodeCapacity: Int32?

    public var nodePoolStrategyShrink: String?

    public var poolId: String?

    public var productType: String?

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
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.nodeCapacity != nil {
            map["NodeCapacity"] = self.nodeCapacity!
        }
        if self.nodePoolStrategyShrink != nil {
            map["NodePoolStrategy"] = self.nodePoolStrategyShrink!
        }
        if self.poolId != nil {
            map["PoolId"] = self.poolId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("NodeCapacity") {
            self.nodeCapacity = dict["NodeCapacity"] as! Int32
        }
        if dict.keys.contains("NodePoolStrategy") {
            self.nodePoolStrategyShrink = dict["NodePoolStrategy"] as! String
        }
        if dict.keys.contains("PoolId") {
            self.poolId = dict["PoolId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class ModifyNodePoolAttributeResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyNodePoolAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNodePoolAttributeResponseBody?

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
            var model = ModifyNodePoolAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyProjectPolicyRequest : Tea.TeaModel {
    public var clipboard: Int32?

    public var fileTransfer: Int32?

    public var frameRate: Int32?

    public var keepAliveDuration: Int32?

    public var projectId: String?

    public var sessionResolutionHeight: Int32?

    public var sessionResolutionWidth: Int32?

    public var streamingMode: String?

    public var terminalResolutionAdaptation: Bool?

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
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.fileTransfer != nil {
            map["FileTransfer"] = self.fileTransfer!
        }
        if self.frameRate != nil {
            map["FrameRate"] = self.frameRate!
        }
        if self.keepAliveDuration != nil {
            map["KeepAliveDuration"] = self.keepAliveDuration!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sessionResolutionHeight != nil {
            map["SessionResolutionHeight"] = self.sessionResolutionHeight!
        }
        if self.sessionResolutionWidth != nil {
            map["SessionResolutionWidth"] = self.sessionResolutionWidth!
        }
        if self.streamingMode != nil {
            map["StreamingMode"] = self.streamingMode!
        }
        if self.terminalResolutionAdaptation != nil {
            map["TerminalResolutionAdaptation"] = self.terminalResolutionAdaptation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clipboard") {
            self.clipboard = dict["Clipboard"] as! Int32
        }
        if dict.keys.contains("FileTransfer") {
            self.fileTransfer = dict["FileTransfer"] as! Int32
        }
        if dict.keys.contains("FrameRate") {
            self.frameRate = dict["FrameRate"] as! Int32
        }
        if dict.keys.contains("KeepAliveDuration") {
            self.keepAliveDuration = dict["KeepAliveDuration"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SessionResolutionHeight") {
            self.sessionResolutionHeight = dict["SessionResolutionHeight"] as! Int32
        }
        if dict.keys.contains("SessionResolutionWidth") {
            self.sessionResolutionWidth = dict["SessionResolutionWidth"] as! Int32
        }
        if dict.keys.contains("StreamingMode") {
            self.streamingMode = dict["StreamingMode"] as! String
        }
        if dict.keys.contains("TerminalResolutionAdaptation") {
            self.terminalResolutionAdaptation = dict["TerminalResolutionAdaptation"] as! Bool
        }
    }
}

public class ModifyProjectPolicyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class ModifyProjectPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyProjectPolicyResponseBody?

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
            var model = ModifyProjectPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantConfigRequest : Tea.TeaModel {
    public var appInstanceGroupExpireRemind: Bool?

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
        if self.appInstanceGroupExpireRemind != nil {
            map["AppInstanceGroupExpireRemind"] = self.appInstanceGroupExpireRemind!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupExpireRemind") {
            self.appInstanceGroupExpireRemind = dict["AppInstanceGroupExpireRemind"] as! Bool
        }
    }
}

public class ModifyTenantConfigResponseBody : Tea.TeaModel {
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

public class ModifyTenantConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantConfigResponseBody?

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
            var model = ModifyTenantConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PageListAppInstanceGroupUserRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class PageListAppInstanceGroupUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var users: [String]?

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
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
    }
}

public class PageListAppInstanceGroupUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PageListAppInstanceGroupUserResponseBody?

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
            var model = PageListAppInstanceGroupUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshAccessUrlRequest : Tea.TeaModel {
    public var accessPageId: String?

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
        if self.accessPageId != nil {
            map["AccessPageId"] = self.accessPageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessPageId") {
            self.accessPageId = dict["AccessPageId"] as! String
        }
    }
}

public class RefreshAccessUrlResponseBody : Tea.TeaModel {
    public var accessUrl: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.accessUrl != nil {
            map["AccessUrl"] = self.accessUrl!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessUrl") {
            self.accessUrl = dict["AccessUrl"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class RefreshAccessUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshAccessUrlResponseBody?

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
            var model = RefreshAccessUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewAppInstanceGroupRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var autoPay: Bool?

    public var period: Int32?

    public var periodUnit: String?

    public var productType: String?

    public var promotionId: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
    }
}

public class RenewAppInstanceGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RenewAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewAppInstanceGroupResponseBody?

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
            var model = RenewAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewSessionPackageRequest : Tea.TeaModel {
    public var period: Int32?

    public var periodUnit: String?

    public var sessionPackageId: String?

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
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.sessionPackageId != nil {
            map["SessionPackageId"] = self.sessionPackageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("SessionPackageId") {
            self.sessionPackageId = dict["SessionPackageId"] as! String
        }
    }
}

public class RenewSessionPackageResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var sessionPackageId: Int64?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionPackageId != nil {
            map["SessionPackageId"] = self.sessionPackageId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionPackageId") {
            self.sessionPackageId = dict["SessionPackageId"] as! Int64
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class RenewSessionPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewSessionPackageResponseBody?

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
            var model = RenewSessionPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var appInstancePersistentId: String?

    public var endUserId: String?

    public var productType: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.appInstancePersistentId != nil {
            map["AppInstancePersistentId"] = self.appInstancePersistentId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceId") {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("AppInstancePersistentId") {
            self.appInstancePersistentId = dict["AppInstancePersistentId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class UnbindResponseBody : Tea.TeaModel {
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

public class UnbindResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindResponseBody?

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
            var model = UnbindResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAccessPageStateRequest : Tea.TeaModel {
    public var accessPageId: String?

    public var accessPageState: Int32?

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
        if self.accessPageId != nil {
            map["AccessPageId"] = self.accessPageId!
        }
        if self.accessPageState != nil {
            map["AccessPageState"] = self.accessPageState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessPageId") {
            self.accessPageId = dict["AccessPageId"] as! String
        }
        if dict.keys.contains("AccessPageState") {
            self.accessPageState = dict["AccessPageState"] as! Int32
        }
    }
}

public class UpdateAccessPageStateResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class UpdateAccessPageStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccessPageStateResponseBody?

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
            var model = UpdateAccessPageStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppInstanceGroupImageRequest : Tea.TeaModel {
    public var appCenterImageId: String?

    public var appInstanceGroupId: String?

    public var bizRegionId: String?

    public var productType: String?

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
        if self.appCenterImageId != nil {
            map["AppCenterImageId"] = self.appCenterImageId!
        }
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCenterImageId") {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class UpdateAppInstanceGroupImageResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppInstanceGroupImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppInstanceGroupImageResponseBody?

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
            var model = UpdateAppInstanceGroupImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
