import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CommodityValue : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Order : Tea.TeaModel {
            public var currency: String?

            public var tradeAmount: String?

            public var discountAmount: String?

            public var originalAmount: String?

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
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Currency"] as? String {
                    self.currency = value
                }
                if let value = dict["TradeAmount"] as? String {
                    self.tradeAmount = value
                }
                if let value = dict["DiscountAmount"] as? String {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? String {
                    self.originalAmount = value
                }
            }
        }
        public class SubOrders : Tea.TeaModel {
            public class SubOrder : Tea.TeaModel {
                public class ModuleInstance : Tea.TeaModel {
                    public class ModuleAttrs : Tea.TeaModel {
                        public var type: Int64?

                        public var name: String?

                        public var code: String?

                        public var value: String?

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
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.code != nil {
                                map["Code"] = self.code!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            if self.unit != nil {
                                map["Unit"] = self.unit!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Type"] as? Int64 {
                                self.type = value
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                            if let value = dict["Code"] as? String {
                                self.code = value
                            }
                            if let value = dict["Value"] as? String {
                                self.value = value
                            }
                            if let value = dict["Unit"] as? String {
                                self.unit = value
                            }
                        }
                    }
                    public var moduleId: Int64?

                    public var moduleName: String?

                    public var moduleCode: String?

                    public var totalProductFee: Double?

                    public var discountFee: Double?

                    public var payFee: Double?

                    public var priceUnit: String?

                    public var isPricingModule: Bool?

                    public var needOrderPay: Bool?

                    public var priceType: String?

                    public var moduleAttrs: [CommodityValue.Result.SubOrders.SubOrder.ModuleInstance.ModuleAttrs]?

                    public var moduleNameEn: String?

                    public var priceUnitEn: String?

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
                        if self.moduleId != nil {
                            map["ModuleId"] = self.moduleId!
                        }
                        if self.moduleName != nil {
                            map["ModuleName"] = self.moduleName!
                        }
                        if self.moduleCode != nil {
                            map["ModuleCode"] = self.moduleCode!
                        }
                        if self.totalProductFee != nil {
                            map["TotalProductFee"] = self.totalProductFee!
                        }
                        if self.discountFee != nil {
                            map["DiscountFee"] = self.discountFee!
                        }
                        if self.payFee != nil {
                            map["PayFee"] = self.payFee!
                        }
                        if self.priceUnit != nil {
                            map["PriceUnit"] = self.priceUnit!
                        }
                        if self.isPricingModule != nil {
                            map["IsPricingModule"] = self.isPricingModule!
                        }
                        if self.needOrderPay != nil {
                            map["NeedOrderPay"] = self.needOrderPay!
                        }
                        if self.priceType != nil {
                            map["PriceType"] = self.priceType!
                        }
                        if self.moduleAttrs != nil {
                            var tmp : [Any] = []
                            for k in self.moduleAttrs! {
                                tmp.append(k.toMap())
                            }
                            map["ModuleAttrs"] = tmp
                        }
                        if self.moduleNameEn != nil {
                            map["ModuleNameEn"] = self.moduleNameEn!
                        }
                        if self.priceUnitEn != nil {
                            map["PriceUnitEn"] = self.priceUnitEn!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ModuleId"] as? Int64 {
                            self.moduleId = value
                        }
                        if let value = dict["ModuleName"] as? String {
                            self.moduleName = value
                        }
                        if let value = dict["ModuleCode"] as? String {
                            self.moduleCode = value
                        }
                        if let value = dict["TotalProductFee"] as? Double {
                            self.totalProductFee = value
                        }
                        if let value = dict["DiscountFee"] as? Double {
                            self.discountFee = value
                        }
                        if let value = dict["PayFee"] as? Double {
                            self.payFee = value
                        }
                        if let value = dict["PriceUnit"] as? String {
                            self.priceUnit = value
                        }
                        if let value = dict["IsPricingModule"] as? Bool {
                            self.isPricingModule = value
                        }
                        if let value = dict["NeedOrderPay"] as? Bool {
                            self.needOrderPay = value
                        }
                        if let value = dict["PriceType"] as? String {
                            self.priceType = value
                        }
                        if let value = dict["ModuleAttrs"] as? [Any?] {
                            var tmp : [CommodityValue.Result.SubOrders.SubOrder.ModuleInstance.ModuleAttrs] = []
                            for v in value {
                                if v != nil {
                                    var model = CommodityValue.Result.SubOrders.SubOrder.ModuleInstance.ModuleAttrs()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.moduleAttrs = tmp
                        }
                        if let value = dict["ModuleNameEn"] as? String {
                            self.moduleNameEn = value
                        }
                        if let value = dict["PriceUnitEn"] as? String {
                            self.priceUnitEn = value
                        }
                    }
                }
                public var moduleInstance: [CommodityValue.Result.SubOrders.SubOrder.ModuleInstance]?

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
                    if self.moduleInstance != nil {
                        var tmp : [Any] = []
                        for k in self.moduleInstance! {
                            tmp.append(k.toMap())
                        }
                        map["ModuleInstance"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ModuleInstance"] as? [Any?] {
                        var tmp : [CommodityValue.Result.SubOrders.SubOrder.ModuleInstance] = []
                        for v in value {
                            if v != nil {
                                var model = CommodityValue.Result.SubOrders.SubOrder.ModuleInstance()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.moduleInstance = tmp
                    }
                }
            }
            public var subOrder: [CommodityValue.Result.SubOrders.SubOrder]?

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
                if self.subOrder != nil {
                    var tmp : [Any] = []
                    for k in self.subOrder! {
                        tmp.append(k.toMap())
                    }
                    map["SubOrder"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SubOrder"] as? [Any?] {
                    var tmp : [CommodityValue.Result.SubOrders.SubOrder] = []
                    for v in value {
                        if v != nil {
                            var model = CommodityValue.Result.SubOrders.SubOrder()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subOrder = tmp
                }
            }
        }
        public class Coupons : Tea.TeaModel {
            public var canPromFee: Double?

            public var couponDesc: String?

            public var couponName: String?

            public var couponOptionNo: String?

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
                if self.canPromFee != nil {
                    map["CanPromFee"] = self.canPromFee!
                }
                if self.couponDesc != nil {
                    map["CouponDesc"] = self.couponDesc!
                }
                if self.couponName != nil {
                    map["CouponName"] = self.couponName!
                }
                if self.couponOptionNo != nil {
                    map["CouponOptionNo"] = self.couponOptionNo!
                }
                if self.selected != nil {
                    map["Selected"] = self.selected!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CanPromFee"] as? Double {
                    self.canPromFee = value
                }
                if let value = dict["CouponDesc"] as? String {
                    self.couponDesc = value
                }
                if let value = dict["CouponName"] as? String {
                    self.couponName = value
                }
                if let value = dict["CouponOptionNo"] as? String {
                    self.couponOptionNo = value
                }
                if let value = dict["Selected"] as? Bool {
                    self.selected = value
                }
            }
        }
        public var order: CommodityValue.Result.Order?

        public var inquiryType: String?

        public var subOrders: CommodityValue.Result.SubOrders?

        public var coupons: [CommodityValue.Result.Coupons]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.order?.validate()
            try self.subOrders?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.order != nil {
                map["Order"] = self.order?.toMap()
            }
            if self.inquiryType != nil {
                map["InquiryType"] = self.inquiryType!
            }
            if self.subOrders != nil {
                map["SubOrders"] = self.subOrders?.toMap()
            }
            if self.coupons != nil {
                var tmp : [Any] = []
                for k in self.coupons! {
                    tmp.append(k.toMap())
                }
                map["Coupons"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Order"] as? [String: Any?] {
                var model = CommodityValue.Result.Order()
                model.fromMap(value)
                self.order = model
            }
            if let value = dict["InquiryType"] as? String {
                self.inquiryType = value
            }
            if let value = dict["SubOrders"] as? [String: Any?] {
                var model = CommodityValue.Result.SubOrders()
                model.fromMap(value)
                self.subOrders = model
            }
            if let value = dict["Coupons"] as? [Any?] {
                var tmp : [CommodityValue.Result.Coupons] = []
                for v in value {
                    if v != nil {
                        var model = CommodityValue.Result.Coupons()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.coupons = tmp
            }
        }
    }
    public var result: CommodityValue.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Result"] as? [String: Any?] {
            var model = CommodityValue.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CancelServiceUsageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var needDelete: Bool?

    public var regionId: String?

    public var serviceId: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.needDelete != nil {
            map["NeedDelete"] = self.needDelete!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["NeedDelete"] as? Bool {
            self.needDelete = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
    }
}

public class CancelServiceUsageResponseBody : Tea.TeaModel {
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

public class CancelServiceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelServiceUsageResponseBody?

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
            var model = CancelServiceUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var regionId: String?

    public var resourceId: String?

    public var resourceType: String?

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
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
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

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

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
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckServiceDeployableRequest : Tea.TeaModel {
    public var postPaidAmount: String?

    public var prePaidAmount: String?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public var templateName: String?

    public var trialType: String?

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
        if self.postPaidAmount != nil {
            map["PostPaidAmount"] = self.postPaidAmount!
        }
        if self.prePaidAmount != nil {
            map["PrePaidAmount"] = self.prePaidAmount!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PostPaidAmount"] as? String {
            self.postPaidAmount = value
        }
        if let value = dict["PrePaidAmount"] as? String {
            self.prePaidAmount = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
    }
}

public class CheckServiceDeployableResponseBody : Tea.TeaModel {
    public class CheckResults : Tea.TeaModel {
        public var message: String?

        public var type: String?

        public var value: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var checkResults: [CheckServiceDeployableResponseBody.CheckResults]?

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
        if self.checkResults != nil {
            var tmp : [Any] = []
            for k in self.checkResults! {
                tmp.append(k.toMap())
            }
            map["CheckResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckResults"] as? [Any?] {
            var tmp : [CheckServiceDeployableResponseBody.CheckResults] = []
            for v in value {
                if v != nil {
                    var model = CheckServiceDeployableResponseBody.CheckResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.checkResults = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckServiceDeployableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckServiceDeployableResponseBody?

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
            var model = CheckServiceDeployableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ContinueDeployServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var option: [String]?

    public var parameters: String?

    public var regionId: String?

    public var serviceInstanceId: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["Option"] as? [String] {
            self.option = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class ContinueDeployServiceInstanceResponseBody : Tea.TeaModel {
    public class DryRunResult : Tea.TeaModel {
        public var parametersAllowedToBeModified: [String]?

        public var parametersConditionallyAllowedToBeModified: [String]?

        public var parametersNotAllowedToBeModified: [String]?

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
            if self.parametersAllowedToBeModified != nil {
                map["ParametersAllowedToBeModified"] = self.parametersAllowedToBeModified!
            }
            if self.parametersConditionallyAllowedToBeModified != nil {
                map["ParametersConditionallyAllowedToBeModified"] = self.parametersConditionallyAllowedToBeModified!
            }
            if self.parametersNotAllowedToBeModified != nil {
                map["ParametersNotAllowedToBeModified"] = self.parametersNotAllowedToBeModified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParametersAllowedToBeModified"] as? [String] {
                self.parametersAllowedToBeModified = value
            }
            if let value = dict["ParametersConditionallyAllowedToBeModified"] as? [String] {
                self.parametersConditionallyAllowedToBeModified = value
            }
            if let value = dict["ParametersNotAllowedToBeModified"] as? [String] {
                self.parametersNotAllowedToBeModified = value
            }
        }
    }
    public var dryRunResult: ContinueDeployServiceInstanceResponseBody.DryRunResult?

    public var requestId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dryRunResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRunResult != nil {
            map["DryRunResult"] = self.dryRunResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRunResult"] as? [String: Any?] {
            var model = ContinueDeployServiceInstanceResponseBody.DryRunResult()
            model.fromMap(value)
            self.dryRunResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class ContinueDeployServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinueDeployServiceInstanceResponseBody?

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
            var model = ContinueDeployServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBackupRequest : Tea.TeaModel {
    public var description_: String?

    public var serviceInstanceId: String?

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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class CreateBackupResponseBody : Tea.TeaModel {
    public var backupId: String?

    public var description_: String?

    public var requestId: String?

    public var status: String?

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
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBackupResponseBody?

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
            var model = CreateBackupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRestoreTaskRequest : Tea.TeaModel {
    public var backupId: String?

    public var serviceInstanceId: String?

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
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class CreateRestoreTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var restoreTaskId: String?

    public var status: String?

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
        if self.restoreTaskId != nil {
            map["RestoreTaskId"] = self.restoreTaskId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreTaskId"] as? String {
            self.restoreTaskId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateRestoreTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRestoreTaskResponseBody?

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
            var model = CreateRestoreTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceInstanceRequest : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public var autoPay: Bool?

        public var autoRenew: Bool?

        public var couponId: String?

        public var payPeriod: Int64?

        public var payPeriodUnit: String?

        public var quotationId: String?

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
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.couponId != nil {
                map["CouponId"] = self.couponId!
            }
            if self.payPeriod != nil {
                map["PayPeriod"] = self.payPeriod!
            }
            if self.payPeriodUnit != nil {
                map["PayPeriodUnit"] = self.payPeriodUnit!
            }
            if self.quotationId != nil {
                map["QuotationId"] = self.quotationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoPay"] as? Bool {
                self.autoPay = value
            }
            if let value = dict["AutoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["CouponId"] as? String {
                self.couponId = value
            }
            if let value = dict["PayPeriod"] as? Int64 {
                self.payPeriod = value
            }
            if let value = dict["PayPeriodUnit"] as? String {
                self.payPeriodUnit = value
            }
            if let value = dict["QuotationId"] as? String {
                self.quotationId = value
            }
        }
    }
    public class OperationMetadata : Tea.TeaModel {
        public var endTime: String?

        public var extraInfo: String?

        public var resources: String?

        public var serviceInstanceId: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ExtraInfo"] as? String {
                self.extraInfo = value
            }
            if let value = dict["Resources"] as? String {
                self.resources = value
            }
            if let value = dict["ServiceInstanceId"] as? String {
                self.serviceInstanceId = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var clientToken: String?

    public var commodity: CreateServiceInstanceRequest.Commodity?

    public var contactGroup: String?

    public var dryRun: Bool?

    public var enableInstanceOps: Bool?

    public var enableUserPrometheus: Bool?

    public var name: String?

    public var operationMetadata: CreateServiceInstanceRequest.OperationMetadata?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var resourceAutoPay: Bool?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public var specificationCode: String?

    public var specificationName: String?

    public var tag: [CreateServiceInstanceRequest.Tag]?

    public var templateName: String?

    public var trialType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commodity?.validate()
        try self.operationMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.contactGroup != nil {
            map["ContactGroup"] = self.contactGroup!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.enableInstanceOps != nil {
            map["EnableInstanceOps"] = self.enableInstanceOps!
        }
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operationMetadata != nil {
            map["OperationMetadata"] = self.operationMetadata?.toMap()
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceAutoPay != nil {
            map["ResourceAutoPay"] = self.resourceAutoPay!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationCode != nil {
            map["SpecificationCode"] = self.specificationCode!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? [String: Any?] {
            var model = CreateServiceInstanceRequest.Commodity()
            model.fromMap(value)
            self.commodity = model
        }
        if let value = dict["ContactGroup"] as? String {
            self.contactGroup = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EnableInstanceOps"] as? Bool {
            self.enableInstanceOps = value
        }
        if let value = dict["EnableUserPrometheus"] as? Bool {
            self.enableUserPrometheus = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OperationMetadata"] as? [String: Any?] {
            var model = CreateServiceInstanceRequest.OperationMetadata()
            model.fromMap(value)
            self.operationMetadata = model
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceAutoPay"] as? Bool {
            self.resourceAutoPay = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["SpecificationCode"] as? String {
            self.specificationCode = value
        }
        if let value = dict["SpecificationName"] as? String {
            self.specificationName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateServiceInstanceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceInstanceRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
    }
}

public class CreateServiceInstanceShrinkRequest : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public var autoPay: Bool?

        public var autoRenew: Bool?

        public var couponId: String?

        public var payPeriod: Int64?

        public var payPeriodUnit: String?

        public var quotationId: String?

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
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.couponId != nil {
                map["CouponId"] = self.couponId!
            }
            if self.payPeriod != nil {
                map["PayPeriod"] = self.payPeriod!
            }
            if self.payPeriodUnit != nil {
                map["PayPeriodUnit"] = self.payPeriodUnit!
            }
            if self.quotationId != nil {
                map["QuotationId"] = self.quotationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoPay"] as? Bool {
                self.autoPay = value
            }
            if let value = dict["AutoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["CouponId"] as? String {
                self.couponId = value
            }
            if let value = dict["PayPeriod"] as? Int64 {
                self.payPeriod = value
            }
            if let value = dict["PayPeriodUnit"] as? String {
                self.payPeriodUnit = value
            }
            if let value = dict["QuotationId"] as? String {
                self.quotationId = value
            }
        }
    }
    public class OperationMetadata : Tea.TeaModel {
        public var endTime: String?

        public var extraInfo: String?

        public var resources: String?

        public var serviceInstanceId: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ExtraInfo"] as? String {
                self.extraInfo = value
            }
            if let value = dict["Resources"] as? String {
                self.resources = value
            }
            if let value = dict["ServiceInstanceId"] as? String {
                self.serviceInstanceId = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var clientToken: String?

    public var commodity: CreateServiceInstanceShrinkRequest.Commodity?

    public var contactGroup: String?

    public var dryRun: Bool?

    public var enableInstanceOps: Bool?

    public var enableUserPrometheus: Bool?

    public var name: String?

    public var operationMetadata: CreateServiceInstanceShrinkRequest.OperationMetadata?

    public var parametersShrink: String?

    public var regionId: String?

    public var resourceAutoPay: Bool?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public var specificationCode: String?

    public var specificationName: String?

    public var tag: [CreateServiceInstanceShrinkRequest.Tag]?

    public var templateName: String?

    public var trialType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commodity?.validate()
        try self.operationMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.contactGroup != nil {
            map["ContactGroup"] = self.contactGroup!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.enableInstanceOps != nil {
            map["EnableInstanceOps"] = self.enableInstanceOps!
        }
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operationMetadata != nil {
            map["OperationMetadata"] = self.operationMetadata?.toMap()
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceAutoPay != nil {
            map["ResourceAutoPay"] = self.resourceAutoPay!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationCode != nil {
            map["SpecificationCode"] = self.specificationCode!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? [String: Any?] {
            var model = CreateServiceInstanceShrinkRequest.Commodity()
            model.fromMap(value)
            self.commodity = model
        }
        if let value = dict["ContactGroup"] as? String {
            self.contactGroup = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EnableInstanceOps"] as? Bool {
            self.enableInstanceOps = value
        }
        if let value = dict["EnableUserPrometheus"] as? Bool {
            self.enableUserPrometheus = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OperationMetadata"] as? [String: Any?] {
            var model = CreateServiceInstanceShrinkRequest.OperationMetadata()
            model.fromMap(value)
            self.operationMetadata = model
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceAutoPay"] as? Bool {
            self.resourceAutoPay = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["SpecificationCode"] as? String {
            self.specificationCode = value
        }
        if let value = dict["SpecificationName"] as? String {
            self.specificationName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateServiceInstanceShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceInstanceShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
    }
}

public class CreateServiceInstanceResponseBody : Tea.TeaModel {
    public var marketInstanceId: String?

    public var orderId: String?

    public var requestId: String?

    public var serviceInstanceId: String?

    public var status: String?

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
        if self.marketInstanceId != nil {
            map["MarketInstanceId"] = self.marketInstanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MarketInstanceId"] as? String {
            self.marketInstanceId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceInstanceResponseBody?

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
            var model = CreateServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceUsageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var userInformation: [String: String]?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userInformation != nil {
            map["UserInformation"] = self.userInformation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["UserInformation"] as? [String: String] {
            self.userInformation = value
        }
    }
}

public class CreateServiceUsageShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var userInformationShrink: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userInformationShrink != nil {
            map["UserInformation"] = self.userInformationShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["UserInformation"] as? String {
            self.userInformationShrink = value
        }
    }
}

public class CreateServiceUsageResponseBody : Tea.TeaModel {
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

public class CreateServiceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceUsageResponseBody?

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
            var model = CreateServiceUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBackupRequest : Tea.TeaModel {
    public var backupId: String?

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
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
    }
}

public class DeleteBackupResponseBody : Tea.TeaModel {
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

public class DeleteBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBackupResponseBody?

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
            var model = DeleteBackupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceInstancesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: [String]?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? [String] {
            self.serviceInstanceId = value
        }
    }
}

public class DeleteServiceInstancesResponseBody : Tea.TeaModel {
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

public class DeleteServiceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceInstancesResponseBody?

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
            var model = DeleteServiceInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeployServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class DeployServiceInstanceResponseBody : Tea.TeaModel {
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

public class DeployServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployServiceInstanceResponseBody?

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
            var model = DeployServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var regionEndpoint: String?

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
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionEndpoint"] as? String {
                self.regionEndpoint = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateServicePolicyRequest : Tea.TeaModel {
    public var operationTypes: [String]?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public var templateName: String?

    public var trialType: String?

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
        if self.operationTypes != nil {
            map["OperationTypes"] = self.operationTypes!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationTypes"] as? [String] {
            self.operationTypes = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
    }
}

public class GenerateServicePolicyResponseBody : Tea.TeaModel {
    public class MissingPolicy : Tea.TeaModel {
        public var action: [String]?

        public var resource: String?

        public var serviceName: String?

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
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.resource != nil {
                map["Resource"] = self.resource!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? [String] {
                self.action = value
            }
            if let value = dict["Resource"] as? String {
                self.resource = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
        }
    }
    public var missingPolicy: [GenerateServicePolicyResponseBody.MissingPolicy]?

    public var policy: String?

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
        if self.missingPolicy != nil {
            var tmp : [Any] = []
            for k in self.missingPolicy! {
                tmp.append(k.toMap())
            }
            map["MissingPolicy"] = tmp
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MissingPolicy"] as? [Any?] {
            var tmp : [GenerateServicePolicyResponseBody.MissingPolicy] = []
            for v in value {
                if v != nil {
                    var model = GenerateServicePolicyResponseBody.MissingPolicy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.missingPolicy = tmp
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateServicePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateServicePolicyResponseBody?

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
            var model = GenerateServicePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBackupRequest : Tea.TeaModel {
    public var backupId: String?

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
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
    }
}

public class GetBackupResponseBody : Tea.TeaModel {
    public var backupId: String?

    public var createTime: String?

    public var description_: String?

    public var endTime: String?

    public var modifiedTime: String?

    public var requestId: String?

    public var serviceInstanceId: String?

    public var startTime: String?

    public var status: String?

    public var statusDetail: String?

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
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusDetail != nil {
            map["StatusDetail"] = self.statusDetail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ModifiedTime"] as? String {
            self.modifiedTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusDetail"] as? String {
            self.statusDetail = value
        }
    }
}

public class GetBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBackupResponseBody?

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
            var model = GetBackupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNetworkAvailableZonesRequest : Tea.TeaModel {
    public var isPoc: Bool?

    public var networkRegionId: String?

    public var privateVpcConnectionMode: String?

    public var serviceId: String?

    public var serviceInstanceEndpointServiceType: String?

    public var serviceRegionId: String?

    public var serviceVersion: String?

    public var zoneId: String?

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
        if self.isPoc != nil {
            map["IsPoc"] = self.isPoc!
        }
        if self.networkRegionId != nil {
            map["NetworkRegionId"] = self.networkRegionId!
        }
        if self.privateVpcConnectionMode != nil {
            map["PrivateVpcConnectionMode"] = self.privateVpcConnectionMode!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceEndpointServiceType != nil {
            map["ServiceInstanceEndpointServiceType"] = self.serviceInstanceEndpointServiceType!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsPoc"] as? Bool {
            self.isPoc = value
        }
        if let value = dict["NetworkRegionId"] as? String {
            self.networkRegionId = value
        }
        if let value = dict["PrivateVpcConnectionMode"] as? String {
            self.privateVpcConnectionMode = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceEndpointServiceType"] as? String {
            self.serviceInstanceEndpointServiceType = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class GetNetworkAvailableZonesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var regionIdList: [String]?

        public var zoneIdList: [String]?

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
            if self.regionIdList != nil {
                map["RegionIdList"] = self.regionIdList!
            }
            if self.zoneIdList != nil {
                map["ZoneIdList"] = self.zoneIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionIdList"] as? [String] {
                self.regionIdList = value
            }
            if let value = dict["ZoneIdList"] as? [String] {
                self.zoneIdList = value
            }
        }
    }
    public var data: GetNetworkAvailableZonesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetNetworkAvailableZonesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetNetworkAvailableZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNetworkAvailableZonesResponseBody?

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
            var model = GetNetworkAvailableZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceRequest : Tea.TeaModel {
    public var regionId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceName: String?

    public var serviceVersion: String?

    public var showDetails: [String]?

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
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.showDetails != nil {
            map["ShowDetails"] = self.showDetails!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["ShowDetails"] as? [String] {
            self.showDetails = value
        }
    }
}

public class GetServiceResponseBody : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public class CssMetadata : Tea.TeaModel {
            public class ComponentsMappings : Tea.TeaModel {
                public var mappings: [String: String]?

                public var templateName: String?

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
                    if self.mappings != nil {
                        map["Mappings"] = self.mappings!
                    }
                    if self.templateName != nil {
                        map["TemplateName"] = self.templateName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Mappings"] as? [String: String] {
                        self.mappings = value
                    }
                    if let value = dict["TemplateName"] as? String {
                        self.templateName = value
                    }
                }
            }
            public var componentsMappings: [GetServiceResponseBody.Commodity.CssMetadata.ComponentsMappings]?

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
                if self.componentsMappings != nil {
                    var tmp : [Any] = []
                    for k in self.componentsMappings! {
                        tmp.append(k.toMap())
                    }
                    map["ComponentsMappings"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentsMappings"] as? [Any?] {
                    var tmp : [GetServiceResponseBody.Commodity.CssMetadata.ComponentsMappings] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceResponseBody.Commodity.CssMetadata.ComponentsMappings()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.componentsMappings = tmp
                }
            }
        }
        public class MarketplaceMetadata : Tea.TeaModel {
            public class SpecificationMappings : Tea.TeaModel {
                public var specificationCode: String?

                public var specificationName: String?

                public var templateName: String?

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
                    if self.specificationCode != nil {
                        map["SpecificationCode"] = self.specificationCode!
                    }
                    if self.specificationName != nil {
                        map["SpecificationName"] = self.specificationName!
                    }
                    if self.templateName != nil {
                        map["TemplateName"] = self.templateName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SpecificationCode"] as? String {
                        self.specificationCode = value
                    }
                    if let value = dict["SpecificationName"] as? String {
                        self.specificationName = value
                    }
                    if let value = dict["TemplateName"] as? String {
                        self.templateName = value
                    }
                }
            }
            public var specificationMappings: [GetServiceResponseBody.Commodity.MarketplaceMetadata.SpecificationMappings]?

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
                if self.specificationMappings != nil {
                    var tmp : [Any] = []
                    for k in self.specificationMappings! {
                        tmp.append(k.toMap())
                    }
                    map["SpecificationMappings"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SpecificationMappings"] as? [Any?] {
                    var tmp : [GetServiceResponseBody.Commodity.MarketplaceMetadata.SpecificationMappings] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceResponseBody.Commodity.MarketplaceMetadata.SpecificationMappings()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.specificationMappings = tmp
                }
            }
        }
        public class Specifications : Tea.TeaModel {
            public var code: String?

            public var name: String?

            public var times: [String]?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.times != nil {
                    map["Times"] = self.times!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Times"] as? [String] {
                    self.times = value
                }
            }
        }
        public var chargeType: String?

        public var commodityCode: String?

        public var cssMetadata: GetServiceResponseBody.Commodity.CssMetadata?

        public var deployPage: String?

        public var marketplaceMetadata: GetServiceResponseBody.Commodity.MarketplaceMetadata?

        public var orderTime: [String: [String]]?

        public var saasBoostMetadata: String?

        public var specifications: [GetServiceResponseBody.Commodity.Specifications]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cssMetadata?.validate()
            try self.marketplaceMetadata?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.cssMetadata != nil {
                map["CssMetadata"] = self.cssMetadata?.toMap()
            }
            if self.deployPage != nil {
                map["DeployPage"] = self.deployPage!
            }
            if self.marketplaceMetadata != nil {
                map["MarketplaceMetadata"] = self.marketplaceMetadata?.toMap()
            }
            if self.orderTime != nil {
                map["OrderTime"] = self.orderTime!
            }
            if self.saasBoostMetadata != nil {
                map["SaasBoostMetadata"] = self.saasBoostMetadata!
            }
            if self.specifications != nil {
                var tmp : [Any] = []
                for k in self.specifications! {
                    tmp.append(k.toMap())
                }
                map["Specifications"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CssMetadata"] as? [String: Any?] {
                var model = GetServiceResponseBody.Commodity.CssMetadata()
                model.fromMap(value)
                self.cssMetadata = model
            }
            if let value = dict["DeployPage"] as? String {
                self.deployPage = value
            }
            if let value = dict["MarketplaceMetadata"] as? [String: Any?] {
                var model = GetServiceResponseBody.Commodity.MarketplaceMetadata()
                model.fromMap(value)
                self.marketplaceMetadata = model
            }
            if let value = dict["OrderTime"] as? [String: [String]] {
                self.orderTime = value
            }
            if let value = dict["SaasBoostMetadata"] as? String {
                self.saasBoostMetadata = value
            }
            if let value = dict["Specifications"] as? [Any?] {
                var tmp : [GetServiceResponseBody.Commodity.Specifications] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceResponseBody.Commodity.Specifications()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.specifications = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class ComplianceMetadata : Tea.TeaModel {
        public var compliancePacks: [String]?

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
            if self.compliancePacks != nil {
                map["CompliancePacks"] = self.compliancePacks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompliancePacks"] as? [String] {
                self.compliancePacks = value
            }
        }
    }
    public class InstanceRoleInfos : Tea.TeaModel {
        public var policyDocument: String?

        public var principals: [String]?

        public var roleName: String?

        public var templateName: String?

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
            if self.policyDocument != nil {
                map["PolicyDocument"] = self.policyDocument!
            }
            if self.principals != nil {
                map["Principals"] = self.principals!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PolicyDocument"] as? String {
                self.policyDocument = value
            }
            if let value = dict["Principals"] as? [String] {
                self.principals = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
        }
    }
    public class ServiceDocumentInfos : Tea.TeaModel {
        public var documentUrl: String?

        public var locale: String?

        public var templateName: String?

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
            if self.documentUrl != nil {
                map["DocumentUrl"] = self.documentUrl!
            }
            if self.locale != nil {
                map["Locale"] = self.locale!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DocumentUrl"] as? String {
                self.documentUrl = value
            }
            if let value = dict["Locale"] as? String {
                self.locale = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
        }
    }
    public class ServiceInfos : Tea.TeaModel {
        public class Agreements : Tea.TeaModel {
            public var name: String?

            public var url: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public class Softwares : Tea.TeaModel {
            public var name: String?

            public var version: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agreements: [GetServiceResponseBody.ServiceInfos.Agreements]?

        public var image: String?

        public var locale: String?

        public var name: String?

        public var shortDescription: String?

        public var softwares: [GetServiceResponseBody.ServiceInfos.Softwares]?

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
            if self.agreements != nil {
                var tmp : [Any] = []
                for k in self.agreements! {
                    tmp.append(k.toMap())
                }
                map["Agreements"] = tmp
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.locale != nil {
                map["Locale"] = self.locale!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.shortDescription != nil {
                map["ShortDescription"] = self.shortDescription!
            }
            if self.softwares != nil {
                var tmp : [Any] = []
                for k in self.softwares! {
                    tmp.append(k.toMap())
                }
                map["Softwares"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agreements"] as? [Any?] {
                var tmp : [GetServiceResponseBody.ServiceInfos.Agreements] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceResponseBody.ServiceInfos.Agreements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agreements = tmp
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["Locale"] as? String {
                self.locale = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ShortDescription"] as? String {
                self.shortDescription = value
            }
            if let value = dict["Softwares"] as? [Any?] {
                var tmp : [GetServiceResponseBody.ServiceInfos.Softwares] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceResponseBody.ServiceInfos.Softwares()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.softwares = tmp
            }
        }
    }
    public class ServiceLocaleConfigs : Tea.TeaModel {
        public var enValue: String?

        public var originalValue: String?

        public var zhValue: String?

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
            if self.enValue != nil {
                map["EnValue"] = self.enValue!
            }
            if self.originalValue != nil {
                map["OriginalValue"] = self.originalValue!
            }
            if self.zhValue != nil {
                map["ZhValue"] = self.zhValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnValue"] as? String {
                self.enValue = value
            }
            if let value = dict["OriginalValue"] as? String {
                self.originalValue = value
            }
            if let value = dict["ZhValue"] as? String {
                self.zhValue = value
            }
        }
    }
    public class SupportContacts : Tea.TeaModel {
        public var type: String?

        public var value: String?

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
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var alarmMetadata: String?

    public var categories: String?

    public var commodity: GetServiceResponseBody.Commodity?

    public var complianceMetadata: GetServiceResponseBody.ComplianceMetadata?

    public var deployFrom: String?

    public var deployMetadata: String?

    public var deployType: String?

    public var duration: Int64?

    public var instanceRoleInfos: [GetServiceResponseBody.InstanceRoleInfos]?

    public var isSupportOperated: Bool?

    public var licenseMetadata: String?

    public var logMetadata: String?

    public var operationMetadata: String?

    public var permission: String?

    public var policyNames: String?

    public var publishTime: String?

    public var requestId: String?

    public var serviceDocumentInfos: [GetServiceResponseBody.ServiceDocumentInfos]?

    public var serviceId: String?

    public var serviceInfos: [GetServiceResponseBody.ServiceInfos]?

    public var serviceLocaleConfigs: [GetServiceResponseBody.ServiceLocaleConfigs]?

    public var serviceProductUrl: String?

    public var serviceType: String?

    public var shareType: String?

    public var status: String?

    public var supplierDesc: String?

    public var supplierLogo: String?

    public var supplierName: String?

    public var supplierUid: Int64?

    public var supplierUrl: String?

    public var supportContacts: [GetServiceResponseBody.SupportContacts]?

    public var tags: [GetServiceResponseBody.Tags]?

    public var tenantType: String?

    public var trialDuration: Int64?

    public var trialType: String?

    public var version: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commodity?.validate()
        try self.complianceMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmMetadata != nil {
            map["AlarmMetadata"] = self.alarmMetadata!
        }
        if self.categories != nil {
            map["Categories"] = self.categories!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.complianceMetadata != nil {
            map["ComplianceMetadata"] = self.complianceMetadata?.toMap()
        }
        if self.deployFrom != nil {
            map["DeployFrom"] = self.deployFrom!
        }
        if self.deployMetadata != nil {
            map["DeployMetadata"] = self.deployMetadata!
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceRoleInfos != nil {
            var tmp : [Any] = []
            for k in self.instanceRoleInfos! {
                tmp.append(k.toMap())
            }
            map["InstanceRoleInfos"] = tmp
        }
        if self.isSupportOperated != nil {
            map["IsSupportOperated"] = self.isSupportOperated!
        }
        if self.licenseMetadata != nil {
            map["LicenseMetadata"] = self.licenseMetadata!
        }
        if self.logMetadata != nil {
            map["LogMetadata"] = self.logMetadata!
        }
        if self.operationMetadata != nil {
            map["OperationMetadata"] = self.operationMetadata!
        }
        if self.permission != nil {
            map["Permission"] = self.permission!
        }
        if self.policyNames != nil {
            map["PolicyNames"] = self.policyNames!
        }
        if self.publishTime != nil {
            map["PublishTime"] = self.publishTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceDocumentInfos != nil {
            var tmp : [Any] = []
            for k in self.serviceDocumentInfos! {
                tmp.append(k.toMap())
            }
            map["ServiceDocumentInfos"] = tmp
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInfos != nil {
            var tmp : [Any] = []
            for k in self.serviceInfos! {
                tmp.append(k.toMap())
            }
            map["ServiceInfos"] = tmp
        }
        if self.serviceLocaleConfigs != nil {
            var tmp : [Any] = []
            for k in self.serviceLocaleConfigs! {
                tmp.append(k.toMap())
            }
            map["ServiceLocaleConfigs"] = tmp
        }
        if self.serviceProductUrl != nil {
            map["ServiceProductUrl"] = self.serviceProductUrl!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supplierDesc != nil {
            map["SupplierDesc"] = self.supplierDesc!
        }
        if self.supplierLogo != nil {
            map["SupplierLogo"] = self.supplierLogo!
        }
        if self.supplierName != nil {
            map["SupplierName"] = self.supplierName!
        }
        if self.supplierUid != nil {
            map["SupplierUid"] = self.supplierUid!
        }
        if self.supplierUrl != nil {
            map["SupplierUrl"] = self.supplierUrl!
        }
        if self.supportContacts != nil {
            var tmp : [Any] = []
            for k in self.supportContacts! {
                tmp.append(k.toMap())
            }
            map["SupportContacts"] = tmp
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.tenantType != nil {
            map["TenantType"] = self.tenantType!
        }
        if self.trialDuration != nil {
            map["TrialDuration"] = self.trialDuration!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmMetadata"] as? String {
            self.alarmMetadata = value
        }
        if let value = dict["Categories"] as? String {
            self.categories = value
        }
        if let value = dict["Commodity"] as? [String: Any?] {
            var model = GetServiceResponseBody.Commodity()
            model.fromMap(value)
            self.commodity = model
        }
        if let value = dict["ComplianceMetadata"] as? [String: Any?] {
            var model = GetServiceResponseBody.ComplianceMetadata()
            model.fromMap(value)
            self.complianceMetadata = model
        }
        if let value = dict["DeployFrom"] as? String {
            self.deployFrom = value
        }
        if let value = dict["DeployMetadata"] as? String {
            self.deployMetadata = value
        }
        if let value = dict["DeployType"] as? String {
            self.deployType = value
        }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["InstanceRoleInfos"] as? [Any?] {
            var tmp : [GetServiceResponseBody.InstanceRoleInfos] = []
            for v in value {
                if v != nil {
                    var model = GetServiceResponseBody.InstanceRoleInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceRoleInfos = tmp
        }
        if let value = dict["IsSupportOperated"] as? Bool {
            self.isSupportOperated = value
        }
        if let value = dict["LicenseMetadata"] as? String {
            self.licenseMetadata = value
        }
        if let value = dict["LogMetadata"] as? String {
            self.logMetadata = value
        }
        if let value = dict["OperationMetadata"] as? String {
            self.operationMetadata = value
        }
        if let value = dict["Permission"] as? String {
            self.permission = value
        }
        if let value = dict["PolicyNames"] as? String {
            self.policyNames = value
        }
        if let value = dict["PublishTime"] as? String {
            self.publishTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceDocumentInfos"] as? [Any?] {
            var tmp : [GetServiceResponseBody.ServiceDocumentInfos] = []
            for v in value {
                if v != nil {
                    var model = GetServiceResponseBody.ServiceDocumentInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceDocumentInfos = tmp
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInfos"] as? [Any?] {
            var tmp : [GetServiceResponseBody.ServiceInfos] = []
            for v in value {
                if v != nil {
                    var model = GetServiceResponseBody.ServiceInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceInfos = tmp
        }
        if let value = dict["ServiceLocaleConfigs"] as? [Any?] {
            var tmp : [GetServiceResponseBody.ServiceLocaleConfigs] = []
            for v in value {
                if v != nil {
                    var model = GetServiceResponseBody.ServiceLocaleConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceLocaleConfigs = tmp
        }
        if let value = dict["ServiceProductUrl"] as? String {
            self.serviceProductUrl = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupplierDesc"] as? String {
            self.supplierDesc = value
        }
        if let value = dict["SupplierLogo"] as? String {
            self.supplierLogo = value
        }
        if let value = dict["SupplierName"] as? String {
            self.supplierName = value
        }
        if let value = dict["SupplierUid"] as? Int64 {
            self.supplierUid = value
        }
        if let value = dict["SupplierUrl"] as? String {
            self.supplierUrl = value
        }
        if let value = dict["SupportContacts"] as? [Any?] {
            var tmp : [GetServiceResponseBody.SupportContacts] = []
            for v in value {
                if v != nil {
                    var model = GetServiceResponseBody.SupportContacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.supportContacts = tmp
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetServiceResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetServiceResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TenantType"] as? String {
            self.tenantType = value
        }
        if let value = dict["TrialDuration"] as? Int64 {
            self.trialDuration = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class GetServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceResponseBody?

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
            var model = GetServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceEstimateCostRequest : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public var couponId: String?

        public var payPeriod: Int32?

        public var payPeriodUnit: String?

        public var quotationId: String?

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
            if self.couponId != nil {
                map["CouponId"] = self.couponId!
            }
            if self.payPeriod != nil {
                map["PayPeriod"] = self.payPeriod!
            }
            if self.payPeriodUnit != nil {
                map["PayPeriodUnit"] = self.payPeriodUnit!
            }
            if self.quotationId != nil {
                map["QuotationId"] = self.quotationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CouponId"] as? String {
                self.couponId = value
            }
            if let value = dict["PayPeriod"] as? Int32 {
                self.payPeriod = value
            }
            if let value = dict["PayPeriodUnit"] as? String {
                self.payPeriodUnit = value
            }
            if let value = dict["QuotationId"] as? String {
                self.quotationId = value
            }
        }
    }
    public var clientToken: String?

    public var commodity: GetServiceEstimateCostRequest.Commodity?

    public var operationName: String?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public var specificationName: String?

    public var templateName: String?

    public var trialType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commodity?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? [String: Any?] {
            var model = GetServiceEstimateCostRequest.Commodity()
            model.fromMap(value)
            self.commodity = model
        }
        if let value = dict["OperationName"] as? String {
            self.operationName = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["SpecificationName"] as? String {
            self.specificationName = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
    }
}

public class GetServiceEstimateCostShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commodityShrink: String?

    public var operationName: String?

    public var parametersShrink: String?

    public var regionId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public var specificationName: String?

    public var templateName: String?

    public var trialType: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.commodityShrink != nil {
            map["Commodity"] = self.commodityShrink!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? String {
            self.commodityShrink = value
        }
        if let value = dict["OperationName"] as? String {
            self.operationName = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["SpecificationName"] as? String {
            self.specificationName = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
    }
}

public class GetServiceEstimateCostResponseBody : Tea.TeaModel {
    public var commodity: [String: CommodityValue]?

    public var requestId: String?

    public var resources: [String: Any]?

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
        if self.commodity != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.commodity! {
                tmp[k] = v.toMap()
            }
            map["Commodity"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Commodity"] as? [String: Any?] {
            var tmp : [String: CommodityValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = CommodityValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.commodity = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [String: Any] {
            self.resources = value
        }
    }
}

public class GetServiceEstimateCostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceEstimateCostResponseBody?

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
            var model = GetServiceEstimateCostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceInstanceRequest : Tea.TeaModel {
    public var marketInstanceId: String?

    public var regionId: String?

    public var serviceInstanceId: String?

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
        if self.marketInstanceId != nil {
            map["MarketInstanceId"] = self.marketInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MarketInstanceId"] as? String {
            self.marketInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class GetServiceInstanceResponseBody : Tea.TeaModel {
    public class GrantedPermission : Tea.TeaModel {
        public var operationEndTime: String?

        public var policyNames: String?

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
            if self.operationEndTime != nil {
                map["OperationEndTime"] = self.operationEndTime!
            }
            if self.policyNames != nil {
                map["PolicyNames"] = self.policyNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OperationEndTime"] as? String {
                self.operationEndTime = value
            }
            if let value = dict["PolicyNames"] as? String {
                self.policyNames = value
            }
        }
    }
    public class NetworkConfig : Tea.TeaModel {
        public class PrivateVpcConnections : Tea.TeaModel {
            public class ConnectionConfigs : Tea.TeaModel {
                public var connectBandwidth: Int32?

                public var domainName: String?

                public var endpointIps: [String]?

                public var ingressEndpointStatus: String?

                public var networkServiceStatus: String?

                public var regionId: String?

                public var securityGroups: [String]?

                public var vSwitches: [String]?

                public var vpcId: String?

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
                    if self.connectBandwidth != nil {
                        map["ConnectBandwidth"] = self.connectBandwidth!
                    }
                    if self.domainName != nil {
                        map["DomainName"] = self.domainName!
                    }
                    if self.endpointIps != nil {
                        map["EndpointIps"] = self.endpointIps!
                    }
                    if self.ingressEndpointStatus != nil {
                        map["IngressEndpointStatus"] = self.ingressEndpointStatus!
                    }
                    if self.networkServiceStatus != nil {
                        map["NetworkServiceStatus"] = self.networkServiceStatus!
                    }
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.securityGroups != nil {
                        map["SecurityGroups"] = self.securityGroups!
                    }
                    if self.vSwitches != nil {
                        map["VSwitches"] = self.vSwitches!
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConnectBandwidth"] as? Int32 {
                        self.connectBandwidth = value
                    }
                    if let value = dict["DomainName"] as? String {
                        self.domainName = value
                    }
                    if let value = dict["EndpointIps"] as? [String] {
                        self.endpointIps = value
                    }
                    if let value = dict["IngressEndpointStatus"] as? String {
                        self.ingressEndpointStatus = value
                    }
                    if let value = dict["NetworkServiceStatus"] as? String {
                        self.networkServiceStatus = value
                    }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["SecurityGroups"] as? [String] {
                        self.securityGroups = value
                    }
                    if let value = dict["VSwitches"] as? [String] {
                        self.vSwitches = value
                    }
                    if let value = dict["VpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var connectionConfigs: [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs]?

            public var endpointId: String?

            public var privateZoneId: String?

            public var privateZoneName: String?

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
                if self.connectionConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.connectionConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["ConnectionConfigs"] = tmp
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.privateZoneId != nil {
                    map["PrivateZoneId"] = self.privateZoneId!
                }
                if self.privateZoneName != nil {
                    map["PrivateZoneName"] = self.privateZoneName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionConfigs"] as? [Any?] {
                    var tmp : [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.connectionConfigs = tmp
                }
                if let value = dict["EndpointId"] as? String {
                    self.endpointId = value
                }
                if let value = dict["PrivateZoneId"] as? String {
                    self.privateZoneId = value
                }
                if let value = dict["PrivateZoneName"] as? String {
                    self.privateZoneName = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public class ReversePrivateVpcConnections : Tea.TeaModel {
            public var endpointId: String?

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
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndpointId"] as? String {
                    self.endpointId = value
                }
            }
        }
        public var endpointId: String?

        public var privateVpcConnections: [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections]?

        public var privateZoneId: String?

        public var reversePrivateVpcConnections: [GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections]?

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
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.privateVpcConnections != nil {
                var tmp : [Any] = []
                for k in self.privateVpcConnections! {
                    tmp.append(k.toMap())
                }
                map["PrivateVpcConnections"] = tmp
            }
            if self.privateZoneId != nil {
                map["PrivateZoneId"] = self.privateZoneId!
            }
            if self.reversePrivateVpcConnections != nil {
                var tmp : [Any] = []
                for k in self.reversePrivateVpcConnections! {
                    tmp.append(k.toMap())
                }
                map["ReversePrivateVpcConnections"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndpointId"] as? String {
                self.endpointId = value
            }
            if let value = dict["PrivateVpcConnections"] as? [Any?] {
                var tmp : [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.privateVpcConnections = tmp
            }
            if let value = dict["PrivateZoneId"] as? String {
                self.privateZoneId = value
            }
            if let value = dict["ReversePrivateVpcConnections"] as? [Any?] {
                var tmp : [GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.reversePrivateVpcConnections = tmp
            }
        }
    }
    public class Service : Tea.TeaModel {
        public class ServiceInfos : Tea.TeaModel {
            public var image: String?

            public var locale: String?

            public var name: String?

            public var shortDescription: String?

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
                if self.image != nil {
                    map["Image"] = self.image!
                }
                if self.locale != nil {
                    map["Locale"] = self.locale!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.shortDescription != nil {
                    map["ShortDescription"] = self.shortDescription!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Image"] as? String {
                    self.image = value
                }
                if let value = dict["Locale"] as? String {
                    self.locale = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ShortDescription"] as? String {
                    self.shortDescription = value
                }
            }
        }
        public class UpgradableServiceInfos : Tea.TeaModel {
            public var version: String?

            public var versionName: String?

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
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.versionName != nil {
                    map["VersionName"] = self.versionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["VersionName"] as? String {
                    self.versionName = value
                }
            }
        }
        public var deployMetadata: String?

        public var deployType: String?

        public var operationMetadata: String?

        public var publishTime: String?

        public var serviceDocUrl: String?

        public var serviceId: String?

        public var serviceInfos: [GetServiceInstanceResponseBody.Service.ServiceInfos]?

        public var serviceProductUrl: String?

        public var serviceType: String?

        public var status: String?

        public var supplierName: String?

        public var supplierUrl: String?

        public var upgradableServiceInfos: [GetServiceInstanceResponseBody.Service.UpgradableServiceInfos]?

        public var upgradableServiceVersions: [String]?

        public var upgradeMetadata: String?

        public var version: String?

        public var versionName: String?

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
            if self.deployMetadata != nil {
                map["DeployMetadata"] = self.deployMetadata!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.operationMetadata != nil {
                map["OperationMetadata"] = self.operationMetadata!
            }
            if self.publishTime != nil {
                map["PublishTime"] = self.publishTime!
            }
            if self.serviceDocUrl != nil {
                map["ServiceDocUrl"] = self.serviceDocUrl!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceInfos != nil {
                var tmp : [Any] = []
                for k in self.serviceInfos! {
                    tmp.append(k.toMap())
                }
                map["ServiceInfos"] = tmp
            }
            if self.serviceProductUrl != nil {
                map["ServiceProductUrl"] = self.serviceProductUrl!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.supplierUrl != nil {
                map["SupplierUrl"] = self.supplierUrl!
            }
            if self.upgradableServiceInfos != nil {
                var tmp : [Any] = []
                for k in self.upgradableServiceInfos! {
                    tmp.append(k.toMap())
                }
                map["UpgradableServiceInfos"] = tmp
            }
            if self.upgradableServiceVersions != nil {
                map["UpgradableServiceVersions"] = self.upgradableServiceVersions!
            }
            if self.upgradeMetadata != nil {
                map["UpgradeMetadata"] = self.upgradeMetadata!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeployMetadata"] as? String {
                self.deployMetadata = value
            }
            if let value = dict["DeployType"] as? String {
                self.deployType = value
            }
            if let value = dict["OperationMetadata"] as? String {
                self.operationMetadata = value
            }
            if let value = dict["PublishTime"] as? String {
                self.publishTime = value
            }
            if let value = dict["ServiceDocUrl"] as? String {
                self.serviceDocUrl = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceInfos"] as? [Any?] {
                var tmp : [GetServiceInstanceResponseBody.Service.ServiceInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceInstanceResponseBody.Service.ServiceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.serviceInfos = tmp
            }
            if let value = dict["ServiceProductUrl"] as? String {
                self.serviceProductUrl = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SupplierName"] as? String {
                self.supplierName = value
            }
            if let value = dict["SupplierUrl"] as? String {
                self.supplierUrl = value
            }
            if let value = dict["UpgradableServiceInfos"] as? [Any?] {
                var tmp : [GetServiceInstanceResponseBody.Service.UpgradableServiceInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceInstanceResponseBody.Service.UpgradableServiceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.upgradableServiceInfos = tmp
            }
            if let value = dict["UpgradableServiceVersions"] as? [String] {
                self.upgradableServiceVersions = value
            }
            if let value = dict["UpgradeMetadata"] as? String {
                self.upgradeMetadata = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var bizStatus: String?

    public var components: String?

    public var createTime: String?

    public var enableInstanceOps: Bool?

    public var enableUserPrometheus: Bool?

    public var endTime: String?

    public var grafanaDashBoardUrl: String?

    public var grantedPermission: GetServiceInstanceResponseBody.GrantedPermission?

    public var isOperated: Bool?

    public var licenseEndTime: String?

    public var marketInstanceId: String?

    public var name: String?

    public var networkConfig: GetServiceInstanceResponseBody.NetworkConfig?

    public var operatedServiceInstanceId: String?

    public var operationEndTime: String?

    public var operationStartTime: String?

    public var outputs: String?

    public var parameters: String?

    public var payType: String?

    public var policyNames: String?

    public var predefinedParameterName: String?

    public var progress: Int64?

    public var requestId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var service: GetServiceInstanceResponseBody.Service?

    public var serviceInstanceId: String?

    public var serviceType: String?

    public var source: String?

    public var status: String?

    public var statusDetail: String?

    public var supplierUid: Int64?

    public var supportTrialToPrivate: Bool?

    public var tags: [GetServiceInstanceResponseBody.Tags]?

    public var templateName: String?

    public var updateTime: String?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.grantedPermission?.validate()
        try self.networkConfig?.validate()
        try self.service?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizStatus != nil {
            map["BizStatus"] = self.bizStatus!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.enableInstanceOps != nil {
            map["EnableInstanceOps"] = self.enableInstanceOps!
        }
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.grafanaDashBoardUrl != nil {
            map["GrafanaDashBoardUrl"] = self.grafanaDashBoardUrl!
        }
        if self.grantedPermission != nil {
            map["GrantedPermission"] = self.grantedPermission?.toMap()
        }
        if self.isOperated != nil {
            map["IsOperated"] = self.isOperated!
        }
        if self.licenseEndTime != nil {
            map["LicenseEndTime"] = self.licenseEndTime!
        }
        if self.marketInstanceId != nil {
            map["MarketInstanceId"] = self.marketInstanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.networkConfig != nil {
            map["NetworkConfig"] = self.networkConfig?.toMap()
        }
        if self.operatedServiceInstanceId != nil {
            map["OperatedServiceInstanceId"] = self.operatedServiceInstanceId!
        }
        if self.operationEndTime != nil {
            map["OperationEndTime"] = self.operationEndTime!
        }
        if self.operationStartTime != nil {
            map["OperationStartTime"] = self.operationStartTime!
        }
        if self.outputs != nil {
            map["Outputs"] = self.outputs!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.policyNames != nil {
            map["PolicyNames"] = self.policyNames!
        }
        if self.predefinedParameterName != nil {
            map["PredefinedParameterName"] = self.predefinedParameterName!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.service != nil {
            map["Service"] = self.service?.toMap()
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusDetail != nil {
            map["StatusDetail"] = self.statusDetail!
        }
        if self.supplierUid != nil {
            map["SupplierUid"] = self.supplierUid!
        }
        if self.supportTrialToPrivate != nil {
            map["SupportTrialToPrivate"] = self.supportTrialToPrivate!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizStatus"] as? String {
            self.bizStatus = value
        }
        if let value = dict["Components"] as? String {
            self.components = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["EnableInstanceOps"] as? Bool {
            self.enableInstanceOps = value
        }
        if let value = dict["EnableUserPrometheus"] as? Bool {
            self.enableUserPrometheus = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["GrafanaDashBoardUrl"] as? String {
            self.grafanaDashBoardUrl = value
        }
        if let value = dict["GrantedPermission"] as? [String: Any?] {
            var model = GetServiceInstanceResponseBody.GrantedPermission()
            model.fromMap(value)
            self.grantedPermission = model
        }
        if let value = dict["IsOperated"] as? Bool {
            self.isOperated = value
        }
        if let value = dict["LicenseEndTime"] as? String {
            self.licenseEndTime = value
        }
        if let value = dict["MarketInstanceId"] as? String {
            self.marketInstanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NetworkConfig"] as? [String: Any?] {
            var model = GetServiceInstanceResponseBody.NetworkConfig()
            model.fromMap(value)
            self.networkConfig = model
        }
        if let value = dict["OperatedServiceInstanceId"] as? String {
            self.operatedServiceInstanceId = value
        }
        if let value = dict["OperationEndTime"] as? String {
            self.operationEndTime = value
        }
        if let value = dict["OperationStartTime"] as? String {
            self.operationStartTime = value
        }
        if let value = dict["Outputs"] as? String {
            self.outputs = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PolicyNames"] as? String {
            self.policyNames = value
        }
        if let value = dict["PredefinedParameterName"] as? String {
            self.predefinedParameterName = value
        }
        if let value = dict["Progress"] as? Int64 {
            self.progress = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Resources"] as? String {
            self.resources = value
        }
        if let value = dict["Service"] as? [String: Any?] {
            var model = GetServiceInstanceResponseBody.Service()
            model.fromMap(value)
            self.service = model
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusDetail"] as? String {
            self.statusDetail = value
        }
        if let value = dict["SupplierUid"] as? Int64 {
            self.supplierUid = value
        }
        if let value = dict["SupportTrialToPrivate"] as? Bool {
            self.supportTrialToPrivate = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetServiceInstanceResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetServiceInstanceResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class GetServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceInstanceResponseBody?

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
            var model = GetServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceInstanceSubscriptionEstimateCostRequest : Tea.TeaModel {
    public class ResourcePeriod : Tea.TeaModel {
        public var period: Int32?

        public var periodUnit: String?

        public var resourceArn: String?

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
            if self.resourceArn != nil {
                map["ResourceArn"] = self.resourceArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Period"] as? Int32 {
                self.period = value
            }
            if let value = dict["PeriodUnit"] as? String {
                self.periodUnit = value
            }
            if let value = dict["ResourceArn"] as? String {
                self.resourceArn = value
            }
        }
    }
    public var clientToken: String?

    public var orderType: String?

    public var period: Int32?

    public var periodUnit: String?

    public var regionId: String?

    public var resourcePeriod: [GetServiceInstanceSubscriptionEstimateCostRequest.ResourcePeriod]?

    public var serviceInstanceId: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourcePeriod != nil {
            var tmp : [Any] = []
            for k in self.resourcePeriod! {
                tmp.append(k.toMap())
            }
            map["ResourcePeriod"] = tmp
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourcePeriod"] as? [Any?] {
            var tmp : [GetServiceInstanceSubscriptionEstimateCostRequest.ResourcePeriod] = []
            for v in value {
                if v != nil {
                    var model = GetServiceInstanceSubscriptionEstimateCostRequest.ResourcePeriod()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourcePeriod = tmp
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class GetServiceInstanceSubscriptionEstimateCostResponseBody : Tea.TeaModel {
    public class ResourcePrices : Tea.TeaModel {
        public class DetailInfos : Tea.TeaModel {
            public var discountAmount: Double?

            public var originalAmount: Double?

            public var resource: String?

            public var tradeAmount: Double?

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
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.resource != nil {
                    map["Resource"] = self.resource!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["Resource"] as? String {
                    self.resource = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var ruleDescId: Int64?

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
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
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
                if let value = dict["RuleDescId"] as? Int64 {
                    self.ruleDescId = value
                }
            }
        }
        public var currency: String?

        public var detailInfos: [GetServiceInstanceSubscriptionEstimateCostResponseBody.ResourcePrices.DetailInfos]?

        public var discountAmount: Double?

        public var originalAmount: Double?

        public var period: Int32?

        public var periodUnit: String?

        public var resourceArn: String?

        public var rules: [GetServiceInstanceSubscriptionEstimateCostResponseBody.ResourcePrices.Rules]?

        public var tradeAmount: Double?

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
            if self.detailInfos != nil {
                var tmp : [Any] = []
                for k in self.detailInfos! {
                    tmp.append(k.toMap())
                }
                map["DetailInfos"] = tmp
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.originalAmount != nil {
                map["OriginalAmount"] = self.originalAmount!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.periodUnit != nil {
                map["PeriodUnit"] = self.periodUnit!
            }
            if self.resourceArn != nil {
                map["ResourceArn"] = self.resourceArn!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DetailInfos"] as? [Any?] {
                var tmp : [GetServiceInstanceSubscriptionEstimateCostResponseBody.ResourcePrices.DetailInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceInstanceSubscriptionEstimateCostResponseBody.ResourcePrices.DetailInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detailInfos = tmp
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["OriginalAmount"] as? Double {
                self.originalAmount = value
            }
            if let value = dict["Period"] as? Int32 {
                self.period = value
            }
            if let value = dict["PeriodUnit"] as? String {
                self.periodUnit = value
            }
            if let value = dict["ResourceArn"] as? String {
                self.resourceArn = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [GetServiceInstanceSubscriptionEstimateCostResponseBody.ResourcePrices.Rules] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceInstanceSubscriptionEstimateCostResponseBody.ResourcePrices.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var requestId: String?

    public var resourcePrices: [GetServiceInstanceSubscriptionEstimateCostResponseBody.ResourcePrices]?

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
        if self.resourcePrices != nil {
            var tmp : [Any] = []
            for k in self.resourcePrices! {
                tmp.append(k.toMap())
            }
            map["ResourcePrices"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourcePrices"] as? [Any?] {
            var tmp : [GetServiceInstanceSubscriptionEstimateCostResponseBody.ResourcePrices] = []
            for v in value {
                if v != nil {
                    var model = GetServiceInstanceSubscriptionEstimateCostResponseBody.ResourcePrices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourcePrices = tmp
        }
    }
}

public class GetServiceInstanceSubscriptionEstimateCostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceInstanceSubscriptionEstimateCostResponseBody?

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
            var model = GetServiceInstanceSubscriptionEstimateCostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceProvisionsRequest : Tea.TeaModel {
    public var parameters: [String: Any]?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public var templateName: String?

    public var trialType: String?

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
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
    }
}

public class GetServiceProvisionsShrinkRequest : Tea.TeaModel {
    public var parametersShrink: String?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public var templateName: String?

    public var trialType: String?

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
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
    }
}

public class GetServiceProvisionsResponseBody : Tea.TeaModel {
    public class ServiceProvisions : Tea.TeaModel {
        public class CommodityProvisions : Tea.TeaModel {
            public var commodityCode: String?

            public var enableURL: String?

            public var status: String?

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
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.enableURL != nil {
                    map["EnableURL"] = self.enableURL!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["EnableURL"] as? String {
                    self.enableURL = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class RoleProvision : Tea.TeaModel {
            public class Roles : Tea.TeaModel {
                public class ApiForCreation : Tea.TeaModel {
                    public var apiName: String?

                    public var apiProductId: String?

                    public var apiType: String?

                    public var parameters: [String: Any]?

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
                        if self.apiName != nil {
                            map["ApiName"] = self.apiName!
                        }
                        if self.apiProductId != nil {
                            map["ApiProductId"] = self.apiProductId!
                        }
                        if self.apiType != nil {
                            map["ApiType"] = self.apiType!
                        }
                        if self.parameters != nil {
                            map["parameters"] = self.parameters!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ApiName"] as? String {
                            self.apiName = value
                        }
                        if let value = dict["ApiProductId"] as? String {
                            self.apiProductId = value
                        }
                        if let value = dict["ApiType"] as? String {
                            self.apiType = value
                        }
                        if let value = dict["parameters"] as? [String: Any] {
                            self.parameters = value
                        }
                    }
                }
                public var apiForCreation: GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles.ApiForCreation?

                public var created: Bool?

                public var function: String?

                public var roleName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.apiForCreation?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiForCreation != nil {
                        map["ApiForCreation"] = self.apiForCreation?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created!
                    }
                    if self.function != nil {
                        map["Function"] = self.function!
                    }
                    if self.roleName != nil {
                        map["RoleName"] = self.roleName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiForCreation"] as? [String: Any?] {
                        var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles.ApiForCreation()
                        model.fromMap(value)
                        self.apiForCreation = model
                    }
                    if let value = dict["Created"] as? Bool {
                        self.created = value
                    }
                    if let value = dict["Function"] as? String {
                        self.function = value
                    }
                    if let value = dict["RoleName"] as? String {
                        self.roleName = value
                    }
                }
            }
            public var authorizationURL: String?

            public var roles: [GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles]?

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
                if self.authorizationURL != nil {
                    map["AuthorizationURL"] = self.authorizationURL!
                }
                if self.roles != nil {
                    var tmp : [Any] = []
                    for k in self.roles! {
                        tmp.append(k.toMap())
                    }
                    map["Roles"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthorizationURL"] as? String {
                    self.authorizationURL = value
                }
                if let value = dict["Roles"] as? [Any?] {
                    var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.roles = tmp
                }
            }
        }
        public var autoEnableService: Bool?

        public var commodityProvisions: [GetServiceProvisionsResponseBody.ServiceProvisions.CommodityProvisions]?

        public var enableURL: String?

        public var roleProvision: GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision?

        public var serviceName: String?

        public var status: String?

        public var statusReason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.roleProvision?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoEnableService != nil {
                map["AutoEnableService"] = self.autoEnableService!
            }
            if self.commodityProvisions != nil {
                var tmp : [Any] = []
                for k in self.commodityProvisions! {
                    tmp.append(k.toMap())
                }
                map["CommodityProvisions"] = tmp
            }
            if self.enableURL != nil {
                map["EnableURL"] = self.enableURL!
            }
            if self.roleProvision != nil {
                map["RoleProvision"] = self.roleProvision?.toMap()
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoEnableService"] as? Bool {
                self.autoEnableService = value
            }
            if let value = dict["CommodityProvisions"] as? [Any?] {
                var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions.CommodityProvisions] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceProvisionsResponseBody.ServiceProvisions.CommodityProvisions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.commodityProvisions = tmp
            }
            if let value = dict["EnableURL"] as? String {
                self.enableURL = value
            }
            if let value = dict["RoleProvision"] as? [String: Any?] {
                var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision()
                model.fromMap(value)
                self.roleProvision = model
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
        }
    }
    public var requestId: String?

    public var serviceProvisions: [GetServiceProvisionsResponseBody.ServiceProvisions]?

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
        if self.serviceProvisions != nil {
            var tmp : [Any] = []
            for k in self.serviceProvisions! {
                tmp.append(k.toMap())
            }
            map["ServiceProvisions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceProvisions"] as? [Any?] {
            var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions] = []
            for v in value {
                if v != nil {
                    var model = GetServiceProvisionsResponseBody.ServiceProvisions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceProvisions = tmp
        }
    }
}

public class GetServiceProvisionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceProvisionsResponseBody?

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
            var model = GetServiceProvisionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceTemplateParameterConstraintsRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

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
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
            }
        }
    }
    public var clientToken: String?

    public var deployRegionId: String?

    public var enablePrivateVpcConnection: Bool?

    public var parameters: [GetServiceTemplateParameterConstraintsRequest.Parameters]?

    public var regionId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public var specificationName: String?

    public var templateName: String?

    public var trialType: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.deployRegionId != nil {
            map["DeployRegionId"] = self.deployRegionId!
        }
        if self.enablePrivateVpcConnection != nil {
            map["EnablePrivateVpcConnection"] = self.enablePrivateVpcConnection!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeployRegionId"] as? String {
            self.deployRegionId = value
        }
        if let value = dict["EnablePrivateVpcConnection"] as? Bool {
            self.enablePrivateVpcConnection = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetServiceTemplateParameterConstraintsRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetServiceTemplateParameterConstraintsRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["SpecificationName"] as? String {
            self.specificationName = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
    }
}

public class GetServiceTemplateParameterConstraintsResponseBody : Tea.TeaModel {
    public class ParameterConstraints : Tea.TeaModel {
        public class OriginalConstraints : Tea.TeaModel {
            public var allowedValues: [String]?

            public var propertyName: String?

            public var resourceName: String?

            public var resourceType: String?

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
                if self.allowedValues != nil {
                    map["AllowedValues"] = self.allowedValues!
                }
                if self.propertyName != nil {
                    map["PropertyName"] = self.propertyName!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowedValues"] as? [String] {
                    self.allowedValues = value
                }
                if let value = dict["PropertyName"] as? String {
                    self.propertyName = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
            }
        }
        public class QueryErrors : Tea.TeaModel {
            public var errorMessage: String?

            public var resourceName: String?

            public var resourceType: String?

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
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
            }
        }
        public var allowedValues: [String]?

        public var associationParameterNames: [String]?

        public var behavior: String?

        public var behaviorReason: String?

        public var originalConstraints: [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints]?

        public var parameterKey: String?

        public var queryErrors: [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryErrors]?

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
            if self.allowedValues != nil {
                map["AllowedValues"] = self.allowedValues!
            }
            if self.associationParameterNames != nil {
                map["AssociationParameterNames"] = self.associationParameterNames!
            }
            if self.behavior != nil {
                map["Behavior"] = self.behavior!
            }
            if self.behaviorReason != nil {
                map["BehaviorReason"] = self.behaviorReason!
            }
            if self.originalConstraints != nil {
                var tmp : [Any] = []
                for k in self.originalConstraints! {
                    tmp.append(k.toMap())
                }
                map["OriginalConstraints"] = tmp
            }
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.queryErrors != nil {
                var tmp : [Any] = []
                for k in self.queryErrors! {
                    tmp.append(k.toMap())
                }
                map["QueryErrors"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowedValues"] as? [String] {
                self.allowedValues = value
            }
            if let value = dict["AssociationParameterNames"] as? [String] {
                self.associationParameterNames = value
            }
            if let value = dict["Behavior"] as? String {
                self.behavior = value
            }
            if let value = dict["BehaviorReason"] as? String {
                self.behaviorReason = value
            }
            if let value = dict["OriginalConstraints"] as? [Any?] {
                var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.originalConstraints = tmp
            }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["QueryErrors"] as? [Any?] {
                var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryErrors] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryErrors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.queryErrors = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var familyConstraints: [String]?

    public var parameterConstraints: [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints]?

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
        if self.familyConstraints != nil {
            map["FamilyConstraints"] = self.familyConstraints!
        }
        if self.parameterConstraints != nil {
            var tmp : [Any] = []
            for k in self.parameterConstraints! {
                tmp.append(k.toMap())
            }
            map["ParameterConstraints"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FamilyConstraints"] as? [String] {
            self.familyConstraints = value
        }
        if let value = dict["ParameterConstraints"] as? [Any?] {
            var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints] = []
            for v in value {
                if v != nil {
                    var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameterConstraints = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetServiceTemplateParameterConstraintsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceTemplateParameterConstraintsResponseBody?

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
            var model = GetServiceTemplateParameterConstraintsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserInformationRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetUserInformationResponseBody : Tea.TeaModel {
    public class DeliverySettings : Tea.TeaModel {
        public var actiontrailDeliveryToOssEnabled: Bool?

        public var ossBucketName: String?

        public var ossEnabled: Bool?

        public var ossExpirationDays: Int64?

        public var ossPath: String?

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
            if self.actiontrailDeliveryToOssEnabled != nil {
                map["ActiontrailDeliveryToOssEnabled"] = self.actiontrailDeliveryToOssEnabled!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossEnabled != nil {
                map["OssEnabled"] = self.ossEnabled!
            }
            if self.ossExpirationDays != nil {
                map["OssExpirationDays"] = self.ossExpirationDays!
            }
            if self.ossPath != nil {
                map["OssPath"] = self.ossPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiontrailDeliveryToOssEnabled"] as? Bool {
                self.actiontrailDeliveryToOssEnabled = value
            }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["OssEnabled"] as? Bool {
                self.ossEnabled = value
            }
            if let value = dict["OssExpirationDays"] as? Int64 {
                self.ossExpirationDays = value
            }
            if let value = dict["OssPath"] as? String {
                self.ossPath = value
            }
        }
    }
    public var deliverySettings: GetUserInformationResponseBody.DeliverySettings?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliverySettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliverySettings != nil {
            map["DeliverySettings"] = self.deliverySettings?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliverySettings"] as? [String: Any?] {
            var model = GetUserInformationResponseBody.DeliverySettings()
            model.fromMap(value)
            self.deliverySettings = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetUserInformationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserInformationResponseBody?

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
            var model = GetUserInformationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBackupsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var value: [String]?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListBackupsRequest.Filter]?

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
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListBackupsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListBackupsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListBackupsResponseBody : Tea.TeaModel {
    public class Backups : Tea.TeaModel {
        public var backupId: String?

        public var backupMode: String?

        public var createTime: String?

        public var description_: String?

        public var endTime: String?

        public var modifiedTime: String?

        public var retentionDays: Int32?

        public var serviceInstanceId: String?

        public var startTime: String?

        public var status: String?

        public var statusDetail: String?

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
            if self.backupId != nil {
                map["BackupId"] = self.backupId!
            }
            if self.backupMode != nil {
                map["BackupMode"] = self.backupMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.retentionDays != nil {
                map["RetentionDays"] = self.retentionDays!
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusDetail != nil {
                map["StatusDetail"] = self.statusDetail!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupId"] as? String {
                self.backupId = value
            }
            if let value = dict["BackupMode"] as? String {
                self.backupMode = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["RetentionDays"] as? Int32 {
                self.retentionDays = value
            }
            if let value = dict["ServiceInstanceId"] as? String {
                self.serviceInstanceId = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusDetail"] as? String {
                self.statusDetail = value
            }
        }
    }
    public var backups: [ListBackupsResponseBody.Backups]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.backups != nil {
            var tmp : [Any] = []
            for k in self.backups! {
                tmp.append(k.toMap())
            }
            map["Backups"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Backups"] as? [Any?] {
            var tmp : [ListBackupsResponseBody.Backups] = []
            for v in value {
                if v != nil {
                    var model = ListBackupsResponseBody.Backups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.backups = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListBackupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBackupsResponseBody?

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
            var model = ListBackupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPoliciesRequest : Tea.TeaModel {
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListPoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public var description_: String?

        public var policyDocument: String?

        public var policyName: String?

        public var policyType: String?

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
            if self.policyDocument != nil {
                map["PolicyDocument"] = self.policyDocument!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicyDocument"] as? String {
                self.policyDocument = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var policies: [ListPoliciesResponseBody.Policies]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Policies"] as? [Any?] {
            var tmp : [ListPoliciesResponseBody.Policies] = []
            for v in value {
                if v != nil {
                    var model = ListPoliciesResponseBody.Policies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policies = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPoliciesResponseBody?

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
            var model = ListPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRestoreTasksRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var value: [String]?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListRestoreTasksRequest.Filter]?

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
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListRestoreTasksRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListRestoreTasksRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListRestoreTasksResponseBody : Tea.TeaModel {
    public class RestoreTasks : Tea.TeaModel {
        public var backupId: String?

        public var createTime: String?

        public var endTime: String?

        public var modifiedTime: String?

        public var restoreTaskId: String?

        public var serviceInstanceId: String?

        public var startTime: String?

        public var status: String?

        public var statusDetail: String?

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
            if self.backupId != nil {
                map["BackupId"] = self.backupId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.restoreTaskId != nil {
                map["RestoreTaskId"] = self.restoreTaskId!
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusDetail != nil {
                map["StatusDetail"] = self.statusDetail!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupId"] as? String {
                self.backupId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["RestoreTaskId"] as? String {
                self.restoreTaskId = value
            }
            if let value = dict["ServiceInstanceId"] as? String {
                self.serviceInstanceId = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusDetail"] as? String {
                self.statusDetail = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var restoreTasks: [ListRestoreTasksResponseBody.RestoreTasks]?

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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreTasks != nil {
            var tmp : [Any] = []
            for k in self.restoreTasks! {
                tmp.append(k.toMap())
            }
            map["RestoreTasks"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreTasks"] as? [Any?] {
            var tmp : [ListRestoreTasksResponseBody.RestoreTasks] = []
            for v in value {
                if v != nil {
                    var model = ListRestoreTasksResponseBody.RestoreTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.restoreTasks = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListRestoreTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRestoreTasksResponseBody?

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
            var model = ListRestoreTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceCategoriesResponseBody : Tea.TeaModel {
    public var categories: [String]?

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
        if self.categories != nil {
            map["Categories"] = self.categories!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Categories"] as? [String] {
            self.categories = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListServiceCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceCategoriesResponseBody?

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
            var model = ListServiceCategoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstanceBillRequest : Tea.TeaModel {
    public var billingCycle: String?

    public var billingDate: String?

    public var granularity: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var serviceInstanceId: String?

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
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.billingDate != nil {
            map["BillingDate"] = self.billingDate!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillingCycle"] as? String {
            self.billingCycle = value
        }
        if let value = dict["BillingDate"] as? String {
            self.billingDate = value
        }
        if let value = dict["Granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class ListServiceInstanceBillResponseBody : Tea.TeaModel {
    public class Item : Tea.TeaModel {
        public var billingCycle: String?

        public var billingDate: String?

        public var billingItem: String?

        public var billingItemCode: String?

        public var currency: String?

        public var deductedByResourcePackage: String?

        public var instanceID: String?

        public var invoiceDiscount: String?

        public var listPrice: String?

        public var listPriceUnit: String?

        public var pretaxAmount: String?

        public var pretaxGrossAmount: String?

        public var productCode: String?

        public var productDetail: String?

        public var productName: String?

        public var splitBillingCycle: String?

        public var subscriptionType: String?

        public var usage: String?

        public var usageUnit: String?

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
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.billingDate != nil {
                map["BillingDate"] = self.billingDate!
            }
            if self.billingItem != nil {
                map["BillingItem"] = self.billingItem!
            }
            if self.billingItemCode != nil {
                map["BillingItemCode"] = self.billingItemCode!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.deductedByResourcePackage != nil {
                map["DeductedByResourcePackage"] = self.deductedByResourcePackage!
            }
            if self.instanceID != nil {
                map["InstanceID"] = self.instanceID!
            }
            if self.invoiceDiscount != nil {
                map["InvoiceDiscount"] = self.invoiceDiscount!
            }
            if self.listPrice != nil {
                map["ListPrice"] = self.listPrice!
            }
            if self.listPriceUnit != nil {
                map["ListPriceUnit"] = self.listPriceUnit!
            }
            if self.pretaxAmount != nil {
                map["PretaxAmount"] = self.pretaxAmount!
            }
            if self.pretaxGrossAmount != nil {
                map["PretaxGrossAmount"] = self.pretaxGrossAmount!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productDetail != nil {
                map["ProductDetail"] = self.productDetail!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.splitBillingCycle != nil {
                map["SplitBillingCycle"] = self.splitBillingCycle!
            }
            if self.subscriptionType != nil {
                map["SubscriptionType"] = self.subscriptionType!
            }
            if self.usage != nil {
                map["Usage"] = self.usage!
            }
            if self.usageUnit != nil {
                map["UsageUnit"] = self.usageUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BillingCycle"] as? String {
                self.billingCycle = value
            }
            if let value = dict["BillingDate"] as? String {
                self.billingDate = value
            }
            if let value = dict["BillingItem"] as? String {
                self.billingItem = value
            }
            if let value = dict["BillingItemCode"] as? String {
                self.billingItemCode = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DeductedByResourcePackage"] as? String {
                self.deductedByResourcePackage = value
            }
            if let value = dict["InstanceID"] as? String {
                self.instanceID = value
            }
            if let value = dict["InvoiceDiscount"] as? String {
                self.invoiceDiscount = value
            }
            if let value = dict["ListPrice"] as? String {
                self.listPrice = value
            }
            if let value = dict["ListPriceUnit"] as? String {
                self.listPriceUnit = value
            }
            if let value = dict["PretaxAmount"] as? String {
                self.pretaxAmount = value
            }
            if let value = dict["PretaxGrossAmount"] as? String {
                self.pretaxGrossAmount = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductDetail"] as? String {
                self.productDetail = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["SplitBillingCycle"] as? String {
                self.splitBillingCycle = value
            }
            if let value = dict["SubscriptionType"] as? String {
                self.subscriptionType = value
            }
            if let value = dict["Usage"] as? String {
                self.usage = value
            }
            if let value = dict["UsageUnit"] as? String {
                self.usageUnit = value
            }
        }
    }
    public var item: [ListServiceInstanceBillResponseBody.Item]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.item != nil {
            var tmp : [Any] = []
            for k in self.item! {
                tmp.append(k.toMap())
            }
            map["Item"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Item"] as? [Any?] {
            var tmp : [ListServiceInstanceBillResponseBody.Item] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceBillResponseBody.Item()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.item = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListServiceInstanceBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceBillResponseBody?

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
            var model = ListServiceInstanceBillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstanceLogsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var value: [String]?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListServiceInstanceLogsRequest.Filter]?

    public var logSource: String?

    public var logstore: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public var sortOrder: String?

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
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.logSource != nil {
            map["LogSource"] = self.logSource!
        }
        if self.logstore != nil {
            map["Logstore"] = self.logstore!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServiceInstanceLogsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceLogsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["LogSource"] as? String {
            self.logSource = value
        }
        if let value = dict["Logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
    }
}

public class ListServiceInstanceLogsResponseBody : Tea.TeaModel {
    public class ServiceInstancesLogs : Tea.TeaModel {
        public var compliancePackType: String?

        public var complianceRuleName: String?

        public var content: String?

        public var logType: String?

        public var resourceId: String?

        public var resourceType: String?

        public var source: String?

        public var status: String?

        public var timestamp: String?

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
            if self.compliancePackType != nil {
                map["CompliancePackType"] = self.compliancePackType!
            }
            if self.complianceRuleName != nil {
                map["ComplianceRuleName"] = self.complianceRuleName!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompliancePackType"] as? String {
                self.compliancePackType = value
            }
            if let value = dict["ComplianceRuleName"] as? String {
                self.complianceRuleName = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["LogType"] as? String {
                self.logType = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceInstancesLogs: [ListServiceInstanceLogsResponseBody.ServiceInstancesLogs]?

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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstancesLogs != nil {
            var tmp : [Any] = []
            for k in self.serviceInstancesLogs! {
                tmp.append(k.toMap())
            }
            map["ServiceInstancesLogs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceInstancesLogs"] as? [Any?] {
            var tmp : [ListServiceInstanceLogsResponseBody.ServiceInstancesLogs] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceLogsResponseBody.ServiceInstancesLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceInstancesLogs = tmp
        }
    }
}

public class ListServiceInstanceLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceLogsResponseBody?

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
            var model = ListServiceInstanceLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstanceResourcesRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var name: String?

        public var values: [String]?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var filters: [ListServiceInstanceResourcesRequest.Filters]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public var serviceInstanceResourceType: String?

    public var tag: [ListServiceInstanceResourcesRequest.Tag]?

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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceInstanceResourceType != nil {
            map["ServiceInstanceResourceType"] = self.serviceInstanceResourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [ListServiceInstanceResourcesRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceResourcesRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceInstanceResourceType"] as? String {
            self.serviceInstanceResourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListServiceInstanceResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListServiceInstanceResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var payType: String?

        public var productCode: String?

        public var productType: String?

        public var renewStatus: String?

        public var renewalPeriod: Int32?

        public var renewalPeriodUnit: String?

        public var resourceARN: String?

        public var status: String?

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
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.renewStatus != nil {
                map["RenewStatus"] = self.renewStatus!
            }
            if self.renewalPeriod != nil {
                map["RenewalPeriod"] = self.renewalPeriod!
            }
            if self.renewalPeriodUnit != nil {
                map["RenewalPeriodUnit"] = self.renewalPeriodUnit!
            }
            if self.resourceARN != nil {
                map["ResourceARN"] = self.resourceARN!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["RenewStatus"] as? String {
                self.renewStatus = value
            }
            if let value = dict["RenewalPeriod"] as? Int32 {
                self.renewalPeriod = value
            }
            if let value = dict["RenewalPeriodUnit"] as? String {
                self.renewalPeriodUnit = value
            }
            if let value = dict["ResourceARN"] as? String {
                self.resourceARN = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resources: [ListServiceInstanceResourcesResponseBody.Resources]?

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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [ListServiceInstanceResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
    }
}

public class ListServiceInstanceResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceResourcesResponseBody?

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
            var model = ListServiceInstanceResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstanceUpgradeHistoryRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class ListServiceInstanceUpgradeHistoryResponseBody : Tea.TeaModel {
    public class UpgradeHistory : Tea.TeaModel {
        public var endTime: String?

        public var fromVersion: String?

        public var results: String?

        public var startTime: String?

        public var status: String?

        public var toVersion: String?

        public var type: String?

        public var upgradeHistoryId: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.fromVersion != nil {
                map["FromVersion"] = self.fromVersion!
            }
            if self.results != nil {
                map["Results"] = self.results!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.toVersion != nil {
                map["ToVersion"] = self.toVersion!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.upgradeHistoryId != nil {
                map["UpgradeHistoryId"] = self.upgradeHistoryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["FromVersion"] as? String {
                self.fromVersion = value
            }
            if let value = dict["Results"] as? String {
                self.results = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["ToVersion"] as? String {
                self.toVersion = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpgradeHistoryId"] as? String {
                self.upgradeHistoryId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int64?

    public var upgradeHistory: [ListServiceInstanceUpgradeHistoryResponseBody.UpgradeHistory]?

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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.upgradeHistory != nil {
            var tmp : [Any] = []
            for k in self.upgradeHistory! {
                tmp.append(k.toMap())
            }
            map["UpgradeHistory"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["UpgradeHistory"] as? [Any?] {
            var tmp : [ListServiceInstanceUpgradeHistoryResponseBody.UpgradeHistory] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceUpgradeHistoryResponseBody.UpgradeHistory()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.upgradeHistory = tmp
        }
    }
}

public class ListServiceInstanceUpgradeHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceUpgradeHistoryResponseBody?

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
            var model = ListServiceInstanceUpgradeHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstancesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var value: [String]?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var filter: [ListServiceInstancesRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [ListServiceInstancesRequest.Tag]?

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
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServiceInstancesRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstancesRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListServiceInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstancesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListServiceInstancesResponseBody : Tea.TeaModel {
    public class ServiceInstances : Tea.TeaModel {
        public class GrantedPermission : Tea.TeaModel {
            public var operationEndTime: String?

            public var policyNames: String?

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
                if self.operationEndTime != nil {
                    map["OperationEndTime"] = self.operationEndTime!
                }
                if self.policyNames != nil {
                    map["PolicyNames"] = self.policyNames!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OperationEndTime"] as? String {
                    self.operationEndTime = value
                }
                if let value = dict["PolicyNames"] as? String {
                    self.policyNames = value
                }
            }
        }
        public class Service : Tea.TeaModel {
            public class Commodity : Tea.TeaModel {
                public var saasBoostMetadata: String?

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
                    if self.saasBoostMetadata != nil {
                        map["SaasBoostMetadata"] = self.saasBoostMetadata!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SaasBoostMetadata"] as? String {
                        self.saasBoostMetadata = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public class ServiceInfos : Tea.TeaModel {
                public var image: String?

                public var locale: String?

                public var name: String?

                public var shortDescription: String?

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
                    if self.image != nil {
                        map["Image"] = self.image!
                    }
                    if self.locale != nil {
                        map["Locale"] = self.locale!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.shortDescription != nil {
                        map["ShortDescription"] = self.shortDescription!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Image"] as? String {
                        self.image = value
                    }
                    if let value = dict["Locale"] as? String {
                        self.locale = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ShortDescription"] as? String {
                        self.shortDescription = value
                    }
                }
            }
            public var commodity: ListServiceInstancesResponseBody.ServiceInstances.Service.Commodity?

            public var deployType: String?

            public var publishTime: String?

            public var serviceId: String?

            public var serviceInfos: [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos]?

            public var serviceType: String?

            public var status: String?

            public var supplierName: String?

            public var supplierUrl: String?

            public var version: String?

            public var versionName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.commodity?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commodity != nil {
                    map["Commodity"] = self.commodity?.toMap()
                }
                if self.deployType != nil {
                    map["DeployType"] = self.deployType!
                }
                if self.publishTime != nil {
                    map["PublishTime"] = self.publishTime!
                }
                if self.serviceId != nil {
                    map["ServiceId"] = self.serviceId!
                }
                if self.serviceInfos != nil {
                    var tmp : [Any] = []
                    for k in self.serviceInfos! {
                        tmp.append(k.toMap())
                    }
                    map["ServiceInfos"] = tmp
                }
                if self.serviceType != nil {
                    map["ServiceType"] = self.serviceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.supplierName != nil {
                    map["SupplierName"] = self.supplierName!
                }
                if self.supplierUrl != nil {
                    map["SupplierUrl"] = self.supplierUrl!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.versionName != nil {
                    map["VersionName"] = self.versionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Commodity"] as? [String: Any?] {
                    var model = ListServiceInstancesResponseBody.ServiceInstances.Service.Commodity()
                    model.fromMap(value)
                    self.commodity = model
                }
                if let value = dict["DeployType"] as? String {
                    self.deployType = value
                }
                if let value = dict["PublishTime"] as? String {
                    self.publishTime = value
                }
                if let value = dict["ServiceId"] as? String {
                    self.serviceId = value
                }
                if let value = dict["ServiceInfos"] as? [Any?] {
                    var tmp : [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos] = []
                    for v in value {
                        if v != nil {
                            var model = ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.serviceInfos = tmp
                }
                if let value = dict["ServiceType"] as? String {
                    self.serviceType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["SupplierName"] as? String {
                    self.supplierName = value
                }
                if let value = dict["SupplierUrl"] as? String {
                    self.supplierUrl = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["VersionName"] as? String {
                    self.versionName = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var value: String?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var bizStatus: String?

        public var createTime: String?

        public var enableInstanceOps: Bool?

        public var endTime: String?

        public var grantedPermission: ListServiceInstancesResponseBody.ServiceInstances.GrantedPermission?

        public var marketInstanceId: String?

        public var name: String?

        public var operatedServiceInstanceId: String?

        public var operationEndTime: String?

        public var operationStartTime: String?

        public var orderId: String?

        public var outputs: String?

        public var parameters: String?

        public var payType: String?

        public var policyNames: String?

        public var progress: Int64?

        public var resourceGroupId: String?

        public var resources: String?

        public var service: ListServiceInstancesResponseBody.ServiceInstances.Service?

        public var serviceInstanceId: String?

        public var serviceType: String?

        public var source: String?

        public var status: String?

        public var statusDetail: String?

        public var supportTrialToPrivate: Bool?

        public var tags: [ListServiceInstancesResponseBody.ServiceInstances.Tags]?

        public var templateName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.grantedPermission?.validate()
            try self.service?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizStatus != nil {
                map["BizStatus"] = self.bizStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enableInstanceOps != nil {
                map["EnableInstanceOps"] = self.enableInstanceOps!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.grantedPermission != nil {
                map["GrantedPermission"] = self.grantedPermission?.toMap()
            }
            if self.marketInstanceId != nil {
                map["MarketInstanceId"] = self.marketInstanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operatedServiceInstanceId != nil {
                map["OperatedServiceInstanceId"] = self.operatedServiceInstanceId!
            }
            if self.operationEndTime != nil {
                map["OperationEndTime"] = self.operationEndTime!
            }
            if self.operationStartTime != nil {
                map["OperationStartTime"] = self.operationStartTime!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.policyNames != nil {
                map["PolicyNames"] = self.policyNames!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.service != nil {
                map["Service"] = self.service?.toMap()
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusDetail != nil {
                map["StatusDetail"] = self.statusDetail!
            }
            if self.supportTrialToPrivate != nil {
                map["SupportTrialToPrivate"] = self.supportTrialToPrivate!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizStatus"] as? String {
                self.bizStatus = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EnableInstanceOps"] as? Bool {
                self.enableInstanceOps = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["GrantedPermission"] as? [String: Any?] {
                var model = ListServiceInstancesResponseBody.ServiceInstances.GrantedPermission()
                model.fromMap(value)
                self.grantedPermission = model
            }
            if let value = dict["MarketInstanceId"] as? String {
                self.marketInstanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OperatedServiceInstanceId"] as? String {
                self.operatedServiceInstanceId = value
            }
            if let value = dict["OperationEndTime"] as? String {
                self.operationEndTime = value
            }
            if let value = dict["OperationStartTime"] as? String {
                self.operationStartTime = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["Outputs"] as? String {
                self.outputs = value
            }
            if let value = dict["Parameters"] as? String {
                self.parameters = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["PolicyNames"] as? String {
                self.policyNames = value
            }
            if let value = dict["Progress"] as? Int64 {
                self.progress = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Resources"] as? String {
                self.resources = value
            }
            if let value = dict["Service"] as? [String: Any?] {
                var model = ListServiceInstancesResponseBody.ServiceInstances.Service()
                model.fromMap(value)
                self.service = model
            }
            if let value = dict["ServiceInstanceId"] as? String {
                self.serviceInstanceId = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusDetail"] as? String {
                self.statusDetail = value
            }
            if let value = dict["SupportTrialToPrivate"] as? Bool {
                self.supportTrialToPrivate = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListServiceInstancesResponseBody.ServiceInstances.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListServiceInstancesResponseBody.ServiceInstances.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceInstances: [ListServiceInstancesResponseBody.ServiceInstances]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstances != nil {
            var tmp : [Any] = []
            for k in self.serviceInstances! {
                tmp.append(k.toMap())
            }
            map["ServiceInstances"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceInstances"] as? [Any?] {
            var tmp : [ListServiceInstancesResponseBody.ServiceInstances] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstancesResponseBody.ServiceInstances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceInstances = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListServiceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstancesResponseBody?

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
            var model = ListServiceInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceUsagesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var value: [String]?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListServiceUsagesRequest.Filter]?

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
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServiceUsagesRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServiceUsagesRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListServiceUsagesResponseBody : Tea.TeaModel {
    public class ServiceUsages : Tea.TeaModel {
        public var comments: String?

        public var createTime: String?

        public var serviceId: String?

        public var serviceName: String?

        public var status: String?

        public var supplierName: String?

        public var updateTime: String?

        public var userAliUid: Int64?

        public var userInformation: [String: String]?

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
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userAliUid != nil {
                map["UserAliUid"] = self.userAliUid!
            }
            if self.userInformation != nil {
                map["UserInformation"] = self.userInformation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SupplierName"] as? String {
                self.supplierName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserAliUid"] as? Int64 {
                self.userAliUid = value
            }
            if let value = dict["UserInformation"] as? [String: String] {
                self.userInformation = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceUsages: [ListServiceUsagesResponseBody.ServiceUsages]?

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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceUsages != nil {
            var tmp : [Any] = []
            for k in self.serviceUsages! {
                tmp.append(k.toMap())
            }
            map["ServiceUsages"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceUsages"] as? [Any?] {
            var tmp : [ListServiceUsagesResponseBody.ServiceUsages] = []
            for v in value {
                if v != nil {
                    var model = ListServiceUsagesResponseBody.ServiceUsages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceUsages = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListServiceUsagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceUsagesResponseBody?

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
            var model = ListServiceUsagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServicesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var value: [String]?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var filter: [ListServicesRequest.Filter]?

    public var fuzzyKeyword: String?

    public var inUsed: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderByType: String?

    public var regionId: String?

    public var serviceAccessType: String?

    public var tag: [ListServicesRequest.Tag]?

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
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.fuzzyKeyword != nil {
            map["FuzzyKeyword"] = self.fuzzyKeyword!
        }
        if self.inUsed != nil {
            map["InUsed"] = self.inUsed!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderByType != nil {
            map["OrderByType"] = self.orderByType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceAccessType != nil {
            map["ServiceAccessType"] = self.serviceAccessType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServicesRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServicesRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["FuzzyKeyword"] as? String {
            self.fuzzyKeyword = value
        }
        if let value = dict["InUsed"] as? Bool {
            self.inUsed = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderByType"] as? String {
            self.orderByType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceAccessType"] as? String {
            self.serviceAccessType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListServicesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListServicesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListServicesResponseBody : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public class Commodity : Tea.TeaModel {
            public var commodityCode: String?

            public var deployPage: String?

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
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.deployPage != nil {
                    map["DeployPage"] = self.deployPage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["DeployPage"] as? String {
                    self.deployPage = value
                }
            }
        }
        public class ServiceInfos : Tea.TeaModel {
            public class Softwares : Tea.TeaModel {
                public var name: String?

                public var version: String?

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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
                    }
                }
            }
            public var image: String?

            public var locale: String?

            public var name: String?

            public var shortDescription: String?

            public var softwares: [ListServicesResponseBody.Services.ServiceInfos.Softwares]?

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
                if self.image != nil {
                    map["Image"] = self.image!
                }
                if self.locale != nil {
                    map["Locale"] = self.locale!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.shortDescription != nil {
                    map["ShortDescription"] = self.shortDescription!
                }
                if self.softwares != nil {
                    var tmp : [Any] = []
                    for k in self.softwares! {
                        tmp.append(k.toMap())
                    }
                    map["Softwares"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Image"] as? String {
                    self.image = value
                }
                if let value = dict["Locale"] as? String {
                    self.locale = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ShortDescription"] as? String {
                    self.shortDescription = value
                }
                if let value = dict["Softwares"] as? [Any?] {
                    var tmp : [ListServicesResponseBody.Services.ServiceInfos.Softwares] = []
                    for v in value {
                        if v != nil {
                            var model = ListServicesResponseBody.Services.ServiceInfos.Softwares()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.softwares = tmp
                }
            }
        }
        public class ServiceLocaleConfigs : Tea.TeaModel {
            public var enValue: String?

            public var originalValue: String?

            public var zhValue: String?

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
                if self.enValue != nil {
                    map["EnValue"] = self.enValue!
                }
                if self.originalValue != nil {
                    map["OriginalValue"] = self.originalValue!
                }
                if self.zhValue != nil {
                    map["ZhValue"] = self.zhValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnValue"] as? String {
                    self.enValue = value
                }
                if let value = dict["OriginalValue"] as? String {
                    self.originalValue = value
                }
                if let value = dict["ZhValue"] as? String {
                    self.zhValue = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var value: String?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var categories: String?

        public var commodity: ListServicesResponseBody.Services.Commodity?

        public var commodityCode: String?

        public var deployFrom: String?

        public var deployType: String?

        public var publishTime: String?

        public var score: Int32?

        public var serviceId: String?

        public var serviceInfos: [ListServicesResponseBody.Services.ServiceInfos]?

        public var serviceLocaleConfigs: [ListServicesResponseBody.Services.ServiceLocaleConfigs]?

        public var serviceProductUrl: String?

        public var serviceType: String?

        public var status: String?

        public var supplierName: String?

        public var supplierNameEng: String?

        public var supplierUid: Int64?

        public var supplierUrl: String?

        public var tags: [ListServicesResponseBody.Services.Tags]?

        public var tenantType: String?

        public var trialDuration: String?

        public var trialType: String?

        public var version: String?

        public var versionName: String?

        public var virtualInternetService: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commodity?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.commodity != nil {
                map["Commodity"] = self.commodity?.toMap()
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.deployFrom != nil {
                map["DeployFrom"] = self.deployFrom!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.publishTime != nil {
                map["PublishTime"] = self.publishTime!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceInfos != nil {
                var tmp : [Any] = []
                for k in self.serviceInfos! {
                    tmp.append(k.toMap())
                }
                map["ServiceInfos"] = tmp
            }
            if self.serviceLocaleConfigs != nil {
                var tmp : [Any] = []
                for k in self.serviceLocaleConfigs! {
                    tmp.append(k.toMap())
                }
                map["ServiceLocaleConfigs"] = tmp
            }
            if self.serviceProductUrl != nil {
                map["ServiceProductUrl"] = self.serviceProductUrl!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.supplierNameEng != nil {
                map["SupplierNameEng"] = self.supplierNameEng!
            }
            if self.supplierUid != nil {
                map["SupplierUid"] = self.supplierUid!
            }
            if self.supplierUrl != nil {
                map["SupplierUrl"] = self.supplierUrl!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantType != nil {
                map["TenantType"] = self.tenantType!
            }
            if self.trialDuration != nil {
                map["TrialDuration"] = self.trialDuration!
            }
            if self.trialType != nil {
                map["TrialType"] = self.trialType!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            if self.virtualInternetService != nil {
                map["VirtualInternetService"] = self.virtualInternetService!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? String {
                self.categories = value
            }
            if let value = dict["Commodity"] as? [String: Any?] {
                var model = ListServicesResponseBody.Services.Commodity()
                model.fromMap(value)
                self.commodity = model
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["DeployFrom"] as? String {
                self.deployFrom = value
            }
            if let value = dict["DeployType"] as? String {
                self.deployType = value
            }
            if let value = dict["PublishTime"] as? String {
                self.publishTime = value
            }
            if let value = dict["Score"] as? Int32 {
                self.score = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceInfos"] as? [Any?] {
                var tmp : [ListServicesResponseBody.Services.ServiceInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListServicesResponseBody.Services.ServiceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.serviceInfos = tmp
            }
            if let value = dict["ServiceLocaleConfigs"] as? [Any?] {
                var tmp : [ListServicesResponseBody.Services.ServiceLocaleConfigs] = []
                for v in value {
                    if v != nil {
                        var model = ListServicesResponseBody.Services.ServiceLocaleConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.serviceLocaleConfigs = tmp
            }
            if let value = dict["ServiceProductUrl"] as? String {
                self.serviceProductUrl = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SupplierName"] as? String {
                self.supplierName = value
            }
            if let value = dict["SupplierNameEng"] as? String {
                self.supplierNameEng = value
            }
            if let value = dict["SupplierUid"] as? Int64 {
                self.supplierUid = value
            }
            if let value = dict["SupplierUrl"] as? String {
                self.supplierUrl = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListServicesResponseBody.Services.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListServicesResponseBody.Services.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TenantType"] as? String {
                self.tenantType = value
            }
            if let value = dict["TrialDuration"] as? String {
                self.trialDuration = value
            }
            if let value = dict["TrialType"] as? String {
                self.trialType = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
            if let value = dict["VirtualInternetService"] as? String {
                self.virtualInternetService = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var services: [ListServicesResponseBody.Services]?

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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["Services"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Services"] as? [Any?] {
            var tmp : [ListServicesResponseBody.Services] = []
            for v in value {
                if v != nil {
                    var model = ListServicesResponseBody.Services()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServicesResponseBody?

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
            var model = ListServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

    public var resourceType: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public var keys: [String]?

    public var nextToken: String?

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
        if self.keys != nil {
            map["Keys"] = self.keys!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keys"] as? [String] {
            self.keys = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagKeysResponseBody?

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
            var model = ListTagKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

        public var tagKey: String?

        public var tagValue: String?

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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagResources = tmp
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

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
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagValuesRequest : Tea.TeaModel {
    public var key: String?

    public var nextToken: String?

    public var regionId: String?

    public var resourceType: String?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListTagValuesResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var values: [String]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
        }
    }
}

public class ListTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagValuesResponseBody?

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
            var model = ListTagValuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewServiceInstanceResourcesRequest : Tea.TeaModel {
    public class ResourcePeriod : Tea.TeaModel {
        public var period: Int32?

        public var periodUnit: String?

        public var resourceArn: String?

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
            if self.resourceArn != nil {
                map["ResourceArn"] = self.resourceArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Period"] as? Int32 {
                self.period = value
            }
            if let value = dict["PeriodUnit"] as? String {
                self.periodUnit = value
            }
            if let value = dict["ResourceArn"] as? String {
                self.resourceArn = value
            }
        }
    }
    public var clientToken: String?

    public var period: Int32?

    public var periodUnit: String?

    public var regionId: String?

    public var resourcePeriod: [RenewServiceInstanceResourcesRequest.ResourcePeriod]?

    public var serviceInstanceId: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourcePeriod != nil {
            var tmp : [Any] = []
            for k in self.resourcePeriod! {
                tmp.append(k.toMap())
            }
            map["ResourcePeriod"] = tmp
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourcePeriod"] as? [Any?] {
            var tmp : [RenewServiceInstanceResourcesRequest.ResourcePeriod] = []
            for v in value {
                if v != nil {
                    var model = RenewServiceInstanceResourcesRequest.ResourcePeriod()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourcePeriod = tmp
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class RenewServiceInstanceResourcesResponseBody : Tea.TeaModel {
    public class FailureDetails : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var resourceArn: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.resourceArn != nil {
                map["ResourceArn"] = self.resourceArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["ResourceArn"] as? String {
                self.resourceArn = value
            }
        }
    }
    public class RenewalResult : Tea.TeaModel {
        public var failed: Int32?

        public var succeeded: Int32?

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
            if self.failed != nil {
                map["Failed"] = self.failed!
            }
            if self.succeeded != nil {
                map["Succeeded"] = self.succeeded!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Failed"] as? Int32 {
                self.failed = value
            }
            if let value = dict["Succeeded"] as? Int32 {
                self.succeeded = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var failureDetails: [RenewServiceInstanceResourcesResponseBody.FailureDetails]?

    public var renewalResult: RenewServiceInstanceResourcesResponseBody.RenewalResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.renewalResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failureDetails != nil {
            var tmp : [Any] = []
            for k in self.failureDetails! {
                tmp.append(k.toMap())
            }
            map["FailureDetails"] = tmp
        }
        if self.renewalResult != nil {
            map["RenewalResult"] = self.renewalResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailureDetails"] as? [Any?] {
            var tmp : [RenewServiceInstanceResourcesResponseBody.FailureDetails] = []
            for v in value {
                if v != nil {
                    var model = RenewServiceInstanceResourcesResponseBody.FailureDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failureDetails = tmp
        }
        if let value = dict["RenewalResult"] as? [String: Any?] {
            var model = RenewServiceInstanceResourcesResponseBody.RenewalResult()
            model.fromMap(value)
            self.renewalResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RenewServiceInstanceResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewServiceInstanceResourcesResponseBody?

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
            var model = RenewServiceInstanceResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class RestartServiceInstanceResponseBody : Tea.TeaModel {
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

public class RestartServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartServiceInstanceResponseBody?

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
            var model = RestartServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RollbackServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class RollbackServiceInstanceResponseBody : Tea.TeaModel {
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

public class RollbackServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RollbackServiceInstanceResponseBody?

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
            var model = RollbackServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class StartServiceInstanceResponseBody : Tea.TeaModel {
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

public class StartServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartServiceInstanceResponseBody?

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
            var model = StartServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class StopServiceInstanceResponseBody : Tea.TeaModel {
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

public class StopServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopServiceInstanceResponseBody?

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
            var model = StopServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

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
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnTagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UnTagResourcesResponseBody : Tea.TeaModel {
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

public class UnTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnTagResourcesResponseBody?

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
            var model = UnTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceInstanceAttributesRequest : Tea.TeaModel {
    public class GrantedPermission : Tea.TeaModel {
        public var operationEndTime: String?

        public var policyNames: String?

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
            if self.operationEndTime != nil {
                map["OperationEndTime"] = self.operationEndTime!
            }
            if self.policyNames != nil {
                map["PolicyNames"] = self.policyNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OperationEndTime"] as? String {
                self.operationEndTime = value
            }
            if let value = dict["PolicyNames"] as? String {
                self.policyNames = value
            }
        }
    }
    public var enableOperation: Bool?

    public var grantedPermission: UpdateServiceInstanceAttributesRequest.GrantedPermission?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.grantedPermission?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableOperation != nil {
            map["EnableOperation"] = self.enableOperation!
        }
        if self.grantedPermission != nil {
            map["GrantedPermission"] = self.grantedPermission?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableOperation"] as? Bool {
            self.enableOperation = value
        }
        if let value = dict["GrantedPermission"] as? [String: Any?] {
            var model = UpdateServiceInstanceAttributesRequest.GrantedPermission()
            model.fromMap(value)
            self.grantedPermission = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class UpdateServiceInstanceAttributesResponseBody : Tea.TeaModel {
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

public class UpdateServiceInstanceAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceInstanceAttributesResponseBody?

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
            var model = UpdateServiceInstanceAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceInstanceSpecRequest : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public var autoPay: Bool?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoPay"] as? Bool {
                self.autoPay = value
            }
        }
    }
    public var clientToken: String?

    public var commodity: UpdateServiceInstanceSpecRequest.Commodity?

    public var dryRun: Bool?

    public var enableUserPrometheus: Bool?

    public var operationName: String?

    public var parameters: [String: Any]?

    public var predefinedParametersName: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commodity?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.predefinedParametersName != nil {
            map["PredefinedParametersName"] = self.predefinedParametersName!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? [String: Any?] {
            var model = UpdateServiceInstanceSpecRequest.Commodity()
            model.fromMap(value)
            self.commodity = model
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EnableUserPrometheus"] as? Bool {
            self.enableUserPrometheus = value
        }
        if let value = dict["OperationName"] as? String {
            self.operationName = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["PredefinedParametersName"] as? String {
            self.predefinedParametersName = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class UpdateServiceInstanceSpecShrinkRequest : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public var autoPay: Bool?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoPay"] as? Bool {
                self.autoPay = value
            }
        }
    }
    public var clientToken: String?

    public var commodity: UpdateServiceInstanceSpecShrinkRequest.Commodity?

    public var dryRun: Bool?

    public var enableUserPrometheus: Bool?

    public var operationName: String?

    public var parametersShrink: String?

    public var predefinedParametersName: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commodity?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.predefinedParametersName != nil {
            map["PredefinedParametersName"] = self.predefinedParametersName!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? [String: Any?] {
            var model = UpdateServiceInstanceSpecShrinkRequest.Commodity()
            model.fromMap(value)
            self.commodity = model
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EnableUserPrometheus"] as? Bool {
            self.enableUserPrometheus = value
        }
        if let value = dict["OperationName"] as? String {
            self.operationName = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["PredefinedParametersName"] as? String {
            self.predefinedParametersName = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class UpdateServiceInstanceSpecResponseBody : Tea.TeaModel {
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

public class UpdateServiceInstanceSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceInstanceSpecResponseBody?

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
            var model = UpdateServiceInstanceSpecResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceUsageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var userInformation: [String: String]?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userInformation != nil {
            map["UserInformation"] = self.userInformation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["UserInformation"] as? [String: String] {
            self.userInformation = value
        }
    }
}

public class UpdateServiceUsageShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var userInformationShrink: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userInformationShrink != nil {
            map["UserInformation"] = self.userInformationShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["UserInformation"] as? String {
            self.userInformationShrink = value
        }
    }
}

public class UpdateServiceUsageResponseBody : Tea.TeaModel {
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

public class UpdateServiceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceUsageResponseBody?

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
            var model = UpdateServiceUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserInformationRequest : Tea.TeaModel {
    public class DeliverySettings : Tea.TeaModel {
        public var actiontrailDeliveryToOssEnabled: Bool?

        public var ossBucketName: String?

        public var ossEnabled: Bool?

        public var ossExpirationDays: Int64?

        public var ossPath: String?

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
            if self.actiontrailDeliveryToOssEnabled != nil {
                map["ActiontrailDeliveryToOssEnabled"] = self.actiontrailDeliveryToOssEnabled!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossEnabled != nil {
                map["OssEnabled"] = self.ossEnabled!
            }
            if self.ossExpirationDays != nil {
                map["OssExpirationDays"] = self.ossExpirationDays!
            }
            if self.ossPath != nil {
                map["OssPath"] = self.ossPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiontrailDeliveryToOssEnabled"] as? Bool {
                self.actiontrailDeliveryToOssEnabled = value
            }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["OssEnabled"] as? Bool {
                self.ossEnabled = value
            }
            if let value = dict["OssExpirationDays"] as? Int64 {
                self.ossExpirationDays = value
            }
            if let value = dict["OssPath"] as? String {
                self.ossPath = value
            }
        }
    }
    public var deliverySettings: UpdateUserInformationRequest.DeliverySettings?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliverySettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliverySettings != nil {
            map["DeliverySettings"] = self.deliverySettings?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliverySettings"] as? [String: Any?] {
            var model = UpdateUserInformationRequest.DeliverySettings()
            model.fromMap(value)
            self.deliverySettings = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateUserInformationResponseBody : Tea.TeaModel {
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

public class UpdateUserInformationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserInformationResponseBody?

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
            var model = UpdateUserInformationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: String?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
    }
}

public class UpgradeServiceInstanceShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: String?

    public var parametersShrink: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
    }
}

public class UpgradeServiceInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var upgradeRequiredParameters: [String]?

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
        if self.upgradeRequiredParameters != nil {
            map["UpgradeRequiredParameters"] = self.upgradeRequiredParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UpgradeRequiredParameters"] as? [String] {
            self.upgradeRequiredParameters = value
        }
    }
}

public class UpgradeServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeServiceInstanceResponseBody?

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
            var model = UpgradeServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateServiceInstanceNameRequest : Tea.TeaModel {
    public var clientToken: String?

    public var isTrial: Bool?

    public var serviceId: String?

    public var serviceInstanceName: String?

    public var serviceVersion: String?

    public var templateName: String?

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
            map["ClientToken"] = self.clientToken!
        }
        if self.isTrial != nil {
            map["IsTrial"] = self.isTrial!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceName != nil {
            map["ServiceInstanceName"] = self.serviceInstanceName!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["IsTrial"] as? Bool {
            self.isTrial = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceName"] as? String {
            self.serviceInstanceName = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class ValidateServiceInstanceNameResponseBody : Tea.TeaModel {
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

public class ValidateServiceInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateServiceInstanceNameResponseBody?

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
            var model = ValidateServiceInstanceNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
