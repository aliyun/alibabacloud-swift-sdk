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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var amount: Int32?

        public var autoPay: Bool?

        public var autoRenew: Bool?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! Int32
            }
            if dict.keys.contains("AutoPay") {
                self.autoPay = dict["AutoPay"] as! Bool
            }
            if dict.keys.contains("AutoRenew") {
                self.autoRenew = dict["AutoRenew"] as! Bool
            }
            if dict.keys.contains("Components") {
                var tmp : [CreateMultiOrderRequest.OrderItems.Components] = []
                for v in dict["Components"] as! [Any] {
                    var model = CreateMultiOrderRequest.OrderItems.Components()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.components = tmp
            }
            if dict.keys.contains("Period") {
                self.period = dict["Period"] as! Int32
            }
            if dict.keys.contains("PeriodUnit") {
                self.periodUnit = dict["PeriodUnit"] as! String
            }
            if dict.keys.contains("PromotionId") {
                self.promotionId = dict["PromotionId"] as! String
            }
            if dict.keys.contains("ResourceIds") {
                self.resourceIds = dict["ResourceIds"] as! [String]
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var orderItems: [CreateMultiOrderRequest.OrderItems]?

    public var orderType: String?

    public var properties: [String: String]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderItems") {
            var tmp : [CreateMultiOrderRequest.OrderItems] = []
            for v in dict["OrderItems"] as! [Any] {
                var model = CreateMultiOrderRequest.OrderItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orderItems = tmp
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("Properties") {
            self.properties = dict["Properties"] as! [String: String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var amount: Int32?

        public var autoPay: Bool?

        public var autoRenew: Bool?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! Int32
            }
            if dict.keys.contains("AutoPay") {
                self.autoPay = dict["AutoPay"] as! Bool
            }
            if dict.keys.contains("AutoRenew") {
                self.autoRenew = dict["AutoRenew"] as! Bool
            }
            if dict.keys.contains("Components") {
                var tmp : [CreateMultiOrderShrinkRequest.OrderItems.Components] = []
                for v in dict["Components"] as! [Any] {
                    var model = CreateMultiOrderShrinkRequest.OrderItems.Components()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.components = tmp
            }
            if dict.keys.contains("Period") {
                self.period = dict["Period"] as! Int32
            }
            if dict.keys.contains("PeriodUnit") {
                self.periodUnit = dict["PeriodUnit"] as! String
            }
            if dict.keys.contains("PromotionId") {
                self.promotionId = dict["PromotionId"] as! String
            }
            if dict.keys.contains("ResourceIds") {
                self.resourceIds = dict["ResourceIds"] as! [String]
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var orderItems: [CreateMultiOrderShrinkRequest.OrderItems]?

    public var orderType: String?

    public var propertiesShrink: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderItems") {
            var tmp : [CreateMultiOrderShrinkRequest.OrderItems] = []
            for v in dict["OrderItems"] as! [Any] {
                var model = CreateMultiOrderShrinkRequest.OrderItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orderItems = tmp
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("Properties") {
            self.propertiesShrink = dict["Properties"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderIds") {
            self.orderIds = dict["OrderIds"] as! [Int64]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateMultiOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AreaId") {
                    self.areaId = dict["AreaId"] as! Int64
                }
                if dict.keys.contains("AreaName") {
                    self.areaName = dict["AreaName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CityId") {
                    self.cityId = dict["CityId"] as! Int64
                }
                if dict.keys.contains("CityName") {
                    self.cityName = dict["CityName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProvinceId") {
                    self.provinceId = dict["ProvinceId"] as! Int64
                }
                if dict.keys.contains("ProvinceName") {
                    self.provinceName = dict["ProvinceName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TownId") {
                    self.townId = dict["TownId"] as! Int64
                }
                if dict.keys.contains("TownName") {
                    self.townName = dict["TownName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Area") {
                var model = DescribeDeliveryAddressResponseBody.Addresses.Area()
                model.fromMap(dict["Area"] as! [String: Any])
                self.area = model
            }
            if dict.keys.contains("City") {
                var model = DescribeDeliveryAddressResponseBody.Addresses.City()
                model.fromMap(dict["City"] as! [String: Any])
                self.city = model
            }
            if dict.keys.contains("Contacts") {
                self.contacts = dict["Contacts"] as! String
            }
            if dict.keys.contains("DefaultAddress") {
                self.defaultAddress = dict["DefaultAddress"] as! Bool
            }
            if dict.keys.contains("Detail") {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("PostalCode") {
                self.postalCode = dict["PostalCode"] as! String
            }
            if dict.keys.contains("Province") {
                var model = DescribeDeliveryAddressResponseBody.Addresses.Province()
                model.fromMap(dict["Province"] as! [String: Any])
                self.province = model
            }
            if dict.keys.contains("Town") {
                var model = DescribeDeliveryAddressResponseBody.Addresses.Town()
                model.fromMap(dict["Town"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addresses") {
            var tmp : [DescribeDeliveryAddressResponseBody.Addresses] = []
            for v in dict["Addresses"] as! [Any] {
                var model = DescribeDeliveryAddressResponseBody.Addresses()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addresses = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDeliveryAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("PackageIds") {
            self.packageIds = dict["PackageIds"] as! [String]
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
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

        public var instanceState: String?

        public var memory: Int64?

        public var osType: String?

        public var regionId: String?

        public var resourceType: String?

        public var staTime: String?

        public var usedCoreTime: Double?

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
            if self.instanceState != nil {
                map["InstanceState"] = self.instanceState!
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
            if self.staTime != nil {
                map["StaTime"] = self.staTime!
            }
            if self.usedCoreTime != nil {
                map["UsedCoreTime"] = self.usedCoreTime!
            }
            if self.usedTime != nil {
                map["UsedTime"] = self.usedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("DesktopType") {
                self.desktopType = dict["DesktopType"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("InstanceState") {
                self.instanceState = dict["InstanceState"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("StaTime") {
                self.staTime = dict["StaTime"] as! String
            }
            if dict.keys.contains("UsedCoreTime") {
                self.usedCoreTime = dict["UsedCoreTime"] as! Double
            }
            if dict.keys.contains("UsedTime") {
                self.usedTime = dict["UsedTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Deductions") {
            var tmp : [DescribePackageDeductionsResponseBody.Deductions] = []
            for v in dict["Deductions"] as! [Any] {
                var model = DescribePackageDeductionsResponseBody.Deductions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deductions = tmp
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
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
        if dict.keys.contains("TotalUsedCoreTime") {
            self.totalUsedCoreTime = dict["TotalUsedCoreTime"] as! Double
        }
        if dict.keys.contains("TotalUsedTime") {
            self.totalUsedTime = dict["TotalUsedTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePackageDeductionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyInstancePropertiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
