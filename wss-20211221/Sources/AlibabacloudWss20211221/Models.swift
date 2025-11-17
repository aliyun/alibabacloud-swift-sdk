import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateMultiOrderRequest : Tea.TeaModel {
    public class OrderItems : Tea.TeaModel {
        public class Components : Tea.TeaModel {
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
        public var amount: Int32?

        public var autoPay: Bool?

        public var autoRenew: Bool?

        public var buyChange: Bool?

        public var components: [CreateMultiOrderRequest.OrderItems.Components]?

        public var period: Int32?

        public var periodUnit: String?

        public var promotionId: String?

        public var resourceIds: [String]?

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
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.autoPay != nil {
                map["AutoPay"] = self.autoPay!
            }
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.buyChange != nil {
                map["BuyChange"] = self.buyChange!
            }
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["Components"] = tmp
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.periodUnit != nil {
                map["PeriodUnit"] = self.periodUnit!
            }
            if self.promotionId != nil {
                map["PromotionId"] = self.promotionId!
            }
            if self.resourceIds != nil {
                map["ResourceIds"] = self.resourceIds!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? Int32 {
                self.amount = value
            }
            if let value = dict["AutoPay"] as? Bool {
                self.autoPay = value
            }
            if let value = dict["AutoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["BuyChange"] as? Bool {
                self.buyChange = value
            }
            if let value = dict["Components"] as? [Any?] {
                var tmp : [CreateMultiOrderRequest.OrderItems.Components] = []
                for v in value {
                    if v != nil {
                        var model = CreateMultiOrderRequest.OrderItems.Components()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.components = tmp
            }
            if let value = dict["Period"] as? Int32 {
                self.period = value
            }
            if let value = dict["PeriodUnit"] as? String {
                self.periodUnit = value
            }
            if let value = dict["PromotionId"] as? String {
                self.promotionId = value
            }
            if let value = dict["ResourceIds"] as? [String] {
                self.resourceIds = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var orderItems: [CreateMultiOrderRequest.OrderItems]?

    public var orderType: String?

    public var properties: [String: String]?

    public var resellerOwnerUid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderItems != nil {
            var tmp : [Any] = []
            for k in self.orderItems! {
                tmp.append(k.toMap())
            }
            map["OrderItems"] = tmp
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.properties != nil {
            map["Properties"] = self.properties!
        }
        if self.resellerOwnerUid != nil {
            map["ResellerOwnerUid"] = self.resellerOwnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderItems"] as? [Any?] {
            var tmp : [CreateMultiOrderRequest.OrderItems] = []
            for v in value {
                if v != nil {
                    var model = CreateMultiOrderRequest.OrderItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orderItems = tmp
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["Properties"] as? [String: String] {
            self.properties = value
        }
        if let value = dict["ResellerOwnerUid"] as? Int64 {
            self.resellerOwnerUid = value
        }
    }
}

public class CreateMultiOrderShrinkRequest : Tea.TeaModel {
    public class OrderItems : Tea.TeaModel {
        public class Components : Tea.TeaModel {
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
        public var amount: Int32?

        public var autoPay: Bool?

        public var autoRenew: Bool?

        public var buyChange: Bool?

        public var components: [CreateMultiOrderShrinkRequest.OrderItems.Components]?

        public var period: Int32?

        public var periodUnit: String?

        public var promotionId: String?

        public var resourceIds: [String]?

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
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.autoPay != nil {
                map["AutoPay"] = self.autoPay!
            }
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.buyChange != nil {
                map["BuyChange"] = self.buyChange!
            }
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["Components"] = tmp
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.periodUnit != nil {
                map["PeriodUnit"] = self.periodUnit!
            }
            if self.promotionId != nil {
                map["PromotionId"] = self.promotionId!
            }
            if self.resourceIds != nil {
                map["ResourceIds"] = self.resourceIds!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? Int32 {
                self.amount = value
            }
            if let value = dict["AutoPay"] as? Bool {
                self.autoPay = value
            }
            if let value = dict["AutoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["BuyChange"] as? Bool {
                self.buyChange = value
            }
            if let value = dict["Components"] as? [Any?] {
                var tmp : [CreateMultiOrderShrinkRequest.OrderItems.Components] = []
                for v in value {
                    if v != nil {
                        var model = CreateMultiOrderShrinkRequest.OrderItems.Components()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.components = tmp
            }
            if let value = dict["Period"] as? Int32 {
                self.period = value
            }
            if let value = dict["PeriodUnit"] as? String {
                self.periodUnit = value
            }
            if let value = dict["PromotionId"] as? String {
                self.promotionId = value
            }
            if let value = dict["ResourceIds"] as? [String] {
                self.resourceIds = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var orderItems: [CreateMultiOrderShrinkRequest.OrderItems]?

    public var orderType: String?

    public var propertiesShrink: String?

    public var resellerOwnerUid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderItems != nil {
            var tmp : [Any] = []
            for k in self.orderItems! {
                tmp.append(k.toMap())
            }
            map["OrderItems"] = tmp
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.propertiesShrink != nil {
            map["Properties"] = self.propertiesShrink!
        }
        if self.resellerOwnerUid != nil {
            map["ResellerOwnerUid"] = self.resellerOwnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderItems"] as? [Any?] {
            var tmp : [CreateMultiOrderShrinkRequest.OrderItems] = []
            for v in value {
                if v != nil {
                    var model = CreateMultiOrderShrinkRequest.OrderItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orderItems = tmp
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["Properties"] as? String {
            self.propertiesShrink = value
        }
        if let value = dict["ResellerOwnerUid"] as? Int64 {
            self.resellerOwnerUid = value
        }
    }
}

public class CreateMultiOrderResponseBody : Tea.TeaModel {
    public var orderIds: [Int64]?

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
        if self.orderIds != nil {
            map["OrderIds"] = self.orderIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderIds"] as? [Int64] {
            self.orderIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateMultiOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMultiOrderResponseBody?

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
            var model = CreateMultiOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDeliveryAddressResponseBody : Tea.TeaModel {
    public class Addresses : Tea.TeaModel {
        public class Area : Tea.TeaModel {
            public var areaId: Int64?

            public var areaName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.areaId != nil {
                    map["AreaId"] = self.areaId!
                }
                if self.areaName != nil {
                    map["AreaName"] = self.areaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AreaId"] as? Int64 {
                    self.areaId = value
                }
                if let value = dict["AreaName"] as? String {
                    self.areaName = value
                }
            }
        }
        public class City : Tea.TeaModel {
            public var cityId: Int64?

            public var cityName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cityId != nil {
                    map["CityId"] = self.cityId!
                }
                if self.cityName != nil {
                    map["CityName"] = self.cityName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CityId"] as? Int64 {
                    self.cityId = value
                }
                if let value = dict["CityName"] as? String {
                    self.cityName = value
                }
            }
        }
        public class Province : Tea.TeaModel {
            public var provinceId: Int64?

            public var provinceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.provinceId != nil {
                    map["ProvinceId"] = self.provinceId!
                }
                if self.provinceName != nil {
                    map["ProvinceName"] = self.provinceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProvinceId"] as? Int64 {
                    self.provinceId = value
                }
                if let value = dict["ProvinceName"] as? String {
                    self.provinceName = value
                }
            }
        }
        public class Town : Tea.TeaModel {
            public var townId: Int64?

            public var townName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.townId != nil {
                    map["TownId"] = self.townId!
                }
                if self.townName != nil {
                    map["TownName"] = self.townName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TownId"] as? Int64 {
                    self.townId = value
                }
                if let value = dict["TownName"] as? String {
                    self.townName = value
                }
            }
        }
        public var area: DescribeDeliveryAddressResponseBody.Addresses.Area?

        public var city: DescribeDeliveryAddressResponseBody.Addresses.City?

        public var contacts: String?

        public var defaultAddress: Bool?

        public var detail: String?

        public var mobile: String?

        public var postalCode: String?

        public var province: DescribeDeliveryAddressResponseBody.Addresses.Province?

        public var town: DescribeDeliveryAddressResponseBody.Addresses.Town?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.area?.validate()
            try self.city?.validate()
            try self.province?.validate()
            try self.town?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.area != nil {
                map["Area"] = self.area?.toMap()
            }
            if self.city != nil {
                map["City"] = self.city?.toMap()
            }
            if self.contacts != nil {
                map["Contacts"] = self.contacts!
            }
            if self.defaultAddress != nil {
                map["DefaultAddress"] = self.defaultAddress!
            }
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.postalCode != nil {
                map["PostalCode"] = self.postalCode!
            }
            if self.province != nil {
                map["Province"] = self.province?.toMap()
            }
            if self.town != nil {
                map["Town"] = self.town?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Area"] as? [String: Any?] {
                var model = DescribeDeliveryAddressResponseBody.Addresses.Area()
                model.fromMap(value)
                self.area = model
            }
            if let value = dict["City"] as? [String: Any?] {
                var model = DescribeDeliveryAddressResponseBody.Addresses.City()
                model.fromMap(value)
                self.city = model
            }
            if let value = dict["Contacts"] as? String {
                self.contacts = value
            }
            if let value = dict["DefaultAddress"] as? Bool {
                self.defaultAddress = value
            }
            if let value = dict["Detail"] as? String {
                self.detail = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["PostalCode"] as? String {
                self.postalCode = value
            }
            if let value = dict["Province"] as? [String: Any?] {
                var model = DescribeDeliveryAddressResponseBody.Addresses.Province()
                model.fromMap(value)
                self.province = model
            }
            if let value = dict["Town"] as? [String: Any?] {
                var model = DescribeDeliveryAddressResponseBody.Addresses.Town()
                model.fromMap(value)
                self.town = model
            }
        }
    }
    public var addresses: [DescribeDeliveryAddressResponseBody.Addresses]?

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
        if self.addresses != nil {
            var tmp : [Any] = []
            for k in self.addresses! {
                tmp.append(k.toMap())
            }
            map["Addresses"] = tmp
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
        if let value = dict["Addresses"] as? [Any?] {
            var tmp : [DescribeDeliveryAddressResponseBody.Addresses] = []
            for v in value {
                if v != nil {
                    var model = DescribeDeliveryAddressResponseBody.Addresses()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addresses = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeDeliveryAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeliveryAddressResponseBody?

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
            var model = DescribeDeliveryAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMultiPriceRequest : Tea.TeaModel {
    public class OrderItems : Tea.TeaModel {
        public class Components : Tea.TeaModel {
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
        public var amount: Int32?

        public var components: [DescribeMultiPriceRequest.OrderItems.Components]?

        public var instanceIds: [String]?

        public var period: Int32?

        public var periodUnit: String?

        public var promotionId: String?

        public var resourceIds: [String]?

        public var resourceType: String?

        public var savingPlanPeriod: String?

        public override init() {
            super.init()
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
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["Components"] = tmp
            }
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.periodUnit != nil {
                map["PeriodUnit"] = self.periodUnit!
            }
            if self.promotionId != nil {
                map["PromotionId"] = self.promotionId!
            }
            if self.resourceIds != nil {
                map["ResourceIds"] = self.resourceIds!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.savingPlanPeriod != nil {
                map["SavingPlanPeriod"] = self.savingPlanPeriod!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? Int32 {
                self.amount = value
            }
            if let value = dict["Components"] as? [Any?] {
                var tmp : [DescribeMultiPriceRequest.OrderItems.Components] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMultiPriceRequest.OrderItems.Components()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.components = tmp
            }
            if let value = dict["InstanceIds"] as? [String] {
                self.instanceIds = value
            }
            if let value = dict["Period"] as? Int32 {
                self.period = value
            }
            if let value = dict["PeriodUnit"] as? String {
                self.periodUnit = value
            }
            if let value = dict["PromotionId"] as? String {
                self.promotionId = value
            }
            if let value = dict["ResourceIds"] as? [String] {
                self.resourceIds = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["SavingPlanPeriod"] as? String {
                self.savingPlanPeriod = value
            }
        }
    }
    public var orderItems: [DescribeMultiPriceRequest.OrderItems]?

    public var orderType: String?

    public var packageCode: String?

    public var resellerOwnerUid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderItems != nil {
            var tmp : [Any] = []
            for k in self.orderItems! {
                tmp.append(k.toMap())
            }
            map["OrderItems"] = tmp
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.packageCode != nil {
            map["PackageCode"] = self.packageCode!
        }
        if self.resellerOwnerUid != nil {
            map["ResellerOwnerUid"] = self.resellerOwnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderItems"] as? [Any?] {
            var tmp : [DescribeMultiPriceRequest.OrderItems] = []
            for v in value {
                if v != nil {
                    var model = DescribeMultiPriceRequest.OrderItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orderItems = tmp
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PackageCode"] as? String {
            self.packageCode = value
        }
        if let value = dict["ResellerOwnerUid"] as? Int64 {
            self.resellerOwnerUid = value
        }
    }
}

public class DescribeMultiPriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class Price : Tea.TeaModel {
            public class PriceDetails : Tea.TeaModel {
                public class ModuleDetails : Tea.TeaModel {
                    public var discountPrice: Double?

                    public var moduleCode: String?

                    public var moduleName: String?

                    public var moduleValue: String?

                    public var originalPrice: Double?

                    public var savingPlanDiscountPrice: Double?

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
                        if self.discountPrice != nil {
                            map["DiscountPrice"] = self.discountPrice!
                        }
                        if self.moduleCode != nil {
                            map["ModuleCode"] = self.moduleCode!
                        }
                        if self.moduleName != nil {
                            map["ModuleName"] = self.moduleName!
                        }
                        if self.moduleValue != nil {
                            map["ModuleValue"] = self.moduleValue!
                        }
                        if self.originalPrice != nil {
                            map["OriginalPrice"] = self.originalPrice!
                        }
                        if self.savingPlanDiscountPrice != nil {
                            map["SavingPlanDiscountPrice"] = self.savingPlanDiscountPrice!
                        }
                        if self.tradePrice != nil {
                            map["TradePrice"] = self.tradePrice!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DiscountPrice"] as? Double {
                            self.discountPrice = value
                        }
                        if let value = dict["ModuleCode"] as? String {
                            self.moduleCode = value
                        }
                        if let value = dict["ModuleName"] as? String {
                            self.moduleName = value
                        }
                        if let value = dict["ModuleValue"] as? String {
                            self.moduleValue = value
                        }
                        if let value = dict["OriginalPrice"] as? Double {
                            self.originalPrice = value
                        }
                        if let value = dict["SavingPlanDiscountPrice"] as? Double {
                            self.savingPlanDiscountPrice = value
                        }
                        if let value = dict["TradePrice"] as? Double {
                            self.tradePrice = value
                        }
                    }
                }
                public class PriceDetail : Tea.TeaModel {
                    public var discountPrice: Double?

                    public var originalPrice: Double?

                    public var resourceType: String?

                    public var savingPlanRecommendPrice: Double?

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
                        if self.discountPrice != nil {
                            map["DiscountPrice"] = self.discountPrice!
                        }
                        if self.originalPrice != nil {
                            map["OriginalPrice"] = self.originalPrice!
                        }
                        if self.resourceType != nil {
                            map["ResourceType"] = self.resourceType!
                        }
                        if self.savingPlanRecommendPrice != nil {
                            map["SavingPlanRecommendPrice"] = self.savingPlanRecommendPrice!
                        }
                        if self.tradePrice != nil {
                            map["TradePrice"] = self.tradePrice!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DiscountPrice"] as? Double {
                            self.discountPrice = value
                        }
                        if let value = dict["OriginalPrice"] as? Double {
                            self.originalPrice = value
                        }
                        if let value = dict["ResourceType"] as? String {
                            self.resourceType = value
                        }
                        if let value = dict["SavingPlanRecommendPrice"] as? Double {
                            self.savingPlanRecommendPrice = value
                        }
                        if let value = dict["TradePrice"] as? Double {
                            self.tradePrice = value
                        }
                    }
                }
                public var moduleDetails: [DescribeMultiPriceResponseBody.PriceInfo.Price.PriceDetails.ModuleDetails]?

                public var orderItem: Int32?

                public var priceDetail: DescribeMultiPriceResponseBody.PriceInfo.Price.PriceDetails.PriceDetail?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.priceDetail?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.moduleDetails != nil {
                        var tmp : [Any] = []
                        for k in self.moduleDetails! {
                            tmp.append(k.toMap())
                        }
                        map["ModuleDetails"] = tmp
                    }
                    if self.orderItem != nil {
                        map["OrderItem"] = self.orderItem!
                    }
                    if self.priceDetail != nil {
                        map["PriceDetail"] = self.priceDetail?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ModuleDetails"] as? [Any?] {
                        var tmp : [DescribeMultiPriceResponseBody.PriceInfo.Price.PriceDetails.ModuleDetails] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeMultiPriceResponseBody.PriceInfo.Price.PriceDetails.ModuleDetails()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.moduleDetails = tmp
                    }
                    if let value = dict["OrderItem"] as? Int32 {
                        self.orderItem = value
                    }
                    if let value = dict["PriceDetail"] as? [String: Any?] {
                        var model = DescribeMultiPriceResponseBody.PriceInfo.Price.PriceDetails.PriceDetail()
                        model.fromMap(value)
                        self.priceDetail = model
                    }
                }
            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OptionCode"] as? String {
                        self.optionCode = value
                    }
                    if let value = dict["PromotionDesc"] as? String {
                        self.promotionDesc = value
                    }
                    if let value = dict["PromotionId"] as? String {
                        self.promotionId = value
                    }
                    if let value = dict["PromotionName"] as? String {
                        self.promotionName = value
                    }
                    if let value = dict["Selected"] as? Bool {
                        self.selected = value
                    }
                }
            }
            public var currency: String?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var priceDetails: [DescribeMultiPriceResponseBody.PriceInfo.Price.PriceDetails]?

            public var promotions: [DescribeMultiPriceResponseBody.PriceInfo.Price.Promotions]?

            public var refundInstanceIdPriceMap: [String: Double]?

            public var refundPrice: Double?

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
                if self.priceDetails != nil {
                    var tmp : [Any] = []
                    for k in self.priceDetails! {
                        tmp.append(k.toMap())
                    }
                    map["PriceDetails"] = tmp
                }
                if self.promotions != nil {
                    var tmp : [Any] = []
                    for k in self.promotions! {
                        tmp.append(k.toMap())
                    }
                    map["Promotions"] = tmp
                }
                if self.refundInstanceIdPriceMap != nil {
                    map["RefundInstanceIdPriceMap"] = self.refundInstanceIdPriceMap!
                }
                if self.refundPrice != nil {
                    map["RefundPrice"] = self.refundPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Currency"] as? String {
                    self.currency = value
                }
                if let value = dict["DiscountPrice"] as? Double {
                    self.discountPrice = value
                }
                if let value = dict["OriginalPrice"] as? Double {
                    self.originalPrice = value
                }
                if let value = dict["PriceDetails"] as? [Any?] {
                    var tmp : [DescribeMultiPriceResponseBody.PriceInfo.Price.PriceDetails] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeMultiPriceResponseBody.PriceInfo.Price.PriceDetails()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.priceDetails = tmp
                }
                if let value = dict["Promotions"] as? [Any?] {
                    var tmp : [DescribeMultiPriceResponseBody.PriceInfo.Price.Promotions] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeMultiPriceResponseBody.PriceInfo.Price.Promotions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.promotions = tmp
                }
                if let value = dict["RefundInstanceIdPriceMap"] as? [String: Double] {
                    self.refundInstanceIdPriceMap = value
                }
                if let value = dict["RefundPrice"] as? Double {
                    self.refundPrice = value
                }
                if let value = dict["TradePrice"] as? Double {
                    self.tradePrice = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
                }
            }
        }
        public var price: DescribeMultiPriceResponseBody.PriceInfo.Price?

        public var rules: [DescribeMultiPriceResponseBody.PriceInfo.Rules]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Price"] as? [String: Any?] {
                var model = DescribeMultiPriceResponseBody.PriceInfo.Price()
                model.fromMap(value)
                self.price = model
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [DescribeMultiPriceResponseBody.PriceInfo.Rules] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMultiPriceResponseBody.PriceInfo.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
        }
    }
    public var priceInfo: DescribeMultiPriceResponseBody.PriceInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.priceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.priceInfo != nil {
            map["PriceInfo"] = self.priceInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PriceInfo"] as? [String: Any?] {
            var model = DescribeMultiPriceResponseBody.PriceInfo()
            model.fromMap(value)
            self.priceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMultiPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMultiPriceResponseBody?

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
            var model = DescribeMultiPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePackageDeductionsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var packageIds: [String]?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var resourceType: String?

    public var resourceTypes: [String]?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.packageIds != nil {
            map["PackageIds"] = self.packageIds!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["PackageIds"] as? [String] {
            self.packageIds = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ResourceTypes"] as? [String] {
            self.resourceTypes = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribePackageDeductionsResponseBody : Tea.TeaModel {
    public class Deductions : Tea.TeaModel {
        public var cpu: Int32?

        public var desktopId: String?

        public var desktopName: String?

        public var desktopType: String?

        public var endTime: String?

        public var groupResourceType: String?

        public var instanceId: String?

        public var instanceState: String?

        public var instanceType: String?

        public var memory: Int64?

        public var osType: String?

        public var regionId: String?

        public var resourceType: String?

        public var sessionId: String?

        public var staTime: String?

        public var usedCoreTime: Double?

        public var usedTime: Int64?

        public var usedTimeWithScale: Int64?

        public override init() {
            super.init()
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
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.desktopType != nil {
                map["DesktopType"] = self.desktopType!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.groupResourceType != nil {
                map["GroupResourceType"] = self.groupResourceType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceState != nil {
                map["InstanceState"] = self.instanceState!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.staTime != nil {
                map["StaTime"] = self.staTime!
            }
            if self.usedCoreTime != nil {
                map["UsedCoreTime"] = self.usedCoreTime!
            }
            if self.usedTime != nil {
                map["UsedTime"] = self.usedTime!
            }
            if self.usedTimeWithScale != nil {
                map["UsedTimeWithScale"] = self.usedTimeWithScale!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cpu"] as? Int32 {
                self.cpu = value
            }
            if let value = dict["DesktopId"] as? String {
                self.desktopId = value
            }
            if let value = dict["DesktopName"] as? String {
                self.desktopName = value
            }
            if let value = dict["DesktopType"] as? String {
                self.desktopType = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["GroupResourceType"] as? String {
                self.groupResourceType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceState"] as? String {
                self.instanceState = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Memory"] as? Int64 {
                self.memory = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["StaTime"] as? String {
                self.staTime = value
            }
            if let value = dict["UsedCoreTime"] as? Double {
                self.usedCoreTime = value
            }
            if let value = dict["UsedTime"] as? Int64 {
                self.usedTime = value
            }
            if let value = dict["UsedTimeWithScale"] as? Int64 {
                self.usedTimeWithScale = value
            }
        }
    }
    public var deductions: [DescribePackageDeductionsResponseBody.Deductions]?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public var totalUsedCoreTime: Double?

    public var totalUsedTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deductions != nil {
            var tmp : [Any] = []
            for k in self.deductions! {
                tmp.append(k.toMap())
            }
            map["Deductions"] = tmp
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if self.totalUsedCoreTime != nil {
            map["TotalUsedCoreTime"] = self.totalUsedCoreTime!
        }
        if self.totalUsedTime != nil {
            map["TotalUsedTime"] = self.totalUsedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Deductions"] as? [Any?] {
            var tmp : [DescribePackageDeductionsResponseBody.Deductions] = []
            for v in value {
                if v != nil {
                    var model = DescribePackageDeductionsResponseBody.Deductions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deductions = tmp
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["TotalUsedCoreTime"] as? Double {
            self.totalUsedCoreTime = value
        }
        if let value = dict["TotalUsedTime"] as? Int64 {
            self.totalUsedTime = value
        }
    }
}

public class DescribePackageDeductionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePackageDeductionsResponseBody?

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
            var model = DescribePackageDeductionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstancePropertiesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceIds: [String]?

    public var key: String?

    public var resourceType: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class ModifyInstancePropertiesResponseBody : Tea.TeaModel {
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

public class ModifyInstancePropertiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstancePropertiesResponseBody?

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
            var model = ModifyInstancePropertiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
