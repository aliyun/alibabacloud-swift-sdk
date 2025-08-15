import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateOrderRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commodity: String?

    public var orderSouce: String?

    public var orderType: String?

    public var ownerId: String?

    public var paymentType: String?

    public override init() {
        super.init()
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
        if self.commodity != nil {
            map["Commodity"] = self.commodity!
        }
        if self.orderSouce != nil {
            map["OrderSouce"] = self.orderSouce!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? String {
            self.commodity = value
        }
        if let value = dict["OrderSouce"] as? String {
            self.orderSouce = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
    }
}

public class CreateOrderResponseBody : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
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
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrderResponseBody?

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
            var model = CreateOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePriceRequest : Tea.TeaModel {
    public var commodity: String?

    public var orderType: String?

    public override init() {
        super.init()
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
            map["Commodity"] = self.commodity!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Commodity"] as? String {
            self.commodity = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
    }
}

public class DescribePriceResponseBody : Tea.TeaModel {
    public class Coupons : Tea.TeaModel {
        public var canPromFee: Int64?

        public var couponName: String?

        public var couponOptionCode: String?

        public var couponOptionNo: String?

        public var isSelected: Bool?

        public var promotionDesc: String?

        public override init() {
            super.init()
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
            if self.couponName != nil {
                map["CouponName"] = self.couponName!
            }
            if self.couponOptionCode != nil {
                map["CouponOptionCode"] = self.couponOptionCode!
            }
            if self.couponOptionNo != nil {
                map["CouponOptionNo"] = self.couponOptionNo!
            }
            if self.isSelected != nil {
                map["IsSelected"] = self.isSelected!
            }
            if self.promotionDesc != nil {
                map["PromotionDesc"] = self.promotionDesc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CanPromFee"] as? Int64 {
                self.canPromFee = value
            }
            if let value = dict["CouponName"] as? String {
                self.couponName = value
            }
            if let value = dict["CouponOptionCode"] as? String {
                self.couponOptionCode = value
            }
            if let value = dict["CouponOptionNo"] as? String {
                self.couponOptionNo = value
            }
            if let value = dict["IsSelected"] as? Bool {
                self.isSelected = value
            }
            if let value = dict["PromotionDesc"] as? String {
                self.promotionDesc = value
            }
        }
    }
    public class PromotionRules : Tea.TeaModel {
        public var name: String?

        public var ruleId: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var code: String?

    public var coupons: [DescribePriceResponseBody.Coupons]?

    public var currency: String?

    public var cuxiao: Bool?

    public var cycle: String?

    public var discountPrice: Double?

    public var duration: Int32?

    public var expressionCode: String?

    public var expressionMessage: String?

    public var infoTitle: String?

    public var message: String?

    public var originalPrice: Double?

    public var productCode: String?

    public var promotionRules: [DescribePriceResponseBody.PromotionRules]?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.coupons != nil {
            var tmp : [Any] = []
            for k in self.coupons! {
                tmp.append(k.toMap())
            }
            map["Coupons"] = tmp
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.cuxiao != nil {
            map["Cuxiao"] = self.cuxiao!
        }
        if self.cycle != nil {
            map["Cycle"] = self.cycle!
        }
        if self.discountPrice != nil {
            map["DiscountPrice"] = self.discountPrice!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.expressionCode != nil {
            map["ExpressionCode"] = self.expressionCode!
        }
        if self.expressionMessage != nil {
            map["ExpressionMessage"] = self.expressionMessage!
        }
        if self.infoTitle != nil {
            map["InfoTitle"] = self.infoTitle!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.originalPrice != nil {
            map["OriginalPrice"] = self.originalPrice!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.promotionRules != nil {
            var tmp : [Any] = []
            for k in self.promotionRules! {
                tmp.append(k.toMap())
            }
            map["PromotionRules"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tradePrice != nil {
            map["TradePrice"] = self.tradePrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Coupons"] as? [Any?] {
            var tmp : [DescribePriceResponseBody.Coupons] = []
            for v in value {
                if v != nil {
                    var model = DescribePriceResponseBody.Coupons()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.coupons = tmp
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["Cuxiao"] as? Bool {
            self.cuxiao = value
        }
        if let value = dict["Cycle"] as? String {
            self.cycle = value
        }
        if let value = dict["DiscountPrice"] as? Double {
            self.discountPrice = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ExpressionCode"] as? String {
            self.expressionCode = value
        }
        if let value = dict["ExpressionMessage"] as? String {
            self.expressionMessage = value
        }
        if let value = dict["InfoTitle"] as? String {
            self.infoTitle = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OriginalPrice"] as? Double {
            self.originalPrice = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["PromotionRules"] as? [Any?] {
            var tmp : [DescribePriceResponseBody.PromotionRules] = []
            for v in value {
                if v != nil {
                    var model = DescribePriceResponseBody.PromotionRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.promotionRules = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TradePrice"] as? Double {
            self.tradePrice = value
        }
    }
}

public class DescribePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePriceResponseBody?

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
            var model = DescribePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
