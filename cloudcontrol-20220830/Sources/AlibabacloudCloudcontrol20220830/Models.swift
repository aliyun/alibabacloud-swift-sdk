import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelTaskResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CancelTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelTaskResponseBody?

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
            var model = CancelTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public var clientToken: String?

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
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceId: String?

    public var resourcePath: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourcePath != nil {
            map["resourcePath"] = self.resourcePath!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourcePath"] as? String {
            self.resourcePath = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceResponseBody?

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
            var model = CreateResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var filter: [String: Any]?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["filter"] as? [String: Any] {
            self.filter = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteResourceShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var filterShrink: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.filterShrink != nil {
            map["filter"] = self.filterShrink!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class DeleteResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceResponseBody?

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
            var model = DeleteResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPriceRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceAttributes: [String: Any]?

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
        if self.resourceAttributes != nil {
            map["resourceAttributes"] = self.resourceAttributes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceAttributes"] as? [String: Any] {
            self.resourceAttributes = value
        }
    }
}

public class GetPriceShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceAttributesShrink: String?

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
        if self.resourceAttributesShrink != nil {
            map["resourceAttributes"] = self.resourceAttributesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceAttributes"] as? String {
            self.resourceAttributesShrink = value
        }
    }
}

public class GetPriceResponseBody : Tea.TeaModel {
    public class Price : Tea.TeaModel {
        public class ModuleDetails : Tea.TeaModel {
            public var costAfterDiscount: Double?

            public var invoiceDiscount: Double?

            public var moduleCode: String?

            public var moduleName: String?

            public var originalCost: Double?

            public var priceType: String?

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
                if self.costAfterDiscount != nil {
                    map["costAfterDiscount"] = self.costAfterDiscount!
                }
                if self.invoiceDiscount != nil {
                    map["invoiceDiscount"] = self.invoiceDiscount!
                }
                if self.moduleCode != nil {
                    map["moduleCode"] = self.moduleCode!
                }
                if self.moduleName != nil {
                    map["moduleName"] = self.moduleName!
                }
                if self.originalCost != nil {
                    map["originalCost"] = self.originalCost!
                }
                if self.priceType != nil {
                    map["priceType"] = self.priceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["costAfterDiscount"] as? Double {
                    self.costAfterDiscount = value
                }
                if let value = dict["invoiceDiscount"] as? Double {
                    self.invoiceDiscount = value
                }
                if let value = dict["moduleCode"] as? String {
                    self.moduleCode = value
                }
                if let value = dict["moduleName"] as? String {
                    self.moduleName = value
                }
                if let value = dict["originalCost"] as? Double {
                    self.originalCost = value
                }
                if let value = dict["priceType"] as? String {
                    self.priceType = value
                }
            }
        }
        public class PromotionDetails : Tea.TeaModel {
            public var promotionDesc: String?

            public var promotionId: Int64?

            public var promotionName: String?

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
                if self.promotionDesc != nil {
                    map["promotionDesc"] = self.promotionDesc!
                }
                if self.promotionId != nil {
                    map["promotionId"] = self.promotionId!
                }
                if self.promotionName != nil {
                    map["promotionName"] = self.promotionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["promotionDesc"] as? String {
                    self.promotionDesc = value
                }
                if let value = dict["promotionId"] as? Int64 {
                    self.promotionId = value
                }
                if let value = dict["promotionName"] as? String {
                    self.promotionName = value
                }
            }
        }
        public var currency: String?

        public var discountPrice: Double?

        public var moduleDetails: [GetPriceResponseBody.Price.ModuleDetails]?

        public var originalPrice: Double?

        public var promotionDetails: [GetPriceResponseBody.Price.PromotionDetails]?

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
                map["currency"] = self.currency!
            }
            if self.discountPrice != nil {
                map["discountPrice"] = self.discountPrice!
            }
            if self.moduleDetails != nil {
                var tmp : [Any] = []
                for k in self.moduleDetails! {
                    tmp.append(k.toMap())
                }
                map["moduleDetails"] = tmp
            }
            if self.originalPrice != nil {
                map["originalPrice"] = self.originalPrice!
            }
            if self.promotionDetails != nil {
                var tmp : [Any] = []
                for k in self.promotionDetails! {
                    tmp.append(k.toMap())
                }
                map["promotionDetails"] = tmp
            }
            if self.tradePrice != nil {
                map["tradePrice"] = self.tradePrice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currency"] as? String {
                self.currency = value
            }
            if let value = dict["discountPrice"] as? Double {
                self.discountPrice = value
            }
            if let value = dict["moduleDetails"] as? [Any?] {
                var tmp : [GetPriceResponseBody.Price.ModuleDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetPriceResponseBody.Price.ModuleDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.moduleDetails = tmp
            }
            if let value = dict["originalPrice"] as? Double {
                self.originalPrice = value
            }
            if let value = dict["promotionDetails"] as? [Any?] {
                var tmp : [GetPriceResponseBody.Price.PromotionDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetPriceResponseBody.Price.PromotionDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.promotionDetails = tmp
            }
            if let value = dict["tradePrice"] as? Double {
                self.tradePrice = value
            }
        }
    }
    public var price: GetPriceResponseBody.Price?

    public var requestId: String?

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
            map["price"] = self.price?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["price"] as? [String: Any?] {
            var model = GetPriceResponseBody.Price()
            model.fromMap(value)
            self.price = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPriceResponseBody?

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
            var model = GetPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceTypeHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAcceptLanguage: String?

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
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xAcsAcceptLanguage != nil {
            map["x-acs-accept-language"] = self.xAcsAcceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["x-acs-accept-language"] as? String {
            self.xAcsAcceptLanguage = value
        }
    }
}

public class GetResourceTypeResponseBody : Tea.TeaModel {
    public class ResourceType : Tea.TeaModel {
        public class Handlers : Tea.TeaModel {
            public class Create : Tea.TeaModel {
                public var permissions: [String]?

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
                    if self.permissions != nil {
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["permissions"] as? [String] {
                        self.permissions = value
                    }
                }
            }
            public class Delete : Tea.TeaModel {
                public var permissions: [String]?

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
                    if self.permissions != nil {
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["permissions"] as? [String] {
                        self.permissions = value
                    }
                }
            }
            public class Get_ : Tea.TeaModel {
                public var permissions: [String]?

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
                    if self.permissions != nil {
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["permissions"] as? [String] {
                        self.permissions = value
                    }
                }
            }
            public class List : Tea.TeaModel {
                public var permissions: [String]?

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
                    if self.permissions != nil {
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["permissions"] as? [String] {
                        self.permissions = value
                    }
                }
            }
            public class Update : Tea.TeaModel {
                public var permissions: [String]?

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
                    if self.permissions != nil {
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["permissions"] as? [String] {
                        self.permissions = value
                    }
                }
            }
            public var create: GetResourceTypeResponseBody.ResourceType.Handlers.Create?

            public var delete: GetResourceTypeResponseBody.ResourceType.Handlers.Delete?

            public var get_: GetResourceTypeResponseBody.ResourceType.Handlers.Get_?

            public var list: GetResourceTypeResponseBody.ResourceType.Handlers.List?

            public var update: GetResourceTypeResponseBody.ResourceType.Handlers.Update?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.create?.validate()
                try self.delete?.validate()
                try self.get_?.validate()
                try self.list?.validate()
                try self.update?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.create != nil {
                    map["create"] = self.create?.toMap()
                }
                if self.delete != nil {
                    map["delete"] = self.delete?.toMap()
                }
                if self.get_ != nil {
                    map["get"] = self.get_?.toMap()
                }
                if self.list != nil {
                    map["list"] = self.list?.toMap()
                }
                if self.update != nil {
                    map["update"] = self.update?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["create"] as? [String: Any?] {
                    var model = GetResourceTypeResponseBody.ResourceType.Handlers.Create()
                    model.fromMap(value)
                    self.create = model
                }
                if let value = dict["delete"] as? [String: Any?] {
                    var model = GetResourceTypeResponseBody.ResourceType.Handlers.Delete()
                    model.fromMap(value)
                    self.delete = model
                }
                if let value = dict["get"] as? [String: Any?] {
                    var model = GetResourceTypeResponseBody.ResourceType.Handlers.Get_()
                    model.fromMap(value)
                    self.get_ = model
                }
                if let value = dict["list"] as? [String: Any?] {
                    var model = GetResourceTypeResponseBody.ResourceType.Handlers.List()
                    model.fromMap(value)
                    self.list = model
                }
                if let value = dict["update"] as? [String: Any?] {
                    var model = GetResourceTypeResponseBody.ResourceType.Handlers.Update()
                    model.fromMap(value)
                    self.update = model
                }
            }
        }
        public class Info : Tea.TeaModel {
            public var chargeType: String?

            public var deliveryScope: String?

            public var description_: String?

            public var title: String?

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
                    map["chargeType"] = self.chargeType!
                }
                if self.deliveryScope != nil {
                    map["deliveryScope"] = self.deliveryScope!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chargeType"] as? String {
                    self.chargeType = value
                }
                if let value = dict["deliveryScope"] as? String {
                    self.deliveryScope = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
            }
        }
        public var createOnlyProperties: [String]?

        public var deleteOnlyProperties: [String]?

        public var filterProperties: [String]?

        public var getOnlyProperties: [String]?

        public var getResponseProperties: [String]?

        public var handlers: GetResourceTypeResponseBody.ResourceType.Handlers?

        public var info: GetResourceTypeResponseBody.ResourceType.Info?

        public var listOnlyProperties: [String]?

        public var listResponseProperties: [String]?

        public var primaryIdentifier: String?

        public var product: String?

        public var properties: [String: Any]?

        public var publicProperties: [String]?

        public var readOnlyProperties: [String]?

        public var required_: [String]?

        public var resourceType: String?

        public var sensitiveInfoProperties: [String]?

        public var updateOnlyProperties: [String]?

        public var updateTypeProperties: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.handlers?.validate()
            try self.info?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createOnlyProperties != nil {
                map["createOnlyProperties"] = self.createOnlyProperties!
            }
            if self.deleteOnlyProperties != nil {
                map["deleteOnlyProperties"] = self.deleteOnlyProperties!
            }
            if self.filterProperties != nil {
                map["filterProperties"] = self.filterProperties!
            }
            if self.getOnlyProperties != nil {
                map["getOnlyProperties"] = self.getOnlyProperties!
            }
            if self.getResponseProperties != nil {
                map["getResponseProperties"] = self.getResponseProperties!
            }
            if self.handlers != nil {
                map["handlers"] = self.handlers?.toMap()
            }
            if self.info != nil {
                map["info"] = self.info?.toMap()
            }
            if self.listOnlyProperties != nil {
                map["listOnlyProperties"] = self.listOnlyProperties!
            }
            if self.listResponseProperties != nil {
                map["listResponseProperties"] = self.listResponseProperties!
            }
            if self.primaryIdentifier != nil {
                map["primaryIdentifier"] = self.primaryIdentifier!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.publicProperties != nil {
                map["publicProperties"] = self.publicProperties!
            }
            if self.readOnlyProperties != nil {
                map["readOnlyProperties"] = self.readOnlyProperties!
            }
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.sensitiveInfoProperties != nil {
                map["sensitiveInfoProperties"] = self.sensitiveInfoProperties!
            }
            if self.updateOnlyProperties != nil {
                map["updateOnlyProperties"] = self.updateOnlyProperties!
            }
            if self.updateTypeProperties != nil {
                map["updateTypeProperties"] = self.updateTypeProperties!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createOnlyProperties"] as? [String] {
                self.createOnlyProperties = value
            }
            if let value = dict["deleteOnlyProperties"] as? [String] {
                self.deleteOnlyProperties = value
            }
            if let value = dict["filterProperties"] as? [String] {
                self.filterProperties = value
            }
            if let value = dict["getOnlyProperties"] as? [String] {
                self.getOnlyProperties = value
            }
            if let value = dict["getResponseProperties"] as? [String] {
                self.getResponseProperties = value
            }
            if let value = dict["handlers"] as? [String: Any?] {
                var model = GetResourceTypeResponseBody.ResourceType.Handlers()
                model.fromMap(value)
                self.handlers = model
            }
            if let value = dict["info"] as? [String: Any?] {
                var model = GetResourceTypeResponseBody.ResourceType.Info()
                model.fromMap(value)
                self.info = model
            }
            if let value = dict["listOnlyProperties"] as? [String] {
                self.listOnlyProperties = value
            }
            if let value = dict["listResponseProperties"] as? [String] {
                self.listResponseProperties = value
            }
            if let value = dict["primaryIdentifier"] as? String {
                self.primaryIdentifier = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
            if let value = dict["properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["publicProperties"] as? [String] {
                self.publicProperties = value
            }
            if let value = dict["readOnlyProperties"] as? [String] {
                self.readOnlyProperties = value
            }
            if let value = dict["required"] as? [String] {
                self.required_ = value
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["sensitiveInfoProperties"] as? [String] {
                self.sensitiveInfoProperties = value
            }
            if let value = dict["updateOnlyProperties"] as? [String] {
                self.updateOnlyProperties = value
            }
            if let value = dict["updateTypeProperties"] as? [String] {
                self.updateTypeProperties = value
            }
        }
    }
    public var requestId: String?

    public var resourceType: GetResourceTypeResponseBody.ResourceType?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceType?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resourceType"] as? [String: Any?] {
            var model = GetResourceTypeResponseBody.ResourceType()
            model.fromMap(value)
            self.resourceType = model
        }
    }
}

public class GetResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceTypeResponseBody?

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
            var model = GetResourceTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourcesRequest : Tea.TeaModel {
    public var filter: [String: Any]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filter"] as? [String: Any] {
            self.filter = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetResourcesShrinkRequest : Tea.TeaModel {
    public var filterShrink: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.filterShrink != nil {
            map["filter"] = self.filterShrink!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetResourcesResponseBody : Tea.TeaModel {
    public class Resource : Tea.TeaModel {
        public var resourceAttributes: [String: Any]?

        public var resourceId: String?

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
            if self.resourceAttributes != nil {
                map["resourceAttributes"] = self.resourceAttributes!
            }
            if self.resourceId != nil {
                map["resourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["resourceAttributes"] as? [String: Any] {
                self.resourceAttributes = value
            }
            if let value = dict["resourceId"] as? String {
                self.resourceId = value
            }
        }
    }
    public class Resources : Tea.TeaModel {
        public var resourceAttributes: [String: Any]?

        public var resourceId: String?

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
            if self.resourceAttributes != nil {
                map["resourceAttributes"] = self.resourceAttributes!
            }
            if self.resourceId != nil {
                map["resourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["resourceAttributes"] as? [String: Any] {
                self.resourceAttributes = value
            }
            if let value = dict["resourceId"] as? String {
                self.resourceId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resource: GetResourcesResponseBody.Resource?

    public var resources: [GetResourcesResponseBody.Resources]?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resource != nil {
            map["resource"] = self.resource?.toMap()
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["resources"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resource"] as? [String: Any?] {
            var model = GetResourcesResponseBody.Resource()
            model.fromMap(value)
            self.resource = model
        }
        if let value = dict["resources"] as? [Any?] {
            var tmp : [GetResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = GetResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourcesResponseBody?

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
            var model = GetResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public class Error : Tea.TeaModel {
            public var code: String?

            public var message: String?

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
                    map["code"] = self.code!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["code"] as? String {
                    self.code = value
                }
                if let value = dict["message"] as? String {
                    self.message = value
                }
            }
        }
        public var createTime: String?

        public var error: GetTaskResponseBody.Task.Error?

        public var product: String?

        public var regionId: String?

        public var resourceId: String?

        public var resourcePath: String?

        public var resourceType: String?

        public var status: String?

        public var taskAction: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.error?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.error != nil {
                map["error"] = self.error?.toMap()
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.resourceId != nil {
                map["resourceId"] = self.resourceId!
            }
            if self.resourcePath != nil {
                map["resourcePath"] = self.resourcePath!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskAction != nil {
                map["taskAction"] = self.taskAction!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["error"] as? [String: Any?] {
                var model = GetTaskResponseBody.Task.Error()
                model.fromMap(value)
                self.error = model
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["resourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["resourcePath"] as? String {
                self.resourcePath = value
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskAction"] as? String {
                self.taskAction = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var task: GetTaskResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.task != nil {
            map["task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["task"] as? [String: Any?] {
            var model = GetTaskResponseBody.Task()
            model.fromMap(value)
            self.task = model
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

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
            var model = GetTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourcesRequest : Tea.TeaModel {
    public var attributeName: String?

    public var filter: [String: Any]?

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
        if self.attributeName != nil {
            map["attributeName"] = self.attributeName!
        }
        if self.filter != nil {
            map["filter"] = self.filter!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributeName"] as? String {
            self.attributeName = value
        }
        if let value = dict["filter"] as? [String: Any] {
            self.filter = value
        }
    }
}

public class ListDataSourcesShrinkRequest : Tea.TeaModel {
    public var attributeName: String?

    public var filterShrink: String?

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
        if self.attributeName != nil {
            map["attributeName"] = self.attributeName!
        }
        if self.filterShrink != nil {
            map["filter"] = self.filterShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributeName"] as? String {
            self.attributeName = value
        }
        if let value = dict["filter"] as? String {
            self.filterShrink = value
        }
    }
}

public class ListDataSourcesResponseBody : Tea.TeaModel {
    public class DataSources : Tea.TeaModel {
        public var id: String?

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
            if self.id != nil {
                map["id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["id"] as? String {
                self.id = value
            }
        }
    }
    public var dataSources: [ListDataSourcesResponseBody.DataSources]?

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
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["dataSources"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataSources"] as? [Any?] {
            var tmp : [ListDataSourcesResponseBody.DataSources] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourcesResponseBody.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourcesResponseBody?

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
            var model = ListDataSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProductsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAcceptLanguage: String?

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
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xAcsAcceptLanguage != nil {
            map["x-acs-accept-language"] = self.xAcsAcceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["x-acs-accept-language"] as? String {
            self.xAcsAcceptLanguage = value
        }
    }
}

public class ListProductsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListProductsResponseBody : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public var productCode: String?

        public var productName: String?

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
            if self.productCode != nil {
                map["productCode"] = self.productCode!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["productCode"] as? String {
                self.productCode = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var products: [ListProductsResponseBody.Products]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["products"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["products"] as? [Any?] {
            var tmp : [ListProductsResponseBody.Products] = []
            for v in value {
                if v != nil {
                    var model = ListProductsResponseBody.Products()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
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

public class ListResourceTypesHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAcceptLanguage: String?

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
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xAcsAcceptLanguage != nil {
            map["x-acs-accept-language"] = self.xAcsAcceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["x-acs-accept-language"] as? String {
            self.xAcsAcceptLanguage = value
        }
    }
}

public class ListResourceTypesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceTypes: [String]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.resourceTypes != nil {
            map["resourceTypes"] = self.resourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resourceTypes"] as? [String] {
            self.resourceTypes = value
        }
    }
}

public class ListResourceTypesShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceTypesShrink: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.resourceTypesShrink != nil {
            map["resourceTypes"] = self.resourceTypesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resourceTypes"] as? String {
            self.resourceTypesShrink = value
        }
    }
}

public class ListResourceTypesResponseBody : Tea.TeaModel {
    public class ResourceTypes : Tea.TeaModel {
        public class Handlers : Tea.TeaModel {
            public class Create : Tea.TeaModel {
                public var permissions: [String]?

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
                    if self.permissions != nil {
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["permissions"] as? [String] {
                        self.permissions = value
                    }
                }
            }
            public class Delete : Tea.TeaModel {
                public var permissions: [String]?

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
                    if self.permissions != nil {
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["permissions"] as? [String] {
                        self.permissions = value
                    }
                }
            }
            public class Get_ : Tea.TeaModel {
                public var permissions: [String]?

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
                    if self.permissions != nil {
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["permissions"] as? [String] {
                        self.permissions = value
                    }
                }
            }
            public class List : Tea.TeaModel {
                public var permissions: [String]?

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
                    if self.permissions != nil {
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["permissions"] as? [String] {
                        self.permissions = value
                    }
                }
            }
            public class Update : Tea.TeaModel {
                public var permissions: [String]?

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
                    if self.permissions != nil {
                        map["permissions"] = self.permissions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["permissions"] as? [String] {
                        self.permissions = value
                    }
                }
            }
            public var create: ListResourceTypesResponseBody.ResourceTypes.Handlers.Create?

            public var delete: ListResourceTypesResponseBody.ResourceTypes.Handlers.Delete?

            public var get_: ListResourceTypesResponseBody.ResourceTypes.Handlers.Get_?

            public var list: ListResourceTypesResponseBody.ResourceTypes.Handlers.List?

            public var update: ListResourceTypesResponseBody.ResourceTypes.Handlers.Update?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.create?.validate()
                try self.delete?.validate()
                try self.get_?.validate()
                try self.list?.validate()
                try self.update?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.create != nil {
                    map["create"] = self.create?.toMap()
                }
                if self.delete != nil {
                    map["delete"] = self.delete?.toMap()
                }
                if self.get_ != nil {
                    map["get"] = self.get_?.toMap()
                }
                if self.list != nil {
                    map["list"] = self.list?.toMap()
                }
                if self.update != nil {
                    map["update"] = self.update?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["create"] as? [String: Any?] {
                    var model = ListResourceTypesResponseBody.ResourceTypes.Handlers.Create()
                    model.fromMap(value)
                    self.create = model
                }
                if let value = dict["delete"] as? [String: Any?] {
                    var model = ListResourceTypesResponseBody.ResourceTypes.Handlers.Delete()
                    model.fromMap(value)
                    self.delete = model
                }
                if let value = dict["get"] as? [String: Any?] {
                    var model = ListResourceTypesResponseBody.ResourceTypes.Handlers.Get_()
                    model.fromMap(value)
                    self.get_ = model
                }
                if let value = dict["list"] as? [String: Any?] {
                    var model = ListResourceTypesResponseBody.ResourceTypes.Handlers.List()
                    model.fromMap(value)
                    self.list = model
                }
                if let value = dict["update"] as? [String: Any?] {
                    var model = ListResourceTypesResponseBody.ResourceTypes.Handlers.Update()
                    model.fromMap(value)
                    self.update = model
                }
            }
        }
        public class Info : Tea.TeaModel {
            public var chargeType: String?

            public var deliveryScope: String?

            public var description_: String?

            public var title: String?

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
                    map["chargeType"] = self.chargeType!
                }
                if self.deliveryScope != nil {
                    map["deliveryScope"] = self.deliveryScope!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chargeType"] as? String {
                    self.chargeType = value
                }
                if let value = dict["deliveryScope"] as? String {
                    self.deliveryScope = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
            }
        }
        public var createOnlyProperties: [String]?

        public var deleteOnlyProperties: [String]?

        public var filterProperties: [String]?

        public var getOnlyProperties: [String]?

        public var getResponseProperties: [String]?

        public var handlers: ListResourceTypesResponseBody.ResourceTypes.Handlers?

        public var info: ListResourceTypesResponseBody.ResourceTypes.Info?

        public var listOnlyProperties: [String]?

        public var listResponseProperties: [String]?

        public var primaryIdentifier: String?

        public var product: String?

        public var properties: [String: Any]?

        public var publicProperties: [String]?

        public var readOnlyProperties: [String]?

        public var required_: [String]?

        public var resourceType: String?

        public var sensitiveInfoProperties: [String]?

        public var updateOnlyProperties: [String]?

        public var updateTypeProperties: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.handlers?.validate()
            try self.info?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createOnlyProperties != nil {
                map["createOnlyProperties"] = self.createOnlyProperties!
            }
            if self.deleteOnlyProperties != nil {
                map["deleteOnlyProperties"] = self.deleteOnlyProperties!
            }
            if self.filterProperties != nil {
                map["filterProperties"] = self.filterProperties!
            }
            if self.getOnlyProperties != nil {
                map["getOnlyProperties"] = self.getOnlyProperties!
            }
            if self.getResponseProperties != nil {
                map["getResponseProperties"] = self.getResponseProperties!
            }
            if self.handlers != nil {
                map["handlers"] = self.handlers?.toMap()
            }
            if self.info != nil {
                map["info"] = self.info?.toMap()
            }
            if self.listOnlyProperties != nil {
                map["listOnlyProperties"] = self.listOnlyProperties!
            }
            if self.listResponseProperties != nil {
                map["listResponseProperties"] = self.listResponseProperties!
            }
            if self.primaryIdentifier != nil {
                map["primaryIdentifier"] = self.primaryIdentifier!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.publicProperties != nil {
                map["publicProperties"] = self.publicProperties!
            }
            if self.readOnlyProperties != nil {
                map["readOnlyProperties"] = self.readOnlyProperties!
            }
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.sensitiveInfoProperties != nil {
                map["sensitiveInfoProperties"] = self.sensitiveInfoProperties!
            }
            if self.updateOnlyProperties != nil {
                map["updateOnlyProperties"] = self.updateOnlyProperties!
            }
            if self.updateTypeProperties != nil {
                map["updateTypeProperties"] = self.updateTypeProperties!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createOnlyProperties"] as? [String] {
                self.createOnlyProperties = value
            }
            if let value = dict["deleteOnlyProperties"] as? [String] {
                self.deleteOnlyProperties = value
            }
            if let value = dict["filterProperties"] as? [String] {
                self.filterProperties = value
            }
            if let value = dict["getOnlyProperties"] as? [String] {
                self.getOnlyProperties = value
            }
            if let value = dict["getResponseProperties"] as? [String] {
                self.getResponseProperties = value
            }
            if let value = dict["handlers"] as? [String: Any?] {
                var model = ListResourceTypesResponseBody.ResourceTypes.Handlers()
                model.fromMap(value)
                self.handlers = model
            }
            if let value = dict["info"] as? [String: Any?] {
                var model = ListResourceTypesResponseBody.ResourceTypes.Info()
                model.fromMap(value)
                self.info = model
            }
            if let value = dict["listOnlyProperties"] as? [String] {
                self.listOnlyProperties = value
            }
            if let value = dict["listResponseProperties"] as? [String] {
                self.listResponseProperties = value
            }
            if let value = dict["primaryIdentifier"] as? String {
                self.primaryIdentifier = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
            if let value = dict["properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["publicProperties"] as? [String] {
                self.publicProperties = value
            }
            if let value = dict["readOnlyProperties"] as? [String] {
                self.readOnlyProperties = value
            }
            if let value = dict["required"] as? [String] {
                self.required_ = value
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["sensitiveInfoProperties"] as? [String] {
                self.sensitiveInfoProperties = value
            }
            if let value = dict["updateOnlyProperties"] as? [String] {
                self.updateOnlyProperties = value
            }
            if let value = dict["updateTypeProperties"] as? [String] {
                self.updateTypeProperties = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resourceTypes: [ListResourceTypesResponseBody.ResourceTypes]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceTypes != nil {
            var tmp : [Any] = []
            for k in self.resourceTypes! {
                tmp.append(k.toMap())
            }
            map["resourceTypes"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resourceTypes"] as? [Any?] {
            var tmp : [ListResourceTypesResponseBody.ResourceTypes] = []
            for v in value {
                if v != nil {
                    var model = ListResourceTypesResponseBody.ResourceTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceTypes = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceTypesResponseBody?

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
            var model = ListResourceTypesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public var clientToken: String?

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
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class UpdateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceResponseBody?

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
            var model = UpdateResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
