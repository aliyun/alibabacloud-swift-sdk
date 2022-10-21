import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AccessTokenRequest : Tea.TeaModel {
    public var appKey: String?

    public var appSecret: String?

    public override init() {
        super.init()
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
            map["app_key"] = self.appKey!
        }
        if self.appSecret != nil {
            map["app_secret"] = self.appSecret!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("app_key") {
            self.appKey = dict["app_key"] as! String
        }
        if dict.keys.contains("app_secret") {
            self.appSecret = dict["app_secret"] as! String
        }
    }
}

public class AccessTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expire: Int64?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expire != nil {
                map["expire"] = self.expire!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("expire") {
                self.expire = dict["expire"] as! Int64
            }
            if dict.keys.contains("token") {
                self.token = dict["token"] as! String
            }
        }
    }
    public class Module : Tea.TeaModel {
        public var expire: Int64?

        public var start: Int64?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expire != nil {
                map["expire"] = self.expire!
            }
            if self.start != nil {
                map["start"] = self.start!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("expire") {
                self.expire = dict["expire"] as! Int64
            }
            if dict.keys.contains("start") {
                self.start = dict["start"] as! Int64
            }
            if dict.keys.contains("token") {
                self.token = dict["token"] as! String
            }
        }
    }
    public var code: String?

    public var data: AccessTokenResponseBody.Data?

    public var message: String?

    public var module: AccessTokenResponseBody.Module?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = AccessTokenResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = AccessTokenResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class AccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AccessTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = AccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddressGetHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class AddressGetRequest : Tea.TeaModel {
    public var actionType: Int32?

    public var itineraryId: String?

    public var phone: String?

    public var type: Int32?

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
        if self.actionType != nil {
            map["action_type"] = self.actionType!
        }
        if self.itineraryId != nil {
            map["itinerary_id"] = self.itineraryId!
        }
        if self.phone != nil {
            map["phone"] = self.phone!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action_type") {
            self.actionType = dict["action_type"] as! Int32
        }
        if dict.keys.contains("itinerary_id") {
            self.itineraryId = dict["itinerary_id"] as! String
        }
        if dict.keys.contains("phone") {
            self.phone = dict["phone"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class AddressGetResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: AddressGetResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = AddressGetResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class AddressGetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddressGetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = AddressGetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AirportSearchHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class AirportSearchRequest : Tea.TeaModel {
    public var keyword: String?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
    }
}

public class AirportSearchResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Cities : Tea.TeaModel {
            public var code: String?

            public var distance: Int32?

            public var name: String?

            public var travelName: String?

            public override init() {
                super.init()
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
                if self.distance != nil {
                    map["distance"] = self.distance!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.travelName != nil {
                    map["travel_name"] = self.travelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("code") {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("distance") {
                    self.distance = dict["distance"] as! Int32
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("travel_name") {
                    self.travelName = dict["travel_name"] as! String
                }
            }
        }
        public var cities: [AirportSearchResponseBody.Module.Cities]?

        public var nearby: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cities != nil {
                var tmp : [Any] = []
                for k in self.cities! {
                    tmp.append(k.toMap())
                }
                map["cities"] = tmp
            }
            if self.nearby != nil {
                map["nearby"] = self.nearby!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cities") {
                self.cities = dict["cities"] as! [AirportSearchResponseBody.Module.Cities]
            }
            if dict.keys.contains("nearby") {
                self.nearby = dict["nearby"] as! Bool
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: AirportSearchResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = AirportSearchResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class AirportSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AirportSearchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = AirportSearchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyAddHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class ApplyAddRequest : Tea.TeaModel {
    public class ExternalTravelerList : Tea.TeaModel {
        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public class ExternalTravelerStandard : Tea.TeaModel {
        public class HotelCitys : Tea.TeaModel {
            public var cityCode: String?

            public var cityName: String?

            public var fee: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cityCode != nil {
                    map["city_code"] = self.cityCode!
                }
                if self.cityName != nil {
                    map["city_name"] = self.cityName!
                }
                if self.fee != nil {
                    map["fee"] = self.fee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("city_code") {
                    self.cityCode = dict["city_code"] as! String
                }
                if dict.keys.contains("city_name") {
                    self.cityName = dict["city_name"] as! String
                }
                if dict.keys.contains("fee") {
                    self.fee = dict["fee"] as! Int64
                }
            }
        }
        public var businessDiscount: Int32?

        public var economyDiscount: Int32?

        public var firstDiscount: Int32?

        public var flightCabins: String?

        public var hotelCitys: [ApplyAddRequest.ExternalTravelerStandard.HotelCitys]?

        public var reserveType: Int32?

        public var trainSeats: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessDiscount != nil {
                map["business_discount"] = self.businessDiscount!
            }
            if self.economyDiscount != nil {
                map["economy_discount"] = self.economyDiscount!
            }
            if self.firstDiscount != nil {
                map["first_discount"] = self.firstDiscount!
            }
            if self.flightCabins != nil {
                map["flight_cabins"] = self.flightCabins!
            }
            if self.hotelCitys != nil {
                var tmp : [Any] = []
                for k in self.hotelCitys! {
                    tmp.append(k.toMap())
                }
                map["hotel_citys"] = tmp
            }
            if self.reserveType != nil {
                map["reserve_type"] = self.reserveType!
            }
            if self.trainSeats != nil {
                map["train_seats"] = self.trainSeats!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("business_discount") {
                self.businessDiscount = dict["business_discount"] as! Int32
            }
            if dict.keys.contains("economy_discount") {
                self.economyDiscount = dict["economy_discount"] as! Int32
            }
            if dict.keys.contains("first_discount") {
                self.firstDiscount = dict["first_discount"] as! Int32
            }
            if dict.keys.contains("flight_cabins") {
                self.flightCabins = dict["flight_cabins"] as! String
            }
            if dict.keys.contains("hotel_citys") {
                self.hotelCitys = dict["hotel_citys"] as! [ApplyAddRequest.ExternalTravelerStandard.HotelCitys]
            }
            if dict.keys.contains("reserve_type") {
                self.reserveType = dict["reserve_type"] as! Int32
            }
            if dict.keys.contains("train_seats") {
                self.trainSeats = dict["train_seats"] as! String
            }
        }
    }
    public class HotelShare : Tea.TeaModel {
        public var param: String?

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
            if self.param != nil {
                map["param"] = self.param!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("param") {
                self.param = dict["param"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public class ItineraryList : Tea.TeaModel {
        public var arrCity: String?

        public var arrCityCode: String?

        public var arrDate: String?

        public var costCenterId: Int64?

        public var depCity: String?

        public var depCityCode: String?

        public var depDate: String?

        public var invoiceId: Int64?

        public var itineraryId: String?

        public var needHotel: Bool?

        public var needTraffic: Bool?

        public var projectCode: String?

        public var projectTitle: String?

        public var thirdPartInvoiceId: String?

        public var thirdpartCostCenterId: String?

        public var trafficType: Int32?

        public var tripWay: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrCity != nil {
                map["arr_city"] = self.arrCity!
            }
            if self.arrCityCode != nil {
                map["arr_city_code"] = self.arrCityCode!
            }
            if self.arrDate != nil {
                map["arr_date"] = self.arrDate!
            }
            if self.costCenterId != nil {
                map["cost_center_id"] = self.costCenterId!
            }
            if self.depCity != nil {
                map["dep_city"] = self.depCity!
            }
            if self.depCityCode != nil {
                map["dep_city_code"] = self.depCityCode!
            }
            if self.depDate != nil {
                map["dep_date"] = self.depDate!
            }
            if self.invoiceId != nil {
                map["invoice_id"] = self.invoiceId!
            }
            if self.itineraryId != nil {
                map["itinerary_id"] = self.itineraryId!
            }
            if self.needHotel != nil {
                map["need_hotel"] = self.needHotel!
            }
            if self.needTraffic != nil {
                map["need_traffic"] = self.needTraffic!
            }
            if self.projectCode != nil {
                map["project_code"] = self.projectCode!
            }
            if self.projectTitle != nil {
                map["project_title"] = self.projectTitle!
            }
            if self.thirdPartInvoiceId != nil {
                map["third_part_invoice_id"] = self.thirdPartInvoiceId!
            }
            if self.thirdpartCostCenterId != nil {
                map["thirdpart_cost_center_id"] = self.thirdpartCostCenterId!
            }
            if self.trafficType != nil {
                map["traffic_type"] = self.trafficType!
            }
            if self.tripWay != nil {
                map["trip_way"] = self.tripWay!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("arr_city") {
                self.arrCity = dict["arr_city"] as! String
            }
            if dict.keys.contains("arr_city_code") {
                self.arrCityCode = dict["arr_city_code"] as! String
            }
            if dict.keys.contains("arr_date") {
                self.arrDate = dict["arr_date"] as! String
            }
            if dict.keys.contains("cost_center_id") {
                self.costCenterId = dict["cost_center_id"] as! Int64
            }
            if dict.keys.contains("dep_city") {
                self.depCity = dict["dep_city"] as! String
            }
            if dict.keys.contains("dep_city_code") {
                self.depCityCode = dict["dep_city_code"] as! String
            }
            if dict.keys.contains("dep_date") {
                self.depDate = dict["dep_date"] as! String
            }
            if dict.keys.contains("invoice_id") {
                self.invoiceId = dict["invoice_id"] as! Int64
            }
            if dict.keys.contains("itinerary_id") {
                self.itineraryId = dict["itinerary_id"] as! String
            }
            if dict.keys.contains("need_hotel") {
                self.needHotel = dict["need_hotel"] as! Bool
            }
            if dict.keys.contains("need_traffic") {
                self.needTraffic = dict["need_traffic"] as! Bool
            }
            if dict.keys.contains("project_code") {
                self.projectCode = dict["project_code"] as! String
            }
            if dict.keys.contains("project_title") {
                self.projectTitle = dict["project_title"] as! String
            }
            if dict.keys.contains("third_part_invoice_id") {
                self.thirdPartInvoiceId = dict["third_part_invoice_id"] as! String
            }
            if dict.keys.contains("thirdpart_cost_center_id") {
                self.thirdpartCostCenterId = dict["thirdpart_cost_center_id"] as! String
            }
            if dict.keys.contains("traffic_type") {
                self.trafficType = dict["traffic_type"] as! Int32
            }
            if dict.keys.contains("trip_way") {
                self.tripWay = dict["trip_way"] as! Int32
            }
        }
    }
    public class ItinerarySetList : Tea.TeaModel {
        public var arrDate: String?

        public var cityCodeSet: String?

        public var citySet: String?

        public var costCenterId: Int64?

        public var depDate: String?

        public var invoiceId: Int64?

        public var itineraryId: String?

        public var projectCode: String?

        public var projectTitle: String?

        public var thirdPartInvoiceId: String?

        public var thirdpartCostCenterId: String?

        public var trafficType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrDate != nil {
                map["arr_date"] = self.arrDate!
            }
            if self.cityCodeSet != nil {
                map["city_code_set"] = self.cityCodeSet!
            }
            if self.citySet != nil {
                map["city_set"] = self.citySet!
            }
            if self.costCenterId != nil {
                map["cost_center_id"] = self.costCenterId!
            }
            if self.depDate != nil {
                map["dep_date"] = self.depDate!
            }
            if self.invoiceId != nil {
                map["invoice_id"] = self.invoiceId!
            }
            if self.itineraryId != nil {
                map["itinerary_id"] = self.itineraryId!
            }
            if self.projectCode != nil {
                map["project_code"] = self.projectCode!
            }
            if self.projectTitle != nil {
                map["project_title"] = self.projectTitle!
            }
            if self.thirdPartInvoiceId != nil {
                map["third_part_invoice_id"] = self.thirdPartInvoiceId!
            }
            if self.thirdpartCostCenterId != nil {
                map["thirdpart_cost_center_id"] = self.thirdpartCostCenterId!
            }
            if self.trafficType != nil {
                map["traffic_type"] = self.trafficType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("arr_date") {
                self.arrDate = dict["arr_date"] as! String
            }
            if dict.keys.contains("city_code_set") {
                self.cityCodeSet = dict["city_code_set"] as! String
            }
            if dict.keys.contains("city_set") {
                self.citySet = dict["city_set"] as! String
            }
            if dict.keys.contains("cost_center_id") {
                self.costCenterId = dict["cost_center_id"] as! Int64
            }
            if dict.keys.contains("dep_date") {
                self.depDate = dict["dep_date"] as! String
            }
            if dict.keys.contains("invoice_id") {
                self.invoiceId = dict["invoice_id"] as! Int64
            }
            if dict.keys.contains("itinerary_id") {
                self.itineraryId = dict["itinerary_id"] as! String
            }
            if dict.keys.contains("project_code") {
                self.projectCode = dict["project_code"] as! String
            }
            if dict.keys.contains("project_title") {
                self.projectTitle = dict["project_title"] as! String
            }
            if dict.keys.contains("third_part_invoice_id") {
                self.thirdPartInvoiceId = dict["third_part_invoice_id"] as! String
            }
            if dict.keys.contains("thirdpart_cost_center_id") {
                self.thirdpartCostCenterId = dict["thirdpart_cost_center_id"] as! String
            }
            if dict.keys.contains("traffic_type") {
                self.trafficType = dict["traffic_type"] as! Int32
            }
        }
    }
    public class TravelerList : Tea.TeaModel {
        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public class TravelerStandard : Tea.TeaModel {
        public class HotelCitys : Tea.TeaModel {
            public var cityCode: String?

            public var cityName: String?

            public var fee: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cityCode != nil {
                    map["city_code"] = self.cityCode!
                }
                if self.cityName != nil {
                    map["city_name"] = self.cityName!
                }
                if self.fee != nil {
                    map["fee"] = self.fee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("city_code") {
                    self.cityCode = dict["city_code"] as! String
                }
                if dict.keys.contains("city_name") {
                    self.cityName = dict["city_name"] as! String
                }
                if dict.keys.contains("fee") {
                    self.fee = dict["fee"] as! Int64
                }
            }
        }
        public var businessDiscount: Int32?

        public var economyDiscount: Int32?

        public var firstDiscount: Int32?

        public var flightCabins: String?

        public var hotelCitys: [ApplyAddRequest.TravelerStandard.HotelCitys]?

        public var reserveType: Int32?

        public var trainSeats: String?

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
            if self.businessDiscount != nil {
                map["business_discount"] = self.businessDiscount!
            }
            if self.economyDiscount != nil {
                map["economy_discount"] = self.economyDiscount!
            }
            if self.firstDiscount != nil {
                map["first_discount"] = self.firstDiscount!
            }
            if self.flightCabins != nil {
                map["flight_cabins"] = self.flightCabins!
            }
            if self.hotelCitys != nil {
                var tmp : [Any] = []
                for k in self.hotelCitys! {
                    tmp.append(k.toMap())
                }
                map["hotel_citys"] = tmp
            }
            if self.reserveType != nil {
                map["reserve_type"] = self.reserveType!
            }
            if self.trainSeats != nil {
                map["train_seats"] = self.trainSeats!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("business_discount") {
                self.businessDiscount = dict["business_discount"] as! Int32
            }
            if dict.keys.contains("economy_discount") {
                self.economyDiscount = dict["economy_discount"] as! Int32
            }
            if dict.keys.contains("first_discount") {
                self.firstDiscount = dict["first_discount"] as! Int32
            }
            if dict.keys.contains("flight_cabins") {
                self.flightCabins = dict["flight_cabins"] as! String
            }
            if dict.keys.contains("hotel_citys") {
                self.hotelCitys = dict["hotel_citys"] as! [ApplyAddRequest.TravelerStandard.HotelCitys]
            }
            if dict.keys.contains("reserve_type") {
                self.reserveType = dict["reserve_type"] as! Int32
            }
            if dict.keys.contains("train_seats") {
                self.trainSeats = dict["train_seats"] as! String
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
        }
    }
    public var budget: Int64?

    public var budgetMerge: Int32?

    public var corpName: String?

    public var departId: String?

    public var departName: String?

    public var externalTravelerList: [ApplyAddRequest.ExternalTravelerList]?

    public var externalTravelerStandard: ApplyAddRequest.ExternalTravelerStandard?

    public var flightBudget: Int64?

    public var hotelBudget: Int64?

    public var hotelShare: ApplyAddRequest.HotelShare?

    public var internationalFlightCabins: String?

    public var itineraryList: [ApplyAddRequest.ItineraryList]?

    public var itineraryRule: Int32?

    public var itinerarySetList: [ApplyAddRequest.ItinerarySetList]?

    public var limitTraveler: Int32?

    public var status: Int32?

    public var thirdpartApplyId: String?

    public var thirdpartBusinessId: String?

    public var thirdpartDepartId: String?

    public var togetherBookRule: Int32?

    public var trainBudget: Int64?

    public var travelerList: [ApplyAddRequest.TravelerList]?

    public var travelerStandard: [ApplyAddRequest.TravelerStandard]?

    public var tripCause: String?

    public var tripDay: Int32?

    public var tripTitle: String?

    public var type: Int32?

    public var unionNo: String?

    public var userId: String?

    public var userName: String?

    public var vehicleBudget: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.externalTravelerStandard?.validate()
        try self.hotelShare?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.budget != nil {
            map["budget"] = self.budget!
        }
        if self.budgetMerge != nil {
            map["budget_merge"] = self.budgetMerge!
        }
        if self.corpName != nil {
            map["corp_name"] = self.corpName!
        }
        if self.departId != nil {
            map["depart_id"] = self.departId!
        }
        if self.departName != nil {
            map["depart_name"] = self.departName!
        }
        if self.externalTravelerList != nil {
            var tmp : [Any] = []
            for k in self.externalTravelerList! {
                tmp.append(k.toMap())
            }
            map["external_traveler_list"] = tmp
        }
        if self.externalTravelerStandard != nil {
            map["external_traveler_standard"] = self.externalTravelerStandard?.toMap()
        }
        if self.flightBudget != nil {
            map["flight_budget"] = self.flightBudget!
        }
        if self.hotelBudget != nil {
            map["hotel_budget"] = self.hotelBudget!
        }
        if self.hotelShare != nil {
            map["hotel_share"] = self.hotelShare?.toMap()
        }
        if self.internationalFlightCabins != nil {
            map["international_flight_cabins"] = self.internationalFlightCabins!
        }
        if self.itineraryList != nil {
            var tmp : [Any] = []
            for k in self.itineraryList! {
                tmp.append(k.toMap())
            }
            map["itinerary_list"] = tmp
        }
        if self.itineraryRule != nil {
            map["itinerary_rule"] = self.itineraryRule!
        }
        if self.itinerarySetList != nil {
            var tmp : [Any] = []
            for k in self.itinerarySetList! {
                tmp.append(k.toMap())
            }
            map["itinerary_set_list"] = tmp
        }
        if self.limitTraveler != nil {
            map["limit_traveler"] = self.limitTraveler!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.thirdpartApplyId != nil {
            map["thirdpart_apply_id"] = self.thirdpartApplyId!
        }
        if self.thirdpartBusinessId != nil {
            map["thirdpart_business_id"] = self.thirdpartBusinessId!
        }
        if self.thirdpartDepartId != nil {
            map["thirdpart_depart_id"] = self.thirdpartDepartId!
        }
        if self.togetherBookRule != nil {
            map["together_book_rule"] = self.togetherBookRule!
        }
        if self.trainBudget != nil {
            map["train_budget"] = self.trainBudget!
        }
        if self.travelerList != nil {
            var tmp : [Any] = []
            for k in self.travelerList! {
                tmp.append(k.toMap())
            }
            map["traveler_list"] = tmp
        }
        if self.travelerStandard != nil {
            var tmp : [Any] = []
            for k in self.travelerStandard! {
                tmp.append(k.toMap())
            }
            map["traveler_standard"] = tmp
        }
        if self.tripCause != nil {
            map["trip_cause"] = self.tripCause!
        }
        if self.tripDay != nil {
            map["trip_day"] = self.tripDay!
        }
        if self.tripTitle != nil {
            map["trip_title"] = self.tripTitle!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.unionNo != nil {
            map["union_no"] = self.unionNo!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        if self.userName != nil {
            map["user_name"] = self.userName!
        }
        if self.vehicleBudget != nil {
            map["vehicle_budget"] = self.vehicleBudget!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("budget") {
            self.budget = dict["budget"] as! Int64
        }
        if dict.keys.contains("budget_merge") {
            self.budgetMerge = dict["budget_merge"] as! Int32
        }
        if dict.keys.contains("corp_name") {
            self.corpName = dict["corp_name"] as! String
        }
        if dict.keys.contains("depart_id") {
            self.departId = dict["depart_id"] as! String
        }
        if dict.keys.contains("depart_name") {
            self.departName = dict["depart_name"] as! String
        }
        if dict.keys.contains("external_traveler_list") {
            self.externalTravelerList = dict["external_traveler_list"] as! [ApplyAddRequest.ExternalTravelerList]
        }
        if dict.keys.contains("external_traveler_standard") {
            var model = ApplyAddRequest.ExternalTravelerStandard()
            model.fromMap(dict["external_traveler_standard"] as! [String: Any])
            self.externalTravelerStandard = model
        }
        if dict.keys.contains("flight_budget") {
            self.flightBudget = dict["flight_budget"] as! Int64
        }
        if dict.keys.contains("hotel_budget") {
            self.hotelBudget = dict["hotel_budget"] as! Int64
        }
        if dict.keys.contains("hotel_share") {
            var model = ApplyAddRequest.HotelShare()
            model.fromMap(dict["hotel_share"] as! [String: Any])
            self.hotelShare = model
        }
        if dict.keys.contains("international_flight_cabins") {
            self.internationalFlightCabins = dict["international_flight_cabins"] as! String
        }
        if dict.keys.contains("itinerary_list") {
            self.itineraryList = dict["itinerary_list"] as! [ApplyAddRequest.ItineraryList]
        }
        if dict.keys.contains("itinerary_rule") {
            self.itineraryRule = dict["itinerary_rule"] as! Int32
        }
        if dict.keys.contains("itinerary_set_list") {
            self.itinerarySetList = dict["itinerary_set_list"] as! [ApplyAddRequest.ItinerarySetList]
        }
        if dict.keys.contains("limit_traveler") {
            self.limitTraveler = dict["limit_traveler"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("thirdpart_apply_id") {
            self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
        }
        if dict.keys.contains("thirdpart_business_id") {
            self.thirdpartBusinessId = dict["thirdpart_business_id"] as! String
        }
        if dict.keys.contains("thirdpart_depart_id") {
            self.thirdpartDepartId = dict["thirdpart_depart_id"] as! String
        }
        if dict.keys.contains("together_book_rule") {
            self.togetherBookRule = dict["together_book_rule"] as! Int32
        }
        if dict.keys.contains("train_budget") {
            self.trainBudget = dict["train_budget"] as! Int64
        }
        if dict.keys.contains("traveler_list") {
            self.travelerList = dict["traveler_list"] as! [ApplyAddRequest.TravelerList]
        }
        if dict.keys.contains("traveler_standard") {
            self.travelerStandard = dict["traveler_standard"] as! [ApplyAddRequest.TravelerStandard]
        }
        if dict.keys.contains("trip_cause") {
            self.tripCause = dict["trip_cause"] as! String
        }
        if dict.keys.contains("trip_day") {
            self.tripDay = dict["trip_day"] as! Int32
        }
        if dict.keys.contains("trip_title") {
            self.tripTitle = dict["trip_title"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
        if dict.keys.contains("union_no") {
            self.unionNo = dict["union_no"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
        if dict.keys.contains("user_name") {
            self.userName = dict["user_name"] as! String
        }
        if dict.keys.contains("vehicle_budget") {
            self.vehicleBudget = dict["vehicle_budget"] as! Int64
        }
    }
}

public class ApplyAddShrinkRequest : Tea.TeaModel {
    public var budget: Int64?

    public var budgetMerge: Int32?

    public var corpName: String?

    public var departId: String?

    public var departName: String?

    public var externalTravelerListShrink: String?

    public var externalTravelerStandardShrink: String?

    public var flightBudget: Int64?

    public var hotelBudget: Int64?

    public var hotelShareShrink: String?

    public var internationalFlightCabins: String?

    public var itineraryListShrink: String?

    public var itineraryRule: Int32?

    public var itinerarySetListShrink: String?

    public var limitTraveler: Int32?

    public var status: Int32?

    public var thirdpartApplyId: String?

    public var thirdpartBusinessId: String?

    public var thirdpartDepartId: String?

    public var togetherBookRule: Int32?

    public var trainBudget: Int64?

    public var travelerListShrink: String?

    public var travelerStandardShrink: String?

    public var tripCause: String?

    public var tripDay: Int32?

    public var tripTitle: String?

    public var type: Int32?

    public var unionNo: String?

    public var userId: String?

    public var userName: String?

    public var vehicleBudget: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.budget != nil {
            map["budget"] = self.budget!
        }
        if self.budgetMerge != nil {
            map["budget_merge"] = self.budgetMerge!
        }
        if self.corpName != nil {
            map["corp_name"] = self.corpName!
        }
        if self.departId != nil {
            map["depart_id"] = self.departId!
        }
        if self.departName != nil {
            map["depart_name"] = self.departName!
        }
        if self.externalTravelerListShrink != nil {
            map["external_traveler_list"] = self.externalTravelerListShrink!
        }
        if self.externalTravelerStandardShrink != nil {
            map["external_traveler_standard"] = self.externalTravelerStandardShrink!
        }
        if self.flightBudget != nil {
            map["flight_budget"] = self.flightBudget!
        }
        if self.hotelBudget != nil {
            map["hotel_budget"] = self.hotelBudget!
        }
        if self.hotelShareShrink != nil {
            map["hotel_share"] = self.hotelShareShrink!
        }
        if self.internationalFlightCabins != nil {
            map["international_flight_cabins"] = self.internationalFlightCabins!
        }
        if self.itineraryListShrink != nil {
            map["itinerary_list"] = self.itineraryListShrink!
        }
        if self.itineraryRule != nil {
            map["itinerary_rule"] = self.itineraryRule!
        }
        if self.itinerarySetListShrink != nil {
            map["itinerary_set_list"] = self.itinerarySetListShrink!
        }
        if self.limitTraveler != nil {
            map["limit_traveler"] = self.limitTraveler!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.thirdpartApplyId != nil {
            map["thirdpart_apply_id"] = self.thirdpartApplyId!
        }
        if self.thirdpartBusinessId != nil {
            map["thirdpart_business_id"] = self.thirdpartBusinessId!
        }
        if self.thirdpartDepartId != nil {
            map["thirdpart_depart_id"] = self.thirdpartDepartId!
        }
        if self.togetherBookRule != nil {
            map["together_book_rule"] = self.togetherBookRule!
        }
        if self.trainBudget != nil {
            map["train_budget"] = self.trainBudget!
        }
        if self.travelerListShrink != nil {
            map["traveler_list"] = self.travelerListShrink!
        }
        if self.travelerStandardShrink != nil {
            map["traveler_standard"] = self.travelerStandardShrink!
        }
        if self.tripCause != nil {
            map["trip_cause"] = self.tripCause!
        }
        if self.tripDay != nil {
            map["trip_day"] = self.tripDay!
        }
        if self.tripTitle != nil {
            map["trip_title"] = self.tripTitle!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.unionNo != nil {
            map["union_no"] = self.unionNo!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        if self.userName != nil {
            map["user_name"] = self.userName!
        }
        if self.vehicleBudget != nil {
            map["vehicle_budget"] = self.vehicleBudget!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("budget") {
            self.budget = dict["budget"] as! Int64
        }
        if dict.keys.contains("budget_merge") {
            self.budgetMerge = dict["budget_merge"] as! Int32
        }
        if dict.keys.contains("corp_name") {
            self.corpName = dict["corp_name"] as! String
        }
        if dict.keys.contains("depart_id") {
            self.departId = dict["depart_id"] as! String
        }
        if dict.keys.contains("depart_name") {
            self.departName = dict["depart_name"] as! String
        }
        if dict.keys.contains("external_traveler_list") {
            self.externalTravelerListShrink = dict["external_traveler_list"] as! String
        }
        if dict.keys.contains("external_traveler_standard") {
            self.externalTravelerStandardShrink = dict["external_traveler_standard"] as! String
        }
        if dict.keys.contains("flight_budget") {
            self.flightBudget = dict["flight_budget"] as! Int64
        }
        if dict.keys.contains("hotel_budget") {
            self.hotelBudget = dict["hotel_budget"] as! Int64
        }
        if dict.keys.contains("hotel_share") {
            self.hotelShareShrink = dict["hotel_share"] as! String
        }
        if dict.keys.contains("international_flight_cabins") {
            self.internationalFlightCabins = dict["international_flight_cabins"] as! String
        }
        if dict.keys.contains("itinerary_list") {
            self.itineraryListShrink = dict["itinerary_list"] as! String
        }
        if dict.keys.contains("itinerary_rule") {
            self.itineraryRule = dict["itinerary_rule"] as! Int32
        }
        if dict.keys.contains("itinerary_set_list") {
            self.itinerarySetListShrink = dict["itinerary_set_list"] as! String
        }
        if dict.keys.contains("limit_traveler") {
            self.limitTraveler = dict["limit_traveler"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("thirdpart_apply_id") {
            self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
        }
        if dict.keys.contains("thirdpart_business_id") {
            self.thirdpartBusinessId = dict["thirdpart_business_id"] as! String
        }
        if dict.keys.contains("thirdpart_depart_id") {
            self.thirdpartDepartId = dict["thirdpart_depart_id"] as! String
        }
        if dict.keys.contains("together_book_rule") {
            self.togetherBookRule = dict["together_book_rule"] as! Int32
        }
        if dict.keys.contains("train_budget") {
            self.trainBudget = dict["train_budget"] as! Int64
        }
        if dict.keys.contains("traveler_list") {
            self.travelerListShrink = dict["traveler_list"] as! String
        }
        if dict.keys.contains("traveler_standard") {
            self.travelerStandardShrink = dict["traveler_standard"] as! String
        }
        if dict.keys.contains("trip_cause") {
            self.tripCause = dict["trip_cause"] as! String
        }
        if dict.keys.contains("trip_day") {
            self.tripDay = dict["trip_day"] as! Int32
        }
        if dict.keys.contains("trip_title") {
            self.tripTitle = dict["trip_title"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
        if dict.keys.contains("union_no") {
            self.unionNo = dict["union_no"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
        if dict.keys.contains("user_name") {
            self.userName = dict["user_name"] as! String
        }
        if dict.keys.contains("vehicle_budget") {
            self.vehicleBudget = dict["vehicle_budget"] as! Int64
        }
    }
}

public class ApplyAddResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var applyId: Int64?

        public var thirdpartApplyId: String?

        public var thirdpartBusinessId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["apply_id"] = self.applyId!
            }
            if self.thirdpartApplyId != nil {
                map["thirdpart_apply_id"] = self.thirdpartApplyId!
            }
            if self.thirdpartBusinessId != nil {
                map["thirdpart_business_id"] = self.thirdpartBusinessId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_id") {
                self.applyId = dict["apply_id"] as! Int64
            }
            if dict.keys.contains("thirdpart_apply_id") {
                self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
            }
            if dict.keys.contains("thirdpart_business_id") {
                self.thirdpartBusinessId = dict["thirdpart_business_id"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: ApplyAddResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = ApplyAddResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class ApplyAddResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyAddResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ApplyAddResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyApproveHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class ApplyApproveRequest : Tea.TeaModel {
    public var applyId: String?

    public var note: String?

    public var operateTime: String?

    public var status: Int32?

    public var userId: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        if self.note != nil {
            map["note"] = self.note!
        }
        if self.operateTime != nil {
            map["operate_time"] = self.operateTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        if self.userName != nil {
            map["user_name"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! String
        }
        if dict.keys.contains("note") {
            self.note = dict["note"] as! String
        }
        if dict.keys.contains("operate_time") {
            self.operateTime = dict["operate_time"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
        if dict.keys.contains("user_name") {
            self.userName = dict["user_name"] as! String
        }
    }
}

public class ApplyApproveResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            map["module"] = self.module!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class ApplyApproveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyApproveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ApplyApproveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyListQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class ApplyListQueryRequest : Tea.TeaModel {
    public var allApply: Bool?

    public var departId: String?

    public var endTime: String?

    public var gmtModified: String?

    public var onlyShangLvApply: Bool?

    public var page: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var type: Int32?

    public var unionNo: String?

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
        if self.allApply != nil {
            map["all_apply"] = self.allApply!
        }
        if self.departId != nil {
            map["depart_id"] = self.departId!
        }
        if self.endTime != nil {
            map["end_time"] = self.endTime!
        }
        if self.gmtModified != nil {
            map["gmt_modified"] = self.gmtModified!
        }
        if self.onlyShangLvApply != nil {
            map["only_shang_lv_apply"] = self.onlyShangLvApply!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.startTime != nil {
            map["start_time"] = self.startTime!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.unionNo != nil {
            map["union_no"] = self.unionNo!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all_apply") {
            self.allApply = dict["all_apply"] as! Bool
        }
        if dict.keys.contains("depart_id") {
            self.departId = dict["depart_id"] as! String
        }
        if dict.keys.contains("end_time") {
            self.endTime = dict["end_time"] as! String
        }
        if dict.keys.contains("gmt_modified") {
            self.gmtModified = dict["gmt_modified"] as! String
        }
        if dict.keys.contains("only_shang_lv_apply") {
            self.onlyShangLvApply = dict["only_shang_lv_apply"] as! Bool
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("start_time") {
            self.startTime = dict["start_time"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
        if dict.keys.contains("union_no") {
            self.unionNo = dict["union_no"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class ApplyListQueryResponseBody : Tea.TeaModel {
    public class ModuleList : Tea.TeaModel {
        public class ApproverList : Tea.TeaModel {
            public var note: String?

            public var operateTime: String?

            public var order: Int32?

            public var status: Int32?

            public var statusDesc: String?

            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.note != nil {
                    map["note"] = self.note!
                }
                if self.operateTime != nil {
                    map["operate_time"] = self.operateTime!
                }
                if self.order != nil {
                    map["order"] = self.order!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.statusDesc != nil {
                    map["status_desc"] = self.statusDesc!
                }
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("note") {
                    self.note = dict["note"] as! String
                }
                if dict.keys.contains("operate_time") {
                    self.operateTime = dict["operate_time"] as! String
                }
                if dict.keys.contains("order") {
                    self.order = dict["order"] as! Int32
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("status_desc") {
                    self.statusDesc = dict["status_desc"] as! String
                }
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public class ExternalTravelerList : Tea.TeaModel {
            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public class ItineraryList : Tea.TeaModel {
            public var arrCity: String?

            public var arrDate: String?

            public var costCenterName: String?

            public var depCity: String?

            public var depDate: String?

            public var invoiceName: String?

            public var itineraryId: String?

            public var projectCode: String?

            public var projectTitle: String?

            public var trafficType: Int32?

            public var tripWay: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrCity != nil {
                    map["arr_city"] = self.arrCity!
                }
                if self.arrDate != nil {
                    map["arr_date"] = self.arrDate!
                }
                if self.costCenterName != nil {
                    map["cost_center_name"] = self.costCenterName!
                }
                if self.depCity != nil {
                    map["dep_city"] = self.depCity!
                }
                if self.depDate != nil {
                    map["dep_date"] = self.depDate!
                }
                if self.invoiceName != nil {
                    map["invoice_name"] = self.invoiceName!
                }
                if self.itineraryId != nil {
                    map["itinerary_id"] = self.itineraryId!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectTitle != nil {
                    map["project_title"] = self.projectTitle!
                }
                if self.trafficType != nil {
                    map["traffic_type"] = self.trafficType!
                }
                if self.tripWay != nil {
                    map["trip_way"] = self.tripWay!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arr_city") {
                    self.arrCity = dict["arr_city"] as! String
                }
                if dict.keys.contains("arr_date") {
                    self.arrDate = dict["arr_date"] as! String
                }
                if dict.keys.contains("cost_center_name") {
                    self.costCenterName = dict["cost_center_name"] as! String
                }
                if dict.keys.contains("dep_city") {
                    self.depCity = dict["dep_city"] as! String
                }
                if dict.keys.contains("dep_date") {
                    self.depDate = dict["dep_date"] as! String
                }
                if dict.keys.contains("invoice_name") {
                    self.invoiceName = dict["invoice_name"] as! String
                }
                if dict.keys.contains("itinerary_id") {
                    self.itineraryId = dict["itinerary_id"] as! String
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_title") {
                    self.projectTitle = dict["project_title"] as! String
                }
                if dict.keys.contains("traffic_type") {
                    self.trafficType = dict["traffic_type"] as! Int32
                }
                if dict.keys.contains("trip_way") {
                    self.tripWay = dict["trip_way"] as! Int32
                }
            }
        }
        public class ItinerarySetList : Tea.TeaModel {
            public var arrDate: String?

            public var cityCodeSet: String?

            public var citySet: String?

            public var costCenterName: String?

            public var depDate: String?

            public var invoiceName: String?

            public var itineraryId: String?

            public var projectCode: String?

            public var projectTitle: String?

            public var trafficType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrDate != nil {
                    map["arr_date"] = self.arrDate!
                }
                if self.cityCodeSet != nil {
                    map["city_code_set"] = self.cityCodeSet!
                }
                if self.citySet != nil {
                    map["city_set"] = self.citySet!
                }
                if self.costCenterName != nil {
                    map["cost_center_name"] = self.costCenterName!
                }
                if self.depDate != nil {
                    map["dep_date"] = self.depDate!
                }
                if self.invoiceName != nil {
                    map["invoice_name"] = self.invoiceName!
                }
                if self.itineraryId != nil {
                    map["itinerary_id"] = self.itineraryId!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectTitle != nil {
                    map["project_title"] = self.projectTitle!
                }
                if self.trafficType != nil {
                    map["traffic_type"] = self.trafficType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arr_date") {
                    self.arrDate = dict["arr_date"] as! String
                }
                if dict.keys.contains("city_code_set") {
                    self.cityCodeSet = dict["city_code_set"] as! String
                }
                if dict.keys.contains("city_set") {
                    self.citySet = dict["city_set"] as! String
                }
                if dict.keys.contains("cost_center_name") {
                    self.costCenterName = dict["cost_center_name"] as! String
                }
                if dict.keys.contains("dep_date") {
                    self.depDate = dict["dep_date"] as! String
                }
                if dict.keys.contains("invoice_name") {
                    self.invoiceName = dict["invoice_name"] as! String
                }
                if dict.keys.contains("itinerary_id") {
                    self.itineraryId = dict["itinerary_id"] as! String
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_title") {
                    self.projectTitle = dict["project_title"] as! String
                }
                if dict.keys.contains("traffic_type") {
                    self.trafficType = dict["traffic_type"] as! Int32
                }
            }
        }
        public class TravelerList : Tea.TeaModel {
            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public var applyShowId: String?

        public var approverList: [ApplyListQueryResponseBody.ModuleList.ApproverList]?

        public var corpId: String?

        public var corpName: String?

        public var departId: String?

        public var departName: String?

        public var externalTravelerList: [ApplyListQueryResponseBody.ModuleList.ExternalTravelerList]?

        public var flowCode: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var itineraryList: [ApplyListQueryResponseBody.ModuleList.ItineraryList]?

        public var itineraryRule: Int32?

        public var itinerarySetList: [ApplyListQueryResponseBody.ModuleList.ItinerarySetList]?

        public var status: Int32?

        public var statusDesc: String?

        public var thirdpartBusinessId: String?

        public var thirdpartId: String?

        public var travelerList: [ApplyListQueryResponseBody.ModuleList.TravelerList]?

        public var tripCause: String?

        public var tripDay: Int32?

        public var tripTitle: String?

        public var type: Int32?

        public var unionNo: String?

        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyShowId != nil {
                map["apply_show_id"] = self.applyShowId!
            }
            if self.approverList != nil {
                var tmp : [Any] = []
                for k in self.approverList! {
                    tmp.append(k.toMap())
                }
                map["approver_list"] = tmp
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.corpName != nil {
                map["corp_name"] = self.corpName!
            }
            if self.departId != nil {
                map["depart_id"] = self.departId!
            }
            if self.departName != nil {
                map["depart_name"] = self.departName!
            }
            if self.externalTravelerList != nil {
                var tmp : [Any] = []
                for k in self.externalTravelerList! {
                    tmp.append(k.toMap())
                }
                map["external_traveler_list"] = tmp
            }
            if self.flowCode != nil {
                map["flow_code"] = self.flowCode!
            }
            if self.gmtCreate != nil {
                map["gmt_create"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmt_modified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.itineraryList != nil {
                var tmp : [Any] = []
                for k in self.itineraryList! {
                    tmp.append(k.toMap())
                }
                map["itinerary_list"] = tmp
            }
            if self.itineraryRule != nil {
                map["itinerary_rule"] = self.itineraryRule!
            }
            if self.itinerarySetList != nil {
                var tmp : [Any] = []
                for k in self.itinerarySetList! {
                    tmp.append(k.toMap())
                }
                map["itinerary_set_list"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusDesc != nil {
                map["status_desc"] = self.statusDesc!
            }
            if self.thirdpartBusinessId != nil {
                map["thirdpart_business_id"] = self.thirdpartBusinessId!
            }
            if self.thirdpartId != nil {
                map["thirdpart_id"] = self.thirdpartId!
            }
            if self.travelerList != nil {
                var tmp : [Any] = []
                for k in self.travelerList! {
                    tmp.append(k.toMap())
                }
                map["traveler_list"] = tmp
            }
            if self.tripCause != nil {
                map["trip_cause"] = self.tripCause!
            }
            if self.tripDay != nil {
                map["trip_day"] = self.tripDay!
            }
            if self.tripTitle != nil {
                map["trip_title"] = self.tripTitle!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.unionNo != nil {
                map["union_no"] = self.unionNo!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_show_id") {
                self.applyShowId = dict["apply_show_id"] as! String
            }
            if dict.keys.contains("approver_list") {
                self.approverList = dict["approver_list"] as! [ApplyListQueryResponseBody.ModuleList.ApproverList]
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("corp_name") {
                self.corpName = dict["corp_name"] as! String
            }
            if dict.keys.contains("depart_id") {
                self.departId = dict["depart_id"] as! String
            }
            if dict.keys.contains("depart_name") {
                self.departName = dict["depart_name"] as! String
            }
            if dict.keys.contains("external_traveler_list") {
                self.externalTravelerList = dict["external_traveler_list"] as! [ApplyListQueryResponseBody.ModuleList.ExternalTravelerList]
            }
            if dict.keys.contains("flow_code") {
                self.flowCode = dict["flow_code"] as! String
            }
            if dict.keys.contains("gmt_create") {
                self.gmtCreate = dict["gmt_create"] as! String
            }
            if dict.keys.contains("gmt_modified") {
                self.gmtModified = dict["gmt_modified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("itinerary_list") {
                self.itineraryList = dict["itinerary_list"] as! [ApplyListQueryResponseBody.ModuleList.ItineraryList]
            }
            if dict.keys.contains("itinerary_rule") {
                self.itineraryRule = dict["itinerary_rule"] as! Int32
            }
            if dict.keys.contains("itinerary_set_list") {
                self.itinerarySetList = dict["itinerary_set_list"] as! [ApplyListQueryResponseBody.ModuleList.ItinerarySetList]
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("status_desc") {
                self.statusDesc = dict["status_desc"] as! String
            }
            if dict.keys.contains("thirdpart_business_id") {
                self.thirdpartBusinessId = dict["thirdpart_business_id"] as! String
            }
            if dict.keys.contains("thirdpart_id") {
                self.thirdpartId = dict["thirdpart_id"] as! String
            }
            if dict.keys.contains("traveler_list") {
                self.travelerList = dict["traveler_list"] as! [ApplyListQueryResponseBody.ModuleList.TravelerList]
            }
            if dict.keys.contains("trip_cause") {
                self.tripCause = dict["trip_cause"] as! String
            }
            if dict.keys.contains("trip_day") {
                self.tripDay = dict["trip_day"] as! Int32
            }
            if dict.keys.contains("trip_title") {
                self.tripTitle = dict["trip_title"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("union_no") {
                self.unionNo = dict["union_no"] as! String
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var moduleList: [ApplyListQueryResponseBody.ModuleList]?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.moduleList != nil {
            var tmp : [Any] = []
            for k in self.moduleList! {
                tmp.append(k.toMap())
            }
            map["module_list"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module_list") {
            self.moduleList = dict["module_list"] as! [ApplyListQueryResponseBody.ModuleList]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class ApplyListQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyListQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ApplyListQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyModifyHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class ApplyModifyRequest : Tea.TeaModel {
    public class ExternalTravelerList : Tea.TeaModel {
        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public class ExternalTravelerStandard : Tea.TeaModel {
        public class HotelCitys : Tea.TeaModel {
            public var cityCode: String?

            public var cityName: String?

            public var fee: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cityCode != nil {
                    map["city_code"] = self.cityCode!
                }
                if self.cityName != nil {
                    map["city_name"] = self.cityName!
                }
                if self.fee != nil {
                    map["fee"] = self.fee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("city_code") {
                    self.cityCode = dict["city_code"] as! String
                }
                if dict.keys.contains("city_name") {
                    self.cityName = dict["city_name"] as! String
                }
                if dict.keys.contains("fee") {
                    self.fee = dict["fee"] as! Int64
                }
            }
        }
        public var businessDiscount: Int32?

        public var economyDiscount: Int32?

        public var firstDiscount: Int32?

        public var flightCabins: String?

        public var hotelCitys: [ApplyModifyRequest.ExternalTravelerStandard.HotelCitys]?

        public var reserveType: Int32?

        public var trainSeats: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessDiscount != nil {
                map["business_discount"] = self.businessDiscount!
            }
            if self.economyDiscount != nil {
                map["economy_discount"] = self.economyDiscount!
            }
            if self.firstDiscount != nil {
                map["first_discount"] = self.firstDiscount!
            }
            if self.flightCabins != nil {
                map["flight_cabins"] = self.flightCabins!
            }
            if self.hotelCitys != nil {
                var tmp : [Any] = []
                for k in self.hotelCitys! {
                    tmp.append(k.toMap())
                }
                map["hotel_citys"] = tmp
            }
            if self.reserveType != nil {
                map["reserve_type"] = self.reserveType!
            }
            if self.trainSeats != nil {
                map["train_seats"] = self.trainSeats!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("business_discount") {
                self.businessDiscount = dict["business_discount"] as! Int32
            }
            if dict.keys.contains("economy_discount") {
                self.economyDiscount = dict["economy_discount"] as! Int32
            }
            if dict.keys.contains("first_discount") {
                self.firstDiscount = dict["first_discount"] as! Int32
            }
            if dict.keys.contains("flight_cabins") {
                self.flightCabins = dict["flight_cabins"] as! String
            }
            if dict.keys.contains("hotel_citys") {
                self.hotelCitys = dict["hotel_citys"] as! [ApplyModifyRequest.ExternalTravelerStandard.HotelCitys]
            }
            if dict.keys.contains("reserve_type") {
                self.reserveType = dict["reserve_type"] as! Int32
            }
            if dict.keys.contains("train_seats") {
                self.trainSeats = dict["train_seats"] as! String
            }
        }
    }
    public class HotelShare : Tea.TeaModel {
        public var param: String?

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
            if self.param != nil {
                map["param"] = self.param!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("param") {
                self.param = dict["param"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public class ItineraryList : Tea.TeaModel {
        public var arrCity: String?

        public var arrCityCode: String?

        public var arrDate: String?

        public var costCenterId: Int64?

        public var depCity: String?

        public var depCityCode: String?

        public var depDate: String?

        public var invoiceId: Int64?

        public var itineraryId: String?

        public var needHotel: Bool?

        public var needTraffic: Bool?

        public var projectCode: String?

        public var projectTitle: String?

        public var thirdPartInvoiceId: String?

        public var thirdpartCostCenterId: String?

        public var trafficType: Int32?

        public var tripWay: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrCity != nil {
                map["arr_city"] = self.arrCity!
            }
            if self.arrCityCode != nil {
                map["arr_city_code"] = self.arrCityCode!
            }
            if self.arrDate != nil {
                map["arr_date"] = self.arrDate!
            }
            if self.costCenterId != nil {
                map["cost_center_id"] = self.costCenterId!
            }
            if self.depCity != nil {
                map["dep_city"] = self.depCity!
            }
            if self.depCityCode != nil {
                map["dep_city_code"] = self.depCityCode!
            }
            if self.depDate != nil {
                map["dep_date"] = self.depDate!
            }
            if self.invoiceId != nil {
                map["invoice_id"] = self.invoiceId!
            }
            if self.itineraryId != nil {
                map["itinerary_id"] = self.itineraryId!
            }
            if self.needHotel != nil {
                map["need_hotel"] = self.needHotel!
            }
            if self.needTraffic != nil {
                map["need_traffic"] = self.needTraffic!
            }
            if self.projectCode != nil {
                map["project_code"] = self.projectCode!
            }
            if self.projectTitle != nil {
                map["project_title"] = self.projectTitle!
            }
            if self.thirdPartInvoiceId != nil {
                map["third_part_invoice_id"] = self.thirdPartInvoiceId!
            }
            if self.thirdpartCostCenterId != nil {
                map["thirdpart_cost_center_id"] = self.thirdpartCostCenterId!
            }
            if self.trafficType != nil {
                map["traffic_type"] = self.trafficType!
            }
            if self.tripWay != nil {
                map["trip_way"] = self.tripWay!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("arr_city") {
                self.arrCity = dict["arr_city"] as! String
            }
            if dict.keys.contains("arr_city_code") {
                self.arrCityCode = dict["arr_city_code"] as! String
            }
            if dict.keys.contains("arr_date") {
                self.arrDate = dict["arr_date"] as! String
            }
            if dict.keys.contains("cost_center_id") {
                self.costCenterId = dict["cost_center_id"] as! Int64
            }
            if dict.keys.contains("dep_city") {
                self.depCity = dict["dep_city"] as! String
            }
            if dict.keys.contains("dep_city_code") {
                self.depCityCode = dict["dep_city_code"] as! String
            }
            if dict.keys.contains("dep_date") {
                self.depDate = dict["dep_date"] as! String
            }
            if dict.keys.contains("invoice_id") {
                self.invoiceId = dict["invoice_id"] as! Int64
            }
            if dict.keys.contains("itinerary_id") {
                self.itineraryId = dict["itinerary_id"] as! String
            }
            if dict.keys.contains("need_hotel") {
                self.needHotel = dict["need_hotel"] as! Bool
            }
            if dict.keys.contains("need_traffic") {
                self.needTraffic = dict["need_traffic"] as! Bool
            }
            if dict.keys.contains("project_code") {
                self.projectCode = dict["project_code"] as! String
            }
            if dict.keys.contains("project_title") {
                self.projectTitle = dict["project_title"] as! String
            }
            if dict.keys.contains("third_part_invoice_id") {
                self.thirdPartInvoiceId = dict["third_part_invoice_id"] as! String
            }
            if dict.keys.contains("thirdpart_cost_center_id") {
                self.thirdpartCostCenterId = dict["thirdpart_cost_center_id"] as! String
            }
            if dict.keys.contains("traffic_type") {
                self.trafficType = dict["traffic_type"] as! Int32
            }
            if dict.keys.contains("trip_way") {
                self.tripWay = dict["trip_way"] as! Int32
            }
        }
    }
    public class ItinerarySetList : Tea.TeaModel {
        public var arrDate: String?

        public var cityCodeSet: String?

        public var citySet: String?

        public var costCenterId: Int64?

        public var depDate: String?

        public var invoiceId: Int64?

        public var itineraryId: String?

        public var projectCode: String?

        public var projectTitle: String?

        public var thirdPartInvoiceId: String?

        public var thirdpartCostCenterId: String?

        public var trafficType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrDate != nil {
                map["arr_date"] = self.arrDate!
            }
            if self.cityCodeSet != nil {
                map["city_code_set"] = self.cityCodeSet!
            }
            if self.citySet != nil {
                map["city_set"] = self.citySet!
            }
            if self.costCenterId != nil {
                map["cost_center_id"] = self.costCenterId!
            }
            if self.depDate != nil {
                map["dep_date"] = self.depDate!
            }
            if self.invoiceId != nil {
                map["invoice_id"] = self.invoiceId!
            }
            if self.itineraryId != nil {
                map["itinerary_id"] = self.itineraryId!
            }
            if self.projectCode != nil {
                map["project_code"] = self.projectCode!
            }
            if self.projectTitle != nil {
                map["project_title"] = self.projectTitle!
            }
            if self.thirdPartInvoiceId != nil {
                map["third_part_invoice_id"] = self.thirdPartInvoiceId!
            }
            if self.thirdpartCostCenterId != nil {
                map["thirdpart_cost_center_id"] = self.thirdpartCostCenterId!
            }
            if self.trafficType != nil {
                map["traffic_type"] = self.trafficType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("arr_date") {
                self.arrDate = dict["arr_date"] as! String
            }
            if dict.keys.contains("city_code_set") {
                self.cityCodeSet = dict["city_code_set"] as! String
            }
            if dict.keys.contains("city_set") {
                self.citySet = dict["city_set"] as! String
            }
            if dict.keys.contains("cost_center_id") {
                self.costCenterId = dict["cost_center_id"] as! Int64
            }
            if dict.keys.contains("dep_date") {
                self.depDate = dict["dep_date"] as! String
            }
            if dict.keys.contains("invoice_id") {
                self.invoiceId = dict["invoice_id"] as! Int64
            }
            if dict.keys.contains("itinerary_id") {
                self.itineraryId = dict["itinerary_id"] as! String
            }
            if dict.keys.contains("project_code") {
                self.projectCode = dict["project_code"] as! String
            }
            if dict.keys.contains("project_title") {
                self.projectTitle = dict["project_title"] as! String
            }
            if dict.keys.contains("third_part_invoice_id") {
                self.thirdPartInvoiceId = dict["third_part_invoice_id"] as! String
            }
            if dict.keys.contains("thirdpart_cost_center_id") {
                self.thirdpartCostCenterId = dict["thirdpart_cost_center_id"] as! String
            }
            if dict.keys.contains("traffic_type") {
                self.trafficType = dict["traffic_type"] as! Int32
            }
        }
    }
    public class TravelerList : Tea.TeaModel {
        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public class TravelerStandard : Tea.TeaModel {
        public class HotelCitys : Tea.TeaModel {
            public var cityCode: String?

            public var cityName: String?

            public var fee: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cityCode != nil {
                    map["city_code"] = self.cityCode!
                }
                if self.cityName != nil {
                    map["city_name"] = self.cityName!
                }
                if self.fee != nil {
                    map["fee"] = self.fee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("city_code") {
                    self.cityCode = dict["city_code"] as! String
                }
                if dict.keys.contains("city_name") {
                    self.cityName = dict["city_name"] as! String
                }
                if dict.keys.contains("fee") {
                    self.fee = dict["fee"] as! Int64
                }
            }
        }
        public var businessDiscount: Int32?

        public var economyDiscount: Int32?

        public var firstDiscount: Int32?

        public var flightCabins: String?

        public var hotelCitys: [ApplyModifyRequest.TravelerStandard.HotelCitys]?

        public var reserveType: Int32?

        public var trainSeats: String?

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
            if self.businessDiscount != nil {
                map["business_discount"] = self.businessDiscount!
            }
            if self.economyDiscount != nil {
                map["economy_discount"] = self.economyDiscount!
            }
            if self.firstDiscount != nil {
                map["first_discount"] = self.firstDiscount!
            }
            if self.flightCabins != nil {
                map["flight_cabins"] = self.flightCabins!
            }
            if self.hotelCitys != nil {
                var tmp : [Any] = []
                for k in self.hotelCitys! {
                    tmp.append(k.toMap())
                }
                map["hotel_citys"] = tmp
            }
            if self.reserveType != nil {
                map["reserve_type"] = self.reserveType!
            }
            if self.trainSeats != nil {
                map["train_seats"] = self.trainSeats!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("business_discount") {
                self.businessDiscount = dict["business_discount"] as! Int32
            }
            if dict.keys.contains("economy_discount") {
                self.economyDiscount = dict["economy_discount"] as! Int32
            }
            if dict.keys.contains("first_discount") {
                self.firstDiscount = dict["first_discount"] as! Int32
            }
            if dict.keys.contains("flight_cabins") {
                self.flightCabins = dict["flight_cabins"] as! String
            }
            if dict.keys.contains("hotel_citys") {
                self.hotelCitys = dict["hotel_citys"] as! [ApplyModifyRequest.TravelerStandard.HotelCitys]
            }
            if dict.keys.contains("reserve_type") {
                self.reserveType = dict["reserve_type"] as! Int32
            }
            if dict.keys.contains("train_seats") {
                self.trainSeats = dict["train_seats"] as! String
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
        }
    }
    public var budget: Int64?

    public var budgetMerge: Int32?

    public var corpName: String?

    public var departId: String?

    public var departName: String?

    public var externalTravelerList: [ApplyModifyRequest.ExternalTravelerList]?

    public var externalTravelerStandard: ApplyModifyRequest.ExternalTravelerStandard?

    public var flightBudget: Int64?

    public var hotelBudget: Int64?

    public var hotelShare: ApplyModifyRequest.HotelShare?

    public var itineraryList: [ApplyModifyRequest.ItineraryList]?

    public var itineraryRule: Int32?

    public var itinerarySetList: [ApplyModifyRequest.ItinerarySetList]?

    public var limitTraveler: Int32?

    public var status: Int32?

    public var thirdpartApplyId: String?

    public var thirdpartBusinessId: String?

    public var thirdpartDepartId: String?

    public var togetherBookRule: Int32?

    public var trainBudget: Int64?

    public var travelerList: [ApplyModifyRequest.TravelerList]?

    public var travelerStandard: [ApplyModifyRequest.TravelerStandard]?

    public var tripCause: String?

    public var tripDay: Int32?

    public var tripTitle: String?

    public var unionNo: String?

    public var userId: String?

    public var userName: String?

    public var vehicleBudget: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.externalTravelerStandard?.validate()
        try self.hotelShare?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.budget != nil {
            map["budget"] = self.budget!
        }
        if self.budgetMerge != nil {
            map["budget_merge"] = self.budgetMerge!
        }
        if self.corpName != nil {
            map["corp_name"] = self.corpName!
        }
        if self.departId != nil {
            map["depart_id"] = self.departId!
        }
        if self.departName != nil {
            map["depart_name"] = self.departName!
        }
        if self.externalTravelerList != nil {
            var tmp : [Any] = []
            for k in self.externalTravelerList! {
                tmp.append(k.toMap())
            }
            map["external_traveler_list"] = tmp
        }
        if self.externalTravelerStandard != nil {
            map["external_traveler_standard"] = self.externalTravelerStandard?.toMap()
        }
        if self.flightBudget != nil {
            map["flight_budget"] = self.flightBudget!
        }
        if self.hotelBudget != nil {
            map["hotel_budget"] = self.hotelBudget!
        }
        if self.hotelShare != nil {
            map["hotel_share"] = self.hotelShare?.toMap()
        }
        if self.itineraryList != nil {
            var tmp : [Any] = []
            for k in self.itineraryList! {
                tmp.append(k.toMap())
            }
            map["itinerary_list"] = tmp
        }
        if self.itineraryRule != nil {
            map["itinerary_rule"] = self.itineraryRule!
        }
        if self.itinerarySetList != nil {
            var tmp : [Any] = []
            for k in self.itinerarySetList! {
                tmp.append(k.toMap())
            }
            map["itinerary_set_list"] = tmp
        }
        if self.limitTraveler != nil {
            map["limit_traveler"] = self.limitTraveler!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.thirdpartApplyId != nil {
            map["thirdpart_apply_id"] = self.thirdpartApplyId!
        }
        if self.thirdpartBusinessId != nil {
            map["thirdpart_business_id"] = self.thirdpartBusinessId!
        }
        if self.thirdpartDepartId != nil {
            map["thirdpart_depart_id"] = self.thirdpartDepartId!
        }
        if self.togetherBookRule != nil {
            map["together_book_rule"] = self.togetherBookRule!
        }
        if self.trainBudget != nil {
            map["train_budget"] = self.trainBudget!
        }
        if self.travelerList != nil {
            var tmp : [Any] = []
            for k in self.travelerList! {
                tmp.append(k.toMap())
            }
            map["traveler_list"] = tmp
        }
        if self.travelerStandard != nil {
            var tmp : [Any] = []
            for k in self.travelerStandard! {
                tmp.append(k.toMap())
            }
            map["traveler_standard"] = tmp
        }
        if self.tripCause != nil {
            map["trip_cause"] = self.tripCause!
        }
        if self.tripDay != nil {
            map["trip_day"] = self.tripDay!
        }
        if self.tripTitle != nil {
            map["trip_title"] = self.tripTitle!
        }
        if self.unionNo != nil {
            map["union_no"] = self.unionNo!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        if self.userName != nil {
            map["user_name"] = self.userName!
        }
        if self.vehicleBudget != nil {
            map["vehicle_budget"] = self.vehicleBudget!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("budget") {
            self.budget = dict["budget"] as! Int64
        }
        if dict.keys.contains("budget_merge") {
            self.budgetMerge = dict["budget_merge"] as! Int32
        }
        if dict.keys.contains("corp_name") {
            self.corpName = dict["corp_name"] as! String
        }
        if dict.keys.contains("depart_id") {
            self.departId = dict["depart_id"] as! String
        }
        if dict.keys.contains("depart_name") {
            self.departName = dict["depart_name"] as! String
        }
        if dict.keys.contains("external_traveler_list") {
            self.externalTravelerList = dict["external_traveler_list"] as! [ApplyModifyRequest.ExternalTravelerList]
        }
        if dict.keys.contains("external_traveler_standard") {
            var model = ApplyModifyRequest.ExternalTravelerStandard()
            model.fromMap(dict["external_traveler_standard"] as! [String: Any])
            self.externalTravelerStandard = model
        }
        if dict.keys.contains("flight_budget") {
            self.flightBudget = dict["flight_budget"] as! Int64
        }
        if dict.keys.contains("hotel_budget") {
            self.hotelBudget = dict["hotel_budget"] as! Int64
        }
        if dict.keys.contains("hotel_share") {
            var model = ApplyModifyRequest.HotelShare()
            model.fromMap(dict["hotel_share"] as! [String: Any])
            self.hotelShare = model
        }
        if dict.keys.contains("itinerary_list") {
            self.itineraryList = dict["itinerary_list"] as! [ApplyModifyRequest.ItineraryList]
        }
        if dict.keys.contains("itinerary_rule") {
            self.itineraryRule = dict["itinerary_rule"] as! Int32
        }
        if dict.keys.contains("itinerary_set_list") {
            self.itinerarySetList = dict["itinerary_set_list"] as! [ApplyModifyRequest.ItinerarySetList]
        }
        if dict.keys.contains("limit_traveler") {
            self.limitTraveler = dict["limit_traveler"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("thirdpart_apply_id") {
            self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
        }
        if dict.keys.contains("thirdpart_business_id") {
            self.thirdpartBusinessId = dict["thirdpart_business_id"] as! String
        }
        if dict.keys.contains("thirdpart_depart_id") {
            self.thirdpartDepartId = dict["thirdpart_depart_id"] as! String
        }
        if dict.keys.contains("together_book_rule") {
            self.togetherBookRule = dict["together_book_rule"] as! Int32
        }
        if dict.keys.contains("train_budget") {
            self.trainBudget = dict["train_budget"] as! Int64
        }
        if dict.keys.contains("traveler_list") {
            self.travelerList = dict["traveler_list"] as! [ApplyModifyRequest.TravelerList]
        }
        if dict.keys.contains("traveler_standard") {
            self.travelerStandard = dict["traveler_standard"] as! [ApplyModifyRequest.TravelerStandard]
        }
        if dict.keys.contains("trip_cause") {
            self.tripCause = dict["trip_cause"] as! String
        }
        if dict.keys.contains("trip_day") {
            self.tripDay = dict["trip_day"] as! Int32
        }
        if dict.keys.contains("trip_title") {
            self.tripTitle = dict["trip_title"] as! String
        }
        if dict.keys.contains("union_no") {
            self.unionNo = dict["union_no"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
        if dict.keys.contains("user_name") {
            self.userName = dict["user_name"] as! String
        }
        if dict.keys.contains("vehicle_budget") {
            self.vehicleBudget = dict["vehicle_budget"] as! Int64
        }
    }
}

public class ApplyModifyShrinkRequest : Tea.TeaModel {
    public var budget: Int64?

    public var budgetMerge: Int32?

    public var corpName: String?

    public var departId: String?

    public var departName: String?

    public var externalTravelerListShrink: String?

    public var externalTravelerStandardShrink: String?

    public var flightBudget: Int64?

    public var hotelBudget: Int64?

    public var hotelShareShrink: String?

    public var itineraryListShrink: String?

    public var itineraryRule: Int32?

    public var itinerarySetListShrink: String?

    public var limitTraveler: Int32?

    public var status: Int32?

    public var thirdpartApplyId: String?

    public var thirdpartBusinessId: String?

    public var thirdpartDepartId: String?

    public var togetherBookRule: Int32?

    public var trainBudget: Int64?

    public var travelerListShrink: String?

    public var travelerStandardShrink: String?

    public var tripCause: String?

    public var tripDay: Int32?

    public var tripTitle: String?

    public var unionNo: String?

    public var userId: String?

    public var userName: String?

    public var vehicleBudget: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.budget != nil {
            map["budget"] = self.budget!
        }
        if self.budgetMerge != nil {
            map["budget_merge"] = self.budgetMerge!
        }
        if self.corpName != nil {
            map["corp_name"] = self.corpName!
        }
        if self.departId != nil {
            map["depart_id"] = self.departId!
        }
        if self.departName != nil {
            map["depart_name"] = self.departName!
        }
        if self.externalTravelerListShrink != nil {
            map["external_traveler_list"] = self.externalTravelerListShrink!
        }
        if self.externalTravelerStandardShrink != nil {
            map["external_traveler_standard"] = self.externalTravelerStandardShrink!
        }
        if self.flightBudget != nil {
            map["flight_budget"] = self.flightBudget!
        }
        if self.hotelBudget != nil {
            map["hotel_budget"] = self.hotelBudget!
        }
        if self.hotelShareShrink != nil {
            map["hotel_share"] = self.hotelShareShrink!
        }
        if self.itineraryListShrink != nil {
            map["itinerary_list"] = self.itineraryListShrink!
        }
        if self.itineraryRule != nil {
            map["itinerary_rule"] = self.itineraryRule!
        }
        if self.itinerarySetListShrink != nil {
            map["itinerary_set_list"] = self.itinerarySetListShrink!
        }
        if self.limitTraveler != nil {
            map["limit_traveler"] = self.limitTraveler!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.thirdpartApplyId != nil {
            map["thirdpart_apply_id"] = self.thirdpartApplyId!
        }
        if self.thirdpartBusinessId != nil {
            map["thirdpart_business_id"] = self.thirdpartBusinessId!
        }
        if self.thirdpartDepartId != nil {
            map["thirdpart_depart_id"] = self.thirdpartDepartId!
        }
        if self.togetherBookRule != nil {
            map["together_book_rule"] = self.togetherBookRule!
        }
        if self.trainBudget != nil {
            map["train_budget"] = self.trainBudget!
        }
        if self.travelerListShrink != nil {
            map["traveler_list"] = self.travelerListShrink!
        }
        if self.travelerStandardShrink != nil {
            map["traveler_standard"] = self.travelerStandardShrink!
        }
        if self.tripCause != nil {
            map["trip_cause"] = self.tripCause!
        }
        if self.tripDay != nil {
            map["trip_day"] = self.tripDay!
        }
        if self.tripTitle != nil {
            map["trip_title"] = self.tripTitle!
        }
        if self.unionNo != nil {
            map["union_no"] = self.unionNo!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        if self.userName != nil {
            map["user_name"] = self.userName!
        }
        if self.vehicleBudget != nil {
            map["vehicle_budget"] = self.vehicleBudget!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("budget") {
            self.budget = dict["budget"] as! Int64
        }
        if dict.keys.contains("budget_merge") {
            self.budgetMerge = dict["budget_merge"] as! Int32
        }
        if dict.keys.contains("corp_name") {
            self.corpName = dict["corp_name"] as! String
        }
        if dict.keys.contains("depart_id") {
            self.departId = dict["depart_id"] as! String
        }
        if dict.keys.contains("depart_name") {
            self.departName = dict["depart_name"] as! String
        }
        if dict.keys.contains("external_traveler_list") {
            self.externalTravelerListShrink = dict["external_traveler_list"] as! String
        }
        if dict.keys.contains("external_traveler_standard") {
            self.externalTravelerStandardShrink = dict["external_traveler_standard"] as! String
        }
        if dict.keys.contains("flight_budget") {
            self.flightBudget = dict["flight_budget"] as! Int64
        }
        if dict.keys.contains("hotel_budget") {
            self.hotelBudget = dict["hotel_budget"] as! Int64
        }
        if dict.keys.contains("hotel_share") {
            self.hotelShareShrink = dict["hotel_share"] as! String
        }
        if dict.keys.contains("itinerary_list") {
            self.itineraryListShrink = dict["itinerary_list"] as! String
        }
        if dict.keys.contains("itinerary_rule") {
            self.itineraryRule = dict["itinerary_rule"] as! Int32
        }
        if dict.keys.contains("itinerary_set_list") {
            self.itinerarySetListShrink = dict["itinerary_set_list"] as! String
        }
        if dict.keys.contains("limit_traveler") {
            self.limitTraveler = dict["limit_traveler"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("thirdpart_apply_id") {
            self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
        }
        if dict.keys.contains("thirdpart_business_id") {
            self.thirdpartBusinessId = dict["thirdpart_business_id"] as! String
        }
        if dict.keys.contains("thirdpart_depart_id") {
            self.thirdpartDepartId = dict["thirdpart_depart_id"] as! String
        }
        if dict.keys.contains("together_book_rule") {
            self.togetherBookRule = dict["together_book_rule"] as! Int32
        }
        if dict.keys.contains("train_budget") {
            self.trainBudget = dict["train_budget"] as! Int64
        }
        if dict.keys.contains("traveler_list") {
            self.travelerListShrink = dict["traveler_list"] as! String
        }
        if dict.keys.contains("traveler_standard") {
            self.travelerStandardShrink = dict["traveler_standard"] as! String
        }
        if dict.keys.contains("trip_cause") {
            self.tripCause = dict["trip_cause"] as! String
        }
        if dict.keys.contains("trip_day") {
            self.tripDay = dict["trip_day"] as! Int32
        }
        if dict.keys.contains("trip_title") {
            self.tripTitle = dict["trip_title"] as! String
        }
        if dict.keys.contains("union_no") {
            self.unionNo = dict["union_no"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
        if dict.keys.contains("user_name") {
            self.userName = dict["user_name"] as! String
        }
        if dict.keys.contains("vehicle_budget") {
            self.vehicleBudget = dict["vehicle_budget"] as! Int64
        }
    }
}

public class ApplyModifyResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var applyId: Int64?

        public var thirdpartApplyId: String?

        public var thirdpartBusinessId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["apply_id"] = self.applyId!
            }
            if self.thirdpartApplyId != nil {
                map["thirdpart_apply_id"] = self.thirdpartApplyId!
            }
            if self.thirdpartBusinessId != nil {
                map["thirdpart_business_id"] = self.thirdpartBusinessId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_id") {
                self.applyId = dict["apply_id"] as! Int64
            }
            if dict.keys.contains("thirdpart_apply_id") {
                self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
            }
            if dict.keys.contains("thirdpart_business_id") {
                self.thirdpartBusinessId = dict["thirdpart_business_id"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: ApplyModifyResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = ApplyModifyResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class ApplyModifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyModifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ApplyModifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class ApplyQueryRequest : Tea.TeaModel {
    public var applyId: Int32?

    public var applyShowId: String?

    public var thirdpartApplyId: String?

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
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        if self.applyShowId != nil {
            map["apply_show_id"] = self.applyShowId!
        }
        if self.thirdpartApplyId != nil {
            map["thirdpart_apply_id"] = self.thirdpartApplyId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int32
        }
        if dict.keys.contains("apply_show_id") {
            self.applyShowId = dict["apply_show_id"] as! String
        }
        if dict.keys.contains("thirdpart_apply_id") {
            self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
    }
}

public class ApplyQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class ApproverList : Tea.TeaModel {
            public var note: String?

            public var operateTime: String?

            public var order: Int32?

            public var status: Int32?

            public var statusDesc: String?

            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.note != nil {
                    map["note"] = self.note!
                }
                if self.operateTime != nil {
                    map["operate_time"] = self.operateTime!
                }
                if self.order != nil {
                    map["order"] = self.order!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.statusDesc != nil {
                    map["status_desc"] = self.statusDesc!
                }
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("note") {
                    self.note = dict["note"] as! String
                }
                if dict.keys.contains("operate_time") {
                    self.operateTime = dict["operate_time"] as! String
                }
                if dict.keys.contains("order") {
                    self.order = dict["order"] as! Int32
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("status_desc") {
                    self.statusDesc = dict["status_desc"] as! String
                }
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public class ExternalTravelerList : Tea.TeaModel {
            public class HotelCitys : Tea.TeaModel {
                public var cityCode: String?

                public var cityName: String?

                public var fee: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cityCode != nil {
                        map["city_code"] = self.cityCode!
                    }
                    if self.cityName != nil {
                        map["city_name"] = self.cityName!
                    }
                    if self.fee != nil {
                        map["fee"] = self.fee!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("city_code") {
                        self.cityCode = dict["city_code"] as! String
                    }
                    if dict.keys.contains("city_name") {
                        self.cityName = dict["city_name"] as! String
                    }
                    if dict.keys.contains("fee") {
                        self.fee = dict["fee"] as! Int64
                    }
                }
            }
            public var businessDiscount: Int32?

            public var economyDiscount: Int32?

            public var firstDiscount: Int32?

            public var flightCabins: String?

            public var hotelCitys: [ApplyQueryResponseBody.Module.ExternalTravelerList.HotelCitys]?

            public var reserveType: Int32?

            public var trainSeats: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.businessDiscount != nil {
                    map["business_discount"] = self.businessDiscount!
                }
                if self.economyDiscount != nil {
                    map["economy_discount"] = self.economyDiscount!
                }
                if self.firstDiscount != nil {
                    map["first_discount"] = self.firstDiscount!
                }
                if self.flightCabins != nil {
                    map["flight_cabins"] = self.flightCabins!
                }
                if self.hotelCitys != nil {
                    var tmp : [Any] = []
                    for k in self.hotelCitys! {
                        tmp.append(k.toMap())
                    }
                    map["hotel_citys"] = tmp
                }
                if self.reserveType != nil {
                    map["reserve_type"] = self.reserveType!
                }
                if self.trainSeats != nil {
                    map["train_seats"] = self.trainSeats!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("business_discount") {
                    self.businessDiscount = dict["business_discount"] as! Int32
                }
                if dict.keys.contains("economy_discount") {
                    self.economyDiscount = dict["economy_discount"] as! Int32
                }
                if dict.keys.contains("first_discount") {
                    self.firstDiscount = dict["first_discount"] as! Int32
                }
                if dict.keys.contains("flight_cabins") {
                    self.flightCabins = dict["flight_cabins"] as! String
                }
                if dict.keys.contains("hotel_citys") {
                    self.hotelCitys = dict["hotel_citys"] as! [ApplyQueryResponseBody.Module.ExternalTravelerList.HotelCitys]
                }
                if dict.keys.contains("reserve_type") {
                    self.reserveType = dict["reserve_type"] as! Int32
                }
                if dict.keys.contains("train_seats") {
                    self.trainSeats = dict["train_seats"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public class HotelShare : Tea.TeaModel {
            public var param: String?

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
                if self.param != nil {
                    map["param"] = self.param!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("param") {
                    self.param = dict["param"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class ItineraryList : Tea.TeaModel {
            public var arrCity: String?

            public var arrCityCode: String?

            public var arrDate: String?

            public var costCenterName: String?

            public var depCity: String?

            public var depCityCode: String?

            public var depDate: String?

            public var invoiceName: String?

            public var itineraryId: String?

            public var projectCode: String?

            public var projectTitle: String?

            public var trafficType: Int32?

            public var tripWay: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrCity != nil {
                    map["arr_city"] = self.arrCity!
                }
                if self.arrCityCode != nil {
                    map["arr_city_code"] = self.arrCityCode!
                }
                if self.arrDate != nil {
                    map["arr_date"] = self.arrDate!
                }
                if self.costCenterName != nil {
                    map["cost_center_name"] = self.costCenterName!
                }
                if self.depCity != nil {
                    map["dep_city"] = self.depCity!
                }
                if self.depCityCode != nil {
                    map["dep_city_code"] = self.depCityCode!
                }
                if self.depDate != nil {
                    map["dep_date"] = self.depDate!
                }
                if self.invoiceName != nil {
                    map["invoice_name"] = self.invoiceName!
                }
                if self.itineraryId != nil {
                    map["itinerary_id"] = self.itineraryId!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectTitle != nil {
                    map["project_title"] = self.projectTitle!
                }
                if self.trafficType != nil {
                    map["traffic_type"] = self.trafficType!
                }
                if self.tripWay != nil {
                    map["trip_way"] = self.tripWay!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arr_city") {
                    self.arrCity = dict["arr_city"] as! String
                }
                if dict.keys.contains("arr_city_code") {
                    self.arrCityCode = dict["arr_city_code"] as! String
                }
                if dict.keys.contains("arr_date") {
                    self.arrDate = dict["arr_date"] as! String
                }
                if dict.keys.contains("cost_center_name") {
                    self.costCenterName = dict["cost_center_name"] as! String
                }
                if dict.keys.contains("dep_city") {
                    self.depCity = dict["dep_city"] as! String
                }
                if dict.keys.contains("dep_city_code") {
                    self.depCityCode = dict["dep_city_code"] as! String
                }
                if dict.keys.contains("dep_date") {
                    self.depDate = dict["dep_date"] as! String
                }
                if dict.keys.contains("invoice_name") {
                    self.invoiceName = dict["invoice_name"] as! String
                }
                if dict.keys.contains("itinerary_id") {
                    self.itineraryId = dict["itinerary_id"] as! String
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_title") {
                    self.projectTitle = dict["project_title"] as! String
                }
                if dict.keys.contains("traffic_type") {
                    self.trafficType = dict["traffic_type"] as! Int32
                }
                if dict.keys.contains("trip_way") {
                    self.tripWay = dict["trip_way"] as! Int32
                }
            }
        }
        public class ItinerarySetList : Tea.TeaModel {
            public var arrDate: String?

            public var cityCodeSet: String?

            public var citySet: String?

            public var costCenterName: String?

            public var depDate: String?

            public var invoiceName: String?

            public var itineraryId: String?

            public var projectCode: String?

            public var projectTitle: String?

            public var trafficType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrDate != nil {
                    map["arr_date"] = self.arrDate!
                }
                if self.cityCodeSet != nil {
                    map["city_code_set"] = self.cityCodeSet!
                }
                if self.citySet != nil {
                    map["city_set"] = self.citySet!
                }
                if self.costCenterName != nil {
                    map["cost_center_name"] = self.costCenterName!
                }
                if self.depDate != nil {
                    map["dep_date"] = self.depDate!
                }
                if self.invoiceName != nil {
                    map["invoice_name"] = self.invoiceName!
                }
                if self.itineraryId != nil {
                    map["itinerary_id"] = self.itineraryId!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectTitle != nil {
                    map["project_title"] = self.projectTitle!
                }
                if self.trafficType != nil {
                    map["traffic_type"] = self.trafficType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arr_date") {
                    self.arrDate = dict["arr_date"] as! String
                }
                if dict.keys.contains("city_code_set") {
                    self.cityCodeSet = dict["city_code_set"] as! String
                }
                if dict.keys.contains("city_set") {
                    self.citySet = dict["city_set"] as! String
                }
                if dict.keys.contains("cost_center_name") {
                    self.costCenterName = dict["cost_center_name"] as! String
                }
                if dict.keys.contains("dep_date") {
                    self.depDate = dict["dep_date"] as! String
                }
                if dict.keys.contains("invoice_name") {
                    self.invoiceName = dict["invoice_name"] as! String
                }
                if dict.keys.contains("itinerary_id") {
                    self.itineraryId = dict["itinerary_id"] as! String
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_title") {
                    self.projectTitle = dict["project_title"] as! String
                }
                if dict.keys.contains("traffic_type") {
                    self.trafficType = dict["traffic_type"] as! Int32
                }
            }
        }
        public class TravelerList : Tea.TeaModel {
            public class HotelCitys : Tea.TeaModel {
                public var cityCode: String?

                public var cityName: String?

                public var fee: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cityCode != nil {
                        map["city_code"] = self.cityCode!
                    }
                    if self.cityName != nil {
                        map["city_name"] = self.cityName!
                    }
                    if self.fee != nil {
                        map["fee"] = self.fee!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("city_code") {
                        self.cityCode = dict["city_code"] as! String
                    }
                    if dict.keys.contains("city_name") {
                        self.cityName = dict["city_name"] as! String
                    }
                    if dict.keys.contains("fee") {
                        self.fee = dict["fee"] as! Int64
                    }
                }
            }
            public var businessDiscount: Int32?

            public var economyDiscount: Int32?

            public var firstDiscount: Int32?

            public var flightCabins: String?

            public var hotelCitys: [ApplyQueryResponseBody.Module.TravelerList.HotelCitys]?

            public var reserveType: Int32?

            public var trainSeats: String?

            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.businessDiscount != nil {
                    map["business_discount"] = self.businessDiscount!
                }
                if self.economyDiscount != nil {
                    map["economy_discount"] = self.economyDiscount!
                }
                if self.firstDiscount != nil {
                    map["first_discount"] = self.firstDiscount!
                }
                if self.flightCabins != nil {
                    map["flight_cabins"] = self.flightCabins!
                }
                if self.hotelCitys != nil {
                    var tmp : [Any] = []
                    for k in self.hotelCitys! {
                        tmp.append(k.toMap())
                    }
                    map["hotel_citys"] = tmp
                }
                if self.reserveType != nil {
                    map["reserve_type"] = self.reserveType!
                }
                if self.trainSeats != nil {
                    map["train_seats"] = self.trainSeats!
                }
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("business_discount") {
                    self.businessDiscount = dict["business_discount"] as! Int32
                }
                if dict.keys.contains("economy_discount") {
                    self.economyDiscount = dict["economy_discount"] as! Int32
                }
                if dict.keys.contains("first_discount") {
                    self.firstDiscount = dict["first_discount"] as! Int32
                }
                if dict.keys.contains("flight_cabins") {
                    self.flightCabins = dict["flight_cabins"] as! String
                }
                if dict.keys.contains("hotel_citys") {
                    self.hotelCitys = dict["hotel_citys"] as! [ApplyQueryResponseBody.Module.TravelerList.HotelCitys]
                }
                if dict.keys.contains("reserve_type") {
                    self.reserveType = dict["reserve_type"] as! Int32
                }
                if dict.keys.contains("train_seats") {
                    self.trainSeats = dict["train_seats"] as! String
                }
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public var applyShowId: String?

        public var approverList: [ApplyQueryResponseBody.Module.ApproverList]?

        public var budget: Int64?

        public var budgetMerge: Int32?

        public var corpId: String?

        public var corpName: String?

        public var departId: String?

        public var departName: String?

        public var externalTravelerList: [ApplyQueryResponseBody.Module.ExternalTravelerList]?

        public var flightBudget: Int64?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var hotelBudget: Int64?

        public var hotelShare: ApplyQueryResponseBody.Module.HotelShare?

        public var id: Int64?

        public var itineraryList: [ApplyQueryResponseBody.Module.ItineraryList]?

        public var itineraryRule: Int32?

        public var itinerarySetList: [ApplyQueryResponseBody.Module.ItinerarySetList]?

        public var limitTraveler: Int32?

        public var status: Int32?

        public var statusDesc: String?

        public var thirdpartBusinessId: String?

        public var thirdpartId: String?

        public var togetherBookRule: Int32?

        public var trainBudget: Int64?

        public var travelerList: [ApplyQueryResponseBody.Module.TravelerList]?

        public var tripCause: String?

        public var tripDay: Int32?

        public var tripTitle: String?

        public var type: Int32?

        public var unionNo: String?

        public var userId: String?

        public var userName: String?

        public var vehicleBudget: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.hotelShare?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyShowId != nil {
                map["apply_show_id"] = self.applyShowId!
            }
            if self.approverList != nil {
                var tmp : [Any] = []
                for k in self.approverList! {
                    tmp.append(k.toMap())
                }
                map["approver_list"] = tmp
            }
            if self.budget != nil {
                map["budget"] = self.budget!
            }
            if self.budgetMerge != nil {
                map["budget_merge"] = self.budgetMerge!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.corpName != nil {
                map["corp_name"] = self.corpName!
            }
            if self.departId != nil {
                map["depart_id"] = self.departId!
            }
            if self.departName != nil {
                map["depart_name"] = self.departName!
            }
            if self.externalTravelerList != nil {
                var tmp : [Any] = []
                for k in self.externalTravelerList! {
                    tmp.append(k.toMap())
                }
                map["external_traveler_list"] = tmp
            }
            if self.flightBudget != nil {
                map["flight_budget"] = self.flightBudget!
            }
            if self.gmtCreate != nil {
                map["gmt_create"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmt_modified"] = self.gmtModified!
            }
            if self.hotelBudget != nil {
                map["hotel_budget"] = self.hotelBudget!
            }
            if self.hotelShare != nil {
                map["hotel_share"] = self.hotelShare?.toMap()
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.itineraryList != nil {
                var tmp : [Any] = []
                for k in self.itineraryList! {
                    tmp.append(k.toMap())
                }
                map["itinerary_list"] = tmp
            }
            if self.itineraryRule != nil {
                map["itinerary_rule"] = self.itineraryRule!
            }
            if self.itinerarySetList != nil {
                var tmp : [Any] = []
                for k in self.itinerarySetList! {
                    tmp.append(k.toMap())
                }
                map["itinerary_set_list"] = tmp
            }
            if self.limitTraveler != nil {
                map["limit_traveler"] = self.limitTraveler!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusDesc != nil {
                map["status_desc"] = self.statusDesc!
            }
            if self.thirdpartBusinessId != nil {
                map["thirdpart_business_id"] = self.thirdpartBusinessId!
            }
            if self.thirdpartId != nil {
                map["thirdpart_id"] = self.thirdpartId!
            }
            if self.togetherBookRule != nil {
                map["together_book_rule"] = self.togetherBookRule!
            }
            if self.trainBudget != nil {
                map["train_budget"] = self.trainBudget!
            }
            if self.travelerList != nil {
                var tmp : [Any] = []
                for k in self.travelerList! {
                    tmp.append(k.toMap())
                }
                map["traveler_list"] = tmp
            }
            if self.tripCause != nil {
                map["trip_cause"] = self.tripCause!
            }
            if self.tripDay != nil {
                map["trip_day"] = self.tripDay!
            }
            if self.tripTitle != nil {
                map["trip_title"] = self.tripTitle!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.unionNo != nil {
                map["union_no"] = self.unionNo!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            if self.vehicleBudget != nil {
                map["vehicle_budget"] = self.vehicleBudget!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_show_id") {
                self.applyShowId = dict["apply_show_id"] as! String
            }
            if dict.keys.contains("approver_list") {
                self.approverList = dict["approver_list"] as! [ApplyQueryResponseBody.Module.ApproverList]
            }
            if dict.keys.contains("budget") {
                self.budget = dict["budget"] as! Int64
            }
            if dict.keys.contains("budget_merge") {
                self.budgetMerge = dict["budget_merge"] as! Int32
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("corp_name") {
                self.corpName = dict["corp_name"] as! String
            }
            if dict.keys.contains("depart_id") {
                self.departId = dict["depart_id"] as! String
            }
            if dict.keys.contains("depart_name") {
                self.departName = dict["depart_name"] as! String
            }
            if dict.keys.contains("external_traveler_list") {
                self.externalTravelerList = dict["external_traveler_list"] as! [ApplyQueryResponseBody.Module.ExternalTravelerList]
            }
            if dict.keys.contains("flight_budget") {
                self.flightBudget = dict["flight_budget"] as! Int64
            }
            if dict.keys.contains("gmt_create") {
                self.gmtCreate = dict["gmt_create"] as! String
            }
            if dict.keys.contains("gmt_modified") {
                self.gmtModified = dict["gmt_modified"] as! String
            }
            if dict.keys.contains("hotel_budget") {
                self.hotelBudget = dict["hotel_budget"] as! Int64
            }
            if dict.keys.contains("hotel_share") {
                var model = ApplyQueryResponseBody.Module.HotelShare()
                model.fromMap(dict["hotel_share"] as! [String: Any])
                self.hotelShare = model
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("itinerary_list") {
                self.itineraryList = dict["itinerary_list"] as! [ApplyQueryResponseBody.Module.ItineraryList]
            }
            if dict.keys.contains("itinerary_rule") {
                self.itineraryRule = dict["itinerary_rule"] as! Int32
            }
            if dict.keys.contains("itinerary_set_list") {
                self.itinerarySetList = dict["itinerary_set_list"] as! [ApplyQueryResponseBody.Module.ItinerarySetList]
            }
            if dict.keys.contains("limit_traveler") {
                self.limitTraveler = dict["limit_traveler"] as! Int32
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("status_desc") {
                self.statusDesc = dict["status_desc"] as! String
            }
            if dict.keys.contains("thirdpart_business_id") {
                self.thirdpartBusinessId = dict["thirdpart_business_id"] as! String
            }
            if dict.keys.contains("thirdpart_id") {
                self.thirdpartId = dict["thirdpart_id"] as! String
            }
            if dict.keys.contains("together_book_rule") {
                self.togetherBookRule = dict["together_book_rule"] as! Int32
            }
            if dict.keys.contains("train_budget") {
                self.trainBudget = dict["train_budget"] as! Int64
            }
            if dict.keys.contains("traveler_list") {
                self.travelerList = dict["traveler_list"] as! [ApplyQueryResponseBody.Module.TravelerList]
            }
            if dict.keys.contains("trip_cause") {
                self.tripCause = dict["trip_cause"] as! String
            }
            if dict.keys.contains("trip_day") {
                self.tripDay = dict["trip_day"] as! Int32
            }
            if dict.keys.contains("trip_title") {
                self.tripTitle = dict["trip_title"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("union_no") {
                self.unionNo = dict["union_no"] as! String
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
            if dict.keys.contains("vehicle_budget") {
                self.vehicleBudget = dict["vehicle_budget"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: ApplyQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = ApplyQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class ApplyQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ApplyQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CarApplyAddHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CarApplyAddRequest : Tea.TeaModel {
    public var cause: String?

    public var city: String?

    public var date: String?

    public var finishedDate: String?

    public var projectCode: String?

    public var projectName: String?

    public var status: Int32?

    public var thirdPartApplyId: String?

    public var thirdPartCostCenterId: String?

    public var thirdPartInvoiceId: String?

    public var timesTotal: Int32?

    public var timesType: Int32?

    public var timesUsed: Int32?

    public var title: String?

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
        if self.cause != nil {
            map["cause"] = self.cause!
        }
        if self.city != nil {
            map["city"] = self.city!
        }
        if self.date != nil {
            map["date"] = self.date!
        }
        if self.finishedDate != nil {
            map["finished_date"] = self.finishedDate!
        }
        if self.projectCode != nil {
            map["project_code"] = self.projectCode!
        }
        if self.projectName != nil {
            map["project_name"] = self.projectName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.thirdPartApplyId != nil {
            map["third_part_apply_id"] = self.thirdPartApplyId!
        }
        if self.thirdPartCostCenterId != nil {
            map["third_part_cost_center_id"] = self.thirdPartCostCenterId!
        }
        if self.thirdPartInvoiceId != nil {
            map["third_part_invoice_id"] = self.thirdPartInvoiceId!
        }
        if self.timesTotal != nil {
            map["times_total"] = self.timesTotal!
        }
        if self.timesType != nil {
            map["times_type"] = self.timesType!
        }
        if self.timesUsed != nil {
            map["times_used"] = self.timesUsed!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cause") {
            self.cause = dict["cause"] as! String
        }
        if dict.keys.contains("city") {
            self.city = dict["city"] as! String
        }
        if dict.keys.contains("date") {
            self.date = dict["date"] as! String
        }
        if dict.keys.contains("finished_date") {
            self.finishedDate = dict["finished_date"] as! String
        }
        if dict.keys.contains("project_code") {
            self.projectCode = dict["project_code"] as! String
        }
        if dict.keys.contains("project_name") {
            self.projectName = dict["project_name"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("third_part_apply_id") {
            self.thirdPartApplyId = dict["third_part_apply_id"] as! String
        }
        if dict.keys.contains("third_part_cost_center_id") {
            self.thirdPartCostCenterId = dict["third_part_cost_center_id"] as! String
        }
        if dict.keys.contains("third_part_invoice_id") {
            self.thirdPartInvoiceId = dict["third_part_invoice_id"] as! String
        }
        if dict.keys.contains("times_total") {
            self.timesTotal = dict["times_total"] as! Int32
        }
        if dict.keys.contains("times_type") {
            self.timesType = dict["times_type"] as! Int32
        }
        if dict.keys.contains("times_used") {
            self.timesUsed = dict["times_used"] as! Int32
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class CarApplyAddResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: Int64?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            map["module"] = self.module!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CarApplyAddResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CarApplyAddResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CarApplyAddResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CarApplyModifyHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CarApplyModifyRequest : Tea.TeaModel {
    public var operateTime: String?

    public var remark: String?

    public var status: Int32?

    public var thirdPartApplyId: String?

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
        if self.operateTime != nil {
            map["operate_time"] = self.operateTime!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.thirdPartApplyId != nil {
            map["third_part_apply_id"] = self.thirdPartApplyId!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("operate_time") {
            self.operateTime = dict["operate_time"] as! String
        }
        if dict.keys.contains("remark") {
            self.remark = dict["remark"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("third_part_apply_id") {
            self.thirdPartApplyId = dict["third_part_apply_id"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class CarApplyModifyResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: Bool?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            map["module"] = self.module!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CarApplyModifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CarApplyModifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CarApplyModifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CarApplyQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CarApplyQueryRequest : Tea.TeaModel {
    public var createdEndAt: String?

    public var createdStartAt: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var thirdPartApplyId: String?

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
        if self.createdEndAt != nil {
            map["created_end_at"] = self.createdEndAt!
        }
        if self.createdStartAt != nil {
            map["created_start_at"] = self.createdStartAt!
        }
        if self.pageNumber != nil {
            map["page_number"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.thirdPartApplyId != nil {
            map["third_part_apply_id"] = self.thirdPartApplyId!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("created_end_at") {
            self.createdEndAt = dict["created_end_at"] as! String
        }
        if dict.keys.contains("created_start_at") {
            self.createdStartAt = dict["created_start_at"] as! String
        }
        if dict.keys.contains("page_number") {
            self.pageNumber = dict["page_number"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("third_part_apply_id") {
            self.thirdPartApplyId = dict["third_part_apply_id"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class CarApplyQueryResponseBody : Tea.TeaModel {
    public class ApplyList : Tea.TeaModel {
        public class ApproverList : Tea.TeaModel {
            public var note: String?

            public var operateTime: String?

            public var order: Int32?

            public var status: Int32?

            public var statusDesc: String?

            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.note != nil {
                    map["note"] = self.note!
                }
                if self.operateTime != nil {
                    map["operate_time"] = self.operateTime!
                }
                if self.order != nil {
                    map["order"] = self.order!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.statusDesc != nil {
                    map["status_desc"] = self.statusDesc!
                }
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("note") {
                    self.note = dict["note"] as! String
                }
                if dict.keys.contains("operate_time") {
                    self.operateTime = dict["operate_time"] as! String
                }
                if dict.keys.contains("order") {
                    self.order = dict["order"] as! Int32
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("status_desc") {
                    self.statusDesc = dict["status_desc"] as! String
                }
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public class ItineraryList : Tea.TeaModel {
            public var arrCity: String?

            public var arrCityCode: String?

            public var arrDate: String?

            public var costCenterId: Int64?

            public var costCenterName: String?

            public var depCity: String?

            public var depCityCode: String?

            public var depDate: String?

            public var invoiceId: Int64?

            public var invoiceName: String?

            public var itineraryId: String?

            public var projectCode: String?

            public var projectTitle: String?

            public var trafficType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrCity != nil {
                    map["arr_city"] = self.arrCity!
                }
                if self.arrCityCode != nil {
                    map["arr_city_code"] = self.arrCityCode!
                }
                if self.arrDate != nil {
                    map["arr_date"] = self.arrDate!
                }
                if self.costCenterId != nil {
                    map["cost_center_id"] = self.costCenterId!
                }
                if self.costCenterName != nil {
                    map["cost_center_name"] = self.costCenterName!
                }
                if self.depCity != nil {
                    map["dep_city"] = self.depCity!
                }
                if self.depCityCode != nil {
                    map["dep_city_code"] = self.depCityCode!
                }
                if self.depDate != nil {
                    map["dep_date"] = self.depDate!
                }
                if self.invoiceId != nil {
                    map["invoice_id"] = self.invoiceId!
                }
                if self.invoiceName != nil {
                    map["invoice_name"] = self.invoiceName!
                }
                if self.itineraryId != nil {
                    map["itinerary_id"] = self.itineraryId!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectTitle != nil {
                    map["project_title"] = self.projectTitle!
                }
                if self.trafficType != nil {
                    map["traffic_type"] = self.trafficType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arr_city") {
                    self.arrCity = dict["arr_city"] as! String
                }
                if dict.keys.contains("arr_city_code") {
                    self.arrCityCode = dict["arr_city_code"] as! String
                }
                if dict.keys.contains("arr_date") {
                    self.arrDate = dict["arr_date"] as! String
                }
                if dict.keys.contains("cost_center_id") {
                    self.costCenterId = dict["cost_center_id"] as! Int64
                }
                if dict.keys.contains("cost_center_name") {
                    self.costCenterName = dict["cost_center_name"] as! String
                }
                if dict.keys.contains("dep_city") {
                    self.depCity = dict["dep_city"] as! String
                }
                if dict.keys.contains("dep_city_code") {
                    self.depCityCode = dict["dep_city_code"] as! String
                }
                if dict.keys.contains("dep_date") {
                    self.depDate = dict["dep_date"] as! String
                }
                if dict.keys.contains("invoice_id") {
                    self.invoiceId = dict["invoice_id"] as! Int64
                }
                if dict.keys.contains("invoice_name") {
                    self.invoiceName = dict["invoice_name"] as! String
                }
                if dict.keys.contains("itinerary_id") {
                    self.itineraryId = dict["itinerary_id"] as! String
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_title") {
                    self.projectTitle = dict["project_title"] as! String
                }
                if dict.keys.contains("traffic_type") {
                    self.trafficType = dict["traffic_type"] as! Int32
                }
            }
        }
        public var approverList: [CarApplyQueryResponseBody.ApplyList.ApproverList]?

        public var departId: String?

        public var departName: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var itineraryList: [CarApplyQueryResponseBody.ApplyList.ItineraryList]?

        public var status: Int32?

        public var statusDesc: String?

        public var thirdpartId: String?

        public var tripCause: String?

        public var tripTitle: String?

        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approverList != nil {
                var tmp : [Any] = []
                for k in self.approverList! {
                    tmp.append(k.toMap())
                }
                map["approver_list"] = tmp
            }
            if self.departId != nil {
                map["depart_id"] = self.departId!
            }
            if self.departName != nil {
                map["depart_name"] = self.departName!
            }
            if self.gmtCreate != nil {
                map["gmt_create"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmt_modified"] = self.gmtModified!
            }
            if self.itineraryList != nil {
                var tmp : [Any] = []
                for k in self.itineraryList! {
                    tmp.append(k.toMap())
                }
                map["itinerary_list"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusDesc != nil {
                map["status_desc"] = self.statusDesc!
            }
            if self.thirdpartId != nil {
                map["thirdpart_id"] = self.thirdpartId!
            }
            if self.tripCause != nil {
                map["trip_cause"] = self.tripCause!
            }
            if self.tripTitle != nil {
                map["trip_title"] = self.tripTitle!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("approver_list") {
                self.approverList = dict["approver_list"] as! [CarApplyQueryResponseBody.ApplyList.ApproverList]
            }
            if dict.keys.contains("depart_id") {
                self.departId = dict["depart_id"] as! String
            }
            if dict.keys.contains("depart_name") {
                self.departName = dict["depart_name"] as! String
            }
            if dict.keys.contains("gmt_create") {
                self.gmtCreate = dict["gmt_create"] as! String
            }
            if dict.keys.contains("gmt_modified") {
                self.gmtModified = dict["gmt_modified"] as! String
            }
            if dict.keys.contains("itinerary_list") {
                self.itineraryList = dict["itinerary_list"] as! [CarApplyQueryResponseBody.ApplyList.ItineraryList]
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("status_desc") {
                self.statusDesc = dict["status_desc"] as! String
            }
            if dict.keys.contains("thirdpart_id") {
                self.thirdpartId = dict["thirdpart_id"] as! String
            }
            if dict.keys.contains("trip_cause") {
                self.tripCause = dict["trip_cause"] as! String
            }
            if dict.keys.contains("trip_title") {
                self.tripTitle = dict["trip_title"] as! String
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public var applyList: [CarApplyQueryResponseBody.ApplyList]?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyList != nil {
            var tmp : [Any] = []
            for k in self.applyList! {
                tmp.append(k.toMap())
            }
            map["apply_list"] = tmp
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apply_list") {
            self.applyList = dict["apply_list"] as! [CarApplyQueryResponseBody.ApplyList]
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CarApplyQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CarApplyQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CarApplyQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CarBillSettlementQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CarBillSettlementQueryRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var periodEnd: String?

    public var periodStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["page_no"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.periodEnd != nil {
            map["period_end"] = self.periodEnd!
        }
        if self.periodStart != nil {
            map["period_start"] = self.periodStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_no") {
            self.pageNo = dict["page_no"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("period_end") {
            self.periodEnd = dict["period_end"] as! String
        }
        if dict.keys.contains("period_start") {
            self.periodStart = dict["period_start"] as! String
        }
    }
}

public class CarBillSettlementQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class DataList : Tea.TeaModel {
            public var alipayTradeNo: String?

            public var applyId: String?

            public var arrCity: String?

            public var arrDate: String?

            public var arrLocation: String?

            public var arrTime: String?

            public var billRecordTime: String?

            public var bookTime: String?

            public var bookerId: String?

            public var bookerJobNo: String?

            public var bookerName: String?

            public var businessCategory: String?

            public var capitalDirection: String?

            public var carLevel: String?

            public var cascadeDepartment: String?

            public var costCenter: String?

            public var costCenterNumber: String?

            public var coupon: Double?

            public var couponPrice: Double?

            public var department: String?

            public var departmentId: String?

            public var deptCity: String?

            public var deptDate: String?

            public var deptLocation: String?

            public var deptTime: String?

            public var estimateDriveDistance: String?

            public var estimatePrice: Double?

            public var feeType: String?

            public var index: String?

            public var invoiceTitle: String?

            public var memo: String?

            public var orderId: String?

            public var orderPrice: Double?

            public var overApplyId: String?

            public var personSettleFee: Double?

            public var primaryId: Int64?

            public var projectCode: String?

            public var projectName: String?

            public var providerName: String?

            public var realDriveDistance: String?

            public var realFromAddr: String?

            public var realToAddr: String?

            public var remark: String?

            public var serviceFee: Double?

            public var settlementFee: Double?

            public var settlementGrantFee: Double?

            public var settlementTime: String?

            public var settlementType: String?

            public var specialOrder: String?

            public var specialReason: String?

            public var status: Int32?

            public var subOrderId: String?

            public var travelerId: String?

            public var travelerJobNo: String?

            public var travelerName: String?

            public var userConfirmDesc: String?

            public var voucherType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alipayTradeNo != nil {
                    map["alipay_trade_no"] = self.alipayTradeNo!
                }
                if self.applyId != nil {
                    map["apply_id"] = self.applyId!
                }
                if self.arrCity != nil {
                    map["arr_city"] = self.arrCity!
                }
                if self.arrDate != nil {
                    map["arr_date"] = self.arrDate!
                }
                if self.arrLocation != nil {
                    map["arr_location"] = self.arrLocation!
                }
                if self.arrTime != nil {
                    map["arr_time"] = self.arrTime!
                }
                if self.billRecordTime != nil {
                    map["bill_record_time"] = self.billRecordTime!
                }
                if self.bookTime != nil {
                    map["book_time"] = self.bookTime!
                }
                if self.bookerId != nil {
                    map["booker_id"] = self.bookerId!
                }
                if self.bookerJobNo != nil {
                    map["booker_job_no"] = self.bookerJobNo!
                }
                if self.bookerName != nil {
                    map["booker_name"] = self.bookerName!
                }
                if self.businessCategory != nil {
                    map["business_category"] = self.businessCategory!
                }
                if self.capitalDirection != nil {
                    map["capital_direction"] = self.capitalDirection!
                }
                if self.carLevel != nil {
                    map["car_level"] = self.carLevel!
                }
                if self.cascadeDepartment != nil {
                    map["cascade_department"] = self.cascadeDepartment!
                }
                if self.costCenter != nil {
                    map["cost_center"] = self.costCenter!
                }
                if self.costCenterNumber != nil {
                    map["cost_center_number"] = self.costCenterNumber!
                }
                if self.coupon != nil {
                    map["coupon"] = self.coupon!
                }
                if self.couponPrice != nil {
                    map["coupon_price"] = self.couponPrice!
                }
                if self.department != nil {
                    map["department"] = self.department!
                }
                if self.departmentId != nil {
                    map["department_id"] = self.departmentId!
                }
                if self.deptCity != nil {
                    map["dept_city"] = self.deptCity!
                }
                if self.deptDate != nil {
                    map["dept_date"] = self.deptDate!
                }
                if self.deptLocation != nil {
                    map["dept_location"] = self.deptLocation!
                }
                if self.deptTime != nil {
                    map["dept_time"] = self.deptTime!
                }
                if self.estimateDriveDistance != nil {
                    map["estimate_drive_distance"] = self.estimateDriveDistance!
                }
                if self.estimatePrice != nil {
                    map["estimate_price"] = self.estimatePrice!
                }
                if self.feeType != nil {
                    map["fee_type"] = self.feeType!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.invoiceTitle != nil {
                    map["invoice_title"] = self.invoiceTitle!
                }
                if self.memo != nil {
                    map["memo"] = self.memo!
                }
                if self.orderId != nil {
                    map["order_id"] = self.orderId!
                }
                if self.orderPrice != nil {
                    map["order_price"] = self.orderPrice!
                }
                if self.overApplyId != nil {
                    map["over_apply_id"] = self.overApplyId!
                }
                if self.personSettleFee != nil {
                    map["person_settle_fee"] = self.personSettleFee!
                }
                if self.primaryId != nil {
                    map["primary_id"] = self.primaryId!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectName != nil {
                    map["project_name"] = self.projectName!
                }
                if self.providerName != nil {
                    map["provider_name"] = self.providerName!
                }
                if self.realDriveDistance != nil {
                    map["real_drive_distance"] = self.realDriveDistance!
                }
                if self.realFromAddr != nil {
                    map["real_from_addr"] = self.realFromAddr!
                }
                if self.realToAddr != nil {
                    map["real_to_addr"] = self.realToAddr!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                if self.serviceFee != nil {
                    map["service_fee"] = self.serviceFee!
                }
                if self.settlementFee != nil {
                    map["settlement_fee"] = self.settlementFee!
                }
                if self.settlementGrantFee != nil {
                    map["settlement_grant_fee"] = self.settlementGrantFee!
                }
                if self.settlementTime != nil {
                    map["settlement_time"] = self.settlementTime!
                }
                if self.settlementType != nil {
                    map["settlement_type"] = self.settlementType!
                }
                if self.specialOrder != nil {
                    map["special_order"] = self.specialOrder!
                }
                if self.specialReason != nil {
                    map["special_reason"] = self.specialReason!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.subOrderId != nil {
                    map["sub_order_id"] = self.subOrderId!
                }
                if self.travelerId != nil {
                    map["traveler_id"] = self.travelerId!
                }
                if self.travelerJobNo != nil {
                    map["traveler_job_no"] = self.travelerJobNo!
                }
                if self.travelerName != nil {
                    map["traveler_name"] = self.travelerName!
                }
                if self.userConfirmDesc != nil {
                    map["user_confirm_desc"] = self.userConfirmDesc!
                }
                if self.voucherType != nil {
                    map["voucher_type"] = self.voucherType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("alipay_trade_no") {
                    self.alipayTradeNo = dict["alipay_trade_no"] as! String
                }
                if dict.keys.contains("apply_id") {
                    self.applyId = dict["apply_id"] as! String
                }
                if dict.keys.contains("arr_city") {
                    self.arrCity = dict["arr_city"] as! String
                }
                if dict.keys.contains("arr_date") {
                    self.arrDate = dict["arr_date"] as! String
                }
                if dict.keys.contains("arr_location") {
                    self.arrLocation = dict["arr_location"] as! String
                }
                if dict.keys.contains("arr_time") {
                    self.arrTime = dict["arr_time"] as! String
                }
                if dict.keys.contains("bill_record_time") {
                    self.billRecordTime = dict["bill_record_time"] as! String
                }
                if dict.keys.contains("book_time") {
                    self.bookTime = dict["book_time"] as! String
                }
                if dict.keys.contains("booker_id") {
                    self.bookerId = dict["booker_id"] as! String
                }
                if dict.keys.contains("booker_job_no") {
                    self.bookerJobNo = dict["booker_job_no"] as! String
                }
                if dict.keys.contains("booker_name") {
                    self.bookerName = dict["booker_name"] as! String
                }
                if dict.keys.contains("business_category") {
                    self.businessCategory = dict["business_category"] as! String
                }
                if dict.keys.contains("capital_direction") {
                    self.capitalDirection = dict["capital_direction"] as! String
                }
                if dict.keys.contains("car_level") {
                    self.carLevel = dict["car_level"] as! String
                }
                if dict.keys.contains("cascade_department") {
                    self.cascadeDepartment = dict["cascade_department"] as! String
                }
                if dict.keys.contains("cost_center") {
                    self.costCenter = dict["cost_center"] as! String
                }
                if dict.keys.contains("cost_center_number") {
                    self.costCenterNumber = dict["cost_center_number"] as! String
                }
                if dict.keys.contains("coupon") {
                    self.coupon = dict["coupon"] as! Double
                }
                if dict.keys.contains("coupon_price") {
                    self.couponPrice = dict["coupon_price"] as! Double
                }
                if dict.keys.contains("department") {
                    self.department = dict["department"] as! String
                }
                if dict.keys.contains("department_id") {
                    self.departmentId = dict["department_id"] as! String
                }
                if dict.keys.contains("dept_city") {
                    self.deptCity = dict["dept_city"] as! String
                }
                if dict.keys.contains("dept_date") {
                    self.deptDate = dict["dept_date"] as! String
                }
                if dict.keys.contains("dept_location") {
                    self.deptLocation = dict["dept_location"] as! String
                }
                if dict.keys.contains("dept_time") {
                    self.deptTime = dict["dept_time"] as! String
                }
                if dict.keys.contains("estimate_drive_distance") {
                    self.estimateDriveDistance = dict["estimate_drive_distance"] as! String
                }
                if dict.keys.contains("estimate_price") {
                    self.estimatePrice = dict["estimate_price"] as! Double
                }
                if dict.keys.contains("fee_type") {
                    self.feeType = dict["fee_type"] as! String
                }
                if dict.keys.contains("index") {
                    self.index = dict["index"] as! String
                }
                if dict.keys.contains("invoice_title") {
                    self.invoiceTitle = dict["invoice_title"] as! String
                }
                if dict.keys.contains("memo") {
                    self.memo = dict["memo"] as! String
                }
                if dict.keys.contains("order_id") {
                    self.orderId = dict["order_id"] as! String
                }
                if dict.keys.contains("order_price") {
                    self.orderPrice = dict["order_price"] as! Double
                }
                if dict.keys.contains("over_apply_id") {
                    self.overApplyId = dict["over_apply_id"] as! String
                }
                if dict.keys.contains("person_settle_fee") {
                    self.personSettleFee = dict["person_settle_fee"] as! Double
                }
                if dict.keys.contains("primary_id") {
                    self.primaryId = dict["primary_id"] as! Int64
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_name") {
                    self.projectName = dict["project_name"] as! String
                }
                if dict.keys.contains("provider_name") {
                    self.providerName = dict["provider_name"] as! String
                }
                if dict.keys.contains("real_drive_distance") {
                    self.realDriveDistance = dict["real_drive_distance"] as! String
                }
                if dict.keys.contains("real_from_addr") {
                    self.realFromAddr = dict["real_from_addr"] as! String
                }
                if dict.keys.contains("real_to_addr") {
                    self.realToAddr = dict["real_to_addr"] as! String
                }
                if dict.keys.contains("remark") {
                    self.remark = dict["remark"] as! String
                }
                if dict.keys.contains("service_fee") {
                    self.serviceFee = dict["service_fee"] as! Double
                }
                if dict.keys.contains("settlement_fee") {
                    self.settlementFee = dict["settlement_fee"] as! Double
                }
                if dict.keys.contains("settlement_grant_fee") {
                    self.settlementGrantFee = dict["settlement_grant_fee"] as! Double
                }
                if dict.keys.contains("settlement_time") {
                    self.settlementTime = dict["settlement_time"] as! String
                }
                if dict.keys.contains("settlement_type") {
                    self.settlementType = dict["settlement_type"] as! String
                }
                if dict.keys.contains("special_order") {
                    self.specialOrder = dict["special_order"] as! String
                }
                if dict.keys.contains("special_reason") {
                    self.specialReason = dict["special_reason"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("sub_order_id") {
                    self.subOrderId = dict["sub_order_id"] as! String
                }
                if dict.keys.contains("traveler_id") {
                    self.travelerId = dict["traveler_id"] as! String
                }
                if dict.keys.contains("traveler_job_no") {
                    self.travelerJobNo = dict["traveler_job_no"] as! String
                }
                if dict.keys.contains("traveler_name") {
                    self.travelerName = dict["traveler_name"] as! String
                }
                if dict.keys.contains("user_confirm_desc") {
                    self.userConfirmDesc = dict["user_confirm_desc"] as! String
                }
                if dict.keys.contains("voucher_type") {
                    self.voucherType = dict["voucher_type"] as! Int32
                }
            }
        }
        public var category: Int32?

        public var corpId: String?

        public var dataList: [CarBillSettlementQueryResponseBody.Module.DataList]?

        public var periodEnd: String?

        public var periodStart: String?

        public var totalNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.dataList != nil {
                var tmp : [Any] = []
                for k in self.dataList! {
                    tmp.append(k.toMap())
                }
                map["data_list"] = tmp
            }
            if self.periodEnd != nil {
                map["period_end"] = self.periodEnd!
            }
            if self.periodStart != nil {
                map["period_start"] = self.periodStart!
            }
            if self.totalNum != nil {
                map["total_num"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") {
                self.category = dict["category"] as! Int32
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("data_list") {
                self.dataList = dict["data_list"] as! [CarBillSettlementQueryResponseBody.Module.DataList]
            }
            if dict.keys.contains("period_end") {
                self.periodEnd = dict["period_end"] as! String
            }
            if dict.keys.contains("period_start") {
                self.periodStart = dict["period_start"] as! String
            }
            if dict.keys.contains("total_num") {
                self.totalNum = dict["total_num"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: CarBillSettlementQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = CarBillSettlementQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CarBillSettlementQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CarBillSettlementQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CarBillSettlementQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CarOrderListQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CarOrderListQueryRequest : Tea.TeaModel {
    public var allApply: Bool?

    public var applyId: Int64?

    public var departId: String?

    public var endTime: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var thirdpartApplyId: String?

    public var updateEndTime: String?

    public var updateStartTime: String?

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
        if self.allApply != nil {
            map["all_apply"] = self.allApply!
        }
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        if self.departId != nil {
            map["depart_id"] = self.departId!
        }
        if self.endTime != nil {
            map["end_time"] = self.endTime!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.startTime != nil {
            map["start_time"] = self.startTime!
        }
        if self.thirdpartApplyId != nil {
            map["thirdpart_apply_id"] = self.thirdpartApplyId!
        }
        if self.updateEndTime != nil {
            map["update_end_time"] = self.updateEndTime!
        }
        if self.updateStartTime != nil {
            map["update_start_time"] = self.updateStartTime!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all_apply") {
            self.allApply = dict["all_apply"] as! Bool
        }
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int64
        }
        if dict.keys.contains("depart_id") {
            self.departId = dict["depart_id"] as! String
        }
        if dict.keys.contains("end_time") {
            self.endTime = dict["end_time"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("start_time") {
            self.startTime = dict["start_time"] as! String
        }
        if dict.keys.contains("thirdpart_apply_id") {
            self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
        }
        if dict.keys.contains("update_end_time") {
            self.updateEndTime = dict["update_end_time"] as! String
        }
        if dict.keys.contains("update_start_time") {
            self.updateStartTime = dict["update_start_time"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class CarOrderListQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class PriceInfoList : Tea.TeaModel {
            public var categoryCode: Int32?

            public var categoryType: Int32?

            public var gmtCreate: String?

            public var passengerName: String?

            public var payType: Int32?

            public var personPrice: Double?

            public var price: Double?

            public var tradeId: String?

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
                if self.categoryCode != nil {
                    map["category_code"] = self.categoryCode!
                }
                if self.categoryType != nil {
                    map["category_type"] = self.categoryType!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.passengerName != nil {
                    map["passenger_name"] = self.passengerName!
                }
                if self.payType != nil {
                    map["pay_type"] = self.payType!
                }
                if self.personPrice != nil {
                    map["person_price"] = self.personPrice!
                }
                if self.price != nil {
                    map["price"] = self.price!
                }
                if self.tradeId != nil {
                    map["trade_id"] = self.tradeId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category_code") {
                    self.categoryCode = dict["category_code"] as! Int32
                }
                if dict.keys.contains("category_type") {
                    self.categoryType = dict["category_type"] as! Int32
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("passenger_name") {
                    self.passengerName = dict["passenger_name"] as! String
                }
                if dict.keys.contains("pay_type") {
                    self.payType = dict["pay_type"] as! Int32
                }
                if dict.keys.contains("person_price") {
                    self.personPrice = dict["person_price"] as! Double
                }
                if dict.keys.contains("price") {
                    self.price = dict["price"] as! Double
                }
                if dict.keys.contains("trade_id") {
                    self.tradeId = dict["trade_id"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public class UserAffiliateList : Tea.TeaModel {
            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public var applyId: Int64?

        public var applyShowId: String?

        public var btripTitle: String?

        public var businessCategory: String?

        public var cancelTime: String?

        public var carInfo: String?

        public var carLevel: Int32?

        public var corpId: String?

        public var corpName: String?

        public var costCenterId: Int64?

        public var costCenterName: String?

        public var costCenterNumber: String?

        public var deptId: Int64?

        public var deptName: String?

        public var driverConfirmTime: String?

        public var estimatePrice: Double?

        public var fromAddress: String?

        public var fromCityName: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var invoiceId: Int64?

        public var invoiceTitle: String?

        public var isSpecial: Bool?

        public var memo: String?

        public var orderStatus: Int32?

        public var passengerName: String?

        public var payTime: String?

        public var priceInfoList: [CarOrderListQueryResponseBody.Module.PriceInfoList]?

        public var projectCode: String?

        public var projectId: Int64?

        public var projectTitle: String?

        public var provider: Int32?

        public var publishTime: String?

        public var realFromAddress: String?

        public var realFromCityName: String?

        public var realToAddress: String?

        public var realToCityName: String?

        public var serviceType: Int32?

        public var specialTypes: [String]?

        public var takenTime: String?

        public var thirdpartApplyId: String?

        public var thirdpartItineraryId: String?

        public var toAddress: String?

        public var toCityName: String?

        public var travelDistance: Double?

        public var userAffiliateList: [CarOrderListQueryResponseBody.Module.UserAffiliateList]?

        public var userConfirm: Int32?

        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["apply_id"] = self.applyId!
            }
            if self.applyShowId != nil {
                map["apply_show_id"] = self.applyShowId!
            }
            if self.btripTitle != nil {
                map["btrip_title"] = self.btripTitle!
            }
            if self.businessCategory != nil {
                map["business_category"] = self.businessCategory!
            }
            if self.cancelTime != nil {
                map["cancel_time"] = self.cancelTime!
            }
            if self.carInfo != nil {
                map["car_info"] = self.carInfo!
            }
            if self.carLevel != nil {
                map["car_level"] = self.carLevel!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.corpName != nil {
                map["corp_name"] = self.corpName!
            }
            if self.costCenterId != nil {
                map["cost_center_id"] = self.costCenterId!
            }
            if self.costCenterName != nil {
                map["cost_center_name"] = self.costCenterName!
            }
            if self.costCenterNumber != nil {
                map["cost_center_number"] = self.costCenterNumber!
            }
            if self.deptId != nil {
                map["dept_id"] = self.deptId!
            }
            if self.deptName != nil {
                map["dept_name"] = self.deptName!
            }
            if self.driverConfirmTime != nil {
                map["driver_confirm_time"] = self.driverConfirmTime!
            }
            if self.estimatePrice != nil {
                map["estimate_price"] = self.estimatePrice!
            }
            if self.fromAddress != nil {
                map["from_address"] = self.fromAddress!
            }
            if self.fromCityName != nil {
                map["from_city_name"] = self.fromCityName!
            }
            if self.gmtCreate != nil {
                map["gmt_create"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmt_modified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.invoiceId != nil {
                map["invoice_id"] = self.invoiceId!
            }
            if self.invoiceTitle != nil {
                map["invoice_title"] = self.invoiceTitle!
            }
            if self.isSpecial != nil {
                map["is_special"] = self.isSpecial!
            }
            if self.memo != nil {
                map["memo"] = self.memo!
            }
            if self.orderStatus != nil {
                map["order_status"] = self.orderStatus!
            }
            if self.passengerName != nil {
                map["passenger_name"] = self.passengerName!
            }
            if self.payTime != nil {
                map["pay_time"] = self.payTime!
            }
            if self.priceInfoList != nil {
                var tmp : [Any] = []
                for k in self.priceInfoList! {
                    tmp.append(k.toMap())
                }
                map["price_info_list"] = tmp
            }
            if self.projectCode != nil {
                map["project_code"] = self.projectCode!
            }
            if self.projectId != nil {
                map["project_id"] = self.projectId!
            }
            if self.projectTitle != nil {
                map["project_title"] = self.projectTitle!
            }
            if self.provider != nil {
                map["provider"] = self.provider!
            }
            if self.publishTime != nil {
                map["publish_time"] = self.publishTime!
            }
            if self.realFromAddress != nil {
                map["real_from_address"] = self.realFromAddress!
            }
            if self.realFromCityName != nil {
                map["real_from_city_name"] = self.realFromCityName!
            }
            if self.realToAddress != nil {
                map["real_to_address"] = self.realToAddress!
            }
            if self.realToCityName != nil {
                map["real_to_city_name"] = self.realToCityName!
            }
            if self.serviceType != nil {
                map["service_type"] = self.serviceType!
            }
            if self.specialTypes != nil {
                map["special_types"] = self.specialTypes!
            }
            if self.takenTime != nil {
                map["taken_time"] = self.takenTime!
            }
            if self.thirdpartApplyId != nil {
                map["thirdpart_apply_id"] = self.thirdpartApplyId!
            }
            if self.thirdpartItineraryId != nil {
                map["thirdpart_itinerary_id"] = self.thirdpartItineraryId!
            }
            if self.toAddress != nil {
                map["to_address"] = self.toAddress!
            }
            if self.toCityName != nil {
                map["to_city_name"] = self.toCityName!
            }
            if self.travelDistance != nil {
                map["travel_distance"] = self.travelDistance!
            }
            if self.userAffiliateList != nil {
                var tmp : [Any] = []
                for k in self.userAffiliateList! {
                    tmp.append(k.toMap())
                }
                map["user_affiliate_list"] = tmp
            }
            if self.userConfirm != nil {
                map["user_confirm"] = self.userConfirm!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_id") {
                self.applyId = dict["apply_id"] as! Int64
            }
            if dict.keys.contains("apply_show_id") {
                self.applyShowId = dict["apply_show_id"] as! String
            }
            if dict.keys.contains("btrip_title") {
                self.btripTitle = dict["btrip_title"] as! String
            }
            if dict.keys.contains("business_category") {
                self.businessCategory = dict["business_category"] as! String
            }
            if dict.keys.contains("cancel_time") {
                self.cancelTime = dict["cancel_time"] as! String
            }
            if dict.keys.contains("car_info") {
                self.carInfo = dict["car_info"] as! String
            }
            if dict.keys.contains("car_level") {
                self.carLevel = dict["car_level"] as! Int32
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("corp_name") {
                self.corpName = dict["corp_name"] as! String
            }
            if dict.keys.contains("cost_center_id") {
                self.costCenterId = dict["cost_center_id"] as! Int64
            }
            if dict.keys.contains("cost_center_name") {
                self.costCenterName = dict["cost_center_name"] as! String
            }
            if dict.keys.contains("cost_center_number") {
                self.costCenterNumber = dict["cost_center_number"] as! String
            }
            if dict.keys.contains("dept_id") {
                self.deptId = dict["dept_id"] as! Int64
            }
            if dict.keys.contains("dept_name") {
                self.deptName = dict["dept_name"] as! String
            }
            if dict.keys.contains("driver_confirm_time") {
                self.driverConfirmTime = dict["driver_confirm_time"] as! String
            }
            if dict.keys.contains("estimate_price") {
                self.estimatePrice = dict["estimate_price"] as! Double
            }
            if dict.keys.contains("from_address") {
                self.fromAddress = dict["from_address"] as! String
            }
            if dict.keys.contains("from_city_name") {
                self.fromCityName = dict["from_city_name"] as! String
            }
            if dict.keys.contains("gmt_create") {
                self.gmtCreate = dict["gmt_create"] as! String
            }
            if dict.keys.contains("gmt_modified") {
                self.gmtModified = dict["gmt_modified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("invoice_id") {
                self.invoiceId = dict["invoice_id"] as! Int64
            }
            if dict.keys.contains("invoice_title") {
                self.invoiceTitle = dict["invoice_title"] as! String
            }
            if dict.keys.contains("is_special") {
                self.isSpecial = dict["is_special"] as! Bool
            }
            if dict.keys.contains("memo") {
                self.memo = dict["memo"] as! String
            }
            if dict.keys.contains("order_status") {
                self.orderStatus = dict["order_status"] as! Int32
            }
            if dict.keys.contains("passenger_name") {
                self.passengerName = dict["passenger_name"] as! String
            }
            if dict.keys.contains("pay_time") {
                self.payTime = dict["pay_time"] as! String
            }
            if dict.keys.contains("price_info_list") {
                self.priceInfoList = dict["price_info_list"] as! [CarOrderListQueryResponseBody.Module.PriceInfoList]
            }
            if dict.keys.contains("project_code") {
                self.projectCode = dict["project_code"] as! String
            }
            if dict.keys.contains("project_id") {
                self.projectId = dict["project_id"] as! Int64
            }
            if dict.keys.contains("project_title") {
                self.projectTitle = dict["project_title"] as! String
            }
            if dict.keys.contains("provider") {
                self.provider = dict["provider"] as! Int32
            }
            if dict.keys.contains("publish_time") {
                self.publishTime = dict["publish_time"] as! String
            }
            if dict.keys.contains("real_from_address") {
                self.realFromAddress = dict["real_from_address"] as! String
            }
            if dict.keys.contains("real_from_city_name") {
                self.realFromCityName = dict["real_from_city_name"] as! String
            }
            if dict.keys.contains("real_to_address") {
                self.realToAddress = dict["real_to_address"] as! String
            }
            if dict.keys.contains("real_to_city_name") {
                self.realToCityName = dict["real_to_city_name"] as! String
            }
            if dict.keys.contains("service_type") {
                self.serviceType = dict["service_type"] as! Int32
            }
            if dict.keys.contains("special_types") {
                self.specialTypes = dict["special_types"] as! [String]
            }
            if dict.keys.contains("taken_time") {
                self.takenTime = dict["taken_time"] as! String
            }
            if dict.keys.contains("thirdpart_apply_id") {
                self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
            }
            if dict.keys.contains("thirdpart_itinerary_id") {
                self.thirdpartItineraryId = dict["thirdpart_itinerary_id"] as! String
            }
            if dict.keys.contains("to_address") {
                self.toAddress = dict["to_address"] as! String
            }
            if dict.keys.contains("to_city_name") {
                self.toCityName = dict["to_city_name"] as! String
            }
            if dict.keys.contains("travel_distance") {
                self.travelDistance = dict["travel_distance"] as! Double
            }
            if dict.keys.contains("user_affiliate_list") {
                self.userAffiliateList = dict["user_affiliate_list"] as! [CarOrderListQueryResponseBody.Module.UserAffiliateList]
            }
            if dict.keys.contains("user_confirm") {
                self.userConfirm = dict["user_confirm"] as! Int32
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var totalNumber: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalNumber != nil {
                map["total_number"] = self.totalNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page") {
                self.page = dict["page"] as! Int32
            }
            if dict.keys.contains("page_size") {
                self.pageSize = dict["page_size"] as! Int32
            }
            if dict.keys.contains("total_number") {
                self.totalNumber = dict["total_number"] as! Int32
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: [CarOrderListQueryResponseBody.Module]?

    public var pageInfo: CarOrderListQueryResponseBody.PageInfo?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            var tmp : [Any] = []
            for k in self.module! {
                tmp.append(k.toMap())
            }
            map["module"] = tmp
        }
        if self.pageInfo != nil {
            map["page_info"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! [CarOrderListQueryResponseBody.Module]
        }
        if dict.keys.contains("page_info") {
            var model = CarOrderListQueryResponseBody.PageInfo()
            model.fromMap(dict["page_info"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CarOrderListQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CarOrderListQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CarOrderListQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CitySearchHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CitySearchRequest : Tea.TeaModel {
    public var keyword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
    }
}

public class CitySearchResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Cities : Tea.TeaModel {
            public var code: String?

            public var name: String?

            public var region: Int32?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("code") {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("region") {
                    self.region = dict["region"] as! Int32
                }
            }
        }
        public var cities: [CitySearchResponseBody.Module.Cities]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cities != nil {
                var tmp : [Any] = []
                for k in self.cities! {
                    tmp.append(k.toMap())
                }
                map["cities"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cities") {
                self.cities = dict["cities"] as! [CitySearchResponseBody.Module.Cities]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: CitySearchResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = CitySearchResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CitySearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CitySearchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CitySearchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CommonApplyQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CommonApplyQueryRequest : Tea.TeaModel {
    public var applyId: Int64?

    public var bizCategory: Int32?

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
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        if self.bizCategory != nil {
            map["biz_category"] = self.bizCategory!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int64
        }
        if dict.keys.contains("biz_category") {
            self.bizCategory = dict["biz_category"] as! Int32
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class CommonApplyQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var applyId: Int64?

        public var bizCategory: Int32?

        public var cause: String?

        public var corpId: String?

        public var extendValue: String?

        public var gmtCreate: String?

        public var status: Int32?

        public var thirdpartCorpId: String?

        public var thirdpartId: String?

        public var tripCause: String?

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
            if self.applyId != nil {
                map["apply_id"] = self.applyId!
            }
            if self.bizCategory != nil {
                map["biz_category"] = self.bizCategory!
            }
            if self.cause != nil {
                map["cause"] = self.cause!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.extendValue != nil {
                map["extend_value"] = self.extendValue!
            }
            if self.gmtCreate != nil {
                map["gmt_create"] = self.gmtCreate!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.thirdpartCorpId != nil {
                map["thirdpart_corp_id"] = self.thirdpartCorpId!
            }
            if self.thirdpartId != nil {
                map["thirdpart_id"] = self.thirdpartId!
            }
            if self.tripCause != nil {
                map["trip_cause"] = self.tripCause!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_id") {
                self.applyId = dict["apply_id"] as! Int64
            }
            if dict.keys.contains("biz_category") {
                self.bizCategory = dict["biz_category"] as! Int32
            }
            if dict.keys.contains("cause") {
                self.cause = dict["cause"] as! String
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("extend_value") {
                self.extendValue = dict["extend_value"] as! String
            }
            if dict.keys.contains("gmt_create") {
                self.gmtCreate = dict["gmt_create"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("thirdpart_corp_id") {
                self.thirdpartCorpId = dict["thirdpart_corp_id"] as! String
            }
            if dict.keys.contains("thirdpart_id") {
                self.thirdpartId = dict["thirdpart_id"] as! String
            }
            if dict.keys.contains("trip_cause") {
                self.tripCause = dict["trip_cause"] as! String
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: CommonApplyQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = CommonApplyQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CommonApplyQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CommonApplyQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CommonApplyQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CommonApplySyncHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CommonApplySyncRequest : Tea.TeaModel {
    public var applyId: Int64?

    public var bizCategory: Int32?

    public var remark: String?

    public var status: Int32?

    public var thirdpartyFlowId: String?

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
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        if self.bizCategory != nil {
            map["biz_category"] = self.bizCategory!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.thirdpartyFlowId != nil {
            map["thirdparty_flow_id"] = self.thirdpartyFlowId!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int64
        }
        if dict.keys.contains("biz_category") {
            self.bizCategory = dict["biz_category"] as! Int32
        }
        if dict.keys.contains("remark") {
            self.remark = dict["remark"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("thirdparty_flow_id") {
            self.thirdpartyFlowId = dict["thirdparty_flow_id"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class CommonApplySyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: Bool?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            map["module"] = self.module!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CommonApplySyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CommonApplySyncResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CommonApplySyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CorpTokenHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripAccessToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripAccessToken != nil {
            map["x-acs-btrip-access-token"] = self.xAcsBtripAccessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-access-token") {
            self.xAcsBtripAccessToken = dict["x-acs-btrip-access-token"] as! String
        }
    }
}

public class CorpTokenRequest : Tea.TeaModel {
    public var corpId: String?

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
        if self.corpId != nil {
            map["corp_id"] = self.corpId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("corp_id") {
            self.corpId = dict["corp_id"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
    }
}

public class CorpTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expire: Int64?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expire != nil {
                map["expire"] = self.expire!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("expire") {
                self.expire = dict["expire"] as! Int64
            }
            if dict.keys.contains("token") {
                self.token = dict["token"] as! String
            }
        }
    }
    public class Module : Tea.TeaModel {
        public var expire: Int64?

        public var start: Int64?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expire != nil {
                map["expire"] = self.expire!
            }
            if self.start != nil {
                map["start"] = self.start!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("expire") {
                self.expire = dict["expire"] as! Int64
            }
            if dict.keys.contains("start") {
                self.start = dict["start"] as! Int64
            }
            if dict.keys.contains("token") {
                self.token = dict["token"] as! String
            }
        }
    }
    public var code: String?

    public var data: CorpTokenResponseBody.Data?

    public var message: String?

    public var module: CorpTokenResponseBody.Module?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = CorpTokenResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = CorpTokenResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CorpTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CorpTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CorpTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CostCenterDeleteHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CostCenterDeleteRequest : Tea.TeaModel {
    public var thirdpartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.thirdpartId != nil {
            map["thirdpart_id"] = self.thirdpartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("thirdpart_id") {
            self.thirdpartId = dict["thirdpart_id"] as! String
        }
    }
}

public class CostCenterDeleteResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CostCenterDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CostCenterDeleteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CostCenterDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CostCenterModifyHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CostCenterModifyRequest : Tea.TeaModel {
    public var alipayNo: String?

    public var number: String?

    public var scope: Int64?

    public var thirdpartId: String?

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
        if self.alipayNo != nil {
            map["alipay_no"] = self.alipayNo!
        }
        if self.number != nil {
            map["number"] = self.number!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.thirdpartId != nil {
            map["thirdpart_id"] = self.thirdpartId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alipay_no") {
            self.alipayNo = dict["alipay_no"] as! String
        }
        if dict.keys.contains("number") {
            self.number = dict["number"] as! String
        }
        if dict.keys.contains("scope") {
            self.scope = dict["scope"] as! Int64
        }
        if dict.keys.contains("thirdpart_id") {
            self.thirdpartId = dict["thirdpart_id"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
    }
}

public class CostCenterModifyResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CostCenterModifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CostCenterModifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CostCenterModifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CostCenterQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CostCenterQueryRequest : Tea.TeaModel {
    public var needOrgEntity: Bool?

    public var thirdpartId: String?

    public var title: String?

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
        if self.needOrgEntity != nil {
            map["need_org_entity"] = self.needOrgEntity!
        }
        if self.thirdpartId != nil {
            map["thirdpart_id"] = self.thirdpartId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("need_org_entity") {
            self.needOrgEntity = dict["need_org_entity"] as! Bool
        }
        if dict.keys.contains("thirdpart_id") {
            self.thirdpartId = dict["thirdpart_id"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class CostCenterQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class EntityDOS : Tea.TeaModel {
            public var corpId: String?

            public var entityId: String?

            public var entityType: String?

            public var name: String?

            public var userNum: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.corpId != nil {
                    map["corp_id"] = self.corpId!
                }
                if self.entityId != nil {
                    map["entity_id"] = self.entityId!
                }
                if self.entityType != nil {
                    map["entity_type"] = self.entityType!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.userNum != nil {
                    map["user_num"] = self.userNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("corp_id") {
                    self.corpId = dict["corp_id"] as! String
                }
                if dict.keys.contains("entity_id") {
                    self.entityId = dict["entity_id"] as! String
                }
                if dict.keys.contains("entity_type") {
                    self.entityType = dict["entity_type"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("user_num") {
                    self.userNum = dict["user_num"] as! Int32
                }
            }
        }
        public var alipayNo: String?

        public var corpId: String?

        public var entityDOS: [CostCenterQueryResponseBody.Module.EntityDOS]?

        public var id: Int64?

        public var number: String?

        public var ruleCode: Int64?

        public var scope: Int64?

        public var thirdpartId: String?

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
            if self.alipayNo != nil {
                map["alipay_no"] = self.alipayNo!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.entityDOS != nil {
                var tmp : [Any] = []
                for k in self.entityDOS! {
                    tmp.append(k.toMap())
                }
                map["entity_d_o_s"] = tmp
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.number != nil {
                map["number"] = self.number!
            }
            if self.ruleCode != nil {
                map["rule_code"] = self.ruleCode!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.thirdpartId != nil {
                map["thirdpart_id"] = self.thirdpartId!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alipay_no") {
                self.alipayNo = dict["alipay_no"] as! String
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("entity_d_o_s") {
                self.entityDOS = dict["entity_d_o_s"] as! [CostCenterQueryResponseBody.Module.EntityDOS]
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("number") {
                self.number = dict["number"] as! String
            }
            if dict.keys.contains("rule_code") {
                self.ruleCode = dict["rule_code"] as! Int64
            }
            if dict.keys.contains("scope") {
                self.scope = dict["scope"] as! Int64
            }
            if dict.keys.contains("thirdpart_id") {
                self.thirdpartId = dict["thirdpart_id"] as! String
            }
            if dict.keys.contains("title") {
                self.title = dict["title"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: [CostCenterQueryResponseBody.Module]?

    public var morePage: Bool?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            var tmp : [Any] = []
            for k in self.module! {
                tmp.append(k.toMap())
            }
            map["module"] = tmp
        }
        if self.morePage != nil {
            map["more_page"] = self.morePage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! [CostCenterQueryResponseBody.Module]
        }
        if dict.keys.contains("more_page") {
            self.morePage = dict["more_page"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CostCenterQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CostCenterQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CostCenterQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CostCenterSaveHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class CostCenterSaveRequest : Tea.TeaModel {
    public var alipayNo: String?

    public var number: String?

    public var scope: Int64?

    public var thirdpartId: String?

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
        if self.alipayNo != nil {
            map["alipay_no"] = self.alipayNo!
        }
        if self.number != nil {
            map["number"] = self.number!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.thirdpartId != nil {
            map["thirdpart_id"] = self.thirdpartId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alipay_no") {
            self.alipayNo = dict["alipay_no"] as! String
        }
        if dict.keys.contains("number") {
            self.number = dict["number"] as! String
        }
        if dict.keys.contains("scope") {
            self.scope = dict["scope"] as! Int64
        }
        if dict.keys.contains("thirdpart_id") {
            self.thirdpartId = dict["thirdpart_id"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
    }
}

public class CostCenterSaveResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var id: Int64?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: CostCenterSaveResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = CostCenterSaveResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class CostCenterSaveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CostCenterSaveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CostCenterSaveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DepartmentSaveHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class DepartmentSaveRequest : Tea.TeaModel {
    public class DepartList : Tea.TeaModel {
        public var departId: Int64?

        public var departName: String?

        public var departPid: Int64?

        public var managerIds: String?

        public var status: Int32?

        public var thirdDepartId: String?

        public var thirdDepartPid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.departId != nil {
                map["depart_id"] = self.departId!
            }
            if self.departName != nil {
                map["depart_name"] = self.departName!
            }
            if self.departPid != nil {
                map["depart_pid"] = self.departPid!
            }
            if self.managerIds != nil {
                map["manager_ids"] = self.managerIds!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.thirdDepartId != nil {
                map["third_depart_id"] = self.thirdDepartId!
            }
            if self.thirdDepartPid != nil {
                map["third_depart_pid"] = self.thirdDepartPid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("depart_id") {
                self.departId = dict["depart_id"] as! Int64
            }
            if dict.keys.contains("depart_name") {
                self.departName = dict["depart_name"] as! String
            }
            if dict.keys.contains("depart_pid") {
                self.departPid = dict["depart_pid"] as! Int64
            }
            if dict.keys.contains("manager_ids") {
                self.managerIds = dict["manager_ids"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("third_depart_id") {
                self.thirdDepartId = dict["third_depart_id"] as! String
            }
            if dict.keys.contains("third_depart_pid") {
                self.thirdDepartPid = dict["third_depart_pid"] as! String
            }
        }
    }
    public var departList: [DepartmentSaveRequest.DepartList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.departList != nil {
            var tmp : [Any] = []
            for k in self.departList! {
                tmp.append(k.toMap())
            }
            map["depart_list"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("depart_list") {
            self.departList = dict["depart_list"] as! [DepartmentSaveRequest.DepartList]
        }
    }
}

public class DepartmentSaveShrinkRequest : Tea.TeaModel {
    public var departListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.departListShrink != nil {
            map["depart_list"] = self.departListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("depart_list") {
            self.departListShrink = dict["depart_list"] as! String
        }
    }
}

public class DepartmentSaveResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            map["module"] = self.module!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class DepartmentSaveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DepartmentSaveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DepartmentSaveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EntityAddHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class EntityAddRequest : Tea.TeaModel {
    public class EntityDOList : Tea.TeaModel {
        public var entityId: String?

        public var entityType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityId != nil {
                map["entity_id"] = self.entityId!
            }
            if self.entityType != nil {
                map["entity_type"] = self.entityType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("entity_id") {
                self.entityId = dict["entity_id"] as! String
            }
            if dict.keys.contains("entity_type") {
                self.entityType = dict["entity_type"] as! String
            }
        }
    }
    public var entityDOList: [EntityAddRequest.EntityDOList]?

    public var thirdpartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityDOList != nil {
            var tmp : [Any] = []
            for k in self.entityDOList! {
                tmp.append(k.toMap())
            }
            map["entity_d_o_list"] = tmp
        }
        if self.thirdpartId != nil {
            map["thirdpart_id"] = self.thirdpartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("entity_d_o_list") {
            self.entityDOList = dict["entity_d_o_list"] as! [EntityAddRequest.EntityDOList]
        }
        if dict.keys.contains("thirdpart_id") {
            self.thirdpartId = dict["thirdpart_id"] as! String
        }
    }
}

public class EntityAddShrinkRequest : Tea.TeaModel {
    public var entityDOListShrink: String?

    public var thirdpartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityDOListShrink != nil {
            map["entity_d_o_list"] = self.entityDOListShrink!
        }
        if self.thirdpartId != nil {
            map["thirdpart_id"] = self.thirdpartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("entity_d_o_list") {
            self.entityDOListShrink = dict["entity_d_o_list"] as! String
        }
        if dict.keys.contains("thirdpart_id") {
            self.thirdpartId = dict["thirdpart_id"] as! String
        }
    }
}

public class EntityAddResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var addNum: Int32?

        public var selectedUserNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addNum != nil {
                map["add_num"] = self.addNum!
            }
            if self.selectedUserNum != nil {
                map["selected_user_num"] = self.selectedUserNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("add_num") {
                self.addNum = dict["add_num"] as! Int32
            }
            if dict.keys.contains("selected_user_num") {
                self.selectedUserNum = dict["selected_user_num"] as! Int32
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: EntityAddResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = EntityAddResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class EntityAddResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EntityAddResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = EntityAddResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EntityDeleteHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class EntityDeleteRequest : Tea.TeaModel {
    public class EntityDOList : Tea.TeaModel {
        public var entityId: String?

        public var entityType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityId != nil {
                map["entity_id"] = self.entityId!
            }
            if self.entityType != nil {
                map["entity_type"] = self.entityType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("entity_id") {
                self.entityId = dict["entity_id"] as! String
            }
            if dict.keys.contains("entity_type") {
                self.entityType = dict["entity_type"] as! String
            }
        }
    }
    public var delAll: Bool?

    public var entityDOList: [EntityDeleteRequest.EntityDOList]?

    public var thirdpartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delAll != nil {
            map["del_all"] = self.delAll!
        }
        if self.entityDOList != nil {
            var tmp : [Any] = []
            for k in self.entityDOList! {
                tmp.append(k.toMap())
            }
            map["entity_d_o_list"] = tmp
        }
        if self.thirdpartId != nil {
            map["thirdpart_id"] = self.thirdpartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("del_all") {
            self.delAll = dict["del_all"] as! Bool
        }
        if dict.keys.contains("entity_d_o_list") {
            self.entityDOList = dict["entity_d_o_list"] as! [EntityDeleteRequest.EntityDOList]
        }
        if dict.keys.contains("thirdpart_id") {
            self.thirdpartId = dict["thirdpart_id"] as! String
        }
    }
}

public class EntityDeleteShrinkRequest : Tea.TeaModel {
    public var delAll: Bool?

    public var entityDOListShrink: String?

    public var thirdpartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delAll != nil {
            map["del_all"] = self.delAll!
        }
        if self.entityDOListShrink != nil {
            map["entity_d_o_list"] = self.entityDOListShrink!
        }
        if self.thirdpartId != nil {
            map["thirdpart_id"] = self.thirdpartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("del_all") {
            self.delAll = dict["del_all"] as! Bool
        }
        if dict.keys.contains("entity_d_o_list") {
            self.entityDOListShrink = dict["entity_d_o_list"] as! String
        }
        if dict.keys.contains("thirdpart_id") {
            self.thirdpartId = dict["thirdpart_id"] as! String
        }
    }
}

public class EntityDeleteResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var removeNum: Int32?

        public var selectedUserNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.removeNum != nil {
                map["remove_num"] = self.removeNum!
            }
            if self.selectedUserNum != nil {
                map["selected_user_num"] = self.selectedUserNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("remove_num") {
                self.removeNum = dict["remove_num"] as! Int32
            }
            if dict.keys.contains("selected_user_num") {
                self.selectedUserNum = dict["selected_user_num"] as! Int32
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: EntityDeleteResponseBody.Module?

    public var morePage: Bool?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.morePage != nil {
            map["more_page"] = self.morePage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = EntityDeleteResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("more_page") {
            self.morePage = dict["more_page"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class EntityDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EntityDeleteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = EntityDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EntitySetHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class EntitySetRequest : Tea.TeaModel {
    public class EntityDOList : Tea.TeaModel {
        public var entityId: String?

        public var entityType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityId != nil {
                map["entity_id"] = self.entityId!
            }
            if self.entityType != nil {
                map["entity_type"] = self.entityType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("entity_id") {
                self.entityId = dict["entity_id"] as! String
            }
            if dict.keys.contains("entity_type") {
                self.entityType = dict["entity_type"] as! String
            }
        }
    }
    public var entityDOList: [EntitySetRequest.EntityDOList]?

    public var thirdpartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityDOList != nil {
            var tmp : [Any] = []
            for k in self.entityDOList! {
                tmp.append(k.toMap())
            }
            map["entity_d_o_list"] = tmp
        }
        if self.thirdpartId != nil {
            map["thirdpart_id"] = self.thirdpartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("entity_d_o_list") {
            self.entityDOList = dict["entity_d_o_list"] as! [EntitySetRequest.EntityDOList]
        }
        if dict.keys.contains("thirdpart_id") {
            self.thirdpartId = dict["thirdpart_id"] as! String
        }
    }
}

public class EntitySetShrinkRequest : Tea.TeaModel {
    public var entityDOListShrink: String?

    public var thirdpartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityDOListShrink != nil {
            map["entity_d_o_list"] = self.entityDOListShrink!
        }
        if self.thirdpartId != nil {
            map["thirdpart_id"] = self.thirdpartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("entity_d_o_list") {
            self.entityDOListShrink = dict["entity_d_o_list"] as! String
        }
        if dict.keys.contains("thirdpart_id") {
            self.thirdpartId = dict["thirdpart_id"] as! String
        }
    }
}

public class EntitySetResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var addNum: Int32?

        public var removeNum: Int32?

        public var selectedUserNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addNum != nil {
                map["add_num"] = self.addNum!
            }
            if self.removeNum != nil {
                map["remove_num"] = self.removeNum!
            }
            if self.selectedUserNum != nil {
                map["selected_user_num"] = self.selectedUserNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("add_num") {
                self.addNum = dict["add_num"] as! Int32
            }
            if dict.keys.contains("remove_num") {
                self.removeNum = dict["remove_num"] as! Int32
            }
            if dict.keys.contains("selected_user_num") {
                self.selectedUserNum = dict["selected_user_num"] as! Int32
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: EntitySetResponseBody.Module?

    public var morePage: Bool?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.morePage != nil {
            map["more_page"] = self.morePage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = EntitySetResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("more_page") {
            self.morePage = dict["more_page"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class EntitySetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EntitySetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = EntitySetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExceedApplySyncHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class ExceedApplySyncRequest : Tea.TeaModel {
    public var applyId: Int64?

    public var bizCategory: Int32?

    public var remark: String?

    public var status: Int32?

    public var thirdpartyFlowId: String?

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
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        if self.bizCategory != nil {
            map["biz_category"] = self.bizCategory!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.thirdpartyFlowId != nil {
            map["thirdparty_flow_id"] = self.thirdpartyFlowId!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int64
        }
        if dict.keys.contains("biz_category") {
            self.bizCategory = dict["biz_category"] as! Int32
        }
        if dict.keys.contains("remark") {
            self.remark = dict["remark"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("thirdparty_flow_id") {
            self.thirdpartyFlowId = dict["thirdparty_flow_id"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class ExceedApplySyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: Bool?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            map["module"] = self.module!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class ExceedApplySyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExceedApplySyncResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ExceedApplySyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FlightBillSettlementQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class FlightBillSettlementQueryRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var periodEnd: String?

    public var periodStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["page_no"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.periodEnd != nil {
            map["period_end"] = self.periodEnd!
        }
        if self.periodStart != nil {
            map["period_start"] = self.periodStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_no") {
            self.pageNo = dict["page_no"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("period_end") {
            self.periodEnd = dict["period_end"] as! String
        }
        if dict.keys.contains("period_start") {
            self.periodStart = dict["period_start"] as! String
        }
    }
}

public class FlightBillSettlementQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class DataList : Tea.TeaModel {
            public var advanceDay: Int32?

            public var airlineCorpCode: String?

            public var airlineCorpName: String?

            public var alipayTradeNo: String?

            public var applyId: String?

            public var arrAirportCode: String?

            public var arrCity: String?

            public var arrDate: String?

            public var arrStation: String?

            public var arrTime: String?

            public var billRecordTime: String?

            public var bookTime: String?

            public var bookerId: String?

            public var bookerJobNo: String?

            public var bookerName: String?

            public var btripCouponFee: Double?

            public var buildFee: Double?

            public var cabin: String?

            public var cabinClass: String?

            public var capitalDirection: String?

            public var cascadeDepartment: String?

            public var changeFee: Double?

            public var corpPayOrderFee: Double?

            public var costCenter: String?

            public var costCenterNumber: String?

            public var coupon: Double?

            public var depAirportCode: String?

            public var department: String?

            public var departmentId: String?

            public var deptCity: String?

            public var deptDate: String?

            public var deptStation: String?

            public var deptTime: String?

            public var discount: String?

            public var feeType: String?

            public var flightNo: String?

            public var index: String?

            public var insuranceFee: Double?

            public var invoiceTitle: String?

            public var itineraryNum: String?

            public var itineraryPrice: Double?

            public var mostDifferenceDeptTime: String?

            public var mostDifferenceDiscount: String?

            public var mostDifferenceFlightNo: String?

            public var mostDifferencePrice: Double?

            public var mostDifferenceReason: String?

            public var mostPrice: Double?

            public var negotiationCouponFee: Double?

            public var oilFee: Double?

            public var orderId: String?

            public var overApplyId: String?

            public var primaryId: Int64?

            public var projectCode: String?

            public var projectName: String?

            public var refundFee: Double?

            public var refundUpgradeCost: Double?

            public var remark: String?

            public var repeatRefund: String?

            public var sealPrice: Double?

            public var serviceFee: Double?

            public var settlementFee: Double?

            public var settlementGrantFee: Double?

            public var settlementTime: String?

            public var settlementType: String?

            public var status: Int32?

            public var ticketId: String?

            public var travelerId: String?

            public var travelerJobNo: String?

            public var travelerName: String?

            public var upgradeCost: Double?

            public var voucherType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.advanceDay != nil {
                    map["advance_day"] = self.advanceDay!
                }
                if self.airlineCorpCode != nil {
                    map["airline_corp_code"] = self.airlineCorpCode!
                }
                if self.airlineCorpName != nil {
                    map["airline_corp_name"] = self.airlineCorpName!
                }
                if self.alipayTradeNo != nil {
                    map["alipay_trade_no"] = self.alipayTradeNo!
                }
                if self.applyId != nil {
                    map["apply_id"] = self.applyId!
                }
                if self.arrAirportCode != nil {
                    map["arr_airport_code"] = self.arrAirportCode!
                }
                if self.arrCity != nil {
                    map["arr_city"] = self.arrCity!
                }
                if self.arrDate != nil {
                    map["arr_date"] = self.arrDate!
                }
                if self.arrStation != nil {
                    map["arr_station"] = self.arrStation!
                }
                if self.arrTime != nil {
                    map["arr_time"] = self.arrTime!
                }
                if self.billRecordTime != nil {
                    map["bill_record_time"] = self.billRecordTime!
                }
                if self.bookTime != nil {
                    map["book_time"] = self.bookTime!
                }
                if self.bookerId != nil {
                    map["booker_id"] = self.bookerId!
                }
                if self.bookerJobNo != nil {
                    map["booker_job_no"] = self.bookerJobNo!
                }
                if self.bookerName != nil {
                    map["booker_name"] = self.bookerName!
                }
                if self.btripCouponFee != nil {
                    map["btrip_coupon_fee"] = self.btripCouponFee!
                }
                if self.buildFee != nil {
                    map["build_fee"] = self.buildFee!
                }
                if self.cabin != nil {
                    map["cabin"] = self.cabin!
                }
                if self.cabinClass != nil {
                    map["cabin_class"] = self.cabinClass!
                }
                if self.capitalDirection != nil {
                    map["capital_direction"] = self.capitalDirection!
                }
                if self.cascadeDepartment != nil {
                    map["cascade_department"] = self.cascadeDepartment!
                }
                if self.changeFee != nil {
                    map["change_fee"] = self.changeFee!
                }
                if self.corpPayOrderFee != nil {
                    map["corp_pay_order_fee"] = self.corpPayOrderFee!
                }
                if self.costCenter != nil {
                    map["cost_center"] = self.costCenter!
                }
                if self.costCenterNumber != nil {
                    map["cost_center_number"] = self.costCenterNumber!
                }
                if self.coupon != nil {
                    map["coupon"] = self.coupon!
                }
                if self.depAirportCode != nil {
                    map["dep_airport_code"] = self.depAirportCode!
                }
                if self.department != nil {
                    map["department"] = self.department!
                }
                if self.departmentId != nil {
                    map["department_id"] = self.departmentId!
                }
                if self.deptCity != nil {
                    map["dept_city"] = self.deptCity!
                }
                if self.deptDate != nil {
                    map["dept_date"] = self.deptDate!
                }
                if self.deptStation != nil {
                    map["dept_station"] = self.deptStation!
                }
                if self.deptTime != nil {
                    map["dept_time"] = self.deptTime!
                }
                if self.discount != nil {
                    map["discount"] = self.discount!
                }
                if self.feeType != nil {
                    map["fee_type"] = self.feeType!
                }
                if self.flightNo != nil {
                    map["flight_no"] = self.flightNo!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.insuranceFee != nil {
                    map["insurance_fee"] = self.insuranceFee!
                }
                if self.invoiceTitle != nil {
                    map["invoice_title"] = self.invoiceTitle!
                }
                if self.itineraryNum != nil {
                    map["itinerary_num"] = self.itineraryNum!
                }
                if self.itineraryPrice != nil {
                    map["itinerary_price"] = self.itineraryPrice!
                }
                if self.mostDifferenceDeptTime != nil {
                    map["most_difference_dept_time"] = self.mostDifferenceDeptTime!
                }
                if self.mostDifferenceDiscount != nil {
                    map["most_difference_discount"] = self.mostDifferenceDiscount!
                }
                if self.mostDifferenceFlightNo != nil {
                    map["most_difference_flight_no"] = self.mostDifferenceFlightNo!
                }
                if self.mostDifferencePrice != nil {
                    map["most_difference_price"] = self.mostDifferencePrice!
                }
                if self.mostDifferenceReason != nil {
                    map["most_difference_reason"] = self.mostDifferenceReason!
                }
                if self.mostPrice != nil {
                    map["most_price"] = self.mostPrice!
                }
                if self.negotiationCouponFee != nil {
                    map["negotiation_coupon_fee"] = self.negotiationCouponFee!
                }
                if self.oilFee != nil {
                    map["oil_fee"] = self.oilFee!
                }
                if self.orderId != nil {
                    map["order_id"] = self.orderId!
                }
                if self.overApplyId != nil {
                    map["over_apply_id"] = self.overApplyId!
                }
                if self.primaryId != nil {
                    map["primary_id"] = self.primaryId!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectName != nil {
                    map["project_name"] = self.projectName!
                }
                if self.refundFee != nil {
                    map["refund_fee"] = self.refundFee!
                }
                if self.refundUpgradeCost != nil {
                    map["refund_upgrade_cost"] = self.refundUpgradeCost!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                if self.repeatRefund != nil {
                    map["repeat_refund"] = self.repeatRefund!
                }
                if self.sealPrice != nil {
                    map["seal_price"] = self.sealPrice!
                }
                if self.serviceFee != nil {
                    map["service_fee"] = self.serviceFee!
                }
                if self.settlementFee != nil {
                    map["settlement_fee"] = self.settlementFee!
                }
                if self.settlementGrantFee != nil {
                    map["settlement_grant_fee"] = self.settlementGrantFee!
                }
                if self.settlementTime != nil {
                    map["settlement_time"] = self.settlementTime!
                }
                if self.settlementType != nil {
                    map["settlement_type"] = self.settlementType!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.ticketId != nil {
                    map["ticket_id"] = self.ticketId!
                }
                if self.travelerId != nil {
                    map["traveler_id"] = self.travelerId!
                }
                if self.travelerJobNo != nil {
                    map["traveler_job_no"] = self.travelerJobNo!
                }
                if self.travelerName != nil {
                    map["traveler_name"] = self.travelerName!
                }
                if self.upgradeCost != nil {
                    map["upgrade_cost"] = self.upgradeCost!
                }
                if self.voucherType != nil {
                    map["voucher_type"] = self.voucherType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("advance_day") {
                    self.advanceDay = dict["advance_day"] as! Int32
                }
                if dict.keys.contains("airline_corp_code") {
                    self.airlineCorpCode = dict["airline_corp_code"] as! String
                }
                if dict.keys.contains("airline_corp_name") {
                    self.airlineCorpName = dict["airline_corp_name"] as! String
                }
                if dict.keys.contains("alipay_trade_no") {
                    self.alipayTradeNo = dict["alipay_trade_no"] as! String
                }
                if dict.keys.contains("apply_id") {
                    self.applyId = dict["apply_id"] as! String
                }
                if dict.keys.contains("arr_airport_code") {
                    self.arrAirportCode = dict["arr_airport_code"] as! String
                }
                if dict.keys.contains("arr_city") {
                    self.arrCity = dict["arr_city"] as! String
                }
                if dict.keys.contains("arr_date") {
                    self.arrDate = dict["arr_date"] as! String
                }
                if dict.keys.contains("arr_station") {
                    self.arrStation = dict["arr_station"] as! String
                }
                if dict.keys.contains("arr_time") {
                    self.arrTime = dict["arr_time"] as! String
                }
                if dict.keys.contains("bill_record_time") {
                    self.billRecordTime = dict["bill_record_time"] as! String
                }
                if dict.keys.contains("book_time") {
                    self.bookTime = dict["book_time"] as! String
                }
                if dict.keys.contains("booker_id") {
                    self.bookerId = dict["booker_id"] as! String
                }
                if dict.keys.contains("booker_job_no") {
                    self.bookerJobNo = dict["booker_job_no"] as! String
                }
                if dict.keys.contains("booker_name") {
                    self.bookerName = dict["booker_name"] as! String
                }
                if dict.keys.contains("btrip_coupon_fee") {
                    self.btripCouponFee = dict["btrip_coupon_fee"] as! Double
                }
                if dict.keys.contains("build_fee") {
                    self.buildFee = dict["build_fee"] as! Double
                }
                if dict.keys.contains("cabin") {
                    self.cabin = dict["cabin"] as! String
                }
                if dict.keys.contains("cabin_class") {
                    self.cabinClass = dict["cabin_class"] as! String
                }
                if dict.keys.contains("capital_direction") {
                    self.capitalDirection = dict["capital_direction"] as! String
                }
                if dict.keys.contains("cascade_department") {
                    self.cascadeDepartment = dict["cascade_department"] as! String
                }
                if dict.keys.contains("change_fee") {
                    self.changeFee = dict["change_fee"] as! Double
                }
                if dict.keys.contains("corp_pay_order_fee") {
                    self.corpPayOrderFee = dict["corp_pay_order_fee"] as! Double
                }
                if dict.keys.contains("cost_center") {
                    self.costCenter = dict["cost_center"] as! String
                }
                if dict.keys.contains("cost_center_number") {
                    self.costCenterNumber = dict["cost_center_number"] as! String
                }
                if dict.keys.contains("coupon") {
                    self.coupon = dict["coupon"] as! Double
                }
                if dict.keys.contains("dep_airport_code") {
                    self.depAirportCode = dict["dep_airport_code"] as! String
                }
                if dict.keys.contains("department") {
                    self.department = dict["department"] as! String
                }
                if dict.keys.contains("department_id") {
                    self.departmentId = dict["department_id"] as! String
                }
                if dict.keys.contains("dept_city") {
                    self.deptCity = dict["dept_city"] as! String
                }
                if dict.keys.contains("dept_date") {
                    self.deptDate = dict["dept_date"] as! String
                }
                if dict.keys.contains("dept_station") {
                    self.deptStation = dict["dept_station"] as! String
                }
                if dict.keys.contains("dept_time") {
                    self.deptTime = dict["dept_time"] as! String
                }
                if dict.keys.contains("discount") {
                    self.discount = dict["discount"] as! String
                }
                if dict.keys.contains("fee_type") {
                    self.feeType = dict["fee_type"] as! String
                }
                if dict.keys.contains("flight_no") {
                    self.flightNo = dict["flight_no"] as! String
                }
                if dict.keys.contains("index") {
                    self.index = dict["index"] as! String
                }
                if dict.keys.contains("insurance_fee") {
                    self.insuranceFee = dict["insurance_fee"] as! Double
                }
                if dict.keys.contains("invoice_title") {
                    self.invoiceTitle = dict["invoice_title"] as! String
                }
                if dict.keys.contains("itinerary_num") {
                    self.itineraryNum = dict["itinerary_num"] as! String
                }
                if dict.keys.contains("itinerary_price") {
                    self.itineraryPrice = dict["itinerary_price"] as! Double
                }
                if dict.keys.contains("most_difference_dept_time") {
                    self.mostDifferenceDeptTime = dict["most_difference_dept_time"] as! String
                }
                if dict.keys.contains("most_difference_discount") {
                    self.mostDifferenceDiscount = dict["most_difference_discount"] as! String
                }
                if dict.keys.contains("most_difference_flight_no") {
                    self.mostDifferenceFlightNo = dict["most_difference_flight_no"] as! String
                }
                if dict.keys.contains("most_difference_price") {
                    self.mostDifferencePrice = dict["most_difference_price"] as! Double
                }
                if dict.keys.contains("most_difference_reason") {
                    self.mostDifferenceReason = dict["most_difference_reason"] as! String
                }
                if dict.keys.contains("most_price") {
                    self.mostPrice = dict["most_price"] as! Double
                }
                if dict.keys.contains("negotiation_coupon_fee") {
                    self.negotiationCouponFee = dict["negotiation_coupon_fee"] as! Double
                }
                if dict.keys.contains("oil_fee") {
                    self.oilFee = dict["oil_fee"] as! Double
                }
                if dict.keys.contains("order_id") {
                    self.orderId = dict["order_id"] as! String
                }
                if dict.keys.contains("over_apply_id") {
                    self.overApplyId = dict["over_apply_id"] as! String
                }
                if dict.keys.contains("primary_id") {
                    self.primaryId = dict["primary_id"] as! Int64
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_name") {
                    self.projectName = dict["project_name"] as! String
                }
                if dict.keys.contains("refund_fee") {
                    self.refundFee = dict["refund_fee"] as! Double
                }
                if dict.keys.contains("refund_upgrade_cost") {
                    self.refundUpgradeCost = dict["refund_upgrade_cost"] as! Double
                }
                if dict.keys.contains("remark") {
                    self.remark = dict["remark"] as! String
                }
                if dict.keys.contains("repeat_refund") {
                    self.repeatRefund = dict["repeat_refund"] as! String
                }
                if dict.keys.contains("seal_price") {
                    self.sealPrice = dict["seal_price"] as! Double
                }
                if dict.keys.contains("service_fee") {
                    self.serviceFee = dict["service_fee"] as! Double
                }
                if dict.keys.contains("settlement_fee") {
                    self.settlementFee = dict["settlement_fee"] as! Double
                }
                if dict.keys.contains("settlement_grant_fee") {
                    self.settlementGrantFee = dict["settlement_grant_fee"] as! Double
                }
                if dict.keys.contains("settlement_time") {
                    self.settlementTime = dict["settlement_time"] as! String
                }
                if dict.keys.contains("settlement_type") {
                    self.settlementType = dict["settlement_type"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("ticket_id") {
                    self.ticketId = dict["ticket_id"] as! String
                }
                if dict.keys.contains("traveler_id") {
                    self.travelerId = dict["traveler_id"] as! String
                }
                if dict.keys.contains("traveler_job_no") {
                    self.travelerJobNo = dict["traveler_job_no"] as! String
                }
                if dict.keys.contains("traveler_name") {
                    self.travelerName = dict["traveler_name"] as! String
                }
                if dict.keys.contains("upgrade_cost") {
                    self.upgradeCost = dict["upgrade_cost"] as! Double
                }
                if dict.keys.contains("voucher_type") {
                    self.voucherType = dict["voucher_type"] as! Int32
                }
            }
        }
        public var category: Int32?

        public var corpId: String?

        public var dataList: [FlightBillSettlementQueryResponseBody.Module.DataList]?

        public var periodEnd: String?

        public var periodStart: String?

        public var totalNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.dataList != nil {
                var tmp : [Any] = []
                for k in self.dataList! {
                    tmp.append(k.toMap())
                }
                map["data_list"] = tmp
            }
            if self.periodEnd != nil {
                map["period_end"] = self.periodEnd!
            }
            if self.periodStart != nil {
                map["period_start"] = self.periodStart!
            }
            if self.totalNum != nil {
                map["total_num"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") {
                self.category = dict["category"] as! Int32
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("data_list") {
                self.dataList = dict["data_list"] as! [FlightBillSettlementQueryResponseBody.Module.DataList]
            }
            if dict.keys.contains("period_end") {
                self.periodEnd = dict["period_end"] as! String
            }
            if dict.keys.contains("period_start") {
                self.periodStart = dict["period_start"] as! String
            }
            if dict.keys.contains("total_num") {
                self.totalNum = dict["total_num"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: FlightBillSettlementQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = FlightBillSettlementQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class FlightBillSettlementQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FlightBillSettlementQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = FlightBillSettlementQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FlightExceedApplyQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class FlightExceedApplyQueryRequest : Tea.TeaModel {
    public var applyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int64
        }
    }
}

public class FlightExceedApplyQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class ApplyIntentionInfoDo : Tea.TeaModel {
            public var arrCity: String?

            public var arrCityName: String?

            public var arrTime: String?

            public var cabin: String?

            public var cabinClass: Int32?

            public var cabinClassStr: String?

            public var depCity: String?

            public var depCityName: String?

            public var depTime: String?

            public var discount: String?

            public var flightNo: String?

            public var price: Int64?

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
                if self.arrCity != nil {
                    map["arr_city"] = self.arrCity!
                }
                if self.arrCityName != nil {
                    map["arr_city_name"] = self.arrCityName!
                }
                if self.arrTime != nil {
                    map["arr_time"] = self.arrTime!
                }
                if self.cabin != nil {
                    map["cabin"] = self.cabin!
                }
                if self.cabinClass != nil {
                    map["cabin_class"] = self.cabinClass!
                }
                if self.cabinClassStr != nil {
                    map["cabin_class_str"] = self.cabinClassStr!
                }
                if self.depCity != nil {
                    map["dep_city"] = self.depCity!
                }
                if self.depCityName != nil {
                    map["dep_city_name"] = self.depCityName!
                }
                if self.depTime != nil {
                    map["dep_time"] = self.depTime!
                }
                if self.discount != nil {
                    map["discount"] = self.discount!
                }
                if self.flightNo != nil {
                    map["flight_no"] = self.flightNo!
                }
                if self.price != nil {
                    map["price"] = self.price!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arr_city") {
                    self.arrCity = dict["arr_city"] as! String
                }
                if dict.keys.contains("arr_city_name") {
                    self.arrCityName = dict["arr_city_name"] as! String
                }
                if dict.keys.contains("arr_time") {
                    self.arrTime = dict["arr_time"] as! String
                }
                if dict.keys.contains("cabin") {
                    self.cabin = dict["cabin"] as! String
                }
                if dict.keys.contains("cabin_class") {
                    self.cabinClass = dict["cabin_class"] as! Int32
                }
                if dict.keys.contains("cabin_class_str") {
                    self.cabinClassStr = dict["cabin_class_str"] as! String
                }
                if dict.keys.contains("dep_city") {
                    self.depCity = dict["dep_city"] as! String
                }
                if dict.keys.contains("dep_city_name") {
                    self.depCityName = dict["dep_city_name"] as! String
                }
                if dict.keys.contains("dep_time") {
                    self.depTime = dict["dep_time"] as! String
                }
                if dict.keys.contains("discount") {
                    self.discount = dict["discount"] as! String
                }
                if dict.keys.contains("flight_no") {
                    self.flightNo = dict["flight_no"] as! String
                }
                if dict.keys.contains("price") {
                    self.price = dict["price"] as! Int64
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public var applyId: Int64?

        public var applyIntentionInfoDo: FlightExceedApplyQueryResponseBody.Module.ApplyIntentionInfoDo?

        public var btripCause: String?

        public var corpId: String?

        public var exceedReason: String?

        public var exceedType: Int32?

        public var originStandard: String?

        public var status: Int32?

        public var submitTime: String?

        public var thirdpartApplyId: String?

        public var thirdpartCorpId: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.applyIntentionInfoDo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["apply_id"] = self.applyId!
            }
            if self.applyIntentionInfoDo != nil {
                map["apply_intention_info_do"] = self.applyIntentionInfoDo?.toMap()
            }
            if self.btripCause != nil {
                map["btrip_cause"] = self.btripCause!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.exceedReason != nil {
                map["exceed_reason"] = self.exceedReason!
            }
            if self.exceedType != nil {
                map["exceed_type"] = self.exceedType!
            }
            if self.originStandard != nil {
                map["origin_standard"] = self.originStandard!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.submitTime != nil {
                map["submit_time"] = self.submitTime!
            }
            if self.thirdpartApplyId != nil {
                map["thirdpart_apply_id"] = self.thirdpartApplyId!
            }
            if self.thirdpartCorpId != nil {
                map["thirdpart_corp_id"] = self.thirdpartCorpId!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_id") {
                self.applyId = dict["apply_id"] as! Int64
            }
            if dict.keys.contains("apply_intention_info_do") {
                var model = FlightExceedApplyQueryResponseBody.Module.ApplyIntentionInfoDo()
                model.fromMap(dict["apply_intention_info_do"] as! [String: Any])
                self.applyIntentionInfoDo = model
            }
            if dict.keys.contains("btrip_cause") {
                self.btripCause = dict["btrip_cause"] as! String
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("exceed_reason") {
                self.exceedReason = dict["exceed_reason"] as! String
            }
            if dict.keys.contains("exceed_type") {
                self.exceedType = dict["exceed_type"] as! Int32
            }
            if dict.keys.contains("origin_standard") {
                self.originStandard = dict["origin_standard"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("submit_time") {
                self.submitTime = dict["submit_time"] as! String
            }
            if dict.keys.contains("thirdpart_apply_id") {
                self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
            }
            if dict.keys.contains("thirdpart_corp_id") {
                self.thirdpartCorpId = dict["thirdpart_corp_id"] as! String
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: FlightExceedApplyQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = FlightExceedApplyQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class FlightExceedApplyQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FlightExceedApplyQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = FlightExceedApplyQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FlightOrderListQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class FlightOrderListQueryRequest : Tea.TeaModel {
    public var allApply: Bool?

    public var applyId: Int64?

    public var departId: String?

    public var endTime: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var thirdpartApplyId: String?

    public var updateEndTime: String?

    public var updateStartTime: String?

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
        if self.allApply != nil {
            map["all_apply"] = self.allApply!
        }
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        if self.departId != nil {
            map["depart_id"] = self.departId!
        }
        if self.endTime != nil {
            map["end_time"] = self.endTime!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.startTime != nil {
            map["start_time"] = self.startTime!
        }
        if self.thirdpartApplyId != nil {
            map["thirdpart_apply_id"] = self.thirdpartApplyId!
        }
        if self.updateEndTime != nil {
            map["update_end_time"] = self.updateEndTime!
        }
        if self.updateStartTime != nil {
            map["update_start_time"] = self.updateStartTime!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all_apply") {
            self.allApply = dict["all_apply"] as! Bool
        }
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int64
        }
        if dict.keys.contains("depart_id") {
            self.departId = dict["depart_id"] as! String
        }
        if dict.keys.contains("end_time") {
            self.endTime = dict["end_time"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("start_time") {
            self.startTime = dict["start_time"] as! String
        }
        if dict.keys.contains("thirdpart_apply_id") {
            self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
        }
        if dict.keys.contains("update_end_time") {
            self.updateEndTime = dict["update_end_time"] as! String
        }
        if dict.keys.contains("update_start_time") {
            self.updateStartTime = dict["update_start_time"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class FlightOrderListQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class CostCenter : Tea.TeaModel {
            public var corpId: String?

            public var id: Int64?

            public var name: String?

            public var number: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.corpId != nil {
                    map["corp_id"] = self.corpId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.number != nil {
                    map["number"] = self.number!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("corp_id") {
                    self.corpId = dict["corp_id"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") {
                    self.number = dict["number"] as! String
                }
            }
        }
        public class InsureInfoList : Tea.TeaModel {
            public var insureNo: String?

            public var name: String?

            public var status: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.insureNo != nil {
                    map["insure_no"] = self.insureNo!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("insure_no") {
                    self.insureNo = dict["insure_no"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! Int32
                }
            }
        }
        public class Invoice : Tea.TeaModel {
            public var id: Int64?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public class PriceInfoList : Tea.TeaModel {
            public var categoryCode: Int32?

            public var categoryType: Int32?

            public var changeFlightNo: String?

            public var discount: String?

            public var endTime: String?

            public var gmtCreate: String?

            public var originalTicketNo: String?

            public var passengerName: String?

            public var payType: Int32?

            public var price: Double?

            public var startTime: String?

            public var ticketNo: String?

            public var tradeId: String?

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
                if self.categoryCode != nil {
                    map["category_code"] = self.categoryCode!
                }
                if self.categoryType != nil {
                    map["category_type"] = self.categoryType!
                }
                if self.changeFlightNo != nil {
                    map["change_flight_no"] = self.changeFlightNo!
                }
                if self.discount != nil {
                    map["discount"] = self.discount!
                }
                if self.endTime != nil {
                    map["end_time"] = self.endTime!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.originalTicketNo != nil {
                    map["original_ticket_no"] = self.originalTicketNo!
                }
                if self.passengerName != nil {
                    map["passenger_name"] = self.passengerName!
                }
                if self.payType != nil {
                    map["pay_type"] = self.payType!
                }
                if self.price != nil {
                    map["price"] = self.price!
                }
                if self.startTime != nil {
                    map["start_time"] = self.startTime!
                }
                if self.ticketNo != nil {
                    map["ticket_no"] = self.ticketNo!
                }
                if self.tradeId != nil {
                    map["trade_id"] = self.tradeId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category_code") {
                    self.categoryCode = dict["category_code"] as! Int32
                }
                if dict.keys.contains("category_type") {
                    self.categoryType = dict["category_type"] as! Int32
                }
                if dict.keys.contains("change_flight_no") {
                    self.changeFlightNo = dict["change_flight_no"] as! String
                }
                if dict.keys.contains("discount") {
                    self.discount = dict["discount"] as! String
                }
                if dict.keys.contains("end_time") {
                    self.endTime = dict["end_time"] as! String
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("original_ticket_no") {
                    self.originalTicketNo = dict["original_ticket_no"] as! String
                }
                if dict.keys.contains("passenger_name") {
                    self.passengerName = dict["passenger_name"] as! String
                }
                if dict.keys.contains("pay_type") {
                    self.payType = dict["pay_type"] as! Int32
                }
                if dict.keys.contains("price") {
                    self.price = dict["price"] as! Double
                }
                if dict.keys.contains("start_time") {
                    self.startTime = dict["start_time"] as! String
                }
                if dict.keys.contains("ticket_no") {
                    self.ticketNo = dict["ticket_no"] as! String
                }
                if dict.keys.contains("trade_id") {
                    self.tradeId = dict["trade_id"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public class UserAffiliateList : Tea.TeaModel {
            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public var applyId: Int64?

        public var arrAirport: String?

        public var arrCity: String?

        public var btripTitle: String?

        public var cabinClass: String?

        public var contactName: String?

        public var corpId: String?

        public var corpName: String?

        public var costCenter: FlightOrderListQueryResponseBody.Module.CostCenter?

        public var depAirport: String?

        public var depCity: String?

        public var depDate: String?

        public var departId: String?

        public var departName: String?

        public var discount: String?

        public var flightNo: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var insureInfoList: [FlightOrderListQueryResponseBody.Module.InsureInfoList]?

        public var invoice: FlightOrderListQueryResponseBody.Module.Invoice?

        public var passengerCount: Int32?

        public var passengerName: String?

        public var priceInfoList: [FlightOrderListQueryResponseBody.Module.PriceInfoList]?

        public var projectCode: String?

        public var projectId: Int64?

        public var projectTitle: String?

        public var retDate: String?

        public var status: Int32?

        public var thirdPartProjectId: String?

        public var thirdpartApplyId: String?

        public var thirdpartItineraryId: String?

        public var tripType: Int32?

        public var userAffiliateList: [FlightOrderListQueryResponseBody.Module.UserAffiliateList]?

        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.costCenter?.validate()
            try self.invoice?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["apply_id"] = self.applyId!
            }
            if self.arrAirport != nil {
                map["arr_airport"] = self.arrAirport!
            }
            if self.arrCity != nil {
                map["arr_city"] = self.arrCity!
            }
            if self.btripTitle != nil {
                map["btrip_title"] = self.btripTitle!
            }
            if self.cabinClass != nil {
                map["cabin_class"] = self.cabinClass!
            }
            if self.contactName != nil {
                map["contact_name"] = self.contactName!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.corpName != nil {
                map["corp_name"] = self.corpName!
            }
            if self.costCenter != nil {
                map["cost_center"] = self.costCenter?.toMap()
            }
            if self.depAirport != nil {
                map["dep_airport"] = self.depAirport!
            }
            if self.depCity != nil {
                map["dep_city"] = self.depCity!
            }
            if self.depDate != nil {
                map["dep_date"] = self.depDate!
            }
            if self.departId != nil {
                map["depart_id"] = self.departId!
            }
            if self.departName != nil {
                map["depart_name"] = self.departName!
            }
            if self.discount != nil {
                map["discount"] = self.discount!
            }
            if self.flightNo != nil {
                map["flight_no"] = self.flightNo!
            }
            if self.gmtCreate != nil {
                map["gmt_create"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmt_modified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.insureInfoList != nil {
                var tmp : [Any] = []
                for k in self.insureInfoList! {
                    tmp.append(k.toMap())
                }
                map["insure_info_list"] = tmp
            }
            if self.invoice != nil {
                map["invoice"] = self.invoice?.toMap()
            }
            if self.passengerCount != nil {
                map["passenger_count"] = self.passengerCount!
            }
            if self.passengerName != nil {
                map["passenger_name"] = self.passengerName!
            }
            if self.priceInfoList != nil {
                var tmp : [Any] = []
                for k in self.priceInfoList! {
                    tmp.append(k.toMap())
                }
                map["price_info_list"] = tmp
            }
            if self.projectCode != nil {
                map["project_code"] = self.projectCode!
            }
            if self.projectId != nil {
                map["project_id"] = self.projectId!
            }
            if self.projectTitle != nil {
                map["project_title"] = self.projectTitle!
            }
            if self.retDate != nil {
                map["ret_date"] = self.retDate!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.thirdPartProjectId != nil {
                map["third_part_project_id"] = self.thirdPartProjectId!
            }
            if self.thirdpartApplyId != nil {
                map["thirdpart_apply_id"] = self.thirdpartApplyId!
            }
            if self.thirdpartItineraryId != nil {
                map["thirdpart_itinerary_id"] = self.thirdpartItineraryId!
            }
            if self.tripType != nil {
                map["trip_type"] = self.tripType!
            }
            if self.userAffiliateList != nil {
                var tmp : [Any] = []
                for k in self.userAffiliateList! {
                    tmp.append(k.toMap())
                }
                map["user_affiliate_list"] = tmp
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_id") {
                self.applyId = dict["apply_id"] as! Int64
            }
            if dict.keys.contains("arr_airport") {
                self.arrAirport = dict["arr_airport"] as! String
            }
            if dict.keys.contains("arr_city") {
                self.arrCity = dict["arr_city"] as! String
            }
            if dict.keys.contains("btrip_title") {
                self.btripTitle = dict["btrip_title"] as! String
            }
            if dict.keys.contains("cabin_class") {
                self.cabinClass = dict["cabin_class"] as! String
            }
            if dict.keys.contains("contact_name") {
                self.contactName = dict["contact_name"] as! String
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("corp_name") {
                self.corpName = dict["corp_name"] as! String
            }
            if dict.keys.contains("cost_center") {
                var model = FlightOrderListQueryResponseBody.Module.CostCenter()
                model.fromMap(dict["cost_center"] as! [String: Any])
                self.costCenter = model
            }
            if dict.keys.contains("dep_airport") {
                self.depAirport = dict["dep_airport"] as! String
            }
            if dict.keys.contains("dep_city") {
                self.depCity = dict["dep_city"] as! String
            }
            if dict.keys.contains("dep_date") {
                self.depDate = dict["dep_date"] as! String
            }
            if dict.keys.contains("depart_id") {
                self.departId = dict["depart_id"] as! String
            }
            if dict.keys.contains("depart_name") {
                self.departName = dict["depart_name"] as! String
            }
            if dict.keys.contains("discount") {
                self.discount = dict["discount"] as! String
            }
            if dict.keys.contains("flight_no") {
                self.flightNo = dict["flight_no"] as! String
            }
            if dict.keys.contains("gmt_create") {
                self.gmtCreate = dict["gmt_create"] as! String
            }
            if dict.keys.contains("gmt_modified") {
                self.gmtModified = dict["gmt_modified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("insure_info_list") {
                self.insureInfoList = dict["insure_info_list"] as! [FlightOrderListQueryResponseBody.Module.InsureInfoList]
            }
            if dict.keys.contains("invoice") {
                var model = FlightOrderListQueryResponseBody.Module.Invoice()
                model.fromMap(dict["invoice"] as! [String: Any])
                self.invoice = model
            }
            if dict.keys.contains("passenger_count") {
                self.passengerCount = dict["passenger_count"] as! Int32
            }
            if dict.keys.contains("passenger_name") {
                self.passengerName = dict["passenger_name"] as! String
            }
            if dict.keys.contains("price_info_list") {
                self.priceInfoList = dict["price_info_list"] as! [FlightOrderListQueryResponseBody.Module.PriceInfoList]
            }
            if dict.keys.contains("project_code") {
                self.projectCode = dict["project_code"] as! String
            }
            if dict.keys.contains("project_id") {
                self.projectId = dict["project_id"] as! Int64
            }
            if dict.keys.contains("project_title") {
                self.projectTitle = dict["project_title"] as! String
            }
            if dict.keys.contains("ret_date") {
                self.retDate = dict["ret_date"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("third_part_project_id") {
                self.thirdPartProjectId = dict["third_part_project_id"] as! String
            }
            if dict.keys.contains("thirdpart_apply_id") {
                self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
            }
            if dict.keys.contains("thirdpart_itinerary_id") {
                self.thirdpartItineraryId = dict["thirdpart_itinerary_id"] as! String
            }
            if dict.keys.contains("trip_type") {
                self.tripType = dict["trip_type"] as! Int32
            }
            if dict.keys.contains("user_affiliate_list") {
                self.userAffiliateList = dict["user_affiliate_list"] as! [FlightOrderListQueryResponseBody.Module.UserAffiliateList]
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var totalNumber: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalNumber != nil {
                map["total_number"] = self.totalNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page") {
                self.page = dict["page"] as! Int32
            }
            if dict.keys.contains("page_size") {
                self.pageSize = dict["page_size"] as! Int32
            }
            if dict.keys.contains("total_number") {
                self.totalNumber = dict["total_number"] as! Int32
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: [FlightOrderListQueryResponseBody.Module]?

    public var pageInfo: FlightOrderListQueryResponseBody.PageInfo?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            var tmp : [Any] = []
            for k in self.module! {
                tmp.append(k.toMap())
            }
            map["module"] = tmp
        }
        if self.pageInfo != nil {
            map["page_info"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! [FlightOrderListQueryResponseBody.Module]
        }
        if dict.keys.contains("page_info") {
            var model = FlightOrderListQueryResponseBody.PageInfo()
            model.fromMap(dict["page_info"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class FlightOrderListQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FlightOrderListQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = FlightOrderListQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FlightOrderQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class FlightOrderQueryRequest : Tea.TeaModel {
    public var orderId: Int64?

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
        if self.orderId != nil {
            map["order_id"] = self.orderId!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_id") {
            self.orderId = dict["order_id"] as! Int64
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class FlightOrderQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class FlightChangeTicketInfoList : Tea.TeaModel {
            public var arrTime: String?

            public var changeCabin: String?

            public var changeCabinLevel: String?

            public var changeFee: Double?

            public var changeFlightNo: String?

            public var changeOrderId: Int64?

            public var changeReason: String?

            public var changeType: Int32?

            public var depTime: String?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var originTicketNo: String?

            public var ticketNo: String?

            public var upgradeFee: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrTime != nil {
                    map["arr_time"] = self.arrTime!
                }
                if self.changeCabin != nil {
                    map["change_cabin"] = self.changeCabin!
                }
                if self.changeCabinLevel != nil {
                    map["change_cabin_level"] = self.changeCabinLevel!
                }
                if self.changeFee != nil {
                    map["change_fee"] = self.changeFee!
                }
                if self.changeFlightNo != nil {
                    map["change_flight_no"] = self.changeFlightNo!
                }
                if self.changeOrderId != nil {
                    map["change_order_id"] = self.changeOrderId!
                }
                if self.changeReason != nil {
                    map["change_reason"] = self.changeReason!
                }
                if self.changeType != nil {
                    map["change_type"] = self.changeType!
                }
                if self.depTime != nil {
                    map["dep_time"] = self.depTime!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["gmt_modify"] = self.gmtModify!
                }
                if self.originTicketNo != nil {
                    map["origin_ticket_no"] = self.originTicketNo!
                }
                if self.ticketNo != nil {
                    map["ticket_no"] = self.ticketNo!
                }
                if self.upgradeFee != nil {
                    map["upgrade_fee"] = self.upgradeFee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arr_time") {
                    self.arrTime = dict["arr_time"] as! String
                }
                if dict.keys.contains("change_cabin") {
                    self.changeCabin = dict["change_cabin"] as! String
                }
                if dict.keys.contains("change_cabin_level") {
                    self.changeCabinLevel = dict["change_cabin_level"] as! String
                }
                if dict.keys.contains("change_fee") {
                    self.changeFee = dict["change_fee"] as! Double
                }
                if dict.keys.contains("change_flight_no") {
                    self.changeFlightNo = dict["change_flight_no"] as! String
                }
                if dict.keys.contains("change_order_id") {
                    self.changeOrderId = dict["change_order_id"] as! Int64
                }
                if dict.keys.contains("change_reason") {
                    self.changeReason = dict["change_reason"] as! String
                }
                if dict.keys.contains("change_type") {
                    self.changeType = dict["change_type"] as! Int32
                }
                if dict.keys.contains("dep_time") {
                    self.depTime = dict["dep_time"] as! String
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("gmt_modify") {
                    self.gmtModify = dict["gmt_modify"] as! String
                }
                if dict.keys.contains("origin_ticket_no") {
                    self.originTicketNo = dict["origin_ticket_no"] as! String
                }
                if dict.keys.contains("ticket_no") {
                    self.ticketNo = dict["ticket_no"] as! String
                }
                if dict.keys.contains("upgrade_fee") {
                    self.upgradeFee = dict["upgrade_fee"] as! Double
                }
            }
        }
        public class FlightInfoList : Tea.TeaModel {
            public var airlineCode: String?

            public var airlineName: String?

            public var arrAirportCode: String?

            public var arrAirportName: String?

            public var arrCityCode: String?

            public var arrCityName: String?

            public var arrTime: String?

            public var cabin: String?

            public var cabinLevel: String?

            public var depAirportCode: String?

            public var depAirportName: String?

            public var depCityCode: String?

            public var depCityName: String?

            public var depTime: String?

            public var flightMile: Int32?

            public var flightNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.airlineCode != nil {
                    map["airline_code"] = self.airlineCode!
                }
                if self.airlineName != nil {
                    map["airline_name"] = self.airlineName!
                }
                if self.arrAirportCode != nil {
                    map["arr_airport_code"] = self.arrAirportCode!
                }
                if self.arrAirportName != nil {
                    map["arr_airport_name"] = self.arrAirportName!
                }
                if self.arrCityCode != nil {
                    map["arr_city_code"] = self.arrCityCode!
                }
                if self.arrCityName != nil {
                    map["arr_city_name"] = self.arrCityName!
                }
                if self.arrTime != nil {
                    map["arr_time"] = self.arrTime!
                }
                if self.cabin != nil {
                    map["cabin"] = self.cabin!
                }
                if self.cabinLevel != nil {
                    map["cabin_level"] = self.cabinLevel!
                }
                if self.depAirportCode != nil {
                    map["dep_airport_code"] = self.depAirportCode!
                }
                if self.depAirportName != nil {
                    map["dep_airport_name"] = self.depAirportName!
                }
                if self.depCityCode != nil {
                    map["dep_city_code"] = self.depCityCode!
                }
                if self.depCityName != nil {
                    map["dep_city_name"] = self.depCityName!
                }
                if self.depTime != nil {
                    map["dep_time"] = self.depTime!
                }
                if self.flightMile != nil {
                    map["flight_mile"] = self.flightMile!
                }
                if self.flightNo != nil {
                    map["flight_no"] = self.flightNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("airline_code") {
                    self.airlineCode = dict["airline_code"] as! String
                }
                if dict.keys.contains("airline_name") {
                    self.airlineName = dict["airline_name"] as! String
                }
                if dict.keys.contains("arr_airport_code") {
                    self.arrAirportCode = dict["arr_airport_code"] as! String
                }
                if dict.keys.contains("arr_airport_name") {
                    self.arrAirportName = dict["arr_airport_name"] as! String
                }
                if dict.keys.contains("arr_city_code") {
                    self.arrCityCode = dict["arr_city_code"] as! String
                }
                if dict.keys.contains("arr_city_name") {
                    self.arrCityName = dict["arr_city_name"] as! String
                }
                if dict.keys.contains("arr_time") {
                    self.arrTime = dict["arr_time"] as! String
                }
                if dict.keys.contains("cabin") {
                    self.cabin = dict["cabin"] as! String
                }
                if dict.keys.contains("cabin_level") {
                    self.cabinLevel = dict["cabin_level"] as! String
                }
                if dict.keys.contains("dep_airport_code") {
                    self.depAirportCode = dict["dep_airport_code"] as! String
                }
                if dict.keys.contains("dep_airport_name") {
                    self.depAirportName = dict["dep_airport_name"] as! String
                }
                if dict.keys.contains("dep_city_code") {
                    self.depCityCode = dict["dep_city_code"] as! String
                }
                if dict.keys.contains("dep_city_name") {
                    self.depCityName = dict["dep_city_name"] as! String
                }
                if dict.keys.contains("dep_time") {
                    self.depTime = dict["dep_time"] as! String
                }
                if dict.keys.contains("flight_mile") {
                    self.flightMile = dict["flight_mile"] as! Int32
                }
                if dict.keys.contains("flight_no") {
                    self.flightNo = dict["flight_no"] as! String
                }
            }
        }
        public class FlightRefundTicketInfoList : Tea.TeaModel {
            public var gmtCreate: String?

            public var gmtModify: String?

            public var refundOrderId: Int64?

            public var refundReason: String?

            public var refundTicketFee: Double?

            public var refundType: Int32?

            public var ticketNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["gmt_modify"] = self.gmtModify!
                }
                if self.refundOrderId != nil {
                    map["refund_order_id"] = self.refundOrderId!
                }
                if self.refundReason != nil {
                    map["refund_reason"] = self.refundReason!
                }
                if self.refundTicketFee != nil {
                    map["refund_ticket_fee"] = self.refundTicketFee!
                }
                if self.refundType != nil {
                    map["refund_type"] = self.refundType!
                }
                if self.ticketNo != nil {
                    map["ticket_no"] = self.ticketNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("gmt_modify") {
                    self.gmtModify = dict["gmt_modify"] as! String
                }
                if dict.keys.contains("refund_order_id") {
                    self.refundOrderId = dict["refund_order_id"] as! Int64
                }
                if dict.keys.contains("refund_reason") {
                    self.refundReason = dict["refund_reason"] as! String
                }
                if dict.keys.contains("refund_ticket_fee") {
                    self.refundTicketFee = dict["refund_ticket_fee"] as! Double
                }
                if dict.keys.contains("refund_type") {
                    self.refundType = dict["refund_type"] as! Int32
                }
                if dict.keys.contains("ticket_no") {
                    self.ticketNo = dict["ticket_no"] as! String
                }
            }
        }
        public class FlightTicketInfoList : Tea.TeaModel {
            public var buildPrice: Double?

            public var changed: Bool?

            public var discount: Int32?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var oilPrice: Double?

            public var payType: Int32?

            public var settlePrice: Double?

            public var ticketNo: String?

            public var ticketPrice: Double?

            public var ticketStatus: String?

            public var ticketStatusCode: Int32?

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
                if self.buildPrice != nil {
                    map["build_price"] = self.buildPrice!
                }
                if self.changed != nil {
                    map["changed"] = self.changed!
                }
                if self.discount != nil {
                    map["discount"] = self.discount!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["gmt_modify"] = self.gmtModify!
                }
                if self.oilPrice != nil {
                    map["oil_price"] = self.oilPrice!
                }
                if self.payType != nil {
                    map["pay_type"] = self.payType!
                }
                if self.settlePrice != nil {
                    map["settle_price"] = self.settlePrice!
                }
                if self.ticketNo != nil {
                    map["ticket_no"] = self.ticketNo!
                }
                if self.ticketPrice != nil {
                    map["ticket_price"] = self.ticketPrice!
                }
                if self.ticketStatus != nil {
                    map["ticket_status"] = self.ticketStatus!
                }
                if self.ticketStatusCode != nil {
                    map["ticket_status_code"] = self.ticketStatusCode!
                }
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("build_price") {
                    self.buildPrice = dict["build_price"] as! Double
                }
                if dict.keys.contains("changed") {
                    self.changed = dict["changed"] as! Bool
                }
                if dict.keys.contains("discount") {
                    self.discount = dict["discount"] as! Int32
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("gmt_modify") {
                    self.gmtModify = dict["gmt_modify"] as! String
                }
                if dict.keys.contains("oil_price") {
                    self.oilPrice = dict["oil_price"] as! Double
                }
                if dict.keys.contains("pay_type") {
                    self.payType = dict["pay_type"] as! Int32
                }
                if dict.keys.contains("settle_price") {
                    self.settlePrice = dict["settle_price"] as! Double
                }
                if dict.keys.contains("ticket_no") {
                    self.ticketNo = dict["ticket_no"] as! String
                }
                if dict.keys.contains("ticket_price") {
                    self.ticketPrice = dict["ticket_price"] as! Double
                }
                if dict.keys.contains("ticket_status") {
                    self.ticketStatus = dict["ticket_status"] as! String
                }
                if dict.keys.contains("ticket_status_code") {
                    self.ticketStatusCode = dict["ticket_status_code"] as! Int32
                }
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
            }
        }
        public class InsuranceInfoList : Tea.TeaModel {
            public var amount: Double?

            public var insuranceNo: String?

            public var status: Int32?

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
                if self.amount != nil {
                    map["amount"] = self.amount!
                }
                if self.insuranceNo != nil {
                    map["insurance_no"] = self.insuranceNo!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("amount") {
                    self.amount = dict["amount"] as! Double
                }
                if dict.keys.contains("insurance_no") {
                    self.insuranceNo = dict["insurance_no"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class InvoiceInfo : Tea.TeaModel {
            public var id: Int64?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public class OrderBaseInfo : Tea.TeaModel {
            public var applyId: String?

            public var btripTitle: String?

            public var contactName: String?

            public var corpId: String?

            public var corpName: String?

            public var departId: String?

            public var departName: String?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var itineraryId: String?

            public var orderId: Int64?

            public var orderStatus: Int32?

            public var thirdpartApplyId: String?

            public var thirdpartCorpId: String?

            public var thirdpartItineraryId: String?

            public var tripType: Int32?

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
                if self.applyId != nil {
                    map["apply_id"] = self.applyId!
                }
                if self.btripTitle != nil {
                    map["btrip_title"] = self.btripTitle!
                }
                if self.contactName != nil {
                    map["contact_name"] = self.contactName!
                }
                if self.corpId != nil {
                    map["corp_id"] = self.corpId!
                }
                if self.corpName != nil {
                    map["corp_name"] = self.corpName!
                }
                if self.departId != nil {
                    map["depart_id"] = self.departId!
                }
                if self.departName != nil {
                    map["depart_name"] = self.departName!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["gmt_modify"] = self.gmtModify!
                }
                if self.itineraryId != nil {
                    map["itinerary_id"] = self.itineraryId!
                }
                if self.orderId != nil {
                    map["order_id"] = self.orderId!
                }
                if self.orderStatus != nil {
                    map["order_status"] = self.orderStatus!
                }
                if self.thirdpartApplyId != nil {
                    map["thirdpart_apply_id"] = self.thirdpartApplyId!
                }
                if self.thirdpartCorpId != nil {
                    map["thirdpart_corp_id"] = self.thirdpartCorpId!
                }
                if self.thirdpartItineraryId != nil {
                    map["thirdpart_itinerary_id"] = self.thirdpartItineraryId!
                }
                if self.tripType != nil {
                    map["trip_type"] = self.tripType!
                }
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("apply_id") {
                    self.applyId = dict["apply_id"] as! String
                }
                if dict.keys.contains("btrip_title") {
                    self.btripTitle = dict["btrip_title"] as! String
                }
                if dict.keys.contains("contact_name") {
                    self.contactName = dict["contact_name"] as! String
                }
                if dict.keys.contains("corp_id") {
                    self.corpId = dict["corp_id"] as! String
                }
                if dict.keys.contains("corp_name") {
                    self.corpName = dict["corp_name"] as! String
                }
                if dict.keys.contains("depart_id") {
                    self.departId = dict["depart_id"] as! String
                }
                if dict.keys.contains("depart_name") {
                    self.departName = dict["depart_name"] as! String
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("gmt_modify") {
                    self.gmtModify = dict["gmt_modify"] as! String
                }
                if dict.keys.contains("itinerary_id") {
                    self.itineraryId = dict["itinerary_id"] as! String
                }
                if dict.keys.contains("order_id") {
                    self.orderId = dict["order_id"] as! Int64
                }
                if dict.keys.contains("order_status") {
                    self.orderStatus = dict["order_status"] as! Int32
                }
                if dict.keys.contains("thirdpart_apply_id") {
                    self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
                }
                if dict.keys.contains("thirdpart_corp_id") {
                    self.thirdpartCorpId = dict["thirdpart_corp_id"] as! String
                }
                if dict.keys.contains("thirdpart_itinerary_id") {
                    self.thirdpartItineraryId = dict["thirdpart_itinerary_id"] as! String
                }
                if dict.keys.contains("trip_type") {
                    self.tripType = dict["trip_type"] as! Int32
                }
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
            }
        }
        public class PassengerInfoList : Tea.TeaModel {
            public var costCenterId: Int64?

            public var costCenterName: String?

            public var costCenterNumber: String?

            public var projectCode: String?

            public var projectId: Int64?

            public var projectTitle: String?

            public var thirdpartProjectId: String?

            public var userId: String?

            public var userName: String?

            public var userType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.costCenterId != nil {
                    map["cost_center_id"] = self.costCenterId!
                }
                if self.costCenterName != nil {
                    map["cost_center_name"] = self.costCenterName!
                }
                if self.costCenterNumber != nil {
                    map["cost_center_number"] = self.costCenterNumber!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectId != nil {
                    map["project_id"] = self.projectId!
                }
                if self.projectTitle != nil {
                    map["project_title"] = self.projectTitle!
                }
                if self.thirdpartProjectId != nil {
                    map["thirdpart_project_id"] = self.thirdpartProjectId!
                }
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                if self.userType != nil {
                    map["user_type"] = self.userType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cost_center_id") {
                    self.costCenterId = dict["cost_center_id"] as! Int64
                }
                if dict.keys.contains("cost_center_name") {
                    self.costCenterName = dict["cost_center_name"] as! String
                }
                if dict.keys.contains("cost_center_number") {
                    self.costCenterNumber = dict["cost_center_number"] as! String
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_id") {
                    self.projectId = dict["project_id"] as! Int64
                }
                if dict.keys.contains("project_title") {
                    self.projectTitle = dict["project_title"] as! String
                }
                if dict.keys.contains("thirdpart_project_id") {
                    self.thirdpartProjectId = dict["thirdpart_project_id"] as! String
                }
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
                if dict.keys.contains("user_type") {
                    self.userType = dict["user_type"] as! Int32
                }
            }
        }
        public class PriceInfoList : Tea.TeaModel {
            public var categoryCode: Int32?

            public var gmtCreate: String?

            public var passengerName: String?

            public var payType: Int32?

            public var price: Double?

            public var tradeId: String?

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
                if self.categoryCode != nil {
                    map["category_code"] = self.categoryCode!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.passengerName != nil {
                    map["passenger_name"] = self.passengerName!
                }
                if self.payType != nil {
                    map["pay_type"] = self.payType!
                }
                if self.price != nil {
                    map["price"] = self.price!
                }
                if self.tradeId != nil {
                    map["trade_id"] = self.tradeId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category_code") {
                    self.categoryCode = dict["category_code"] as! Int32
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("passenger_name") {
                    self.passengerName = dict["passenger_name"] as! String
                }
                if dict.keys.contains("pay_type") {
                    self.payType = dict["pay_type"] as! Int32
                }
                if dict.keys.contains("price") {
                    self.price = dict["price"] as! Double
                }
                if dict.keys.contains("trade_id") {
                    self.tradeId = dict["trade_id"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public var flightChangeTicketInfoList: [FlightOrderQueryResponseBody.Module.FlightChangeTicketInfoList]?

        public var flightInfoList: [FlightOrderQueryResponseBody.Module.FlightInfoList]?

        public var flightRefundTicketInfoList: [FlightOrderQueryResponseBody.Module.FlightRefundTicketInfoList]?

        public var flightTicketInfoList: [FlightOrderQueryResponseBody.Module.FlightTicketInfoList]?

        public var insuranceInfoList: [FlightOrderQueryResponseBody.Module.InsuranceInfoList]?

        public var invoiceInfo: FlightOrderQueryResponseBody.Module.InvoiceInfo?

        public var orderBaseInfo: FlightOrderQueryResponseBody.Module.OrderBaseInfo?

        public var passengerInfoList: [FlightOrderQueryResponseBody.Module.PassengerInfoList]?

        public var priceInfoList: [FlightOrderQueryResponseBody.Module.PriceInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.invoiceInfo?.validate()
            try self.orderBaseInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flightChangeTicketInfoList != nil {
                var tmp : [Any] = []
                for k in self.flightChangeTicketInfoList! {
                    tmp.append(k.toMap())
                }
                map["flight_change_ticket_info_list"] = tmp
            }
            if self.flightInfoList != nil {
                var tmp : [Any] = []
                for k in self.flightInfoList! {
                    tmp.append(k.toMap())
                }
                map["flight_info_list"] = tmp
            }
            if self.flightRefundTicketInfoList != nil {
                var tmp : [Any] = []
                for k in self.flightRefundTicketInfoList! {
                    tmp.append(k.toMap())
                }
                map["flight_refund_ticket_info_list"] = tmp
            }
            if self.flightTicketInfoList != nil {
                var tmp : [Any] = []
                for k in self.flightTicketInfoList! {
                    tmp.append(k.toMap())
                }
                map["flight_ticket_info_list"] = tmp
            }
            if self.insuranceInfoList != nil {
                var tmp : [Any] = []
                for k in self.insuranceInfoList! {
                    tmp.append(k.toMap())
                }
                map["insurance_info_list"] = tmp
            }
            if self.invoiceInfo != nil {
                map["invoice_info"] = self.invoiceInfo?.toMap()
            }
            if self.orderBaseInfo != nil {
                map["order_base_info"] = self.orderBaseInfo?.toMap()
            }
            if self.passengerInfoList != nil {
                var tmp : [Any] = []
                for k in self.passengerInfoList! {
                    tmp.append(k.toMap())
                }
                map["passenger_info_list"] = tmp
            }
            if self.priceInfoList != nil {
                var tmp : [Any] = []
                for k in self.priceInfoList! {
                    tmp.append(k.toMap())
                }
                map["price_info_list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("flight_change_ticket_info_list") {
                self.flightChangeTicketInfoList = dict["flight_change_ticket_info_list"] as! [FlightOrderQueryResponseBody.Module.FlightChangeTicketInfoList]
            }
            if dict.keys.contains("flight_info_list") {
                self.flightInfoList = dict["flight_info_list"] as! [FlightOrderQueryResponseBody.Module.FlightInfoList]
            }
            if dict.keys.contains("flight_refund_ticket_info_list") {
                self.flightRefundTicketInfoList = dict["flight_refund_ticket_info_list"] as! [FlightOrderQueryResponseBody.Module.FlightRefundTicketInfoList]
            }
            if dict.keys.contains("flight_ticket_info_list") {
                self.flightTicketInfoList = dict["flight_ticket_info_list"] as! [FlightOrderQueryResponseBody.Module.FlightTicketInfoList]
            }
            if dict.keys.contains("insurance_info_list") {
                self.insuranceInfoList = dict["insurance_info_list"] as! [FlightOrderQueryResponseBody.Module.InsuranceInfoList]
            }
            if dict.keys.contains("invoice_info") {
                var model = FlightOrderQueryResponseBody.Module.InvoiceInfo()
                model.fromMap(dict["invoice_info"] as! [String: Any])
                self.invoiceInfo = model
            }
            if dict.keys.contains("order_base_info") {
                var model = FlightOrderQueryResponseBody.Module.OrderBaseInfo()
                model.fromMap(dict["order_base_info"] as! [String: Any])
                self.orderBaseInfo = model
            }
            if dict.keys.contains("passenger_info_list") {
                self.passengerInfoList = dict["passenger_info_list"] as! [FlightOrderQueryResponseBody.Module.PassengerInfoList]
            }
            if dict.keys.contains("price_info_list") {
                self.priceInfoList = dict["price_info_list"] as! [FlightOrderQueryResponseBody.Module.PriceInfoList]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: FlightOrderQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = FlightOrderQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class FlightOrderQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FlightOrderQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = FlightOrderQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class HotelBillSettlementQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class HotelBillSettlementQueryRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var periodEnd: String?

    public var periodStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["page_no"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.periodEnd != nil {
            map["period_end"] = self.periodEnd!
        }
        if self.periodStart != nil {
            map["period_start"] = self.periodStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_no") {
            self.pageNo = dict["page_no"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("period_end") {
            self.periodEnd = dict["period_end"] as! String
        }
        if dict.keys.contains("period_start") {
            self.periodStart = dict["period_start"] as! String
        }
    }
}

public class HotelBillSettlementQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class DataList : Tea.TeaModel {
            public var alipayTradeNo: String?

            public var applyId: String?

            public var billRecordTime: String?

            public var bookTime: String?

            public var bookerId: String?

            public var bookerJobNo: String?

            public var bookerName: String?

            public var capitalDirection: String?

            public var cascadeDepartment: String?

            public var checkInDate: String?

            public var checkoutDate: String?

            public var city: String?

            public var cityCode: String?

            public var corpRefundFee: Double?

            public var corpTotalFee: Double?

            public var costCenter: String?

            public var costCenterNumber: String?

            public var department: String?

            public var departmentId: String?

            public var feeType: String?

            public var fees: Double?

            public var fuPointFee: Double?

            public var hotelName: String?

            public var index: String?

            public var invoiceTitle: String?

            public var isNegotiation: String?

            public var isShareStr: String?

            public var nights: Int32?

            public var orderId: String?

            public var orderPrice: Double?

            public var orderType: String?

            public var overApplyId: String?

            public var personRefundFee: Double?

            public var personSettlePrice: Double?

            public var primaryId: Int64?

            public var projectCode: String?

            public var projectName: String?

            public var promotionFee: Double?

            public var remark: String?

            public var roomNumber: Int32?

            public var roomPrice: Double?

            public var roomType: String?

            public var serviceFee: Double?

            public var settlementFee: Double?

            public var settlementGrantFee: Double?

            public var settlementTime: String?

            public var settlementType: String?

            public var status: Int32?

            public var totalNights: Int32?

            public var travelerId: String?

            public var travelerJobNo: String?

            public var travelerName: String?

            public var voucherType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alipayTradeNo != nil {
                    map["alipay_trade_no"] = self.alipayTradeNo!
                }
                if self.applyId != nil {
                    map["apply_id"] = self.applyId!
                }
                if self.billRecordTime != nil {
                    map["bill_record_time"] = self.billRecordTime!
                }
                if self.bookTime != nil {
                    map["book_time"] = self.bookTime!
                }
                if self.bookerId != nil {
                    map["booker_id"] = self.bookerId!
                }
                if self.bookerJobNo != nil {
                    map["booker_job_no"] = self.bookerJobNo!
                }
                if self.bookerName != nil {
                    map["booker_name"] = self.bookerName!
                }
                if self.capitalDirection != nil {
                    map["capital_direction"] = self.capitalDirection!
                }
                if self.cascadeDepartment != nil {
                    map["cascade_department"] = self.cascadeDepartment!
                }
                if self.checkInDate != nil {
                    map["check_in_date"] = self.checkInDate!
                }
                if self.checkoutDate != nil {
                    map["checkout_date"] = self.checkoutDate!
                }
                if self.city != nil {
                    map["city"] = self.city!
                }
                if self.cityCode != nil {
                    map["city_code"] = self.cityCode!
                }
                if self.corpRefundFee != nil {
                    map["corp_refund_fee"] = self.corpRefundFee!
                }
                if self.corpTotalFee != nil {
                    map["corp_total_fee"] = self.corpTotalFee!
                }
                if self.costCenter != nil {
                    map["cost_center"] = self.costCenter!
                }
                if self.costCenterNumber != nil {
                    map["cost_center_number"] = self.costCenterNumber!
                }
                if self.department != nil {
                    map["department"] = self.department!
                }
                if self.departmentId != nil {
                    map["department_id"] = self.departmentId!
                }
                if self.feeType != nil {
                    map["fee_type"] = self.feeType!
                }
                if self.fees != nil {
                    map["fees"] = self.fees!
                }
                if self.fuPointFee != nil {
                    map["fu_point_fee"] = self.fuPointFee!
                }
                if self.hotelName != nil {
                    map["hotel_name"] = self.hotelName!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.invoiceTitle != nil {
                    map["invoice_title"] = self.invoiceTitle!
                }
                if self.isNegotiation != nil {
                    map["is_negotiation"] = self.isNegotiation!
                }
                if self.isShareStr != nil {
                    map["is_share_str"] = self.isShareStr!
                }
                if self.nights != nil {
                    map["nights"] = self.nights!
                }
                if self.orderId != nil {
                    map["order_id"] = self.orderId!
                }
                if self.orderPrice != nil {
                    map["order_price"] = self.orderPrice!
                }
                if self.orderType != nil {
                    map["order_type"] = self.orderType!
                }
                if self.overApplyId != nil {
                    map["over_apply_id"] = self.overApplyId!
                }
                if self.personRefundFee != nil {
                    map["person_refund_fee"] = self.personRefundFee!
                }
                if self.personSettlePrice != nil {
                    map["person_settle_price"] = self.personSettlePrice!
                }
                if self.primaryId != nil {
                    map["primary_id"] = self.primaryId!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectName != nil {
                    map["project_name"] = self.projectName!
                }
                if self.promotionFee != nil {
                    map["promotion_fee"] = self.promotionFee!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                if self.roomNumber != nil {
                    map["room_number"] = self.roomNumber!
                }
                if self.roomPrice != nil {
                    map["room_price"] = self.roomPrice!
                }
                if self.roomType != nil {
                    map["room_type"] = self.roomType!
                }
                if self.serviceFee != nil {
                    map["service_fee"] = self.serviceFee!
                }
                if self.settlementFee != nil {
                    map["settlement_fee"] = self.settlementFee!
                }
                if self.settlementGrantFee != nil {
                    map["settlement_grant_fee"] = self.settlementGrantFee!
                }
                if self.settlementTime != nil {
                    map["settlement_time"] = self.settlementTime!
                }
                if self.settlementType != nil {
                    map["settlement_type"] = self.settlementType!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.totalNights != nil {
                    map["total_nights"] = self.totalNights!
                }
                if self.travelerId != nil {
                    map["traveler_id"] = self.travelerId!
                }
                if self.travelerJobNo != nil {
                    map["traveler_job_no"] = self.travelerJobNo!
                }
                if self.travelerName != nil {
                    map["traveler_name"] = self.travelerName!
                }
                if self.voucherType != nil {
                    map["voucher_type"] = self.voucherType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("alipay_trade_no") {
                    self.alipayTradeNo = dict["alipay_trade_no"] as! String
                }
                if dict.keys.contains("apply_id") {
                    self.applyId = dict["apply_id"] as! String
                }
                if dict.keys.contains("bill_record_time") {
                    self.billRecordTime = dict["bill_record_time"] as! String
                }
                if dict.keys.contains("book_time") {
                    self.bookTime = dict["book_time"] as! String
                }
                if dict.keys.contains("booker_id") {
                    self.bookerId = dict["booker_id"] as! String
                }
                if dict.keys.contains("booker_job_no") {
                    self.bookerJobNo = dict["booker_job_no"] as! String
                }
                if dict.keys.contains("booker_name") {
                    self.bookerName = dict["booker_name"] as! String
                }
                if dict.keys.contains("capital_direction") {
                    self.capitalDirection = dict["capital_direction"] as! String
                }
                if dict.keys.contains("cascade_department") {
                    self.cascadeDepartment = dict["cascade_department"] as! String
                }
                if dict.keys.contains("check_in_date") {
                    self.checkInDate = dict["check_in_date"] as! String
                }
                if dict.keys.contains("checkout_date") {
                    self.checkoutDate = dict["checkout_date"] as! String
                }
                if dict.keys.contains("city") {
                    self.city = dict["city"] as! String
                }
                if dict.keys.contains("city_code") {
                    self.cityCode = dict["city_code"] as! String
                }
                if dict.keys.contains("corp_refund_fee") {
                    self.corpRefundFee = dict["corp_refund_fee"] as! Double
                }
                if dict.keys.contains("corp_total_fee") {
                    self.corpTotalFee = dict["corp_total_fee"] as! Double
                }
                if dict.keys.contains("cost_center") {
                    self.costCenter = dict["cost_center"] as! String
                }
                if dict.keys.contains("cost_center_number") {
                    self.costCenterNumber = dict["cost_center_number"] as! String
                }
                if dict.keys.contains("department") {
                    self.department = dict["department"] as! String
                }
                if dict.keys.contains("department_id") {
                    self.departmentId = dict["department_id"] as! String
                }
                if dict.keys.contains("fee_type") {
                    self.feeType = dict["fee_type"] as! String
                }
                if dict.keys.contains("fees") {
                    self.fees = dict["fees"] as! Double
                }
                if dict.keys.contains("fu_point_fee") {
                    self.fuPointFee = dict["fu_point_fee"] as! Double
                }
                if dict.keys.contains("hotel_name") {
                    self.hotelName = dict["hotel_name"] as! String
                }
                if dict.keys.contains("index") {
                    self.index = dict["index"] as! String
                }
                if dict.keys.contains("invoice_title") {
                    self.invoiceTitle = dict["invoice_title"] as! String
                }
                if dict.keys.contains("is_negotiation") {
                    self.isNegotiation = dict["is_negotiation"] as! String
                }
                if dict.keys.contains("is_share_str") {
                    self.isShareStr = dict["is_share_str"] as! String
                }
                if dict.keys.contains("nights") {
                    self.nights = dict["nights"] as! Int32
                }
                if dict.keys.contains("order_id") {
                    self.orderId = dict["order_id"] as! String
                }
                if dict.keys.contains("order_price") {
                    self.orderPrice = dict["order_price"] as! Double
                }
                if dict.keys.contains("order_type") {
                    self.orderType = dict["order_type"] as! String
                }
                if dict.keys.contains("over_apply_id") {
                    self.overApplyId = dict["over_apply_id"] as! String
                }
                if dict.keys.contains("person_refund_fee") {
                    self.personRefundFee = dict["person_refund_fee"] as! Double
                }
                if dict.keys.contains("person_settle_price") {
                    self.personSettlePrice = dict["person_settle_price"] as! Double
                }
                if dict.keys.contains("primary_id") {
                    self.primaryId = dict["primary_id"] as! Int64
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_name") {
                    self.projectName = dict["project_name"] as! String
                }
                if dict.keys.contains("promotion_fee") {
                    self.promotionFee = dict["promotion_fee"] as! Double
                }
                if dict.keys.contains("remark") {
                    self.remark = dict["remark"] as! String
                }
                if dict.keys.contains("room_number") {
                    self.roomNumber = dict["room_number"] as! Int32
                }
                if dict.keys.contains("room_price") {
                    self.roomPrice = dict["room_price"] as! Double
                }
                if dict.keys.contains("room_type") {
                    self.roomType = dict["room_type"] as! String
                }
                if dict.keys.contains("service_fee") {
                    self.serviceFee = dict["service_fee"] as! Double
                }
                if dict.keys.contains("settlement_fee") {
                    self.settlementFee = dict["settlement_fee"] as! Double
                }
                if dict.keys.contains("settlement_grant_fee") {
                    self.settlementGrantFee = dict["settlement_grant_fee"] as! Double
                }
                if dict.keys.contains("settlement_time") {
                    self.settlementTime = dict["settlement_time"] as! String
                }
                if dict.keys.contains("settlement_type") {
                    self.settlementType = dict["settlement_type"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("total_nights") {
                    self.totalNights = dict["total_nights"] as! Int32
                }
                if dict.keys.contains("traveler_id") {
                    self.travelerId = dict["traveler_id"] as! String
                }
                if dict.keys.contains("traveler_job_no") {
                    self.travelerJobNo = dict["traveler_job_no"] as! String
                }
                if dict.keys.contains("traveler_name") {
                    self.travelerName = dict["traveler_name"] as! String
                }
                if dict.keys.contains("voucher_type") {
                    self.voucherType = dict["voucher_type"] as! Int32
                }
            }
        }
        public var category: Int32?

        public var corpId: String?

        public var dataList: [HotelBillSettlementQueryResponseBody.Module.DataList]?

        public var periodEnd: String?

        public var periodStart: String?

        public var totalNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.dataList != nil {
                var tmp : [Any] = []
                for k in self.dataList! {
                    tmp.append(k.toMap())
                }
                map["data_list"] = tmp
            }
            if self.periodEnd != nil {
                map["period_end"] = self.periodEnd!
            }
            if self.periodStart != nil {
                map["period_start"] = self.periodStart!
            }
            if self.totalNum != nil {
                map["total_num"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") {
                self.category = dict["category"] as! Int32
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("data_list") {
                self.dataList = dict["data_list"] as! [HotelBillSettlementQueryResponseBody.Module.DataList]
            }
            if dict.keys.contains("period_end") {
                self.periodEnd = dict["period_end"] as! String
            }
            if dict.keys.contains("period_start") {
                self.periodStart = dict["period_start"] as! String
            }
            if dict.keys.contains("total_num") {
                self.totalNum = dict["total_num"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: HotelBillSettlementQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = HotelBillSettlementQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class HotelBillSettlementQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HotelBillSettlementQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = HotelBillSettlementQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class HotelExceedApplyQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class HotelExceedApplyQueryRequest : Tea.TeaModel {
    public var applyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int64
        }
    }
}

public class HotelExceedApplyQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class ApplyIntentionInfoDo : Tea.TeaModel {
            public var checkIn: String?

            public var checkOut: String?

            public var cityCode: String?

            public var cityName: String?

            public var price: Int64?

            public var together: Bool?

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
                if self.checkIn != nil {
                    map["check_in"] = self.checkIn!
                }
                if self.checkOut != nil {
                    map["check_out"] = self.checkOut!
                }
                if self.cityCode != nil {
                    map["city_code"] = self.cityCode!
                }
                if self.cityName != nil {
                    map["city_name"] = self.cityName!
                }
                if self.price != nil {
                    map["price"] = self.price!
                }
                if self.together != nil {
                    map["together"] = self.together!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("check_in") {
                    self.checkIn = dict["check_in"] as! String
                }
                if dict.keys.contains("check_out") {
                    self.checkOut = dict["check_out"] as! String
                }
                if dict.keys.contains("city_code") {
                    self.cityCode = dict["city_code"] as! String
                }
                if dict.keys.contains("city_name") {
                    self.cityName = dict["city_name"] as! String
                }
                if dict.keys.contains("price") {
                    self.price = dict["price"] as! Int64
                }
                if dict.keys.contains("together") {
                    self.together = dict["together"] as! Bool
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public var applyId: Int64?

        public var applyIntentionInfoDo: HotelExceedApplyQueryResponseBody.Module.ApplyIntentionInfoDo?

        public var btripCause: String?

        public var corpId: String?

        public var exceedReason: String?

        public var exceedType: Int32?

        public var originStandard: String?

        public var status: Int32?

        public var submitTime: String?

        public var thirdpartApplyId: String?

        public var thirdpartCorpId: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.applyIntentionInfoDo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["apply_id"] = self.applyId!
            }
            if self.applyIntentionInfoDo != nil {
                map["apply_intention_info_do"] = self.applyIntentionInfoDo?.toMap()
            }
            if self.btripCause != nil {
                map["btrip_cause"] = self.btripCause!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.exceedReason != nil {
                map["exceed_reason"] = self.exceedReason!
            }
            if self.exceedType != nil {
                map["exceed_type"] = self.exceedType!
            }
            if self.originStandard != nil {
                map["origin_standard"] = self.originStandard!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.submitTime != nil {
                map["submit_time"] = self.submitTime!
            }
            if self.thirdpartApplyId != nil {
                map["thirdpart_apply_id"] = self.thirdpartApplyId!
            }
            if self.thirdpartCorpId != nil {
                map["thirdpart_corp_id"] = self.thirdpartCorpId!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_id") {
                self.applyId = dict["apply_id"] as! Int64
            }
            if dict.keys.contains("apply_intention_info_do") {
                var model = HotelExceedApplyQueryResponseBody.Module.ApplyIntentionInfoDo()
                model.fromMap(dict["apply_intention_info_do"] as! [String: Any])
                self.applyIntentionInfoDo = model
            }
            if dict.keys.contains("btrip_cause") {
                self.btripCause = dict["btrip_cause"] as! String
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("exceed_reason") {
                self.exceedReason = dict["exceed_reason"] as! String
            }
            if dict.keys.contains("exceed_type") {
                self.exceedType = dict["exceed_type"] as! Int32
            }
            if dict.keys.contains("origin_standard") {
                self.originStandard = dict["origin_standard"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("submit_time") {
                self.submitTime = dict["submit_time"] as! String
            }
            if dict.keys.contains("thirdpart_apply_id") {
                self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
            }
            if dict.keys.contains("thirdpart_corp_id") {
                self.thirdpartCorpId = dict["thirdpart_corp_id"] as! String
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: HotelExceedApplyQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = HotelExceedApplyQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class HotelExceedApplyQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HotelExceedApplyQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = HotelExceedApplyQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class HotelOrderListQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class HotelOrderListQueryRequest : Tea.TeaModel {
    public var allApply: Bool?

    public var applyId: Int64?

    public var departId: String?

    public var endTime: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var thirdpartApplyId: String?

    public var updateEndTime: String?

    public var updateStartTime: String?

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
        if self.allApply != nil {
            map["all_apply"] = self.allApply!
        }
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        if self.departId != nil {
            map["depart_id"] = self.departId!
        }
        if self.endTime != nil {
            map["end_time"] = self.endTime!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.startTime != nil {
            map["start_time"] = self.startTime!
        }
        if self.thirdpartApplyId != nil {
            map["thirdpart_apply_id"] = self.thirdpartApplyId!
        }
        if self.updateEndTime != nil {
            map["update_end_time"] = self.updateEndTime!
        }
        if self.updateStartTime != nil {
            map["update_start_time"] = self.updateStartTime!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all_apply") {
            self.allApply = dict["all_apply"] as! Bool
        }
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int64
        }
        if dict.keys.contains("depart_id") {
            self.departId = dict["depart_id"] as! String
        }
        if dict.keys.contains("end_time") {
            self.endTime = dict["end_time"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("start_time") {
            self.startTime = dict["start_time"] as! String
        }
        if dict.keys.contains("thirdpart_apply_id") {
            self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
        }
        if dict.keys.contains("update_end_time") {
            self.updateEndTime = dict["update_end_time"] as! String
        }
        if dict.keys.contains("update_start_time") {
            self.updateStartTime = dict["update_start_time"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class HotelOrderListQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class CostCenter : Tea.TeaModel {
            public var corpId: String?

            public var id: Int64?

            public var name: String?

            public var number: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.corpId != nil {
                    map["corp_id"] = self.corpId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.number != nil {
                    map["number"] = self.number!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("corp_id") {
                    self.corpId = dict["corp_id"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") {
                    self.number = dict["number"] as! String
                }
            }
        }
        public class Invoice : Tea.TeaModel {
            public var id: Int64?

            public var invoiceType: Int32?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.invoiceType != nil {
                    map["invoice_type"] = self.invoiceType!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("invoice_type") {
                    self.invoiceType = dict["invoice_type"] as! Int32
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public class PriceInfoList : Tea.TeaModel {
            public var categoryCode: Int32?

            public var categoryType: Int32?

            public var gmtCreate: String?

            public var passengerName: String?

            public var payType: Int32?

            public var price: Double?

            public var tradeId: String?

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
                if self.categoryCode != nil {
                    map["category_code"] = self.categoryCode!
                }
                if self.categoryType != nil {
                    map["category_type"] = self.categoryType!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.passengerName != nil {
                    map["passenger_name"] = self.passengerName!
                }
                if self.payType != nil {
                    map["pay_type"] = self.payType!
                }
                if self.price != nil {
                    map["price"] = self.price!
                }
                if self.tradeId != nil {
                    map["trade_id"] = self.tradeId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category_code") {
                    self.categoryCode = dict["category_code"] as! Int32
                }
                if dict.keys.contains("category_type") {
                    self.categoryType = dict["category_type"] as! Int32
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("passenger_name") {
                    self.passengerName = dict["passenger_name"] as! String
                }
                if dict.keys.contains("pay_type") {
                    self.payType = dict["pay_type"] as! Int32
                }
                if dict.keys.contains("price") {
                    self.price = dict["price"] as! Double
                }
                if dict.keys.contains("trade_id") {
                    self.tradeId = dict["trade_id"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public class UserAffiliateList : Tea.TeaModel {
            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public var applyId: Int64?

        public var btripTitle: String?

        public var checkIn: String?

        public var checkOut: String?

        public var city: String?

        public var contactName: String?

        public var corpId: String?

        public var corpName: String?

        public var costCenter: HotelOrderListQueryResponseBody.Module.CostCenter?

        public var departId: String?

        public var departName: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var guest: String?

        public var hotelName: String?

        public var hotelSupportVatInvoiceType: Int32?

        public var id: Int64?

        public var invoice: HotelOrderListQueryResponseBody.Module.Invoice?

        public var night: Int32?

        public var orderStatus: Int32?

        public var orderStatusDesc: String?

        public var orderType: Int32?

        public var orderTypeDesc: String?

        public var priceInfoList: [HotelOrderListQueryResponseBody.Module.PriceInfoList]?

        public var projectCode: String?

        public var projectId: Int64?

        public var projectTitle: String?

        public var roomNum: Int32?

        public var roomType: String?

        public var thirdpartApplyId: String?

        public var thirdpartItineraryId: String?

        public var thirdpartProjectId: String?

        public var userAffiliateList: [HotelOrderListQueryResponseBody.Module.UserAffiliateList]?

        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.costCenter?.validate()
            try self.invoice?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["apply_id"] = self.applyId!
            }
            if self.btripTitle != nil {
                map["btrip_title"] = self.btripTitle!
            }
            if self.checkIn != nil {
                map["check_in"] = self.checkIn!
            }
            if self.checkOut != nil {
                map["check_out"] = self.checkOut!
            }
            if self.city != nil {
                map["city"] = self.city!
            }
            if self.contactName != nil {
                map["contact_name"] = self.contactName!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.corpName != nil {
                map["corp_name"] = self.corpName!
            }
            if self.costCenter != nil {
                map["cost_center"] = self.costCenter?.toMap()
            }
            if self.departId != nil {
                map["depart_id"] = self.departId!
            }
            if self.departName != nil {
                map["depart_name"] = self.departName!
            }
            if self.gmtCreate != nil {
                map["gmt_create"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmt_modified"] = self.gmtModified!
            }
            if self.guest != nil {
                map["guest"] = self.guest!
            }
            if self.hotelName != nil {
                map["hotel_name"] = self.hotelName!
            }
            if self.hotelSupportVatInvoiceType != nil {
                map["hotel_support_vat_invoice_type"] = self.hotelSupportVatInvoiceType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.invoice != nil {
                map["invoice"] = self.invoice?.toMap()
            }
            if self.night != nil {
                map["night"] = self.night!
            }
            if self.orderStatus != nil {
                map["order_status"] = self.orderStatus!
            }
            if self.orderStatusDesc != nil {
                map["order_status_desc"] = self.orderStatusDesc!
            }
            if self.orderType != nil {
                map["order_type"] = self.orderType!
            }
            if self.orderTypeDesc != nil {
                map["order_type_desc"] = self.orderTypeDesc!
            }
            if self.priceInfoList != nil {
                var tmp : [Any] = []
                for k in self.priceInfoList! {
                    tmp.append(k.toMap())
                }
                map["price_info_list"] = tmp
            }
            if self.projectCode != nil {
                map["project_code"] = self.projectCode!
            }
            if self.projectId != nil {
                map["project_id"] = self.projectId!
            }
            if self.projectTitle != nil {
                map["project_title"] = self.projectTitle!
            }
            if self.roomNum != nil {
                map["room_num"] = self.roomNum!
            }
            if self.roomType != nil {
                map["room_type"] = self.roomType!
            }
            if self.thirdpartApplyId != nil {
                map["thirdpart_apply_id"] = self.thirdpartApplyId!
            }
            if self.thirdpartItineraryId != nil {
                map["thirdpart_itinerary_id"] = self.thirdpartItineraryId!
            }
            if self.thirdpartProjectId != nil {
                map["thirdpart_project_id"] = self.thirdpartProjectId!
            }
            if self.userAffiliateList != nil {
                var tmp : [Any] = []
                for k in self.userAffiliateList! {
                    tmp.append(k.toMap())
                }
                map["user_affiliate_list"] = tmp
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_id") {
                self.applyId = dict["apply_id"] as! Int64
            }
            if dict.keys.contains("btrip_title") {
                self.btripTitle = dict["btrip_title"] as! String
            }
            if dict.keys.contains("check_in") {
                self.checkIn = dict["check_in"] as! String
            }
            if dict.keys.contains("check_out") {
                self.checkOut = dict["check_out"] as! String
            }
            if dict.keys.contains("city") {
                self.city = dict["city"] as! String
            }
            if dict.keys.contains("contact_name") {
                self.contactName = dict["contact_name"] as! String
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("corp_name") {
                self.corpName = dict["corp_name"] as! String
            }
            if dict.keys.contains("cost_center") {
                var model = HotelOrderListQueryResponseBody.Module.CostCenter()
                model.fromMap(dict["cost_center"] as! [String: Any])
                self.costCenter = model
            }
            if dict.keys.contains("depart_id") {
                self.departId = dict["depart_id"] as! String
            }
            if dict.keys.contains("depart_name") {
                self.departName = dict["depart_name"] as! String
            }
            if dict.keys.contains("gmt_create") {
                self.gmtCreate = dict["gmt_create"] as! String
            }
            if dict.keys.contains("gmt_modified") {
                self.gmtModified = dict["gmt_modified"] as! String
            }
            if dict.keys.contains("guest") {
                self.guest = dict["guest"] as! String
            }
            if dict.keys.contains("hotel_name") {
                self.hotelName = dict["hotel_name"] as! String
            }
            if dict.keys.contains("hotel_support_vat_invoice_type") {
                self.hotelSupportVatInvoiceType = dict["hotel_support_vat_invoice_type"] as! Int32
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("invoice") {
                var model = HotelOrderListQueryResponseBody.Module.Invoice()
                model.fromMap(dict["invoice"] as! [String: Any])
                self.invoice = model
            }
            if dict.keys.contains("night") {
                self.night = dict["night"] as! Int32
            }
            if dict.keys.contains("order_status") {
                self.orderStatus = dict["order_status"] as! Int32
            }
            if dict.keys.contains("order_status_desc") {
                self.orderStatusDesc = dict["order_status_desc"] as! String
            }
            if dict.keys.contains("order_type") {
                self.orderType = dict["order_type"] as! Int32
            }
            if dict.keys.contains("order_type_desc") {
                self.orderTypeDesc = dict["order_type_desc"] as! String
            }
            if dict.keys.contains("price_info_list") {
                self.priceInfoList = dict["price_info_list"] as! [HotelOrderListQueryResponseBody.Module.PriceInfoList]
            }
            if dict.keys.contains("project_code") {
                self.projectCode = dict["project_code"] as! String
            }
            if dict.keys.contains("project_id") {
                self.projectId = dict["project_id"] as! Int64
            }
            if dict.keys.contains("project_title") {
                self.projectTitle = dict["project_title"] as! String
            }
            if dict.keys.contains("room_num") {
                self.roomNum = dict["room_num"] as! Int32
            }
            if dict.keys.contains("room_type") {
                self.roomType = dict["room_type"] as! String
            }
            if dict.keys.contains("thirdpart_apply_id") {
                self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
            }
            if dict.keys.contains("thirdpart_itinerary_id") {
                self.thirdpartItineraryId = dict["thirdpart_itinerary_id"] as! String
            }
            if dict.keys.contains("thirdpart_project_id") {
                self.thirdpartProjectId = dict["thirdpart_project_id"] as! String
            }
            if dict.keys.contains("user_affiliate_list") {
                self.userAffiliateList = dict["user_affiliate_list"] as! [HotelOrderListQueryResponseBody.Module.UserAffiliateList]
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var totalNumber: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalNumber != nil {
                map["total_number"] = self.totalNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page") {
                self.page = dict["page"] as! Int32
            }
            if dict.keys.contains("page_size") {
                self.pageSize = dict["page_size"] as! Int32
            }
            if dict.keys.contains("total_number") {
                self.totalNumber = dict["total_number"] as! Int32
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: [HotelOrderListQueryResponseBody.Module]?

    public var pageInfo: HotelOrderListQueryResponseBody.PageInfo?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            var tmp : [Any] = []
            for k in self.module! {
                tmp.append(k.toMap())
            }
            map["module"] = tmp
        }
        if self.pageInfo != nil {
            map["page_info"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! [HotelOrderListQueryResponseBody.Module]
        }
        if dict.keys.contains("page_info") {
            var model = HotelOrderListQueryResponseBody.PageInfo()
            model.fromMap(dict["page_info"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class HotelOrderListQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HotelOrderListQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = HotelOrderListQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IeFlightBillSettlementQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class IeFlightBillSettlementQueryRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var periodEnd: String?

    public var periodStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["page_no"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.periodEnd != nil {
            map["period_end"] = self.periodEnd!
        }
        if self.periodStart != nil {
            map["period_start"] = self.periodStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_no") {
            self.pageNo = dict["page_no"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("period_end") {
            self.periodEnd = dict["period_end"] as! String
        }
        if dict.keys.contains("period_start") {
            self.periodStart = dict["period_start"] as! String
        }
    }
}

public class IeFlightBillSettlementQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class DataList : Tea.TeaModel {
            public var advanceDay: Int32?

            public var airlineCorpCode: String?

            public var airlineCorpName: String?

            public var alipayTradeNo: String?

            public var applyId: String?

            public var arrAirportCode: String?

            public var arrCity: String?

            public var arrDate: String?

            public var arrStation: String?

            public var arrTime: String?

            public var billRecordTime: String?

            public var bookMode: String?

            public var bookTime: String?

            public var bookerId: String?

            public var bookerJobNo: String?

            public var bookerName: String?

            public var btripCouponFee: Double?

            public var cabin: String?

            public var cabinClass: String?

            public var capitalDirection: String?

            public var cascadeDepartment: String?

            public var changeFee: Double?

            public var corpPayOrderFee: Double?

            public var costCenter: String?

            public var costCenterNumber: String?

            public var coupon: Double?

            public var depAirportCode: String?

            public var department: String?

            public var departmentId: String?

            public var deptCity: String?

            public var deptDate: String?

            public var deptStation: String?

            public var deptTime: String?

            public var discount: String?

            public var feeType: String?

            public var flightNo: String?

            public var index: String?

            public var insuranceFee: Double?

            public var insuranceNumber: String?

            public var invoiceTitle: String?

            public var mostDifferenceDeptTime: String?

            public var mostDifferenceDiscount: String?

            public var mostDifferenceFlightNo: String?

            public var mostDifferencePrice: Double?

            public var mostDifferenceReason: String?

            public var mostPrice: Double?

            public var negotiationCouponFee: Double?

            public var orderId: String?

            public var orderStatusDesc: String?

            public var overApplyId: String?

            public var primaryId: Int64?

            public var projectCode: String?

            public var projectName: String?

            public var refundFee: Double?

            public var remark: String?

            public var repeatRefund: String?

            public var sealPrice: Double?

            public var segmentType: String?

            public var serviceFee: Double?

            public var settlementFee: Double?

            public var settlementGrantFee: Double?

            public var settlementTime: String?

            public var settlementType: String?

            public var status: Int32?

            public var subOrderId: String?

            public var taxFee: Double?

            public var ticketId: String?

            public var trade: String?

            public var travelerId: String?

            public var travelerJobNo: String?

            public var travelerName: String?

            public var voucherType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.advanceDay != nil {
                    map["advance_day"] = self.advanceDay!
                }
                if self.airlineCorpCode != nil {
                    map["airline_corp_code"] = self.airlineCorpCode!
                }
                if self.airlineCorpName != nil {
                    map["airline_corp_name"] = self.airlineCorpName!
                }
                if self.alipayTradeNo != nil {
                    map["alipay_trade_no"] = self.alipayTradeNo!
                }
                if self.applyId != nil {
                    map["apply_id"] = self.applyId!
                }
                if self.arrAirportCode != nil {
                    map["arr_airport_code"] = self.arrAirportCode!
                }
                if self.arrCity != nil {
                    map["arr_city"] = self.arrCity!
                }
                if self.arrDate != nil {
                    map["arr_date"] = self.arrDate!
                }
                if self.arrStation != nil {
                    map["arr_station"] = self.arrStation!
                }
                if self.arrTime != nil {
                    map["arr_time"] = self.arrTime!
                }
                if self.billRecordTime != nil {
                    map["bill_record_time"] = self.billRecordTime!
                }
                if self.bookMode != nil {
                    map["book_mode"] = self.bookMode!
                }
                if self.bookTime != nil {
                    map["book_time"] = self.bookTime!
                }
                if self.bookerId != nil {
                    map["booker_id"] = self.bookerId!
                }
                if self.bookerJobNo != nil {
                    map["booker_job_no"] = self.bookerJobNo!
                }
                if self.bookerName != nil {
                    map["booker_name"] = self.bookerName!
                }
                if self.btripCouponFee != nil {
                    map["btrip_coupon_fee"] = self.btripCouponFee!
                }
                if self.cabin != nil {
                    map["cabin"] = self.cabin!
                }
                if self.cabinClass != nil {
                    map["cabin_class"] = self.cabinClass!
                }
                if self.capitalDirection != nil {
                    map["capital_direction"] = self.capitalDirection!
                }
                if self.cascadeDepartment != nil {
                    map["cascade_department"] = self.cascadeDepartment!
                }
                if self.changeFee != nil {
                    map["change_fee"] = self.changeFee!
                }
                if self.corpPayOrderFee != nil {
                    map["corp_pay_order_fee"] = self.corpPayOrderFee!
                }
                if self.costCenter != nil {
                    map["cost_center"] = self.costCenter!
                }
                if self.costCenterNumber != nil {
                    map["cost_center_number"] = self.costCenterNumber!
                }
                if self.coupon != nil {
                    map["coupon"] = self.coupon!
                }
                if self.depAirportCode != nil {
                    map["dep_airport_code"] = self.depAirportCode!
                }
                if self.department != nil {
                    map["department"] = self.department!
                }
                if self.departmentId != nil {
                    map["department_id"] = self.departmentId!
                }
                if self.deptCity != nil {
                    map["dept_city"] = self.deptCity!
                }
                if self.deptDate != nil {
                    map["dept_date"] = self.deptDate!
                }
                if self.deptStation != nil {
                    map["dept_station"] = self.deptStation!
                }
                if self.deptTime != nil {
                    map["dept_time"] = self.deptTime!
                }
                if self.discount != nil {
                    map["discount"] = self.discount!
                }
                if self.feeType != nil {
                    map["fee_type"] = self.feeType!
                }
                if self.flightNo != nil {
                    map["flight_no"] = self.flightNo!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.insuranceFee != nil {
                    map["insurance_fee"] = self.insuranceFee!
                }
                if self.insuranceNumber != nil {
                    map["insurance_number"] = self.insuranceNumber!
                }
                if self.invoiceTitle != nil {
                    map["invoice_title"] = self.invoiceTitle!
                }
                if self.mostDifferenceDeptTime != nil {
                    map["most_difference_dept_time"] = self.mostDifferenceDeptTime!
                }
                if self.mostDifferenceDiscount != nil {
                    map["most_difference_discount"] = self.mostDifferenceDiscount!
                }
                if self.mostDifferenceFlightNo != nil {
                    map["most_difference_flight_no"] = self.mostDifferenceFlightNo!
                }
                if self.mostDifferencePrice != nil {
                    map["most_difference_price"] = self.mostDifferencePrice!
                }
                if self.mostDifferenceReason != nil {
                    map["most_difference_reason"] = self.mostDifferenceReason!
                }
                if self.mostPrice != nil {
                    map["most_price"] = self.mostPrice!
                }
                if self.negotiationCouponFee != nil {
                    map["negotiation_coupon_fee"] = self.negotiationCouponFee!
                }
                if self.orderId != nil {
                    map["order_id"] = self.orderId!
                }
                if self.orderStatusDesc != nil {
                    map["order_status_desc"] = self.orderStatusDesc!
                }
                if self.overApplyId != nil {
                    map["over_apply_id"] = self.overApplyId!
                }
                if self.primaryId != nil {
                    map["primary_id"] = self.primaryId!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectName != nil {
                    map["project_name"] = self.projectName!
                }
                if self.refundFee != nil {
                    map["refund_fee"] = self.refundFee!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                if self.repeatRefund != nil {
                    map["repeat_refund"] = self.repeatRefund!
                }
                if self.sealPrice != nil {
                    map["seal_price"] = self.sealPrice!
                }
                if self.segmentType != nil {
                    map["segment_type"] = self.segmentType!
                }
                if self.serviceFee != nil {
                    map["service_fee"] = self.serviceFee!
                }
                if self.settlementFee != nil {
                    map["settlement_fee"] = self.settlementFee!
                }
                if self.settlementGrantFee != nil {
                    map["settlement_grant_fee"] = self.settlementGrantFee!
                }
                if self.settlementTime != nil {
                    map["settlement_time"] = self.settlementTime!
                }
                if self.settlementType != nil {
                    map["settlement_type"] = self.settlementType!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.subOrderId != nil {
                    map["sub_order_id"] = self.subOrderId!
                }
                if self.taxFee != nil {
                    map["tax_fee"] = self.taxFee!
                }
                if self.ticketId != nil {
                    map["ticket_id"] = self.ticketId!
                }
                if self.trade != nil {
                    map["trade"] = self.trade!
                }
                if self.travelerId != nil {
                    map["traveler_id"] = self.travelerId!
                }
                if self.travelerJobNo != nil {
                    map["traveler_job_no"] = self.travelerJobNo!
                }
                if self.travelerName != nil {
                    map["traveler_name"] = self.travelerName!
                }
                if self.voucherType != nil {
                    map["voucher_type"] = self.voucherType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("advance_day") {
                    self.advanceDay = dict["advance_day"] as! Int32
                }
                if dict.keys.contains("airline_corp_code") {
                    self.airlineCorpCode = dict["airline_corp_code"] as! String
                }
                if dict.keys.contains("airline_corp_name") {
                    self.airlineCorpName = dict["airline_corp_name"] as! String
                }
                if dict.keys.contains("alipay_trade_no") {
                    self.alipayTradeNo = dict["alipay_trade_no"] as! String
                }
                if dict.keys.contains("apply_id") {
                    self.applyId = dict["apply_id"] as! String
                }
                if dict.keys.contains("arr_airport_code") {
                    self.arrAirportCode = dict["arr_airport_code"] as! String
                }
                if dict.keys.contains("arr_city") {
                    self.arrCity = dict["arr_city"] as! String
                }
                if dict.keys.contains("arr_date") {
                    self.arrDate = dict["arr_date"] as! String
                }
                if dict.keys.contains("arr_station") {
                    self.arrStation = dict["arr_station"] as! String
                }
                if dict.keys.contains("arr_time") {
                    self.arrTime = dict["arr_time"] as! String
                }
                if dict.keys.contains("bill_record_time") {
                    self.billRecordTime = dict["bill_record_time"] as! String
                }
                if dict.keys.contains("book_mode") {
                    self.bookMode = dict["book_mode"] as! String
                }
                if dict.keys.contains("book_time") {
                    self.bookTime = dict["book_time"] as! String
                }
                if dict.keys.contains("booker_id") {
                    self.bookerId = dict["booker_id"] as! String
                }
                if dict.keys.contains("booker_job_no") {
                    self.bookerJobNo = dict["booker_job_no"] as! String
                }
                if dict.keys.contains("booker_name") {
                    self.bookerName = dict["booker_name"] as! String
                }
                if dict.keys.contains("btrip_coupon_fee") {
                    self.btripCouponFee = dict["btrip_coupon_fee"] as! Double
                }
                if dict.keys.contains("cabin") {
                    self.cabin = dict["cabin"] as! String
                }
                if dict.keys.contains("cabin_class") {
                    self.cabinClass = dict["cabin_class"] as! String
                }
                if dict.keys.contains("capital_direction") {
                    self.capitalDirection = dict["capital_direction"] as! String
                }
                if dict.keys.contains("cascade_department") {
                    self.cascadeDepartment = dict["cascade_department"] as! String
                }
                if dict.keys.contains("change_fee") {
                    self.changeFee = dict["change_fee"] as! Double
                }
                if dict.keys.contains("corp_pay_order_fee") {
                    self.corpPayOrderFee = dict["corp_pay_order_fee"] as! Double
                }
                if dict.keys.contains("cost_center") {
                    self.costCenter = dict["cost_center"] as! String
                }
                if dict.keys.contains("cost_center_number") {
                    self.costCenterNumber = dict["cost_center_number"] as! String
                }
                if dict.keys.contains("coupon") {
                    self.coupon = dict["coupon"] as! Double
                }
                if dict.keys.contains("dep_airport_code") {
                    self.depAirportCode = dict["dep_airport_code"] as! String
                }
                if dict.keys.contains("department") {
                    self.department = dict["department"] as! String
                }
                if dict.keys.contains("department_id") {
                    self.departmentId = dict["department_id"] as! String
                }
                if dict.keys.contains("dept_city") {
                    self.deptCity = dict["dept_city"] as! String
                }
                if dict.keys.contains("dept_date") {
                    self.deptDate = dict["dept_date"] as! String
                }
                if dict.keys.contains("dept_station") {
                    self.deptStation = dict["dept_station"] as! String
                }
                if dict.keys.contains("dept_time") {
                    self.deptTime = dict["dept_time"] as! String
                }
                if dict.keys.contains("discount") {
                    self.discount = dict["discount"] as! String
                }
                if dict.keys.contains("fee_type") {
                    self.feeType = dict["fee_type"] as! String
                }
                if dict.keys.contains("flight_no") {
                    self.flightNo = dict["flight_no"] as! String
                }
                if dict.keys.contains("index") {
                    self.index = dict["index"] as! String
                }
                if dict.keys.contains("insurance_fee") {
                    self.insuranceFee = dict["insurance_fee"] as! Double
                }
                if dict.keys.contains("insurance_number") {
                    self.insuranceNumber = dict["insurance_number"] as! String
                }
                if dict.keys.contains("invoice_title") {
                    self.invoiceTitle = dict["invoice_title"] as! String
                }
                if dict.keys.contains("most_difference_dept_time") {
                    self.mostDifferenceDeptTime = dict["most_difference_dept_time"] as! String
                }
                if dict.keys.contains("most_difference_discount") {
                    self.mostDifferenceDiscount = dict["most_difference_discount"] as! String
                }
                if dict.keys.contains("most_difference_flight_no") {
                    self.mostDifferenceFlightNo = dict["most_difference_flight_no"] as! String
                }
                if dict.keys.contains("most_difference_price") {
                    self.mostDifferencePrice = dict["most_difference_price"] as! Double
                }
                if dict.keys.contains("most_difference_reason") {
                    self.mostDifferenceReason = dict["most_difference_reason"] as! String
                }
                if dict.keys.contains("most_price") {
                    self.mostPrice = dict["most_price"] as! Double
                }
                if dict.keys.contains("negotiation_coupon_fee") {
                    self.negotiationCouponFee = dict["negotiation_coupon_fee"] as! Double
                }
                if dict.keys.contains("order_id") {
                    self.orderId = dict["order_id"] as! String
                }
                if dict.keys.contains("order_status_desc") {
                    self.orderStatusDesc = dict["order_status_desc"] as! String
                }
                if dict.keys.contains("over_apply_id") {
                    self.overApplyId = dict["over_apply_id"] as! String
                }
                if dict.keys.contains("primary_id") {
                    self.primaryId = dict["primary_id"] as! Int64
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_name") {
                    self.projectName = dict["project_name"] as! String
                }
                if dict.keys.contains("refund_fee") {
                    self.refundFee = dict["refund_fee"] as! Double
                }
                if dict.keys.contains("remark") {
                    self.remark = dict["remark"] as! String
                }
                if dict.keys.contains("repeat_refund") {
                    self.repeatRefund = dict["repeat_refund"] as! String
                }
                if dict.keys.contains("seal_price") {
                    self.sealPrice = dict["seal_price"] as! Double
                }
                if dict.keys.contains("segment_type") {
                    self.segmentType = dict["segment_type"] as! String
                }
                if dict.keys.contains("service_fee") {
                    self.serviceFee = dict["service_fee"] as! Double
                }
                if dict.keys.contains("settlement_fee") {
                    self.settlementFee = dict["settlement_fee"] as! Double
                }
                if dict.keys.contains("settlement_grant_fee") {
                    self.settlementGrantFee = dict["settlement_grant_fee"] as! Double
                }
                if dict.keys.contains("settlement_time") {
                    self.settlementTime = dict["settlement_time"] as! String
                }
                if dict.keys.contains("settlement_type") {
                    self.settlementType = dict["settlement_type"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("sub_order_id") {
                    self.subOrderId = dict["sub_order_id"] as! String
                }
                if dict.keys.contains("tax_fee") {
                    self.taxFee = dict["tax_fee"] as! Double
                }
                if dict.keys.contains("ticket_id") {
                    self.ticketId = dict["ticket_id"] as! String
                }
                if dict.keys.contains("trade") {
                    self.trade = dict["trade"] as! String
                }
                if dict.keys.contains("traveler_id") {
                    self.travelerId = dict["traveler_id"] as! String
                }
                if dict.keys.contains("traveler_job_no") {
                    self.travelerJobNo = dict["traveler_job_no"] as! String
                }
                if dict.keys.contains("traveler_name") {
                    self.travelerName = dict["traveler_name"] as! String
                }
                if dict.keys.contains("voucher_type") {
                    self.voucherType = dict["voucher_type"] as! Int32
                }
            }
        }
        public var category: Int32?

        public var corpId: String?

        public var dataList: [IeFlightBillSettlementQueryResponseBody.Module.DataList]?

        public var periodEnd: String?

        public var periodStart: String?

        public var totalNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.dataList != nil {
                var tmp : [Any] = []
                for k in self.dataList! {
                    tmp.append(k.toMap())
                }
                map["data_list"] = tmp
            }
            if self.periodEnd != nil {
                map["period_end"] = self.periodEnd!
            }
            if self.periodStart != nil {
                map["period_start"] = self.periodStart!
            }
            if self.totalNum != nil {
                map["total_num"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") {
                self.category = dict["category"] as! Int32
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("data_list") {
                self.dataList = dict["data_list"] as! [IeFlightBillSettlementQueryResponseBody.Module.DataList]
            }
            if dict.keys.contains("period_end") {
                self.periodEnd = dict["period_end"] as! String
            }
            if dict.keys.contains("period_start") {
                self.periodStart = dict["period_start"] as! String
            }
            if dict.keys.contains("total_num") {
                self.totalNum = dict["total_num"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: IeFlightBillSettlementQueryResponseBody.Module?

    public var morePage: Bool?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.morePage != nil {
            map["more_page"] = self.morePage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = IeFlightBillSettlementQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("more_page") {
            self.morePage = dict["more_page"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class IeFlightBillSettlementQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IeFlightBillSettlementQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = IeFlightBillSettlementQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvoiceAddHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class InvoiceAddRequest : Tea.TeaModel {
    public var address: String?

    public var bankName: String?

    public var bankNo: String?

    public var taxNo: String?

    public var tel: String?

    public var thirdPartId: String?

    public var title: String?

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
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.bankName != nil {
            map["bank_name"] = self.bankName!
        }
        if self.bankNo != nil {
            map["bank_no"] = self.bankNo!
        }
        if self.taxNo != nil {
            map["tax_no"] = self.taxNo!
        }
        if self.tel != nil {
            map["tel"] = self.tel!
        }
        if self.thirdPartId != nil {
            map["third_part_id"] = self.thirdPartId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("address") {
            self.address = dict["address"] as! String
        }
        if dict.keys.contains("bank_name") {
            self.bankName = dict["bank_name"] as! String
        }
        if dict.keys.contains("bank_no") {
            self.bankNo = dict["bank_no"] as! String
        }
        if dict.keys.contains("tax_no") {
            self.taxNo = dict["tax_no"] as! String
        }
        if dict.keys.contains("tel") {
            self.tel = dict["tel"] as! String
        }
        if dict.keys.contains("third_part_id") {
            self.thirdPartId = dict["third_part_id"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
    }
}

public class InvoiceAddResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class InvoiceAddResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvoiceAddResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = InvoiceAddResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvoiceDeleteHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class InvoiceDeleteRequest : Tea.TeaModel {
    public var thirdPartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.thirdPartId != nil {
            map["third_part_id"] = self.thirdPartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("third_part_id") {
            self.thirdPartId = dict["third_part_id"] as! String
        }
    }
}

public class InvoiceDeleteResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class InvoiceDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvoiceDeleteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = InvoiceDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvoiceModifyHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class InvoiceModifyRequest : Tea.TeaModel {
    public var address: String?

    public var bankName: String?

    public var bankNo: String?

    public var taxNo: String?

    public var tel: String?

    public var thirdPartId: String?

    public var title: String?

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
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.bankName != nil {
            map["bank_name"] = self.bankName!
        }
        if self.bankNo != nil {
            map["bank_no"] = self.bankNo!
        }
        if self.taxNo != nil {
            map["tax_no"] = self.taxNo!
        }
        if self.tel != nil {
            map["tel"] = self.tel!
        }
        if self.thirdPartId != nil {
            map["third_part_id"] = self.thirdPartId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("address") {
            self.address = dict["address"] as! String
        }
        if dict.keys.contains("bank_name") {
            self.bankName = dict["bank_name"] as! String
        }
        if dict.keys.contains("bank_no") {
            self.bankNo = dict["bank_no"] as! String
        }
        if dict.keys.contains("tax_no") {
            self.taxNo = dict["tax_no"] as! String
        }
        if dict.keys.contains("tel") {
            self.tel = dict["tel"] as! String
        }
        if dict.keys.contains("third_part_id") {
            self.thirdPartId = dict["third_part_id"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
        }
    }
}

public class InvoiceModifyResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class InvoiceModifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvoiceModifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = InvoiceModifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvoiceRuleSaveHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class InvoiceRuleSaveRequest : Tea.TeaModel {
    public class Entities : Tea.TeaModel {
        public var id: String?

        public var name: String?

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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! Int32
            }
        }
    }
    public var allEmploye: Bool?

    public var entities: [InvoiceRuleSaveRequest.Entities]?

    public var thirdPartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allEmploye != nil {
            map["all_employe"] = self.allEmploye!
        }
        if self.entities != nil {
            var tmp : [Any] = []
            for k in self.entities! {
                tmp.append(k.toMap())
            }
            map["entities"] = tmp
        }
        if self.thirdPartId != nil {
            map["third_part_id"] = self.thirdPartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all_employe") {
            self.allEmploye = dict["all_employe"] as! Bool
        }
        if dict.keys.contains("entities") {
            self.entities = dict["entities"] as! [InvoiceRuleSaveRequest.Entities]
        }
        if dict.keys.contains("third_part_id") {
            self.thirdPartId = dict["third_part_id"] as! String
        }
    }
}

public class InvoiceRuleSaveShrinkRequest : Tea.TeaModel {
    public var allEmploye: Bool?

    public var entitiesShrink: String?

    public var thirdPartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allEmploye != nil {
            map["all_employe"] = self.allEmploye!
        }
        if self.entitiesShrink != nil {
            map["entities"] = self.entitiesShrink!
        }
        if self.thirdPartId != nil {
            map["third_part_id"] = self.thirdPartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all_employe") {
            self.allEmploye = dict["all_employe"] as! Bool
        }
        if dict.keys.contains("entities") {
            self.entitiesShrink = dict["entities"] as! String
        }
        if dict.keys.contains("third_part_id") {
            self.thirdPartId = dict["third_part_id"] as! String
        }
    }
}

public class InvoiceRuleSaveResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var addNum: Int32?

        public var removeNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addNum != nil {
                map["add_num"] = self.addNum!
            }
            if self.removeNum != nil {
                map["remove_num"] = self.removeNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("add_num") {
                self.addNum = dict["add_num"] as! Int32
            }
            if dict.keys.contains("remove_num") {
                self.removeNum = dict["remove_num"] as! Int32
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: InvoiceRuleSaveResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = InvoiceRuleSaveResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class InvoiceRuleSaveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvoiceRuleSaveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = InvoiceRuleSaveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvoiceSearchHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class InvoiceSearchRequest : Tea.TeaModel {
    public var title: String?

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
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class InvoiceSearchResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var id: Int64?

        public var thirdPartInvoiceId: String?

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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.thirdPartInvoiceId != nil {
                map["third_part_invoice_id"] = self.thirdPartInvoiceId!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("third_part_invoice_id") {
                self.thirdPartInvoiceId = dict["third_part_invoice_id"] as! String
            }
            if dict.keys.contains("title") {
                self.title = dict["title"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: [InvoiceSearchResponseBody.Module]?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            var tmp : [Any] = []
            for k in self.module! {
                tmp.append(k.toMap())
            }
            map["module"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! [InvoiceSearchResponseBody.Module]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class InvoiceSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvoiceSearchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = InvoiceSearchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IsvUserSaveHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class IsvUserSaveRequest : Tea.TeaModel {
    public class UserList : Tea.TeaModel {
        public var departId: Int64?

        public var email: String?

        public var jobNo: String?

        public var leaveStatus: Int32?

        public var managerUserId: String?

        public var phone: String?

        public var position: String?

        public var positionLevel: String?

        public var realNameEn: String?

        public var thirdDepartId: String?

        public var thirdDepartIdList: [String]?

        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.departId != nil {
                map["depart_id"] = self.departId!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.jobNo != nil {
                map["job_no"] = self.jobNo!
            }
            if self.leaveStatus != nil {
                map["leave_status"] = self.leaveStatus!
            }
            if self.managerUserId != nil {
                map["manager_user_id"] = self.managerUserId!
            }
            if self.phone != nil {
                map["phone"] = self.phone!
            }
            if self.position != nil {
                map["position"] = self.position!
            }
            if self.positionLevel != nil {
                map["position_level"] = self.positionLevel!
            }
            if self.realNameEn != nil {
                map["real_name_en"] = self.realNameEn!
            }
            if self.thirdDepartId != nil {
                map["third_depart_id"] = self.thirdDepartId!
            }
            if self.thirdDepartIdList != nil {
                map["third_depart_id_list"] = self.thirdDepartIdList!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("depart_id") {
                self.departId = dict["depart_id"] as! Int64
            }
            if dict.keys.contains("email") {
                self.email = dict["email"] as! String
            }
            if dict.keys.contains("job_no") {
                self.jobNo = dict["job_no"] as! String
            }
            if dict.keys.contains("leave_status") {
                self.leaveStatus = dict["leave_status"] as! Int32
            }
            if dict.keys.contains("manager_user_id") {
                self.managerUserId = dict["manager_user_id"] as! String
            }
            if dict.keys.contains("phone") {
                self.phone = dict["phone"] as! String
            }
            if dict.keys.contains("position") {
                self.position = dict["position"] as! String
            }
            if dict.keys.contains("position_level") {
                self.positionLevel = dict["position_level"] as! String
            }
            if dict.keys.contains("real_name_en") {
                self.realNameEn = dict["real_name_en"] as! String
            }
            if dict.keys.contains("third_depart_id") {
                self.thirdDepartId = dict["third_depart_id"] as! String
            }
            if dict.keys.contains("third_depart_id_list") {
                self.thirdDepartIdList = dict["third_depart_id_list"] as! [String]
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public var userList: [IsvUserSaveRequest.UserList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userList != nil {
            var tmp : [Any] = []
            for k in self.userList! {
                tmp.append(k.toMap())
            }
            map["user_list"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("user_list") {
            self.userList = dict["user_list"] as! [IsvUserSaveRequest.UserList]
        }
    }
}

public class IsvUserSaveShrinkRequest : Tea.TeaModel {
    public var userListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userListShrink != nil {
            map["user_list"] = self.userListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("user_list") {
            self.userListShrink = dict["user_list"] as! String
        }
    }
}

public class IsvUserSaveResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            map["module"] = self.module!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class IsvUserSaveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IsvUserSaveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = IsvUserSaveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MonthBillGetHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class MonthBillGetRequest : Tea.TeaModel {
    public var billMonth: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billMonth != nil {
            map["bill_month"] = self.billMonth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bill_month") {
            self.billMonth = dict["bill_month"] as! String
        }
    }
}

public class MonthBillGetResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var endDate: String?

        public var startDate: String?

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
            if self.endDate != nil {
                map["end_date"] = self.endDate!
            }
            if self.startDate != nil {
                map["start_date"] = self.startDate!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("end_date") {
                self.endDate = dict["end_date"] as! String
            }
            if dict.keys.contains("start_date") {
                self.startDate = dict["start_date"] as! String
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: [MonthBillGetResponseBody.Module]?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            var tmp : [Any] = []
            for k in self.module! {
                tmp.append(k.toMap())
            }
            map["module"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! [MonthBillGetResponseBody.Module]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class MonthBillGetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MonthBillGetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = MonthBillGetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ProjectAddHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class ProjectAddRequest : Tea.TeaModel {
    public var code: String?

    public var projectName: String?

    public var thirdPartCostCenterId: String?

    public var thirdPartId: String?

    public var thirdPartInvoiceId: String?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["project_name"] = self.projectName!
        }
        if self.thirdPartCostCenterId != nil {
            map["third_part_cost_center_id"] = self.thirdPartCostCenterId!
        }
        if self.thirdPartId != nil {
            map["third_part_id"] = self.thirdPartId!
        }
        if self.thirdPartInvoiceId != nil {
            map["third_part_invoice_id"] = self.thirdPartInvoiceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("project_name") {
            self.projectName = dict["project_name"] as! String
        }
        if dict.keys.contains("third_part_cost_center_id") {
            self.thirdPartCostCenterId = dict["third_part_cost_center_id"] as! String
        }
        if dict.keys.contains("third_part_id") {
            self.thirdPartId = dict["third_part_id"] as! String
        }
        if dict.keys.contains("third_part_invoice_id") {
            self.thirdPartInvoiceId = dict["third_part_invoice_id"] as! String
        }
    }
}

public class ProjectAddResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: Int64?

    public var morePage: Bool?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            map["module"] = self.module!
        }
        if self.morePage != nil {
            map["more_page"] = self.morePage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! Int64
        }
        if dict.keys.contains("more_page") {
            self.morePage = dict["more_page"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class ProjectAddResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProjectAddResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ProjectAddResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ProjectDeleteHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class ProjectDeleteRequest : Tea.TeaModel {
    public var thirdPartId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.thirdPartId != nil {
            map["third_part_id"] = self.thirdPartId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("third_part_id") {
            self.thirdPartId = dict["third_part_id"] as! String
        }
    }
}

public class ProjectDeleteResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: Bool?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            map["module"] = self.module!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class ProjectDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProjectDeleteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ProjectDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ProjectModifyHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class ProjectModifyRequest : Tea.TeaModel {
    public var code: String?

    public var projectName: String?

    public var thirdPartCostCenterId: String?

    public var thirdPartId: String?

    public var thirdPartInvoiceId: String?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["project_name"] = self.projectName!
        }
        if self.thirdPartCostCenterId != nil {
            map["third_part_cost_center_id"] = self.thirdPartCostCenterId!
        }
        if self.thirdPartId != nil {
            map["third_part_id"] = self.thirdPartId!
        }
        if self.thirdPartInvoiceId != nil {
            map["third_part_invoice_id"] = self.thirdPartInvoiceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("project_name") {
            self.projectName = dict["project_name"] as! String
        }
        if dict.keys.contains("third_part_cost_center_id") {
            self.thirdPartCostCenterId = dict["third_part_cost_center_id"] as! String
        }
        if dict.keys.contains("third_part_id") {
            self.thirdPartId = dict["third_part_id"] as! String
        }
        if dict.keys.contains("third_part_invoice_id") {
            self.thirdPartInvoiceId = dict["third_part_invoice_id"] as! String
        }
    }
}

public class ProjectModifyResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var module: Bool?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.module != nil {
            map["module"] = self.module!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class ProjectModifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProjectModifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ProjectModifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TrainBillSettlementQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class TrainBillSettlementQueryRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var periodEnd: String?

    public var periodStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["page_no"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.periodEnd != nil {
            map["period_end"] = self.periodEnd!
        }
        if self.periodStart != nil {
            map["period_start"] = self.periodStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_no") {
            self.pageNo = dict["page_no"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("period_end") {
            self.periodEnd = dict["period_end"] as! String
        }
        if dict.keys.contains("period_start") {
            self.periodStart = dict["period_start"] as! String
        }
    }
}

public class TrainBillSettlementQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class DataList : Tea.TeaModel {
            public var alipayTradeNo: String?

            public var applyId: String?

            public var arrDate: String?

            public var arrStation: String?

            public var arrTime: String?

            public var billRecordTime: String?

            public var bookTime: String?

            public var bookerId: String?

            public var bookerJobNo: String?

            public var bookerName: String?

            public var capitalDirection: String?

            public var cascadeDepartment: String?

            public var changeFee: Double?

            public var costCenter: String?

            public var costCenterNumber: String?

            public var coupon: Double?

            public var department: String?

            public var departmentId: String?

            public var deptDate: String?

            public var deptStation: String?

            public var deptTime: String?

            public var feeType: String?

            public var index: String?

            public var invoiceTitle: String?

            public var orderId: String?

            public var orderPrice: Double?

            public var overApplyId: String?

            public var primaryId: Int64?

            public var projectCode: String?

            public var projectName: String?

            public var refundFee: Double?

            public var remark: String?

            public var runTime: String?

            public var seatNo: String?

            public var seatType: String?

            public var serviceFee: Double?

            public var settlementFee: Double?

            public var settlementGrantFee: Double?

            public var settlementTime: String?

            public var settlementType: String?

            public var status: Int32?

            public var ticketNo: String?

            public var ticketPrice: Double?

            public var trainNo: String?

            public var trainType: String?

            public var travelerId: String?

            public var travelerJobNo: String?

            public var travelerName: String?

            public var voucherType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alipayTradeNo != nil {
                    map["alipay_trade_no"] = self.alipayTradeNo!
                }
                if self.applyId != nil {
                    map["apply_id"] = self.applyId!
                }
                if self.arrDate != nil {
                    map["arr_date"] = self.arrDate!
                }
                if self.arrStation != nil {
                    map["arr_station"] = self.arrStation!
                }
                if self.arrTime != nil {
                    map["arr_time"] = self.arrTime!
                }
                if self.billRecordTime != nil {
                    map["bill_record_time"] = self.billRecordTime!
                }
                if self.bookTime != nil {
                    map["book_time"] = self.bookTime!
                }
                if self.bookerId != nil {
                    map["booker_id"] = self.bookerId!
                }
                if self.bookerJobNo != nil {
                    map["booker_job_no"] = self.bookerJobNo!
                }
                if self.bookerName != nil {
                    map["booker_name"] = self.bookerName!
                }
                if self.capitalDirection != nil {
                    map["capital_direction"] = self.capitalDirection!
                }
                if self.cascadeDepartment != nil {
                    map["cascade_department"] = self.cascadeDepartment!
                }
                if self.changeFee != nil {
                    map["change_fee"] = self.changeFee!
                }
                if self.costCenter != nil {
                    map["cost_center"] = self.costCenter!
                }
                if self.costCenterNumber != nil {
                    map["cost_center_number"] = self.costCenterNumber!
                }
                if self.coupon != nil {
                    map["coupon"] = self.coupon!
                }
                if self.department != nil {
                    map["department"] = self.department!
                }
                if self.departmentId != nil {
                    map["department_id"] = self.departmentId!
                }
                if self.deptDate != nil {
                    map["dept_date"] = self.deptDate!
                }
                if self.deptStation != nil {
                    map["dept_station"] = self.deptStation!
                }
                if self.deptTime != nil {
                    map["dept_time"] = self.deptTime!
                }
                if self.feeType != nil {
                    map["fee_type"] = self.feeType!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.invoiceTitle != nil {
                    map["invoice_title"] = self.invoiceTitle!
                }
                if self.orderId != nil {
                    map["order_id"] = self.orderId!
                }
                if self.orderPrice != nil {
                    map["order_price"] = self.orderPrice!
                }
                if self.overApplyId != nil {
                    map["over_apply_id"] = self.overApplyId!
                }
                if self.primaryId != nil {
                    map["primary_id"] = self.primaryId!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectName != nil {
                    map["project_name"] = self.projectName!
                }
                if self.refundFee != nil {
                    map["refund_fee"] = self.refundFee!
                }
                if self.remark != nil {
                    map["remark"] = self.remark!
                }
                if self.runTime != nil {
                    map["run_time"] = self.runTime!
                }
                if self.seatNo != nil {
                    map["seat_no"] = self.seatNo!
                }
                if self.seatType != nil {
                    map["seat_type"] = self.seatType!
                }
                if self.serviceFee != nil {
                    map["service_fee"] = self.serviceFee!
                }
                if self.settlementFee != nil {
                    map["settlement_fee"] = self.settlementFee!
                }
                if self.settlementGrantFee != nil {
                    map["settlement_grant_fee"] = self.settlementGrantFee!
                }
                if self.settlementTime != nil {
                    map["settlement_time"] = self.settlementTime!
                }
                if self.settlementType != nil {
                    map["settlement_type"] = self.settlementType!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.ticketNo != nil {
                    map["ticket_no"] = self.ticketNo!
                }
                if self.ticketPrice != nil {
                    map["ticket_price"] = self.ticketPrice!
                }
                if self.trainNo != nil {
                    map["train_no"] = self.trainNo!
                }
                if self.trainType != nil {
                    map["train_type"] = self.trainType!
                }
                if self.travelerId != nil {
                    map["traveler_id"] = self.travelerId!
                }
                if self.travelerJobNo != nil {
                    map["traveler_job_no"] = self.travelerJobNo!
                }
                if self.travelerName != nil {
                    map["traveler_name"] = self.travelerName!
                }
                if self.voucherType != nil {
                    map["voucher_type"] = self.voucherType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("alipay_trade_no") {
                    self.alipayTradeNo = dict["alipay_trade_no"] as! String
                }
                if dict.keys.contains("apply_id") {
                    self.applyId = dict["apply_id"] as! String
                }
                if dict.keys.contains("arr_date") {
                    self.arrDate = dict["arr_date"] as! String
                }
                if dict.keys.contains("arr_station") {
                    self.arrStation = dict["arr_station"] as! String
                }
                if dict.keys.contains("arr_time") {
                    self.arrTime = dict["arr_time"] as! String
                }
                if dict.keys.contains("bill_record_time") {
                    self.billRecordTime = dict["bill_record_time"] as! String
                }
                if dict.keys.contains("book_time") {
                    self.bookTime = dict["book_time"] as! String
                }
                if dict.keys.contains("booker_id") {
                    self.bookerId = dict["booker_id"] as! String
                }
                if dict.keys.contains("booker_job_no") {
                    self.bookerJobNo = dict["booker_job_no"] as! String
                }
                if dict.keys.contains("booker_name") {
                    self.bookerName = dict["booker_name"] as! String
                }
                if dict.keys.contains("capital_direction") {
                    self.capitalDirection = dict["capital_direction"] as! String
                }
                if dict.keys.contains("cascade_department") {
                    self.cascadeDepartment = dict["cascade_department"] as! String
                }
                if dict.keys.contains("change_fee") {
                    self.changeFee = dict["change_fee"] as! Double
                }
                if dict.keys.contains("cost_center") {
                    self.costCenter = dict["cost_center"] as! String
                }
                if dict.keys.contains("cost_center_number") {
                    self.costCenterNumber = dict["cost_center_number"] as! String
                }
                if dict.keys.contains("coupon") {
                    self.coupon = dict["coupon"] as! Double
                }
                if dict.keys.contains("department") {
                    self.department = dict["department"] as! String
                }
                if dict.keys.contains("department_id") {
                    self.departmentId = dict["department_id"] as! String
                }
                if dict.keys.contains("dept_date") {
                    self.deptDate = dict["dept_date"] as! String
                }
                if dict.keys.contains("dept_station") {
                    self.deptStation = dict["dept_station"] as! String
                }
                if dict.keys.contains("dept_time") {
                    self.deptTime = dict["dept_time"] as! String
                }
                if dict.keys.contains("fee_type") {
                    self.feeType = dict["fee_type"] as! String
                }
                if dict.keys.contains("index") {
                    self.index = dict["index"] as! String
                }
                if dict.keys.contains("invoice_title") {
                    self.invoiceTitle = dict["invoice_title"] as! String
                }
                if dict.keys.contains("order_id") {
                    self.orderId = dict["order_id"] as! String
                }
                if dict.keys.contains("order_price") {
                    self.orderPrice = dict["order_price"] as! Double
                }
                if dict.keys.contains("over_apply_id") {
                    self.overApplyId = dict["over_apply_id"] as! String
                }
                if dict.keys.contains("primary_id") {
                    self.primaryId = dict["primary_id"] as! Int64
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_name") {
                    self.projectName = dict["project_name"] as! String
                }
                if dict.keys.contains("refund_fee") {
                    self.refundFee = dict["refund_fee"] as! Double
                }
                if dict.keys.contains("remark") {
                    self.remark = dict["remark"] as! String
                }
                if dict.keys.contains("run_time") {
                    self.runTime = dict["run_time"] as! String
                }
                if dict.keys.contains("seat_no") {
                    self.seatNo = dict["seat_no"] as! String
                }
                if dict.keys.contains("seat_type") {
                    self.seatType = dict["seat_type"] as! String
                }
                if dict.keys.contains("service_fee") {
                    self.serviceFee = dict["service_fee"] as! Double
                }
                if dict.keys.contains("settlement_fee") {
                    self.settlementFee = dict["settlement_fee"] as! Double
                }
                if dict.keys.contains("settlement_grant_fee") {
                    self.settlementGrantFee = dict["settlement_grant_fee"] as! Double
                }
                if dict.keys.contains("settlement_time") {
                    self.settlementTime = dict["settlement_time"] as! String
                }
                if dict.keys.contains("settlement_type") {
                    self.settlementType = dict["settlement_type"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! Int32
                }
                if dict.keys.contains("ticket_no") {
                    self.ticketNo = dict["ticket_no"] as! String
                }
                if dict.keys.contains("ticket_price") {
                    self.ticketPrice = dict["ticket_price"] as! Double
                }
                if dict.keys.contains("train_no") {
                    self.trainNo = dict["train_no"] as! String
                }
                if dict.keys.contains("train_type") {
                    self.trainType = dict["train_type"] as! String
                }
                if dict.keys.contains("traveler_id") {
                    self.travelerId = dict["traveler_id"] as! String
                }
                if dict.keys.contains("traveler_job_no") {
                    self.travelerJobNo = dict["traveler_job_no"] as! String
                }
                if dict.keys.contains("traveler_name") {
                    self.travelerName = dict["traveler_name"] as! String
                }
                if dict.keys.contains("voucher_type") {
                    self.voucherType = dict["voucher_type"] as! Int32
                }
            }
        }
        public var category: Int32?

        public var corpId: String?

        public var dataList: [TrainBillSettlementQueryResponseBody.Module.DataList]?

        public var periodEnd: String?

        public var periodStart: String?

        public var totalNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.dataList != nil {
                var tmp : [Any] = []
                for k in self.dataList! {
                    tmp.append(k.toMap())
                }
                map["data_list"] = tmp
            }
            if self.periodEnd != nil {
                map["period_end"] = self.periodEnd!
            }
            if self.periodStart != nil {
                map["period_start"] = self.periodStart!
            }
            if self.totalNum != nil {
                map["total_num"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") {
                self.category = dict["category"] as! Int32
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("data_list") {
                self.dataList = dict["data_list"] as! [TrainBillSettlementQueryResponseBody.Module.DataList]
            }
            if dict.keys.contains("period_end") {
                self.periodEnd = dict["period_end"] as! String
            }
            if dict.keys.contains("period_start") {
                self.periodStart = dict["period_start"] as! String
            }
            if dict.keys.contains("total_num") {
                self.totalNum = dict["total_num"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: TrainBillSettlementQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = TrainBillSettlementQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class TrainBillSettlementQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TrainBillSettlementQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = TrainBillSettlementQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TrainExceedApplyQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class TrainExceedApplyQueryRequest : Tea.TeaModel {
    public var applyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int64
        }
    }
}

public class TrainExceedApplyQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class ApplyIntentionInfoDO : Tea.TeaModel {
            public var arrCity: String?

            public var arrCityName: String?

            public var arrStation: String?

            public var arrTime: String?

            public var depCity: String?

            public var depCityName: String?

            public var depStation: String?

            public var depTime: String?

            public var price: Int64?

            public var seatName: String?

            public var trainNo: String?

            public var trainTypeDesc: String?

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
                if self.arrCity != nil {
                    map["arr_city"] = self.arrCity!
                }
                if self.arrCityName != nil {
                    map["arr_city_name"] = self.arrCityName!
                }
                if self.arrStation != nil {
                    map["arr_station"] = self.arrStation!
                }
                if self.arrTime != nil {
                    map["arr_time"] = self.arrTime!
                }
                if self.depCity != nil {
                    map["dep_city"] = self.depCity!
                }
                if self.depCityName != nil {
                    map["dep_city_name"] = self.depCityName!
                }
                if self.depStation != nil {
                    map["dep_station"] = self.depStation!
                }
                if self.depTime != nil {
                    map["dep_time"] = self.depTime!
                }
                if self.price != nil {
                    map["price"] = self.price!
                }
                if self.seatName != nil {
                    map["seat_name"] = self.seatName!
                }
                if self.trainNo != nil {
                    map["train_no"] = self.trainNo!
                }
                if self.trainTypeDesc != nil {
                    map["train_type_desc"] = self.trainTypeDesc!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arr_city") {
                    self.arrCity = dict["arr_city"] as! String
                }
                if dict.keys.contains("arr_city_name") {
                    self.arrCityName = dict["arr_city_name"] as! String
                }
                if dict.keys.contains("arr_station") {
                    self.arrStation = dict["arr_station"] as! String
                }
                if dict.keys.contains("arr_time") {
                    self.arrTime = dict["arr_time"] as! String
                }
                if dict.keys.contains("dep_city") {
                    self.depCity = dict["dep_city"] as! String
                }
                if dict.keys.contains("dep_city_name") {
                    self.depCityName = dict["dep_city_name"] as! String
                }
                if dict.keys.contains("dep_station") {
                    self.depStation = dict["dep_station"] as! String
                }
                if dict.keys.contains("dep_time") {
                    self.depTime = dict["dep_time"] as! String
                }
                if dict.keys.contains("price") {
                    self.price = dict["price"] as! Int64
                }
                if dict.keys.contains("seat_name") {
                    self.seatName = dict["seat_name"] as! String
                }
                if dict.keys.contains("train_no") {
                    self.trainNo = dict["train_no"] as! String
                }
                if dict.keys.contains("train_type_desc") {
                    self.trainTypeDesc = dict["train_type_desc"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public var applyId: Int64?

        public var applyIntentionInfoDO: TrainExceedApplyQueryResponseBody.Module.ApplyIntentionInfoDO?

        public var btripCause: String?

        public var corpId: String?

        public var exceedReason: String?

        public var exceedType: Int32?

        public var originStandard: String?

        public var status: Int32?

        public var submitTime: String?

        public var thirdpartApplyId: String?

        public var thirdpartCorpId: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.applyIntentionInfoDO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["apply_id"] = self.applyId!
            }
            if self.applyIntentionInfoDO != nil {
                map["apply_intention_info_d_o"] = self.applyIntentionInfoDO?.toMap()
            }
            if self.btripCause != nil {
                map["btrip_cause"] = self.btripCause!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.exceedReason != nil {
                map["exceed_reason"] = self.exceedReason!
            }
            if self.exceedType != nil {
                map["exceed_type"] = self.exceedType!
            }
            if self.originStandard != nil {
                map["origin_standard"] = self.originStandard!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.submitTime != nil {
                map["submit_time"] = self.submitTime!
            }
            if self.thirdpartApplyId != nil {
                map["thirdpart_apply_id"] = self.thirdpartApplyId!
            }
            if self.thirdpartCorpId != nil {
                map["thirdpart_corp_id"] = self.thirdpartCorpId!
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_id") {
                self.applyId = dict["apply_id"] as! Int64
            }
            if dict.keys.contains("apply_intention_info_d_o") {
                var model = TrainExceedApplyQueryResponseBody.Module.ApplyIntentionInfoDO()
                model.fromMap(dict["apply_intention_info_d_o"] as! [String: Any])
                self.applyIntentionInfoDO = model
            }
            if dict.keys.contains("btrip_cause") {
                self.btripCause = dict["btrip_cause"] as! String
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("exceed_reason") {
                self.exceedReason = dict["exceed_reason"] as! String
            }
            if dict.keys.contains("exceed_type") {
                self.exceedType = dict["exceed_type"] as! Int32
            }
            if dict.keys.contains("origin_standard") {
                self.originStandard = dict["origin_standard"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("submit_time") {
                self.submitTime = dict["submit_time"] as! String
            }
            if dict.keys.contains("thirdpart_apply_id") {
                self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
            }
            if dict.keys.contains("thirdpart_corp_id") {
                self.thirdpartCorpId = dict["thirdpart_corp_id"] as! String
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: TrainExceedApplyQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = TrainExceedApplyQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class TrainExceedApplyQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TrainExceedApplyQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = TrainExceedApplyQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TrainOrderListQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class TrainOrderListQueryRequest : Tea.TeaModel {
    public var allApply: Bool?

    public var applyId: Int64?

    public var departId: String?

    public var endTime: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var thirdpartApplyId: String?

    public var updateEndTime: String?

    public var updateStartTime: String?

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
        if self.allApply != nil {
            map["all_apply"] = self.allApply!
        }
        if self.applyId != nil {
            map["apply_id"] = self.applyId!
        }
        if self.departId != nil {
            map["depart_id"] = self.departId!
        }
        if self.endTime != nil {
            map["end_time"] = self.endTime!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.startTime != nil {
            map["start_time"] = self.startTime!
        }
        if self.thirdpartApplyId != nil {
            map["thirdpart_apply_id"] = self.thirdpartApplyId!
        }
        if self.updateEndTime != nil {
            map["update_end_time"] = self.updateEndTime!
        }
        if self.updateStartTime != nil {
            map["update_start_time"] = self.updateStartTime!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all_apply") {
            self.allApply = dict["all_apply"] as! Bool
        }
        if dict.keys.contains("apply_id") {
            self.applyId = dict["apply_id"] as! Int64
        }
        if dict.keys.contains("depart_id") {
            self.departId = dict["depart_id"] as! String
        }
        if dict.keys.contains("end_time") {
            self.endTime = dict["end_time"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("start_time") {
            self.startTime = dict["start_time"] as! String
        }
        if dict.keys.contains("thirdpart_apply_id") {
            self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
        }
        if dict.keys.contains("update_end_time") {
            self.updateEndTime = dict["update_end_time"] as! String
        }
        if dict.keys.contains("update_start_time") {
            self.updateStartTime = dict["update_start_time"] as! String
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class TrainOrderListQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class CostCenter : Tea.TeaModel {
            public var corpId: String?

            public var id: Int64?

            public var name: String?

            public var number: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.corpId != nil {
                    map["corp_id"] = self.corpId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.number != nil {
                    map["number"] = self.number!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("corp_id") {
                    self.corpId = dict["corp_id"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") {
                    self.number = dict["number"] as! String
                }
            }
        }
        public class Invoice : Tea.TeaModel {
            public var id: Int64?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public class PriceInfoList : Tea.TeaModel {
            public var categoryCode: Int32?

            public var categoryType: Int32?

            public var endCity: String?

            public var endTime: String?

            public var gmtCreate: String?

            public var originalTrainNo: String?

            public var passengerName: String?

            public var payType: Int32?

            public var price: Double?

            public var seatType: String?

            public var startCity: String?

            public var startTime: String?

            public var tradeId: String?

            public var trainNo: String?

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
                if self.categoryCode != nil {
                    map["category_code"] = self.categoryCode!
                }
                if self.categoryType != nil {
                    map["category_type"] = self.categoryType!
                }
                if self.endCity != nil {
                    map["end_city"] = self.endCity!
                }
                if self.endTime != nil {
                    map["end_time"] = self.endTime!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.originalTrainNo != nil {
                    map["original_train_no"] = self.originalTrainNo!
                }
                if self.passengerName != nil {
                    map["passenger_name"] = self.passengerName!
                }
                if self.payType != nil {
                    map["pay_type"] = self.payType!
                }
                if self.price != nil {
                    map["price"] = self.price!
                }
                if self.seatType != nil {
                    map["seat_type"] = self.seatType!
                }
                if self.startCity != nil {
                    map["start_city"] = self.startCity!
                }
                if self.startTime != nil {
                    map["start_time"] = self.startTime!
                }
                if self.tradeId != nil {
                    map["trade_id"] = self.tradeId!
                }
                if self.trainNo != nil {
                    map["train_no"] = self.trainNo!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category_code") {
                    self.categoryCode = dict["category_code"] as! Int32
                }
                if dict.keys.contains("category_type") {
                    self.categoryType = dict["category_type"] as! Int32
                }
                if dict.keys.contains("end_city") {
                    self.endCity = dict["end_city"] as! String
                }
                if dict.keys.contains("end_time") {
                    self.endTime = dict["end_time"] as! String
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("original_train_no") {
                    self.originalTrainNo = dict["original_train_no"] as! String
                }
                if dict.keys.contains("passenger_name") {
                    self.passengerName = dict["passenger_name"] as! String
                }
                if dict.keys.contains("pay_type") {
                    self.payType = dict["pay_type"] as! Int32
                }
                if dict.keys.contains("price") {
                    self.price = dict["price"] as! Double
                }
                if dict.keys.contains("seat_type") {
                    self.seatType = dict["seat_type"] as! String
                }
                if dict.keys.contains("start_city") {
                    self.startCity = dict["start_city"] as! String
                }
                if dict.keys.contains("start_time") {
                    self.startTime = dict["start_time"] as! String
                }
                if dict.keys.contains("trade_id") {
                    self.tradeId = dict["trade_id"] as! String
                }
                if dict.keys.contains("train_no") {
                    self.trainNo = dict["train_no"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public class UserAffiliateList : Tea.TeaModel {
            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
            }
        }
        public var applyId: Int64?

        public var arrCity: String?

        public var arrStation: String?

        public var arrTime: String?

        public var btripTitle: String?

        public var contactName: String?

        public var corpId: String?

        public var corpName: String?

        public var costCenter: TrainOrderListQueryResponseBody.Module.CostCenter?

        public var depCity: String?

        public var depStation: String?

        public var depTime: String?

        public var departId: String?

        public var departName: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var invoice: TrainOrderListQueryResponseBody.Module.Invoice?

        public var priceInfoList: [TrainOrderListQueryResponseBody.Module.PriceInfoList]?

        public var projectCode: String?

        public var projectId: Int64?

        public var projectTitle: String?

        public var riderName: String?

        public var runTime: String?

        public var seatType: String?

        public var status: Int32?

        public var thirdPartProjectId: String?

        public var thirdpartApplyId: String?

        public var thirdpartItineraryId: String?

        public var ticketCount: Int32?

        public var ticketNo12306: String?

        public var trainNumber: String?

        public var trainType: String?

        public var userAffiliateList: [TrainOrderListQueryResponseBody.Module.UserAffiliateList]?

        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.costCenter?.validate()
            try self.invoice?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyId != nil {
                map["apply_id"] = self.applyId!
            }
            if self.arrCity != nil {
                map["arr_city"] = self.arrCity!
            }
            if self.arrStation != nil {
                map["arr_station"] = self.arrStation!
            }
            if self.arrTime != nil {
                map["arr_time"] = self.arrTime!
            }
            if self.btripTitle != nil {
                map["btrip_title"] = self.btripTitle!
            }
            if self.contactName != nil {
                map["contact_name"] = self.contactName!
            }
            if self.corpId != nil {
                map["corp_id"] = self.corpId!
            }
            if self.corpName != nil {
                map["corp_name"] = self.corpName!
            }
            if self.costCenter != nil {
                map["cost_center"] = self.costCenter?.toMap()
            }
            if self.depCity != nil {
                map["dep_city"] = self.depCity!
            }
            if self.depStation != nil {
                map["dep_station"] = self.depStation!
            }
            if self.depTime != nil {
                map["dep_time"] = self.depTime!
            }
            if self.departId != nil {
                map["depart_id"] = self.departId!
            }
            if self.departName != nil {
                map["depart_name"] = self.departName!
            }
            if self.gmtCreate != nil {
                map["gmt_create"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmt_modified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.invoice != nil {
                map["invoice"] = self.invoice?.toMap()
            }
            if self.priceInfoList != nil {
                var tmp : [Any] = []
                for k in self.priceInfoList! {
                    tmp.append(k.toMap())
                }
                map["price_info_list"] = tmp
            }
            if self.projectCode != nil {
                map["project_code"] = self.projectCode!
            }
            if self.projectId != nil {
                map["project_id"] = self.projectId!
            }
            if self.projectTitle != nil {
                map["project_title"] = self.projectTitle!
            }
            if self.riderName != nil {
                map["rider_name"] = self.riderName!
            }
            if self.runTime != nil {
                map["run_time"] = self.runTime!
            }
            if self.seatType != nil {
                map["seat_type"] = self.seatType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.thirdPartProjectId != nil {
                map["third_part_project_id"] = self.thirdPartProjectId!
            }
            if self.thirdpartApplyId != nil {
                map["thirdpart_apply_id"] = self.thirdpartApplyId!
            }
            if self.thirdpartItineraryId != nil {
                map["thirdpart_itinerary_id"] = self.thirdpartItineraryId!
            }
            if self.ticketCount != nil {
                map["ticket_count"] = self.ticketCount!
            }
            if self.ticketNo12306 != nil {
                map["ticket_no12306"] = self.ticketNo12306!
            }
            if self.trainNumber != nil {
                map["train_number"] = self.trainNumber!
            }
            if self.trainType != nil {
                map["train_type"] = self.trainType!
            }
            if self.userAffiliateList != nil {
                var tmp : [Any] = []
                for k in self.userAffiliateList! {
                    tmp.append(k.toMap())
                }
                map["user_affiliate_list"] = tmp
            }
            if self.userId != nil {
                map["user_id"] = self.userId!
            }
            if self.userName != nil {
                map["user_name"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apply_id") {
                self.applyId = dict["apply_id"] as! Int64
            }
            if dict.keys.contains("arr_city") {
                self.arrCity = dict["arr_city"] as! String
            }
            if dict.keys.contains("arr_station") {
                self.arrStation = dict["arr_station"] as! String
            }
            if dict.keys.contains("arr_time") {
                self.arrTime = dict["arr_time"] as! String
            }
            if dict.keys.contains("btrip_title") {
                self.btripTitle = dict["btrip_title"] as! String
            }
            if dict.keys.contains("contact_name") {
                self.contactName = dict["contact_name"] as! String
            }
            if dict.keys.contains("corp_id") {
                self.corpId = dict["corp_id"] as! String
            }
            if dict.keys.contains("corp_name") {
                self.corpName = dict["corp_name"] as! String
            }
            if dict.keys.contains("cost_center") {
                var model = TrainOrderListQueryResponseBody.Module.CostCenter()
                model.fromMap(dict["cost_center"] as! [String: Any])
                self.costCenter = model
            }
            if dict.keys.contains("dep_city") {
                self.depCity = dict["dep_city"] as! String
            }
            if dict.keys.contains("dep_station") {
                self.depStation = dict["dep_station"] as! String
            }
            if dict.keys.contains("dep_time") {
                self.depTime = dict["dep_time"] as! String
            }
            if dict.keys.contains("depart_id") {
                self.departId = dict["depart_id"] as! String
            }
            if dict.keys.contains("depart_name") {
                self.departName = dict["depart_name"] as! String
            }
            if dict.keys.contains("gmt_create") {
                self.gmtCreate = dict["gmt_create"] as! String
            }
            if dict.keys.contains("gmt_modified") {
                self.gmtModified = dict["gmt_modified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("invoice") {
                var model = TrainOrderListQueryResponseBody.Module.Invoice()
                model.fromMap(dict["invoice"] as! [String: Any])
                self.invoice = model
            }
            if dict.keys.contains("price_info_list") {
                self.priceInfoList = dict["price_info_list"] as! [TrainOrderListQueryResponseBody.Module.PriceInfoList]
            }
            if dict.keys.contains("project_code") {
                self.projectCode = dict["project_code"] as! String
            }
            if dict.keys.contains("project_id") {
                self.projectId = dict["project_id"] as! Int64
            }
            if dict.keys.contains("project_title") {
                self.projectTitle = dict["project_title"] as! String
            }
            if dict.keys.contains("rider_name") {
                self.riderName = dict["rider_name"] as! String
            }
            if dict.keys.contains("run_time") {
                self.runTime = dict["run_time"] as! String
            }
            if dict.keys.contains("seat_type") {
                self.seatType = dict["seat_type"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("third_part_project_id") {
                self.thirdPartProjectId = dict["third_part_project_id"] as! String
            }
            if dict.keys.contains("thirdpart_apply_id") {
                self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
            }
            if dict.keys.contains("thirdpart_itinerary_id") {
                self.thirdpartItineraryId = dict["thirdpart_itinerary_id"] as! String
            }
            if dict.keys.contains("ticket_count") {
                self.ticketCount = dict["ticket_count"] as! Int32
            }
            if dict.keys.contains("ticket_no12306") {
                self.ticketNo12306 = dict["ticket_no12306"] as! String
            }
            if dict.keys.contains("train_number") {
                self.trainNumber = dict["train_number"] as! String
            }
            if dict.keys.contains("train_type") {
                self.trainType = dict["train_type"] as! String
            }
            if dict.keys.contains("user_affiliate_list") {
                self.userAffiliateList = dict["user_affiliate_list"] as! [TrainOrderListQueryResponseBody.Module.UserAffiliateList]
            }
            if dict.keys.contains("user_id") {
                self.userId = dict["user_id"] as! String
            }
            if dict.keys.contains("user_name") {
                self.userName = dict["user_name"] as! String
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var totalNumber: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalNumber != nil {
                map["total_number"] = self.totalNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page") {
                self.page = dict["page"] as! Int32
            }
            if dict.keys.contains("page_size") {
                self.pageSize = dict["page_size"] as! Int32
            }
            if dict.keys.contains("total_number") {
                self.totalNumber = dict["total_number"] as! Int32
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: [TrainOrderListQueryResponseBody.Module]?

    public var pageInfo: TrainOrderListQueryResponseBody.PageInfo?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            var tmp : [Any] = []
            for k in self.module! {
                tmp.append(k.toMap())
            }
            map["module"] = tmp
        }
        if self.pageInfo != nil {
            map["page_info"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            self.module = dict["module"] as! [TrainOrderListQueryResponseBody.Module]
        }
        if dict.keys.contains("page_info") {
            var model = TrainOrderListQueryResponseBody.PageInfo()
            model.fromMap(dict["page_info"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class TrainOrderListQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TrainOrderListQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = TrainOrderListQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TrainOrderQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class TrainOrderQueryRequest : Tea.TeaModel {
    public var orderId: Int64?

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
        if self.orderId != nil {
            map["order_id"] = self.orderId!
        }
        if self.userId != nil {
            map["user_id"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_id") {
            self.orderId = dict["order_id"] as! Int64
        }
        if dict.keys.contains("user_id") {
            self.userId = dict["user_id"] as! String
        }
    }
}

public class TrainOrderQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class ChangeTicketInfoList : Tea.TeaModel {
            public var changeCoachNo: String?

            public var changeGapFee: Double?

            public var changeHandlingFee: Double?

            public var changeSeatNo: String?

            public var changeSeatTypeName: String?

            public var changeServiceFee: Double?

            public var changeTrainNo: String?

            public var changeTrainTypeName: String?

            public var checkInTime: String?

            public var checkOutTime: String?

            public var endTime: String?

            public var fromStationName: String?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var originTicketNo: String?

            public var outTicketStatus: String?

            public var startTime: String?

            public var ticketNo: String?

            public var toStationName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.changeCoachNo != nil {
                    map["change_coach_no"] = self.changeCoachNo!
                }
                if self.changeGapFee != nil {
                    map["change_gap_fee"] = self.changeGapFee!
                }
                if self.changeHandlingFee != nil {
                    map["change_handling_fee"] = self.changeHandlingFee!
                }
                if self.changeSeatNo != nil {
                    map["change_seat_no"] = self.changeSeatNo!
                }
                if self.changeSeatTypeName != nil {
                    map["change_seat_type_name"] = self.changeSeatTypeName!
                }
                if self.changeServiceFee != nil {
                    map["change_service_fee"] = self.changeServiceFee!
                }
                if self.changeTrainNo != nil {
                    map["change_train_no"] = self.changeTrainNo!
                }
                if self.changeTrainTypeName != nil {
                    map["change_train_type_name"] = self.changeTrainTypeName!
                }
                if self.checkInTime != nil {
                    map["check_in_time"] = self.checkInTime!
                }
                if self.checkOutTime != nil {
                    map["check_out_time"] = self.checkOutTime!
                }
                if self.endTime != nil {
                    map["end_time"] = self.endTime!
                }
                if self.fromStationName != nil {
                    map["from_station_name"] = self.fromStationName!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["gmt_modify"] = self.gmtModify!
                }
                if self.originTicketNo != nil {
                    map["origin_ticket_no"] = self.originTicketNo!
                }
                if self.outTicketStatus != nil {
                    map["out_ticket_status"] = self.outTicketStatus!
                }
                if self.startTime != nil {
                    map["start_time"] = self.startTime!
                }
                if self.ticketNo != nil {
                    map["ticket_no"] = self.ticketNo!
                }
                if self.toStationName != nil {
                    map["to_station_name"] = self.toStationName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("change_coach_no") {
                    self.changeCoachNo = dict["change_coach_no"] as! String
                }
                if dict.keys.contains("change_gap_fee") {
                    self.changeGapFee = dict["change_gap_fee"] as! Double
                }
                if dict.keys.contains("change_handling_fee") {
                    self.changeHandlingFee = dict["change_handling_fee"] as! Double
                }
                if dict.keys.contains("change_seat_no") {
                    self.changeSeatNo = dict["change_seat_no"] as! String
                }
                if dict.keys.contains("change_seat_type_name") {
                    self.changeSeatTypeName = dict["change_seat_type_name"] as! String
                }
                if dict.keys.contains("change_service_fee") {
                    self.changeServiceFee = dict["change_service_fee"] as! Double
                }
                if dict.keys.contains("change_train_no") {
                    self.changeTrainNo = dict["change_train_no"] as! String
                }
                if dict.keys.contains("change_train_type_name") {
                    self.changeTrainTypeName = dict["change_train_type_name"] as! String
                }
                if dict.keys.contains("check_in_time") {
                    self.checkInTime = dict["check_in_time"] as! String
                }
                if dict.keys.contains("check_out_time") {
                    self.checkOutTime = dict["check_out_time"] as! String
                }
                if dict.keys.contains("end_time") {
                    self.endTime = dict["end_time"] as! String
                }
                if dict.keys.contains("from_station_name") {
                    self.fromStationName = dict["from_station_name"] as! String
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("gmt_modify") {
                    self.gmtModify = dict["gmt_modify"] as! String
                }
                if dict.keys.contains("origin_ticket_no") {
                    self.originTicketNo = dict["origin_ticket_no"] as! String
                }
                if dict.keys.contains("out_ticket_status") {
                    self.outTicketStatus = dict["out_ticket_status"] as! String
                }
                if dict.keys.contains("start_time") {
                    self.startTime = dict["start_time"] as! String
                }
                if dict.keys.contains("ticket_no") {
                    self.ticketNo = dict["ticket_no"] as! String
                }
                if dict.keys.contains("to_station_name") {
                    self.toStationName = dict["to_station_name"] as! String
                }
            }
        }
        public class InvoiceInfo : Tea.TeaModel {
            public var id: Int64?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public class OrderBaseInfo : Tea.TeaModel {
            public var applyId: String?

            public var btripTitle: String?

            public var contactName: String?

            public var corpId: String?

            public var corpName: String?

            public var departId: String?

            public var departName: String?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var itineraryId: String?

            public var orderId: Int64?

            public var orderStatus: Int32?

            public var thirdpartApplyId: String?

            public var thirdpartCorpId: String?

            public var thirdpartItineraryId: String?

            public var tripType: Int32?

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
                if self.applyId != nil {
                    map["apply_id"] = self.applyId!
                }
                if self.btripTitle != nil {
                    map["btrip_title"] = self.btripTitle!
                }
                if self.contactName != nil {
                    map["contact_name"] = self.contactName!
                }
                if self.corpId != nil {
                    map["corp_id"] = self.corpId!
                }
                if self.corpName != nil {
                    map["corp_name"] = self.corpName!
                }
                if self.departId != nil {
                    map["depart_id"] = self.departId!
                }
                if self.departName != nil {
                    map["depart_name"] = self.departName!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["gmt_modify"] = self.gmtModify!
                }
                if self.itineraryId != nil {
                    map["itinerary_id"] = self.itineraryId!
                }
                if self.orderId != nil {
                    map["order_id"] = self.orderId!
                }
                if self.orderStatus != nil {
                    map["order_status"] = self.orderStatus!
                }
                if self.thirdpartApplyId != nil {
                    map["thirdpart_apply_id"] = self.thirdpartApplyId!
                }
                if self.thirdpartCorpId != nil {
                    map["thirdpart_corp_id"] = self.thirdpartCorpId!
                }
                if self.thirdpartItineraryId != nil {
                    map["thirdpart_itinerary_id"] = self.thirdpartItineraryId!
                }
                if self.tripType != nil {
                    map["trip_type"] = self.tripType!
                }
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("apply_id") {
                    self.applyId = dict["apply_id"] as! String
                }
                if dict.keys.contains("btrip_title") {
                    self.btripTitle = dict["btrip_title"] as! String
                }
                if dict.keys.contains("contact_name") {
                    self.contactName = dict["contact_name"] as! String
                }
                if dict.keys.contains("corp_id") {
                    self.corpId = dict["corp_id"] as! String
                }
                if dict.keys.contains("corp_name") {
                    self.corpName = dict["corp_name"] as! String
                }
                if dict.keys.contains("depart_id") {
                    self.departId = dict["depart_id"] as! String
                }
                if dict.keys.contains("depart_name") {
                    self.departName = dict["depart_name"] as! String
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("gmt_modify") {
                    self.gmtModify = dict["gmt_modify"] as! String
                }
                if dict.keys.contains("itinerary_id") {
                    self.itineraryId = dict["itinerary_id"] as! String
                }
                if dict.keys.contains("order_id") {
                    self.orderId = dict["order_id"] as! Int64
                }
                if dict.keys.contains("order_status") {
                    self.orderStatus = dict["order_status"] as! Int32
                }
                if dict.keys.contains("thirdpart_apply_id") {
                    self.thirdpartApplyId = dict["thirdpart_apply_id"] as! String
                }
                if dict.keys.contains("thirdpart_corp_id") {
                    self.thirdpartCorpId = dict["thirdpart_corp_id"] as! String
                }
                if dict.keys.contains("thirdpart_itinerary_id") {
                    self.thirdpartItineraryId = dict["thirdpart_itinerary_id"] as! String
                }
                if dict.keys.contains("trip_type") {
                    self.tripType = dict["trip_type"] as! Int32
                }
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
            }
        }
        public class PassengerInfoList : Tea.TeaModel {
            public var costCenterId: Int64?

            public var costCenterName: String?

            public var costCenterNumber: String?

            public var projectCode: String?

            public var projectId: Int64?

            public var projectTitle: String?

            public var thirdpartProjectId: String?

            public var userId: String?

            public var userName: String?

            public var userType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.costCenterId != nil {
                    map["cost_center_id"] = self.costCenterId!
                }
                if self.costCenterName != nil {
                    map["cost_center_name"] = self.costCenterName!
                }
                if self.costCenterNumber != nil {
                    map["cost_center_number"] = self.costCenterNumber!
                }
                if self.projectCode != nil {
                    map["project_code"] = self.projectCode!
                }
                if self.projectId != nil {
                    map["project_id"] = self.projectId!
                }
                if self.projectTitle != nil {
                    map["project_title"] = self.projectTitle!
                }
                if self.thirdpartProjectId != nil {
                    map["thirdpart_project_id"] = self.thirdpartProjectId!
                }
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                if self.userName != nil {
                    map["user_name"] = self.userName!
                }
                if self.userType != nil {
                    map["user_type"] = self.userType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cost_center_id") {
                    self.costCenterId = dict["cost_center_id"] as! Int64
                }
                if dict.keys.contains("cost_center_name") {
                    self.costCenterName = dict["cost_center_name"] as! String
                }
                if dict.keys.contains("cost_center_number") {
                    self.costCenterNumber = dict["cost_center_number"] as! String
                }
                if dict.keys.contains("project_code") {
                    self.projectCode = dict["project_code"] as! String
                }
                if dict.keys.contains("project_id") {
                    self.projectId = dict["project_id"] as! Int64
                }
                if dict.keys.contains("project_title") {
                    self.projectTitle = dict["project_title"] as! String
                }
                if dict.keys.contains("thirdpart_project_id") {
                    self.thirdpartProjectId = dict["thirdpart_project_id"] as! String
                }
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
                if dict.keys.contains("user_name") {
                    self.userName = dict["user_name"] as! String
                }
                if dict.keys.contains("user_type") {
                    self.userType = dict["user_type"] as! Int32
                }
            }
        }
        public class PriceInfoList : Tea.TeaModel {
            public var categoryCode: Int32?

            public var gmtCreate: String?

            public var passengerName: String?

            public var payType: Int32?

            public var price: Double?

            public var tradeId: String?

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
                if self.categoryCode != nil {
                    map["category_code"] = self.categoryCode!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.passengerName != nil {
                    map["passenger_name"] = self.passengerName!
                }
                if self.payType != nil {
                    map["pay_type"] = self.payType!
                }
                if self.price != nil {
                    map["price"] = self.price!
                }
                if self.tradeId != nil {
                    map["trade_id"] = self.tradeId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category_code") {
                    self.categoryCode = dict["category_code"] as! Int32
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("passenger_name") {
                    self.passengerName = dict["passenger_name"] as! String
                }
                if dict.keys.contains("pay_type") {
                    self.payType = dict["pay_type"] as! Int32
                }
                if dict.keys.contains("price") {
                    self.price = dict["price"] as! Double
                }
                if dict.keys.contains("trade_id") {
                    self.tradeId = dict["trade_id"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public class RefundTicketInfoList : Tea.TeaModel {
            public var gmtCreate: String?

            public var gmtModify: String?

            public var refundFee: Double?

            public var refundServiceFee: Double?

            public var ticketNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["gmt_modify"] = self.gmtModify!
                }
                if self.refundFee != nil {
                    map["refund_fee"] = self.refundFee!
                }
                if self.refundServiceFee != nil {
                    map["refund_service_fee"] = self.refundServiceFee!
                }
                if self.ticketNo != nil {
                    map["ticket_no"] = self.ticketNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("gmt_modify") {
                    self.gmtModify = dict["gmt_modify"] as! String
                }
                if dict.keys.contains("refund_fee") {
                    self.refundFee = dict["refund_fee"] as! Double
                }
                if dict.keys.contains("refund_service_fee") {
                    self.refundServiceFee = dict["refund_service_fee"] as! Double
                }
                if dict.keys.contains("ticket_no") {
                    self.ticketNo = dict["ticket_no"] as! String
                }
            }
        }
        public class TicketInfoList : Tea.TeaModel {
            public var changed: Bool?

            public var checkInTime: String?

            public var checkOutTime: String?

            public var coachNo: String?

            public var endTime: String?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var outTicketStatus: String?

            public var payType: Int32?

            public var seatNo: String?

            public var seatTypeName: String?

            public var serviceFee: Double?

            public var startTime: String?

            public var ticketNo: String?

            public var ticketPrice: Double?

            public var ticketStatus: Int32?

            public var trainTypeName: String?

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
                if self.changed != nil {
                    map["changed"] = self.changed!
                }
                if self.checkInTime != nil {
                    map["check_in_time"] = self.checkInTime!
                }
                if self.checkOutTime != nil {
                    map["check_out_time"] = self.checkOutTime!
                }
                if self.coachNo != nil {
                    map["coach_no"] = self.coachNo!
                }
                if self.endTime != nil {
                    map["end_time"] = self.endTime!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["gmt_modify"] = self.gmtModify!
                }
                if self.outTicketStatus != nil {
                    map["out_ticket_status"] = self.outTicketStatus!
                }
                if self.payType != nil {
                    map["pay_type"] = self.payType!
                }
                if self.seatNo != nil {
                    map["seat_no"] = self.seatNo!
                }
                if self.seatTypeName != nil {
                    map["seat_type_name"] = self.seatTypeName!
                }
                if self.serviceFee != nil {
                    map["service_fee"] = self.serviceFee!
                }
                if self.startTime != nil {
                    map["start_time"] = self.startTime!
                }
                if self.ticketNo != nil {
                    map["ticket_no"] = self.ticketNo!
                }
                if self.ticketPrice != nil {
                    map["ticket_price"] = self.ticketPrice!
                }
                if self.ticketStatus != nil {
                    map["ticket_status"] = self.ticketStatus!
                }
                if self.trainTypeName != nil {
                    map["train_type_name"] = self.trainTypeName!
                }
                if self.userId != nil {
                    map["user_id"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("changed") {
                    self.changed = dict["changed"] as! Bool
                }
                if dict.keys.contains("check_in_time") {
                    self.checkInTime = dict["check_in_time"] as! String
                }
                if dict.keys.contains("check_out_time") {
                    self.checkOutTime = dict["check_out_time"] as! String
                }
                if dict.keys.contains("coach_no") {
                    self.coachNo = dict["coach_no"] as! String
                }
                if dict.keys.contains("end_time") {
                    self.endTime = dict["end_time"] as! String
                }
                if dict.keys.contains("gmt_create") {
                    self.gmtCreate = dict["gmt_create"] as! String
                }
                if dict.keys.contains("gmt_modify") {
                    self.gmtModify = dict["gmt_modify"] as! String
                }
                if dict.keys.contains("out_ticket_status") {
                    self.outTicketStatus = dict["out_ticket_status"] as! String
                }
                if dict.keys.contains("pay_type") {
                    self.payType = dict["pay_type"] as! Int32
                }
                if dict.keys.contains("seat_no") {
                    self.seatNo = dict["seat_no"] as! String
                }
                if dict.keys.contains("seat_type_name") {
                    self.seatTypeName = dict["seat_type_name"] as! String
                }
                if dict.keys.contains("service_fee") {
                    self.serviceFee = dict["service_fee"] as! Double
                }
                if dict.keys.contains("start_time") {
                    self.startTime = dict["start_time"] as! String
                }
                if dict.keys.contains("ticket_no") {
                    self.ticketNo = dict["ticket_no"] as! String
                }
                if dict.keys.contains("ticket_price") {
                    self.ticketPrice = dict["ticket_price"] as! Double
                }
                if dict.keys.contains("ticket_status") {
                    self.ticketStatus = dict["ticket_status"] as! Int32
                }
                if dict.keys.contains("train_type_name") {
                    self.trainTypeName = dict["train_type_name"] as! String
                }
                if dict.keys.contains("user_id") {
                    self.userId = dict["user_id"] as! String
                }
            }
        }
        public class TrainInfo : Tea.TeaModel {
            public var arrTime: String?

            public var depTime: String?

            public var fromStationName: String?

            public var runTime: Int64?

            public var toStationName: String?

            public var trainNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrTime != nil {
                    map["arr_time"] = self.arrTime!
                }
                if self.depTime != nil {
                    map["dep_time"] = self.depTime!
                }
                if self.fromStationName != nil {
                    map["from_station_name"] = self.fromStationName!
                }
                if self.runTime != nil {
                    map["run_time"] = self.runTime!
                }
                if self.toStationName != nil {
                    map["to_station_name"] = self.toStationName!
                }
                if self.trainNo != nil {
                    map["train_no"] = self.trainNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arr_time") {
                    self.arrTime = dict["arr_time"] as! String
                }
                if dict.keys.contains("dep_time") {
                    self.depTime = dict["dep_time"] as! String
                }
                if dict.keys.contains("from_station_name") {
                    self.fromStationName = dict["from_station_name"] as! String
                }
                if dict.keys.contains("run_time") {
                    self.runTime = dict["run_time"] as! Int64
                }
                if dict.keys.contains("to_station_name") {
                    self.toStationName = dict["to_station_name"] as! String
                }
                if dict.keys.contains("train_no") {
                    self.trainNo = dict["train_no"] as! String
                }
            }
        }
        public var changeTicketInfoList: [TrainOrderQueryResponseBody.Module.ChangeTicketInfoList]?

        public var invoiceInfo: TrainOrderQueryResponseBody.Module.InvoiceInfo?

        public var orderBaseInfo: TrainOrderQueryResponseBody.Module.OrderBaseInfo?

        public var passengerInfoList: [TrainOrderQueryResponseBody.Module.PassengerInfoList]?

        public var priceInfoList: [TrainOrderQueryResponseBody.Module.PriceInfoList]?

        public var refundTicketInfoList: [TrainOrderQueryResponseBody.Module.RefundTicketInfoList]?

        public var ticketInfoList: [TrainOrderQueryResponseBody.Module.TicketInfoList]?

        public var trainInfo: TrainOrderQueryResponseBody.Module.TrainInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.invoiceInfo?.validate()
            try self.orderBaseInfo?.validate()
            try self.trainInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeTicketInfoList != nil {
                var tmp : [Any] = []
                for k in self.changeTicketInfoList! {
                    tmp.append(k.toMap())
                }
                map["change_ticket_info_list"] = tmp
            }
            if self.invoiceInfo != nil {
                map["invoice_info"] = self.invoiceInfo?.toMap()
            }
            if self.orderBaseInfo != nil {
                map["order_base_info"] = self.orderBaseInfo?.toMap()
            }
            if self.passengerInfoList != nil {
                var tmp : [Any] = []
                for k in self.passengerInfoList! {
                    tmp.append(k.toMap())
                }
                map["passenger_info_list"] = tmp
            }
            if self.priceInfoList != nil {
                var tmp : [Any] = []
                for k in self.priceInfoList! {
                    tmp.append(k.toMap())
                }
                map["price_info_list"] = tmp
            }
            if self.refundTicketInfoList != nil {
                var tmp : [Any] = []
                for k in self.refundTicketInfoList! {
                    tmp.append(k.toMap())
                }
                map["refund_ticket_info_list"] = tmp
            }
            if self.ticketInfoList != nil {
                var tmp : [Any] = []
                for k in self.ticketInfoList! {
                    tmp.append(k.toMap())
                }
                map["ticket_info_list"] = tmp
            }
            if self.trainInfo != nil {
                map["train_info"] = self.trainInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("change_ticket_info_list") {
                self.changeTicketInfoList = dict["change_ticket_info_list"] as! [TrainOrderQueryResponseBody.Module.ChangeTicketInfoList]
            }
            if dict.keys.contains("invoice_info") {
                var model = TrainOrderQueryResponseBody.Module.InvoiceInfo()
                model.fromMap(dict["invoice_info"] as! [String: Any])
                self.invoiceInfo = model
            }
            if dict.keys.contains("order_base_info") {
                var model = TrainOrderQueryResponseBody.Module.OrderBaseInfo()
                model.fromMap(dict["order_base_info"] as! [String: Any])
                self.orderBaseInfo = model
            }
            if dict.keys.contains("passenger_info_list") {
                self.passengerInfoList = dict["passenger_info_list"] as! [TrainOrderQueryResponseBody.Module.PassengerInfoList]
            }
            if dict.keys.contains("price_info_list") {
                self.priceInfoList = dict["price_info_list"] as! [TrainOrderQueryResponseBody.Module.PriceInfoList]
            }
            if dict.keys.contains("refund_ticket_info_list") {
                self.refundTicketInfoList = dict["refund_ticket_info_list"] as! [TrainOrderQueryResponseBody.Module.RefundTicketInfoList]
            }
            if dict.keys.contains("ticket_info_list") {
                self.ticketInfoList = dict["ticket_info_list"] as! [TrainOrderQueryResponseBody.Module.TicketInfoList]
            }
            if dict.keys.contains("train_info") {
                var model = TrainOrderQueryResponseBody.Module.TrainInfo()
                model.fromMap(dict["train_info"] as! [String: Any])
                self.trainInfo = model
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: TrainOrderQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = TrainOrderQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class TrainOrderQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TrainOrderQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = TrainOrderQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TrainStationSearchHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class TrainStationSearchRequest : Tea.TeaModel {
    public var keyword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
    }
}

public class TrainStationSearchResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Cities : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("code") {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var cities: [TrainStationSearchResponseBody.Module.Cities]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cities != nil {
                var tmp : [Any] = []
                for k in self.cities! {
                    tmp.append(k.toMap())
                }
                map["cities"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cities") {
                self.cities = dict["cities"] as! [TrainStationSearchResponseBody.Module.Cities]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: TrainStationSearchResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = TrainStationSearchResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class TrainStationSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TrainStationSearchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = TrainStationSearchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UserQueryHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsBtripSoCorpToken: String?

    public override init() {
        super.init()
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
        if self.xAcsBtripSoCorpToken != nil {
            map["x-acs-btrip-so-corp-token"] = self.xAcsBtripSoCorpToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-btrip-so-corp-token") {
            self.xAcsBtripSoCorpToken = dict["x-acs-btrip-so-corp-token"] as! String
        }
    }
}

public class UserQueryRequest : Tea.TeaModel {
    public var modifiedTimeGreaterOrEqualThan: String?

    public var pageSize: Int32?

    public var pageToken: String?

    public var thirdPartJobNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modifiedTimeGreaterOrEqualThan != nil {
            map["modified_time_greater_or_equal_than"] = self.modifiedTimeGreaterOrEqualThan!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.pageToken != nil {
            map["page_token"] = self.pageToken!
        }
        if self.thirdPartJobNo != nil {
            map["third_part_job_no"] = self.thirdPartJobNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("modified_time_greater_or_equal_than") {
            self.modifiedTimeGreaterOrEqualThan = dict["modified_time_greater_or_equal_than"] as! String
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("page_token") {
            self.pageToken = dict["page_token"] as! String
        }
        if dict.keys.contains("third_part_job_no") {
            self.thirdPartJobNo = dict["third_part_job_no"] as! String
        }
    }
}

public class UserQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var employeeNick: String?

            public var thirdPartEmployeeId: String?

            public var thirdPartJobNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.employeeNick != nil {
                    map["employee_nick"] = self.employeeNick!
                }
                if self.thirdPartEmployeeId != nil {
                    map["third_part_employee_id"] = self.thirdPartEmployeeId!
                }
                if self.thirdPartJobNo != nil {
                    map["third_part_job_no"] = self.thirdPartJobNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("employee_nick") {
                    self.employeeNick = dict["employee_nick"] as! String
                }
                if dict.keys.contains("third_part_employee_id") {
                    self.thirdPartEmployeeId = dict["third_part_employee_id"] as! String
                }
                if dict.keys.contains("third_part_job_no") {
                    self.thirdPartJobNo = dict["third_part_job_no"] as! String
                }
            }
        }
        public var hasMore: Bool?

        public var items: [UserQueryResponseBody.Module.Items]?

        public var pageToken: String?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasMore != nil {
                map["has_more"] = self.hasMore!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.pageToken != nil {
                map["page_token"] = self.pageToken!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("has_more") {
                self.hasMore = dict["has_more"] as! Bool
            }
            if dict.keys.contains("items") {
                self.items = dict["items"] as! [UserQueryResponseBody.Module.Items]
            }
            if dict.keys.contains("page_token") {
                self.pageToken = dict["page_token"] as! String
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: UserQueryResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") {
            var model = UserQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
    }
}

public class UserQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UserQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UserQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
