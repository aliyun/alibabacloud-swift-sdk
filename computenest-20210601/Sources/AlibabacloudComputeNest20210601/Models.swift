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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("TradeAmount") {
                    self.tradeAmount = dict["TradeAmount"] as! String
                }
                if dict.keys.contains("DiscountAmount") {
                    self.discountAmount = dict["DiscountAmount"] as! String
                }
                if dict.keys.contains("OriginalAmount") {
                    self.originalAmount = dict["OriginalAmount"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Type") {
                                self.type = dict["Type"] as! Int64
                            }
                            if dict.keys.contains("Name") {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Code") {
                                self.code = dict["Code"] as! String
                            }
                            if dict.keys.contains("Value") {
                                self.value = dict["Value"] as! String
                            }
                            if dict.keys.contains("Unit") {
                                self.unit = dict["Unit"] as! String
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

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ModuleId") {
                            self.moduleId = dict["ModuleId"] as! Int64
                        }
                        if dict.keys.contains("ModuleName") {
                            self.moduleName = dict["ModuleName"] as! String
                        }
                        if dict.keys.contains("ModuleCode") {
                            self.moduleCode = dict["ModuleCode"] as! String
                        }
                        if dict.keys.contains("TotalProductFee") {
                            self.totalProductFee = dict["TotalProductFee"] as! Double
                        }
                        if dict.keys.contains("DiscountFee") {
                            self.discountFee = dict["DiscountFee"] as! Double
                        }
                        if dict.keys.contains("PayFee") {
                            self.payFee = dict["PayFee"] as! Double
                        }
                        if dict.keys.contains("PriceUnit") {
                            self.priceUnit = dict["PriceUnit"] as! String
                        }
                        if dict.keys.contains("IsPricingModule") {
                            self.isPricingModule = dict["IsPricingModule"] as! Bool
                        }
                        if dict.keys.contains("NeedOrderPay") {
                            self.needOrderPay = dict["NeedOrderPay"] as! Bool
                        }
                        if dict.keys.contains("PriceType") {
                            self.priceType = dict["PriceType"] as! String
                        }
                        if dict.keys.contains("ModuleAttrs") {
                            var tmp : [CommodityValue.Result.SubOrders.SubOrder.ModuleInstance.ModuleAttrs] = []
                            for v in dict["ModuleAttrs"] as! [Any] {
                                var model = CommodityValue.Result.SubOrders.SubOrder.ModuleInstance.ModuleAttrs()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.moduleAttrs = tmp
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ModuleInstance") {
                        var tmp : [CommodityValue.Result.SubOrders.SubOrder.ModuleInstance] = []
                        for v in dict["ModuleInstance"] as! [Any] {
                            var model = CommodityValue.Result.SubOrders.SubOrder.ModuleInstance()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SubOrder") {
                    var tmp : [CommodityValue.Result.SubOrders.SubOrder] = []
                    for v in dict["SubOrder"] as! [Any] {
                        var model = CommodityValue.Result.SubOrders.SubOrder()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CanPromFee") {
                    self.canPromFee = dict["CanPromFee"] as! Double
                }
                if dict.keys.contains("CouponDesc") {
                    self.couponDesc = dict["CouponDesc"] as! String
                }
                if dict.keys.contains("CouponName") {
                    self.couponName = dict["CouponName"] as! String
                }
                if dict.keys.contains("CouponOptionNo") {
                    self.couponOptionNo = dict["CouponOptionNo"] as! String
                }
                if dict.keys.contains("Selected") {
                    self.selected = dict["Selected"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Order") {
                var model = CommodityValue.Result.Order()
                model.fromMap(dict["Order"] as! [String: Any])
                self.order = model
            }
            if dict.keys.contains("InquiryType") {
                self.inquiryType = dict["InquiryType"] as! String
            }
            if dict.keys.contains("SubOrders") {
                var model = CommodityValue.Result.SubOrders()
                model.fromMap(dict["SubOrders"] as! [String: Any])
                self.subOrders = model
            }
            if dict.keys.contains("Coupons") {
                var tmp : [CommodityValue.Result.Coupons] = []
                for v in dict["Coupons"] as! [Any] {
                    var model = CommodityValue.Result.Coupons()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Result") {
            var model = CommodityValue.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CancelServiceUsageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var needDelete: Bool?

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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("NeedDelete") {
            self.needDelete = dict["NeedDelete"] as! Bool
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelServiceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PostPaidAmount") {
            self.postPaidAmount = dict["PostPaidAmount"] as! String
        }
        if dict.keys.contains("PrePaidAmount") {
            self.prePaidAmount = dict["PrePaidAmount"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckResults") {
            var tmp : [CheckServiceDeployableResponseBody.CheckResults] = []
            for v in dict["CheckResults"] as! [Any] {
                var model = CheckServiceDeployableResponseBody.CheckResults()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.checkResults = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckServiceDeployableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Option") {
            self.option = dict["Option"] as! [String]
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParametersAllowedToBeModified") {
                self.parametersAllowedToBeModified = dict["ParametersAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersConditionallyAllowedToBeModified") {
                self.parametersConditionallyAllowedToBeModified = dict["ParametersConditionallyAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersNotAllowedToBeModified") {
                self.parametersNotAllowedToBeModified = dict["ParametersNotAllowedToBeModified"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DryRunResult") {
            var model = ContinueDeployServiceInstanceResponseBody.DryRunResult()
            model.fromMap(dict["DryRunResult"] as! [String: Any])
            self.dryRunResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ContinueDeployServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoPay") {
                self.autoPay = dict["AutoPay"] as! Bool
            }
            if dict.keys.contains("AutoRenew") {
                self.autoRenew = dict["AutoRenew"] as! Bool
            }
            if dict.keys.contains("CouponId") {
                self.couponId = dict["CouponId"] as! String
            }
            if dict.keys.contains("PayPeriod") {
                self.payPeriod = dict["PayPeriod"] as! Int64
            }
            if dict.keys.contains("PayPeriodUnit") {
                self.payPeriodUnit = dict["PayPeriodUnit"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ExtraInfo") {
                self.extraInfo = dict["ExtraInfo"] as! String
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! String
            }
            if dict.keys.contains("ServiceInstanceId") {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") {
            var model = CreateServiceInstanceRequest.Commodity()
            model.fromMap(dict["Commodity"] as! [String: Any])
            self.commodity = model
        }
        if dict.keys.contains("ContactGroup") {
            self.contactGroup = dict["ContactGroup"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EnableInstanceOps") {
            self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
        }
        if dict.keys.contains("EnableUserPrometheus") {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OperationMetadata") {
            var model = CreateServiceInstanceRequest.OperationMetadata()
            model.fromMap(dict["OperationMetadata"] as! [String: Any])
            self.operationMetadata = model
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceAutoPay") {
            self.resourceAutoPay = dict["ResourceAutoPay"] as! Bool
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationCode") {
            self.specificationCode = dict["SpecificationCode"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateServiceInstanceRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateServiceInstanceRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoPay") {
                self.autoPay = dict["AutoPay"] as! Bool
            }
            if dict.keys.contains("AutoRenew") {
                self.autoRenew = dict["AutoRenew"] as! Bool
            }
            if dict.keys.contains("CouponId") {
                self.couponId = dict["CouponId"] as! String
            }
            if dict.keys.contains("PayPeriod") {
                self.payPeriod = dict["PayPeriod"] as! Int64
            }
            if dict.keys.contains("PayPeriodUnit") {
                self.payPeriodUnit = dict["PayPeriodUnit"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ExtraInfo") {
                self.extraInfo = dict["ExtraInfo"] as! String
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! String
            }
            if dict.keys.contains("ServiceInstanceId") {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") {
            var model = CreateServiceInstanceShrinkRequest.Commodity()
            model.fromMap(dict["Commodity"] as! [String: Any])
            self.commodity = model
        }
        if dict.keys.contains("ContactGroup") {
            self.contactGroup = dict["ContactGroup"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EnableInstanceOps") {
            self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
        }
        if dict.keys.contains("EnableUserPrometheus") {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OperationMetadata") {
            var model = CreateServiceInstanceShrinkRequest.OperationMetadata()
            model.fromMap(dict["OperationMetadata"] as! [String: Any])
            self.operationMetadata = model
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceAutoPay") {
            self.resourceAutoPay = dict["ResourceAutoPay"] as! Bool
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationCode") {
            self.specificationCode = dict["SpecificationCode"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateServiceInstanceShrinkRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateServiceInstanceShrinkRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MarketInstanceId") {
            self.marketInstanceId = dict["MarketInstanceId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceUsageRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userInformation != nil {
            map["UserInformation"] = self.userInformation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UserInformation") {
            self.userInformation = dict["UserInformation"] as! [String: String]
        }
    }
}

public class CreateServiceUsageShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userInformationShrink != nil {
            map["UserInformation"] = self.userInformationShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UserInformation") {
            self.userInformationShrink = dict["UserInformation"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServiceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationTypes") {
            self.operationTypes = dict["OperationTypes"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! [String]
            }
            if dict.keys.contains("Resource") {
                self.resource = dict["Resource"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MissingPolicy") {
            var tmp : [GenerateServicePolicyResponseBody.MissingPolicy] = []
            for v in dict["MissingPolicy"] as! [Any] {
                var model = GenerateServicePolicyResponseBody.MissingPolicy()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.missingPolicy = tmp
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateServicePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("ShowDetails") {
            self.showDetails = dict["ShowDetails"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Mappings") {
                        self.mappings = dict["Mappings"] as! [String: String]
                    }
                    if dict.keys.contains("TemplateName") {
                        self.templateName = dict["TemplateName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComponentsMappings") {
                    var tmp : [GetServiceResponseBody.Commodity.CssMetadata.ComponentsMappings] = []
                    for v in dict["ComponentsMappings"] as! [Any] {
                        var model = GetServiceResponseBody.Commodity.CssMetadata.ComponentsMappings()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SpecificationCode") {
                        self.specificationCode = dict["SpecificationCode"] as! String
                    }
                    if dict.keys.contains("SpecificationName") {
                        self.specificationName = dict["SpecificationName"] as! String
                    }
                    if dict.keys.contains("TemplateName") {
                        self.templateName = dict["TemplateName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SpecificationMappings") {
                    var tmp : [GetServiceResponseBody.Commodity.MarketplaceMetadata.SpecificationMappings] = []
                    for v in dict["SpecificationMappings"] as! [Any] {
                        var model = GetServiceResponseBody.Commodity.MarketplaceMetadata.SpecificationMappings()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Times") {
                    self.times = dict["Times"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("CssMetadata") {
                var model = GetServiceResponseBody.Commodity.CssMetadata()
                model.fromMap(dict["CssMetadata"] as! [String: Any])
                self.cssMetadata = model
            }
            if dict.keys.contains("DeployPage") {
                self.deployPage = dict["DeployPage"] as! String
            }
            if dict.keys.contains("MarketplaceMetadata") {
                var model = GetServiceResponseBody.Commodity.MarketplaceMetadata()
                model.fromMap(dict["MarketplaceMetadata"] as! [String: Any])
                self.marketplaceMetadata = model
            }
            if dict.keys.contains("OrderTime") {
                self.orderTime = dict["OrderTime"] as! [String: [String]]
            }
            if dict.keys.contains("SaasBoostMetadata") {
                self.saasBoostMetadata = dict["SaasBoostMetadata"] as! String
            }
            if dict.keys.contains("Specifications") {
                var tmp : [GetServiceResponseBody.Commodity.Specifications] = []
                for v in dict["Specifications"] as! [Any] {
                    var model = GetServiceResponseBody.Commodity.Specifications()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.specifications = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PolicyDocument") {
                self.policyDocument = dict["PolicyDocument"] as! String
            }
            if dict.keys.contains("Principals") {
                self.principals = dict["Principals"] as! [String]
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DocumentUrl") {
                self.documentUrl = dict["DocumentUrl"] as! String
            }
            if dict.keys.contains("Locale") {
                self.locale = dict["Locale"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Agreements") {
                var tmp : [GetServiceResponseBody.ServiceInfos.Agreements] = []
                for v in dict["Agreements"] as! [Any] {
                    var model = GetServiceResponseBody.ServiceInfos.Agreements()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.agreements = tmp
            }
            if dict.keys.contains("Image") {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("Locale") {
                self.locale = dict["Locale"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ShortDescription") {
                self.shortDescription = dict["ShortDescription"] as! String
            }
            if dict.keys.contains("Softwares") {
                var tmp : [GetServiceResponseBody.ServiceInfos.Softwares] = []
                for v in dict["Softwares"] as! [Any] {
                    var model = GetServiceResponseBody.ServiceInfos.Softwares()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.softwares = tmp
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var alarmMetadata: String?

    public var categories: String?

    public var commodity: GetServiceResponseBody.Commodity?

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

    public var serviceProductUrl: String?

    public var serviceType: String?

    public var shareType: String?

    public var status: String?

    public var supplierDesc: String?

    public var supplierLogo: String?

    public var supplierName: String?

    public var supplierUid: Int64?

    public var supplierUrl: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmMetadata") {
            self.alarmMetadata = dict["AlarmMetadata"] as! String
        }
        if dict.keys.contains("Categories") {
            self.categories = dict["Categories"] as! String
        }
        if dict.keys.contains("Commodity") {
            var model = GetServiceResponseBody.Commodity()
            model.fromMap(dict["Commodity"] as! [String: Any])
            self.commodity = model
        }
        if dict.keys.contains("DeployFrom") {
            self.deployFrom = dict["DeployFrom"] as! String
        }
        if dict.keys.contains("DeployMetadata") {
            self.deployMetadata = dict["DeployMetadata"] as! String
        }
        if dict.keys.contains("DeployType") {
            self.deployType = dict["DeployType"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("InstanceRoleInfos") {
            var tmp : [GetServiceResponseBody.InstanceRoleInfos] = []
            for v in dict["InstanceRoleInfos"] as! [Any] {
                var model = GetServiceResponseBody.InstanceRoleInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceRoleInfos = tmp
        }
        if dict.keys.contains("IsSupportOperated") {
            self.isSupportOperated = dict["IsSupportOperated"] as! Bool
        }
        if dict.keys.contains("LicenseMetadata") {
            self.licenseMetadata = dict["LicenseMetadata"] as! String
        }
        if dict.keys.contains("LogMetadata") {
            self.logMetadata = dict["LogMetadata"] as! String
        }
        if dict.keys.contains("OperationMetadata") {
            self.operationMetadata = dict["OperationMetadata"] as! String
        }
        if dict.keys.contains("Permission") {
            self.permission = dict["Permission"] as! String
        }
        if dict.keys.contains("PolicyNames") {
            self.policyNames = dict["PolicyNames"] as! String
        }
        if dict.keys.contains("PublishTime") {
            self.publishTime = dict["PublishTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceDocumentInfos") {
            var tmp : [GetServiceResponseBody.ServiceDocumentInfos] = []
            for v in dict["ServiceDocumentInfos"] as! [Any] {
                var model = GetServiceResponseBody.ServiceDocumentInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceDocumentInfos = tmp
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInfos") {
            var tmp : [GetServiceResponseBody.ServiceInfos] = []
            for v in dict["ServiceInfos"] as! [Any] {
                var model = GetServiceResponseBody.ServiceInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceInfos = tmp
        }
        if dict.keys.contains("ServiceProductUrl") {
            self.serviceProductUrl = dict["ServiceProductUrl"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SupplierDesc") {
            self.supplierDesc = dict["SupplierDesc"] as! String
        }
        if dict.keys.contains("SupplierLogo") {
            self.supplierLogo = dict["SupplierLogo"] as! String
        }
        if dict.keys.contains("SupplierName") {
            self.supplierName = dict["SupplierName"] as! String
        }
        if dict.keys.contains("SupplierUid") {
            self.supplierUid = dict["SupplierUid"] as! Int64
        }
        if dict.keys.contains("SupplierUrl") {
            self.supplierUrl = dict["SupplierUrl"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [GetServiceResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetServiceResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TenantType") {
            self.tenantType = dict["TenantType"] as! String
        }
        if dict.keys.contains("TrialDuration") {
            self.trialDuration = dict["TrialDuration"] as! Int64
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceEstimateCostRequest : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public var couponId: String?

        public var payPeriod: Int32?

        public var payPeriodUnit: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CouponId") {
                self.couponId = dict["CouponId"] as! String
            }
            if dict.keys.contains("PayPeriod") {
                self.payPeriod = dict["PayPeriod"] as! Int32
            }
            if dict.keys.contains("PayPeriodUnit") {
                self.payPeriodUnit = dict["PayPeriodUnit"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") {
            var model = GetServiceEstimateCostRequest.Commodity()
            model.fromMap(dict["Commodity"] as! [String: Any])
            self.commodity = model
        }
        if dict.keys.contains("OperationName") {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") {
            self.commodityShrink = dict["Commodity"] as! String
        }
        if dict.keys.contains("OperationName") {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Commodity") {
            var tmp : [String: CommodityValue] = [:]
            for (k, v) in dict["Commodity"] as! [String: Any] {
                if v != nil {
                    var model = CommodityValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.commodity = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceEstimateCostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MarketInstanceId") {
            self.marketInstanceId = dict["MarketInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
    }
}

public class GetServiceInstanceResponseBody : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnectBandwidth") {
                        self.connectBandwidth = dict["ConnectBandwidth"] as! Int32
                    }
                    if dict.keys.contains("DomainName") {
                        self.domainName = dict["DomainName"] as! String
                    }
                    if dict.keys.contains("EndpointIps") {
                        self.endpointIps = dict["EndpointIps"] as! [String]
                    }
                    if dict.keys.contains("IngressEndpointStatus") {
                        self.ingressEndpointStatus = dict["IngressEndpointStatus"] as! String
                    }
                    if dict.keys.contains("NetworkServiceStatus") {
                        self.networkServiceStatus = dict["NetworkServiceStatus"] as! String
                    }
                    if dict.keys.contains("RegionId") {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("SecurityGroups") {
                        self.securityGroups = dict["SecurityGroups"] as! [String]
                    }
                    if dict.keys.contains("VSwitches") {
                        self.vSwitches = dict["VSwitches"] as! [String]
                    }
                    if dict.keys.contains("VpcId") {
                        self.vpcId = dict["VpcId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionConfigs") {
                    var tmp : [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs] = []
                    for v in dict["ConnectionConfigs"] as! [Any] {
                        var model = GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.connectionConfigs = tmp
                }
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("PrivateZoneId") {
                    self.privateZoneId = dict["PrivateZoneId"] as! String
                }
                if dict.keys.contains("PrivateZoneName") {
                    self.privateZoneName = dict["PrivateZoneName"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("PrivateVpcConnections") {
                var tmp : [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections] = []
                for v in dict["PrivateVpcConnections"] as! [Any] {
                    var model = GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.privateVpcConnections = tmp
            }
            if dict.keys.contains("PrivateZoneId") {
                self.privateZoneId = dict["PrivateZoneId"] as! String
            }
            if dict.keys.contains("ReversePrivateVpcConnections") {
                var tmp : [GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections] = []
                for v in dict["ReversePrivateVpcConnections"] as! [Any] {
                    var model = GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Image") {
                    self.image = dict["Image"] as! String
                }
                if dict.keys.contains("Locale") {
                    self.locale = dict["Locale"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ShortDescription") {
                    self.shortDescription = dict["ShortDescription"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
                if dict.keys.contains("VersionName") {
                    self.versionName = dict["VersionName"] as! String
                }
            }
        }
        public var deployMetadata: String?

        public var deployType: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeployMetadata") {
                self.deployMetadata = dict["DeployMetadata"] as! String
            }
            if dict.keys.contains("DeployType") {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("PublishTime") {
                self.publishTime = dict["PublishTime"] as! String
            }
            if dict.keys.contains("ServiceDocUrl") {
                self.serviceDocUrl = dict["ServiceDocUrl"] as! String
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceInfos") {
                var tmp : [GetServiceInstanceResponseBody.Service.ServiceInfos] = []
                for v in dict["ServiceInfos"] as! [Any] {
                    var model = GetServiceInstanceResponseBody.Service.ServiceInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceInfos = tmp
            }
            if dict.keys.contains("ServiceProductUrl") {
                self.serviceProductUrl = dict["ServiceProductUrl"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupplierName") {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("SupplierUrl") {
                self.supplierUrl = dict["SupplierUrl"] as! String
            }
            if dict.keys.contains("UpgradableServiceInfos") {
                var tmp : [GetServiceInstanceResponseBody.Service.UpgradableServiceInfos] = []
                for v in dict["UpgradableServiceInfos"] as! [Any] {
                    var model = GetServiceInstanceResponseBody.Service.UpgradableServiceInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.upgradableServiceInfos = tmp
            }
            if dict.keys.contains("UpgradableServiceVersions") {
                self.upgradableServiceVersions = dict["UpgradableServiceVersions"] as! [String]
            }
            if dict.keys.contains("UpgradeMetadata") {
                self.upgradeMetadata = dict["UpgradeMetadata"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VersionName") {
                self.versionName = dict["VersionName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizStatus") {
            self.bizStatus = dict["BizStatus"] as! String
        }
        if dict.keys.contains("Components") {
            self.components = dict["Components"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("EnableInstanceOps") {
            self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
        }
        if dict.keys.contains("EnableUserPrometheus") {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("GrafanaDashBoardUrl") {
            self.grafanaDashBoardUrl = dict["GrafanaDashBoardUrl"] as! String
        }
        if dict.keys.contains("IsOperated") {
            self.isOperated = dict["IsOperated"] as! Bool
        }
        if dict.keys.contains("LicenseEndTime") {
            self.licenseEndTime = dict["LicenseEndTime"] as! String
        }
        if dict.keys.contains("MarketInstanceId") {
            self.marketInstanceId = dict["MarketInstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetworkConfig") {
            var model = GetServiceInstanceResponseBody.NetworkConfig()
            model.fromMap(dict["NetworkConfig"] as! [String: Any])
            self.networkConfig = model
        }
        if dict.keys.contains("OperatedServiceInstanceId") {
            self.operatedServiceInstanceId = dict["OperatedServiceInstanceId"] as! String
        }
        if dict.keys.contains("OperationEndTime") {
            self.operationEndTime = dict["OperationEndTime"] as! String
        }
        if dict.keys.contains("OperationStartTime") {
            self.operationStartTime = dict["OperationStartTime"] as! String
        }
        if dict.keys.contains("Outputs") {
            self.outputs = dict["Outputs"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PredefinedParameterName") {
            self.predefinedParameterName = dict["PredefinedParameterName"] as! String
        }
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! String
        }
        if dict.keys.contains("Service") {
            var model = GetServiceInstanceResponseBody.Service()
            model.fromMap(dict["Service"] as! [String: Any])
            self.service = model
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusDetail") {
            self.statusDetail = dict["StatusDetail"] as! String
        }
        if dict.keys.contains("SupplierUid") {
            self.supplierUid = dict["SupplierUid"] as! Int64
        }
        if dict.keys.contains("Tags") {
            var tmp : [GetServiceInstanceResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetServiceInstanceResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
        }
    }
}

public class GetServiceProvisionsResponseBody : Tea.TeaModel {
    public class ServiceProvisions : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ApiName") {
                            self.apiName = dict["ApiName"] as! String
                        }
                        if dict.keys.contains("ApiProductId") {
                            self.apiProductId = dict["ApiProductId"] as! String
                        }
                        if dict.keys.contains("ApiType") {
                            self.apiType = dict["ApiType"] as! String
                        }
                        if dict.keys.contains("parameters") {
                            self.parameters = dict["parameters"] as! [String: Any]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiForCreation") {
                        var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles.ApiForCreation()
                        model.fromMap(dict["ApiForCreation"] as! [String: Any])
                        self.apiForCreation = model
                    }
                    if dict.keys.contains("Created") {
                        self.created = dict["Created"] as! Bool
                    }
                    if dict.keys.contains("Function") {
                        self.function = dict["Function"] as! String
                    }
                    if dict.keys.contains("RoleName") {
                        self.roleName = dict["RoleName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthorizationURL") {
                    self.authorizationURL = dict["AuthorizationURL"] as! String
                }
                if dict.keys.contains("Roles") {
                    var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles] = []
                    for v in dict["Roles"] as! [Any] {
                        var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.roles = tmp
                }
            }
        }
        public var autoEnableService: Bool?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoEnableService") {
                self.autoEnableService = dict["AutoEnableService"] as! Bool
            }
            if dict.keys.contains("EnableURL") {
                self.enableURL = dict["EnableURL"] as! String
            }
            if dict.keys.contains("RoleProvision") {
                var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision()
                model.fromMap(dict["RoleProvision"] as! [String: Any])
                self.roleProvision = model
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceProvisions") {
            var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions] = []
            for v in dict["ServiceProvisions"] as! [Any] {
                var model = GetServiceProvisionsResponseBody.ServiceProvisions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceProvisionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeployRegionId") {
            self.deployRegionId = dict["DeployRegionId"] as! String
        }
        if dict.keys.contains("EnablePrivateVpcConnection") {
            self.enablePrivateVpcConnection = dict["EnablePrivateVpcConnection"] as! Bool
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetServiceTemplateParameterConstraintsRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetServiceTemplateParameterConstraintsRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowedValues") {
                    self.allowedValues = dict["AllowedValues"] as! [String]
                }
                if dict.keys.contains("PropertyName") {
                    self.propertyName = dict["PropertyName"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowedValues") {
                self.allowedValues = dict["AllowedValues"] as! [String]
            }
            if dict.keys.contains("AssociationParameterNames") {
                self.associationParameterNames = dict["AssociationParameterNames"] as! [String]
            }
            if dict.keys.contains("Behavior") {
                self.behavior = dict["Behavior"] as! String
            }
            if dict.keys.contains("BehaviorReason") {
                self.behaviorReason = dict["BehaviorReason"] as! String
            }
            if dict.keys.contains("OriginalConstraints") {
                var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints] = []
                for v in dict["OriginalConstraints"] as! [Any] {
                    var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.originalConstraints = tmp
            }
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("QueryErrors") {
                var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryErrors] = []
                for v in dict["QueryErrors"] as! [Any] {
                    var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryErrors()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.queryErrors = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FamilyConstraints") {
            self.familyConstraints = dict["FamilyConstraints"] as! [String]
        }
        if dict.keys.contains("ParameterConstraints") {
            var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints] = []
            for v in dict["ParameterConstraints"] as! [Any] {
                var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterConstraints = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceTemplateParameterConstraintsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiontrailDeliveryToOssEnabled") {
                self.actiontrailDeliveryToOssEnabled = dict["ActiontrailDeliveryToOssEnabled"] as! Bool
            }
            if dict.keys.contains("OssBucketName") {
                self.ossBucketName = dict["OssBucketName"] as! String
            }
            if dict.keys.contains("OssEnabled") {
                self.ossEnabled = dict["OssEnabled"] as! Bool
            }
            if dict.keys.contains("OssExpirationDays") {
                self.ossExpirationDays = dict["OssExpirationDays"] as! Int64
            }
            if dict.keys.contains("OssPath") {
                self.ossPath = dict["OssPath"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliverySettings") {
            var model = GetUserInformationResponseBody.DeliverySettings()
            model.fromMap(dict["DeliverySettings"] as! [String: Any])
            self.deliverySettings = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUserInformationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Categories") {
            self.categories = dict["Categories"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceCategoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [ListServiceInstanceLogsRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListServiceInstanceLogsRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("LogSource") {
            self.logSource = dict["LogSource"] as! String
        }
        if dict.keys.contains("Logstore") {
            self.logstore = dict["Logstore"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompliancePackType") {
                self.compliancePackType = dict["CompliancePackType"] as! String
            }
            if dict.keys.contains("ComplianceRuleName") {
                self.complianceRuleName = dict["ComplianceRuleName"] as! String
            }
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("LogType") {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstancesLogs") {
            var tmp : [ListServiceInstanceLogsResponseBody.ServiceInstancesLogs] = []
            for v in dict["ServiceInstancesLogs"] as! [Any] {
                var model = ListServiceInstanceLogsResponseBody.ServiceInstancesLogs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceInstanceLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Values") {
                self.values = dict["Values"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var expireTimeEnd: String?

    public var expireTimeStart: String?

    public var filters: [ListServiceInstanceResourcesRequest.Filters]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var payType: String?

    public var regionId: String?

    public var resourceARN: [String]?

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
        if self.expireTimeEnd != nil {
            map["ExpireTimeEnd"] = self.expireTimeEnd!
        }
        if self.expireTimeStart != nil {
            map["ExpireTimeStart"] = self.expireTimeStart!
        }
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
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceARN != nil {
            map["ResourceARN"] = self.resourceARN!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireTimeEnd") {
            self.expireTimeEnd = dict["ExpireTimeEnd"] as! String
        }
        if dict.keys.contains("ExpireTimeStart") {
            self.expireTimeStart = dict["ExpireTimeStart"] as! String
        }
        if dict.keys.contains("Filters") {
            var tmp : [ListServiceInstanceResourcesRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = ListServiceInstanceResourcesRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceARN") {
            self.resourceARN = dict["ResourceARN"] as! [String]
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceResourceType") {
            self.serviceInstanceResourceType = dict["ServiceInstanceResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListServiceInstanceResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListServiceInstanceResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("RenewStatus") {
                self.renewStatus = dict["RenewStatus"] as! String
            }
            if dict.keys.contains("RenewalPeriod") {
                self.renewalPeriod = dict["RenewalPeriod"] as! Int32
            }
            if dict.keys.contains("RenewalPeriodUnit") {
                self.renewalPeriodUnit = dict["RenewalPeriodUnit"] as! String
            }
            if dict.keys.contains("ResourceARN") {
                self.resourceARN = dict["ResourceARN"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            var tmp : [ListServiceInstanceResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = ListServiceInstanceResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceInstanceResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("FromVersion") {
                self.fromVersion = dict["FromVersion"] as! String
            }
            if dict.keys.contains("Results") {
                self.results = dict["Results"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ToVersion") {
                self.toVersion = dict["ToVersion"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpgradeHistoryId") {
                self.upgradeHistoryId = dict["UpgradeHistoryId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("UpgradeHistory") {
            var tmp : [ListServiceInstanceUpgradeHistoryResponseBody.UpgradeHistory] = []
            for v in dict["UpgradeHistory"] as! [Any] {
                var model = ListServiceInstanceUpgradeHistoryResponseBody.UpgradeHistory()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceInstanceUpgradeHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [ListServiceInstancesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListServiceInstancesRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListServiceInstancesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListServiceInstancesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListServiceInstancesResponseBody : Tea.TeaModel {
    public class ServiceInstances : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SaasBoostMetadata") {
                        self.saasBoostMetadata = dict["SaasBoostMetadata"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Image") {
                        self.image = dict["Image"] as! String
                    }
                    if dict.keys.contains("Locale") {
                        self.locale = dict["Locale"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("ShortDescription") {
                        self.shortDescription = dict["ShortDescription"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Commodity") {
                    var model = ListServiceInstancesResponseBody.ServiceInstances.Service.Commodity()
                    model.fromMap(dict["Commodity"] as! [String: Any])
                    self.commodity = model
                }
                if dict.keys.contains("DeployType") {
                    self.deployType = dict["DeployType"] as! String
                }
                if dict.keys.contains("PublishTime") {
                    self.publishTime = dict["PublishTime"] as! String
                }
                if dict.keys.contains("ServiceId") {
                    self.serviceId = dict["ServiceId"] as! String
                }
                if dict.keys.contains("ServiceInfos") {
                    var tmp : [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos] = []
                    for v in dict["ServiceInfos"] as! [Any] {
                        var model = ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceInfos = tmp
                }
                if dict.keys.contains("ServiceType") {
                    self.serviceType = dict["ServiceType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SupplierName") {
                    self.supplierName = dict["SupplierName"] as! String
                }
                if dict.keys.contains("SupplierUrl") {
                    self.supplierUrl = dict["SupplierUrl"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
                if dict.keys.contains("VersionName") {
                    self.versionName = dict["VersionName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var bizStatus: String?

        public var createTime: String?

        public var enableInstanceOps: Bool?

        public var endTime: String?

        public var marketInstanceId: String?

        public var name: String?

        public var operatedServiceInstanceId: String?

        public var operationEndTime: String?

        public var operationStartTime: String?

        public var orderId: String?

        public var outputs: String?

        public var parameters: String?

        public var payType: String?

        public var progress: Int64?

        public var resourceGroupId: String?

        public var resources: String?

        public var service: ListServiceInstancesResponseBody.ServiceInstances.Service?

        public var serviceInstanceId: String?

        public var serviceType: String?

        public var source: String?

        public var status: String?

        public var statusDetail: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizStatus") {
                self.bizStatus = dict["BizStatus"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EnableInstanceOps") {
                self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("MarketInstanceId") {
                self.marketInstanceId = dict["MarketInstanceId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperatedServiceInstanceId") {
                self.operatedServiceInstanceId = dict["OperatedServiceInstanceId"] as! String
            }
            if dict.keys.contains("OperationEndTime") {
                self.operationEndTime = dict["OperationEndTime"] as! String
            }
            if dict.keys.contains("OperationStartTime") {
                self.operationStartTime = dict["OperationStartTime"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("Outputs") {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int64
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! String
            }
            if dict.keys.contains("Service") {
                var model = ListServiceInstancesResponseBody.ServiceInstances.Service()
                model.fromMap(dict["Service"] as! [String: Any])
                self.service = model
            }
            if dict.keys.contains("ServiceInstanceId") {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusDetail") {
                self.statusDetail = dict["StatusDetail"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListServiceInstancesResponseBody.ServiceInstances.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListServiceInstancesResponseBody.ServiceInstances.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstances") {
            var tmp : [ListServiceInstancesResponseBody.ServiceInstances] = []
            for v in dict["ServiceInstances"] as! [Any] {
                var model = ListServiceInstancesResponseBody.ServiceInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceInstances = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
            }
        }
    }
    public var filter: [ListServiceUsagesRequest.Filter]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [ListServiceUsagesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListServiceUsagesRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupplierName") {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserAliUid") {
                self.userAliUid = dict["UserAliUid"] as! Int64
            }
            if dict.keys.contains("UserInformation") {
                self.userInformation = dict["UserInformation"] as! [String: String]
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceUsages: [ListServiceUsagesResponseBody.ServiceUsages]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceUsages") {
            var tmp : [ListServiceUsagesResponseBody.ServiceUsages] = []
            for v in dict["ServiceUsages"] as! [Any] {
                var model = ListServiceUsagesResponseBody.ServiceUsages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceUsages = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceUsagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [ListServicesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListServicesRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("FuzzyKeyword") {
            self.fuzzyKeyword = dict["FuzzyKeyword"] as! String
        }
        if dict.keys.contains("InUsed") {
            self.inUsed = dict["InUsed"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderByType") {
            self.orderByType = dict["OrderByType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceAccessType") {
            self.serviceAccessType = dict["ServiceAccessType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListServicesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListServicesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommodityCode") {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("DeployPage") {
                    self.deployPage = dict["DeployPage"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Image") {
                    self.image = dict["Image"] as! String
                }
                if dict.keys.contains("Locale") {
                    self.locale = dict["Locale"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ShortDescription") {
                    self.shortDescription = dict["ShortDescription"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") {
                self.categories = dict["Categories"] as! String
            }
            if dict.keys.contains("Commodity") {
                var model = ListServicesResponseBody.Services.Commodity()
                model.fromMap(dict["Commodity"] as! [String: Any])
                self.commodity = model
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("DeployFrom") {
                self.deployFrom = dict["DeployFrom"] as! String
            }
            if dict.keys.contains("DeployType") {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("PublishTime") {
                self.publishTime = dict["PublishTime"] as! String
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Int32
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceInfos") {
                var tmp : [ListServicesResponseBody.Services.ServiceInfos] = []
                for v in dict["ServiceInfos"] as! [Any] {
                    var model = ListServicesResponseBody.Services.ServiceInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceInfos = tmp
            }
            if dict.keys.contains("ServiceProductUrl") {
                self.serviceProductUrl = dict["ServiceProductUrl"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupplierName") {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("SupplierNameEng") {
                self.supplierNameEng = dict["SupplierNameEng"] as! String
            }
            if dict.keys.contains("SupplierUid") {
                self.supplierUid = dict["SupplierUid"] as! Int64
            }
            if dict.keys.contains("SupplierUrl") {
                self.supplierUrl = dict["SupplierUrl"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListServicesResponseBody.Services.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListServicesResponseBody.Services.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TenantType") {
                self.tenantType = dict["TenantType"] as! String
            }
            if dict.keys.contains("TrialDuration") {
                self.trialDuration = dict["TrialDuration"] as! String
            }
            if dict.keys.contains("TrialType") {
                self.trialType = dict["TrialType"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VersionName") {
                self.versionName = dict["VersionName"] as! String
            }
            if dict.keys.contains("VirtualInternetService") {
                self.virtualInternetService = dict["VirtualInternetService"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Services") {
            var tmp : [ListServicesResponseBody.Services] = []
            for v in dict["Services"] as! [Any] {
                var model = ListServicesResponseBody.Services()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keys") {
            self.keys = dict["Keys"] as! [String]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
                self.tagValue = dict["TagValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Values") {
            self.values = dict["Values"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagValuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RestartServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RollbackServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceInstanceAttributesRequest : Tea.TeaModel {
    public var enableOperation: Bool?

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
        if self.enableOperation != nil {
            map["EnableOperation"] = self.enableOperation!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableOperation") {
            self.enableOperation = dict["EnableOperation"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceInstanceAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoPay") {
                self.autoPay = dict["AutoPay"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") {
            var model = UpdateServiceInstanceSpecRequest.Commodity()
            model.fromMap(dict["Commodity"] as! [String: Any])
            self.commodity = model
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EnableUserPrometheus") {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("OperationName") {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("PredefinedParametersName") {
            self.predefinedParametersName = dict["PredefinedParametersName"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoPay") {
                self.autoPay = dict["AutoPay"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") {
            var model = UpdateServiceInstanceSpecShrinkRequest.Commodity()
            model.fromMap(dict["Commodity"] as! [String: Any])
            self.commodity = model
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EnableUserPrometheus") {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("OperationName") {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("PredefinedParametersName") {
            self.predefinedParametersName = dict["PredefinedParametersName"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceInstanceSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceUsageRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userInformation != nil {
            map["UserInformation"] = self.userInformation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UserInformation") {
            self.userInformation = dict["UserInformation"] as! [String: String]
        }
    }
}

public class UpdateServiceUsageShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userInformationShrink != nil {
            map["UserInformation"] = self.userInformationShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UserInformation") {
            self.userInformationShrink = dict["UserInformation"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiontrailDeliveryToOssEnabled") {
                self.actiontrailDeliveryToOssEnabled = dict["ActiontrailDeliveryToOssEnabled"] as! Bool
            }
            if dict.keys.contains("OssBucketName") {
                self.ossBucketName = dict["OssBucketName"] as! String
            }
            if dict.keys.contains("OssEnabled") {
                self.ossEnabled = dict["OssEnabled"] as! Bool
            }
            if dict.keys.contains("OssExpirationDays") {
                self.ossExpirationDays = dict["OssExpirationDays"] as! Int64
            }
            if dict.keys.contains("OssPath") {
                self.ossPath = dict["OssPath"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliverySettings") {
            var model = UpdateUserInformationRequest.DeliverySettings()
            model.fromMap(dict["DeliverySettings"] as! [String: Any])
            self.deliverySettings = model
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateUserInformationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpgradeRequiredParameters") {
            self.upgradeRequiredParameters = dict["UpgradeRequiredParameters"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
