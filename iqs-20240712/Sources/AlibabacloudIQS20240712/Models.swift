import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AgentBaseQuery : Tea.TeaModel {
    public var query: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.query != nil {
            map["query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
    }
}

public class CommonAgentQuery : Tea.TeaModel {
    public var query: String?

    public var querySceneEnumCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.querySceneEnumCode != nil {
            map["querySceneEnumCode"] = self.querySceneEnumCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("querySceneEnumCode") {
            self.querySceneEnumCode = dict["querySceneEnumCode"] as! String
        }
    }
}

public class QueryResult : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var title: String?

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
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class Metadata : Tea.TeaModel {
            public var businessArea: String?

            public var dailyOpeningHours: String?

            public var mainTag: String?

            public var phone: String?

            public var score: String?

            public var weeklyOpeningDays: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.businessArea != nil {
                    map["businessArea"] = self.businessArea!
                }
                if self.dailyOpeningHours != nil {
                    map["dailyOpeningHours"] = self.dailyOpeningHours!
                }
                if self.mainTag != nil {
                    map["mainTag"] = self.mainTag!
                }
                if self.phone != nil {
                    map["phone"] = self.phone!
                }
                if self.score != nil {
                    map["score"] = self.score!
                }
                if self.weeklyOpeningDays != nil {
                    map["weeklyOpeningDays"] = self.weeklyOpeningDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("businessArea") {
                    self.businessArea = dict["businessArea"] as! String
                }
                if dict.keys.contains("dailyOpeningHours") {
                    self.dailyOpeningHours = dict["dailyOpeningHours"] as! String
                }
                if dict.keys.contains("mainTag") {
                    self.mainTag = dict["mainTag"] as! String
                }
                if dict.keys.contains("phone") {
                    self.phone = dict["phone"] as! String
                }
                if dict.keys.contains("score") {
                    self.score = dict["score"] as! String
                }
                if dict.keys.contains("weeklyOpeningDays") {
                    self.weeklyOpeningDays = dict["weeklyOpeningDays"] as! String
                }
            }
        }
        public var address: String?

        public var cityCode: String?

        public var cityName: String?

        public var districtCode: String?

        public var districtName: String?

        public var id: String?

        public var images: [QueryResult.Data.Images]?

        public var latitude: String?

        public var longitude: String?

        public var metadata: QueryResult.Data.Metadata?

        public var name: String?

        public var provinceCode: String?

        public var provinceName: String?

        public var typeCode: String?

        public var types: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metadata?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["address"] = self.address!
            }
            if self.cityCode != nil {
                map["cityCode"] = self.cityCode!
            }
            if self.cityName != nil {
                map["cityName"] = self.cityName!
            }
            if self.districtCode != nil {
                map["districtCode"] = self.districtCode!
            }
            if self.districtName != nil {
                map["districtName"] = self.districtName!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.images != nil {
                var tmp : [Any] = []
                for k in self.images! {
                    tmp.append(k.toMap())
                }
                map["images"] = tmp
            }
            if self.latitude != nil {
                map["latitude"] = self.latitude!
            }
            if self.longitude != nil {
                map["longitude"] = self.longitude!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.provinceCode != nil {
                map["provinceCode"] = self.provinceCode!
            }
            if self.provinceName != nil {
                map["provinceName"] = self.provinceName!
            }
            if self.typeCode != nil {
                map["typeCode"] = self.typeCode!
            }
            if self.types != nil {
                map["types"] = self.types!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("address") {
                self.address = dict["address"] as! String
            }
            if dict.keys.contains("cityCode") {
                self.cityCode = dict["cityCode"] as! String
            }
            if dict.keys.contains("cityName") {
                self.cityName = dict["cityName"] as! String
            }
            if dict.keys.contains("districtCode") {
                self.districtCode = dict["districtCode"] as! String
            }
            if dict.keys.contains("districtName") {
                self.districtName = dict["districtName"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("images") {
                var tmp : [QueryResult.Data.Images] = []
                for v in dict["images"] as! [Any] {
                    var model = QueryResult.Data.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
            }
            if dict.keys.contains("latitude") {
                self.latitude = dict["latitude"] as! String
            }
            if dict.keys.contains("longitude") {
                self.longitude = dict["longitude"] as! String
            }
            if dict.keys.contains("metadata") {
                var model = QueryResult.Data.Metadata()
                model.fromMap(dict["metadata"] as! [String: Any])
                self.metadata = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("provinceCode") {
                self.provinceCode = dict["provinceCode"] as! String
            }
            if dict.keys.contains("provinceName") {
                self.provinceName = dict["provinceName"] as! String
            }
            if dict.keys.contains("typeCode") {
                self.typeCode = dict["typeCode"] as! String
            }
            if dict.keys.contains("types") {
                self.types = dict["types"] as! String
            }
        }
    }
    public var data: [QueryResult.Data]?

    public override init() {
        super.init()
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
            map["data"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [QueryResult.Data] = []
            for v in dict["data"] as! [Any] {
                var model = QueryResult.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
    }
}

public class BicyclingDirectionNovaRequest : Tea.TeaModel {
    public var destinationLatitude: String?

    public var destinationLongitude: String?

    public var originLatitude: String?

    public var originLongitude: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationLatitude != nil {
            map["destinationLatitude"] = self.destinationLatitude!
        }
        if self.destinationLongitude != nil {
            map["destinationLongitude"] = self.destinationLongitude!
        }
        if self.originLatitude != nil {
            map["originLatitude"] = self.originLatitude!
        }
        if self.originLongitude != nil {
            map["originLongitude"] = self.originLongitude!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("destinationLatitude") {
            self.destinationLatitude = dict["destinationLatitude"] as! String
        }
        if dict.keys.contains("destinationLongitude") {
            self.destinationLongitude = dict["destinationLongitude"] as! String
        }
        if dict.keys.contains("originLatitude") {
            self.originLatitude = dict["originLatitude"] as! String
        }
        if dict.keys.contains("originLongitude") {
            self.originLongitude = dict["originLongitude"] as! String
        }
    }
}

public class BicyclingDirectionNovaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Paths : Tea.TeaModel {
            public class Cost : Tea.TeaModel {
                public var durationSecond: String?

                public var taxiFee: String?

                public var tollDistanceMeter: String?

                public var tollRoads: String?

                public var tolls: String?

                public var trafficLights: String?

                public var transitFee: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.durationSecond != nil {
                        map["durationSecond"] = self.durationSecond!
                    }
                    if self.taxiFee != nil {
                        map["taxiFee"] = self.taxiFee!
                    }
                    if self.tollDistanceMeter != nil {
                        map["tollDistanceMeter"] = self.tollDistanceMeter!
                    }
                    if self.tollRoads != nil {
                        map["tollRoads"] = self.tollRoads!
                    }
                    if self.tolls != nil {
                        map["tolls"] = self.tolls!
                    }
                    if self.trafficLights != nil {
                        map["trafficLights"] = self.trafficLights!
                    }
                    if self.transitFee != nil {
                        map["transitFee"] = self.transitFee!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("durationSecond") {
                        self.durationSecond = dict["durationSecond"] as! String
                    }
                    if dict.keys.contains("taxiFee") {
                        self.taxiFee = dict["taxiFee"] as! String
                    }
                    if dict.keys.contains("tollDistanceMeter") {
                        self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                    }
                    if dict.keys.contains("tollRoads") {
                        self.tollRoads = dict["tollRoads"] as! String
                    }
                    if dict.keys.contains("tolls") {
                        self.tolls = dict["tolls"] as! String
                    }
                    if dict.keys.contains("trafficLights") {
                        self.trafficLights = dict["trafficLights"] as! String
                    }
                    if dict.keys.contains("transitFee") {
                        self.transitFee = dict["transitFee"] as! String
                    }
                }
            }
            public class Steps : Tea.TeaModel {
                public class Cost : Tea.TeaModel {
                    public var durationSecond: String?

                    public var taxiFee: String?

                    public var tollDistanceMeter: String?

                    public var tollRoads: String?

                    public var tolls: String?

                    public var trafficLights: String?

                    public var transitFee: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.durationSecond != nil {
                            map["durationSecond"] = self.durationSecond!
                        }
                        if self.taxiFee != nil {
                            map["taxiFee"] = self.taxiFee!
                        }
                        if self.tollDistanceMeter != nil {
                            map["tollDistanceMeter"] = self.tollDistanceMeter!
                        }
                        if self.tollRoads != nil {
                            map["tollRoads"] = self.tollRoads!
                        }
                        if self.tolls != nil {
                            map["tolls"] = self.tolls!
                        }
                        if self.trafficLights != nil {
                            map["trafficLights"] = self.trafficLights!
                        }
                        if self.transitFee != nil {
                            map["transitFee"] = self.transitFee!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("durationSecond") {
                            self.durationSecond = dict["durationSecond"] as! String
                        }
                        if dict.keys.contains("taxiFee") {
                            self.taxiFee = dict["taxiFee"] as! String
                        }
                        if dict.keys.contains("tollDistanceMeter") {
                            self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                        }
                        if dict.keys.contains("tollRoads") {
                            self.tollRoads = dict["tollRoads"] as! String
                        }
                        if dict.keys.contains("tolls") {
                            self.tolls = dict["tolls"] as! String
                        }
                        if dict.keys.contains("trafficLights") {
                            self.trafficLights = dict["trafficLights"] as! String
                        }
                        if dict.keys.contains("transitFee") {
                            self.transitFee = dict["transitFee"] as! String
                        }
                    }
                }
                public var cost: BicyclingDirectionNovaResponseBody.Data.Paths.Steps.Cost?

                public var instruction: String?

                public var orientation: String?

                public var polyline: String?

                public var roadName: String?

                public var stepDistanceMeter: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.cost?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cost != nil {
                        map["cost"] = self.cost?.toMap()
                    }
                    if self.instruction != nil {
                        map["instruction"] = self.instruction!
                    }
                    if self.orientation != nil {
                        map["orientation"] = self.orientation!
                    }
                    if self.polyline != nil {
                        map["polyline"] = self.polyline!
                    }
                    if self.roadName != nil {
                        map["roadName"] = self.roadName!
                    }
                    if self.stepDistanceMeter != nil {
                        map["stepDistanceMeter"] = self.stepDistanceMeter!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cost") {
                        var model = BicyclingDirectionNovaResponseBody.Data.Paths.Steps.Cost()
                        model.fromMap(dict["cost"] as! [String: Any])
                        self.cost = model
                    }
                    if dict.keys.contains("instruction") {
                        self.instruction = dict["instruction"] as! String
                    }
                    if dict.keys.contains("orientation") {
                        self.orientation = dict["orientation"] as! String
                    }
                    if dict.keys.contains("polyline") {
                        self.polyline = dict["polyline"] as! String
                    }
                    if dict.keys.contains("roadName") {
                        self.roadName = dict["roadName"] as! String
                    }
                    if dict.keys.contains("stepDistanceMeter") {
                        self.stepDistanceMeter = dict["stepDistanceMeter"] as! String
                    }
                }
            }
            public var cost: BicyclingDirectionNovaResponseBody.Data.Paths.Cost?

            public var distanceMeter: String?

            public var durationSecond: String?

            public var restriction: String?

            public var steps: [BicyclingDirectionNovaResponseBody.Data.Paths.Steps]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cost?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cost != nil {
                    map["cost"] = self.cost?.toMap()
                }
                if self.distanceMeter != nil {
                    map["distanceMeter"] = self.distanceMeter!
                }
                if self.durationSecond != nil {
                    map["durationSecond"] = self.durationSecond!
                }
                if self.restriction != nil {
                    map["restriction"] = self.restriction!
                }
                if self.steps != nil {
                    var tmp : [Any] = []
                    for k in self.steps! {
                        tmp.append(k.toMap())
                    }
                    map["steps"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cost") {
                    var model = BicyclingDirectionNovaResponseBody.Data.Paths.Cost()
                    model.fromMap(dict["cost"] as! [String: Any])
                    self.cost = model
                }
                if dict.keys.contains("distanceMeter") {
                    self.distanceMeter = dict["distanceMeter"] as! String
                }
                if dict.keys.contains("durationSecond") {
                    self.durationSecond = dict["durationSecond"] as! String
                }
                if dict.keys.contains("restriction") {
                    self.restriction = dict["restriction"] as! String
                }
                if dict.keys.contains("steps") {
                    var tmp : [BicyclingDirectionNovaResponseBody.Data.Paths.Steps] = []
                    for v in dict["steps"] as! [Any] {
                        var model = BicyclingDirectionNovaResponseBody.Data.Paths.Steps()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.steps = tmp
                }
            }
        }
        public var count: String?

        public var destinationLatitude: String?

        public var destinationLongitude: String?

        public var originLatitude: String?

        public var originLongitude: String?

        public var paths: [BicyclingDirectionNovaResponseBody.Data.Paths]?

        public var taxiCost: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.destinationLatitude != nil {
                map["destinationLatitude"] = self.destinationLatitude!
            }
            if self.destinationLongitude != nil {
                map["destinationLongitude"] = self.destinationLongitude!
            }
            if self.originLatitude != nil {
                map["originLatitude"] = self.originLatitude!
            }
            if self.originLongitude != nil {
                map["originLongitude"] = self.originLongitude!
            }
            if self.paths != nil {
                var tmp : [Any] = []
                for k in self.paths! {
                    tmp.append(k.toMap())
                }
                map["paths"] = tmp
            }
            if self.taxiCost != nil {
                map["taxiCost"] = self.taxiCost!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("count") {
                self.count = dict["count"] as! String
            }
            if dict.keys.contains("destinationLatitude") {
                self.destinationLatitude = dict["destinationLatitude"] as! String
            }
            if dict.keys.contains("destinationLongitude") {
                self.destinationLongitude = dict["destinationLongitude"] as! String
            }
            if dict.keys.contains("originLatitude") {
                self.originLatitude = dict["originLatitude"] as! String
            }
            if dict.keys.contains("originLongitude") {
                self.originLongitude = dict["originLongitude"] as! String
            }
            if dict.keys.contains("paths") {
                var tmp : [BicyclingDirectionNovaResponseBody.Data.Paths] = []
                for v in dict["paths"] as! [Any] {
                    var model = BicyclingDirectionNovaResponseBody.Data.Paths()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paths = tmp
            }
            if dict.keys.contains("taxiCost") {
                self.taxiCost = dict["taxiCost"] as! String
            }
        }
    }
    public var data: BicyclingDirectionNovaResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var success: Bool?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = BicyclingDirectionNovaResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! Int32
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class BicyclingDirectionNovaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BicyclingDirectionNovaResponseBody?

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
            var model = BicyclingDirectionNovaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CommonQueryBySceneRequest : Tea.TeaModel {
    public var body: CommonAgentQuery?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = CommonAgentQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CommonQueryBySceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryResult?

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
            var model = QueryResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DrivingDirectionNovaRequest : Tea.TeaModel {
    public var carType: String?

    public var destinationLatitude: String?

    public var destinationLongitude: String?

    public var originLatitude: String?

    public var originLongitude: String?

    public var plate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.carType != nil {
            map["carType"] = self.carType!
        }
        if self.destinationLatitude != nil {
            map["destinationLatitude"] = self.destinationLatitude!
        }
        if self.destinationLongitude != nil {
            map["destinationLongitude"] = self.destinationLongitude!
        }
        if self.originLatitude != nil {
            map["originLatitude"] = self.originLatitude!
        }
        if self.originLongitude != nil {
            map["originLongitude"] = self.originLongitude!
        }
        if self.plate != nil {
            map["plate"] = self.plate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("carType") {
            self.carType = dict["carType"] as! String
        }
        if dict.keys.contains("destinationLatitude") {
            self.destinationLatitude = dict["destinationLatitude"] as! String
        }
        if dict.keys.contains("destinationLongitude") {
            self.destinationLongitude = dict["destinationLongitude"] as! String
        }
        if dict.keys.contains("originLatitude") {
            self.originLatitude = dict["originLatitude"] as! String
        }
        if dict.keys.contains("originLongitude") {
            self.originLongitude = dict["originLongitude"] as! String
        }
        if dict.keys.contains("plate") {
            self.plate = dict["plate"] as! String
        }
    }
}

public class DrivingDirectionNovaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Paths : Tea.TeaModel {
            public class Cost : Tea.TeaModel {
                public var durationSecond: String?

                public var taxiFee: String?

                public var tollDistanceMeter: String?

                public var tollRoads: String?

                public var tolls: String?

                public var trafficLights: String?

                public var transitFee: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.durationSecond != nil {
                        map["durationSecond"] = self.durationSecond!
                    }
                    if self.taxiFee != nil {
                        map["taxiFee"] = self.taxiFee!
                    }
                    if self.tollDistanceMeter != nil {
                        map["tollDistanceMeter"] = self.tollDistanceMeter!
                    }
                    if self.tollRoads != nil {
                        map["tollRoads"] = self.tollRoads!
                    }
                    if self.tolls != nil {
                        map["tolls"] = self.tolls!
                    }
                    if self.trafficLights != nil {
                        map["trafficLights"] = self.trafficLights!
                    }
                    if self.transitFee != nil {
                        map["transitFee"] = self.transitFee!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("durationSecond") {
                        self.durationSecond = dict["durationSecond"] as! String
                    }
                    if dict.keys.contains("taxiFee") {
                        self.taxiFee = dict["taxiFee"] as! String
                    }
                    if dict.keys.contains("tollDistanceMeter") {
                        self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                    }
                    if dict.keys.contains("tollRoads") {
                        self.tollRoads = dict["tollRoads"] as! String
                    }
                    if dict.keys.contains("tolls") {
                        self.tolls = dict["tolls"] as! String
                    }
                    if dict.keys.contains("trafficLights") {
                        self.trafficLights = dict["trafficLights"] as! String
                    }
                    if dict.keys.contains("transitFee") {
                        self.transitFee = dict["transitFee"] as! String
                    }
                }
            }
            public class Steps : Tea.TeaModel {
                public class Cost : Tea.TeaModel {
                    public var durationSecond: String?

                    public var taxiFee: String?

                    public var tollDistanceMeter: String?

                    public var tollRoads: String?

                    public var tolls: String?

                    public var trafficLights: String?

                    public var transitFee: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.durationSecond != nil {
                            map["durationSecond"] = self.durationSecond!
                        }
                        if self.taxiFee != nil {
                            map["taxiFee"] = self.taxiFee!
                        }
                        if self.tollDistanceMeter != nil {
                            map["tollDistanceMeter"] = self.tollDistanceMeter!
                        }
                        if self.tollRoads != nil {
                            map["tollRoads"] = self.tollRoads!
                        }
                        if self.tolls != nil {
                            map["tolls"] = self.tolls!
                        }
                        if self.trafficLights != nil {
                            map["trafficLights"] = self.trafficLights!
                        }
                        if self.transitFee != nil {
                            map["transitFee"] = self.transitFee!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("durationSecond") {
                            self.durationSecond = dict["durationSecond"] as! String
                        }
                        if dict.keys.contains("taxiFee") {
                            self.taxiFee = dict["taxiFee"] as! String
                        }
                        if dict.keys.contains("tollDistanceMeter") {
                            self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                        }
                        if dict.keys.contains("tollRoads") {
                            self.tollRoads = dict["tollRoads"] as! String
                        }
                        if dict.keys.contains("tolls") {
                            self.tolls = dict["tolls"] as! String
                        }
                        if dict.keys.contains("trafficLights") {
                            self.trafficLights = dict["trafficLights"] as! String
                        }
                        if dict.keys.contains("transitFee") {
                            self.transitFee = dict["transitFee"] as! String
                        }
                    }
                }
                public var cost: DrivingDirectionNovaResponseBody.Data.Paths.Steps.Cost?

                public var instruction: String?

                public var orientation: String?

                public var polyline: String?

                public var roadName: String?

                public var stepDistanceMeter: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.cost?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cost != nil {
                        map["cost"] = self.cost?.toMap()
                    }
                    if self.instruction != nil {
                        map["instruction"] = self.instruction!
                    }
                    if self.orientation != nil {
                        map["orientation"] = self.orientation!
                    }
                    if self.polyline != nil {
                        map["polyline"] = self.polyline!
                    }
                    if self.roadName != nil {
                        map["roadName"] = self.roadName!
                    }
                    if self.stepDistanceMeter != nil {
                        map["stepDistanceMeter"] = self.stepDistanceMeter!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cost") {
                        var model = DrivingDirectionNovaResponseBody.Data.Paths.Steps.Cost()
                        model.fromMap(dict["cost"] as! [String: Any])
                        self.cost = model
                    }
                    if dict.keys.contains("instruction") {
                        self.instruction = dict["instruction"] as! String
                    }
                    if dict.keys.contains("orientation") {
                        self.orientation = dict["orientation"] as! String
                    }
                    if dict.keys.contains("polyline") {
                        self.polyline = dict["polyline"] as! String
                    }
                    if dict.keys.contains("roadName") {
                        self.roadName = dict["roadName"] as! String
                    }
                    if dict.keys.contains("stepDistanceMeter") {
                        self.stepDistanceMeter = dict["stepDistanceMeter"] as! String
                    }
                }
            }
            public var cost: DrivingDirectionNovaResponseBody.Data.Paths.Cost?

            public var distanceMeter: String?

            public var durationSecond: String?

            public var restriction: String?

            public var steps: [DrivingDirectionNovaResponseBody.Data.Paths.Steps]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cost?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cost != nil {
                    map["cost"] = self.cost?.toMap()
                }
                if self.distanceMeter != nil {
                    map["distanceMeter"] = self.distanceMeter!
                }
                if self.durationSecond != nil {
                    map["durationSecond"] = self.durationSecond!
                }
                if self.restriction != nil {
                    map["restriction"] = self.restriction!
                }
                if self.steps != nil {
                    var tmp : [Any] = []
                    for k in self.steps! {
                        tmp.append(k.toMap())
                    }
                    map["steps"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cost") {
                    var model = DrivingDirectionNovaResponseBody.Data.Paths.Cost()
                    model.fromMap(dict["cost"] as! [String: Any])
                    self.cost = model
                }
                if dict.keys.contains("distanceMeter") {
                    self.distanceMeter = dict["distanceMeter"] as! String
                }
                if dict.keys.contains("durationSecond") {
                    self.durationSecond = dict["durationSecond"] as! String
                }
                if dict.keys.contains("restriction") {
                    self.restriction = dict["restriction"] as! String
                }
                if dict.keys.contains("steps") {
                    var tmp : [DrivingDirectionNovaResponseBody.Data.Paths.Steps] = []
                    for v in dict["steps"] as! [Any] {
                        var model = DrivingDirectionNovaResponseBody.Data.Paths.Steps()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.steps = tmp
                }
            }
        }
        public var count: String?

        public var destinationLatitude: String?

        public var destinationLongitude: String?

        public var originLatitude: String?

        public var originLongitude: String?

        public var paths: [DrivingDirectionNovaResponseBody.Data.Paths]?

        public var taxiCost: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.destinationLatitude != nil {
                map["destinationLatitude"] = self.destinationLatitude!
            }
            if self.destinationLongitude != nil {
                map["destinationLongitude"] = self.destinationLongitude!
            }
            if self.originLatitude != nil {
                map["originLatitude"] = self.originLatitude!
            }
            if self.originLongitude != nil {
                map["originLongitude"] = self.originLongitude!
            }
            if self.paths != nil {
                var tmp : [Any] = []
                for k in self.paths! {
                    tmp.append(k.toMap())
                }
                map["paths"] = tmp
            }
            if self.taxiCost != nil {
                map["taxiCost"] = self.taxiCost!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("count") {
                self.count = dict["count"] as! String
            }
            if dict.keys.contains("destinationLatitude") {
                self.destinationLatitude = dict["destinationLatitude"] as! String
            }
            if dict.keys.contains("destinationLongitude") {
                self.destinationLongitude = dict["destinationLongitude"] as! String
            }
            if dict.keys.contains("originLatitude") {
                self.originLatitude = dict["originLatitude"] as! String
            }
            if dict.keys.contains("originLongitude") {
                self.originLongitude = dict["originLongitude"] as! String
            }
            if dict.keys.contains("paths") {
                var tmp : [DrivingDirectionNovaResponseBody.Data.Paths] = []
                for v in dict["paths"] as! [Any] {
                    var model = DrivingDirectionNovaResponseBody.Data.Paths()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paths = tmp
            }
            if dict.keys.contains("taxiCost") {
                self.taxiCost = dict["taxiCost"] as! String
            }
        }
    }
    public var data: DrivingDirectionNovaResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var success: Bool?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = DrivingDirectionNovaResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! Int32
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DrivingDirectionNovaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DrivingDirectionNovaResponseBody?

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
            var model = DrivingDirectionNovaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ElectrobikeDirectionRequest : Tea.TeaModel {
    public var destinationLatitude: String?

    public var destinationLongitude: String?

    public var originLatitude: String?

    public var originLongitude: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationLatitude != nil {
            map["destinationLatitude"] = self.destinationLatitude!
        }
        if self.destinationLongitude != nil {
            map["destinationLongitude"] = self.destinationLongitude!
        }
        if self.originLatitude != nil {
            map["originLatitude"] = self.originLatitude!
        }
        if self.originLongitude != nil {
            map["originLongitude"] = self.originLongitude!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("destinationLatitude") {
            self.destinationLatitude = dict["destinationLatitude"] as! String
        }
        if dict.keys.contains("destinationLongitude") {
            self.destinationLongitude = dict["destinationLongitude"] as! String
        }
        if dict.keys.contains("originLatitude") {
            self.originLatitude = dict["originLatitude"] as! String
        }
        if dict.keys.contains("originLongitude") {
            self.originLongitude = dict["originLongitude"] as! String
        }
    }
}

public class ElectrobikeDirectionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Steps : Tea.TeaModel {
            public class Cost : Tea.TeaModel {
                public var durationSecond: String?

                public var taxiFee: String?

                public var tollDistanceMeter: String?

                public var tollRoads: String?

                public var tolls: String?

                public var trafficLights: String?

                public var transitFee: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.durationSecond != nil {
                        map["durationSecond"] = self.durationSecond!
                    }
                    if self.taxiFee != nil {
                        map["taxiFee"] = self.taxiFee!
                    }
                    if self.tollDistanceMeter != nil {
                        map["tollDistanceMeter"] = self.tollDistanceMeter!
                    }
                    if self.tollRoads != nil {
                        map["tollRoads"] = self.tollRoads!
                    }
                    if self.tolls != nil {
                        map["tolls"] = self.tolls!
                    }
                    if self.trafficLights != nil {
                        map["trafficLights"] = self.trafficLights!
                    }
                    if self.transitFee != nil {
                        map["transitFee"] = self.transitFee!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("durationSecond") {
                        self.durationSecond = dict["durationSecond"] as! String
                    }
                    if dict.keys.contains("taxiFee") {
                        self.taxiFee = dict["taxiFee"] as! String
                    }
                    if dict.keys.contains("tollDistanceMeter") {
                        self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                    }
                    if dict.keys.contains("tollRoads") {
                        self.tollRoads = dict["tollRoads"] as! String
                    }
                    if dict.keys.contains("tolls") {
                        self.tolls = dict["tolls"] as! String
                    }
                    if dict.keys.contains("trafficLights") {
                        self.trafficLights = dict["trafficLights"] as! String
                    }
                    if dict.keys.contains("transitFee") {
                        self.transitFee = dict["transitFee"] as! String
                    }
                }
            }
            public var cost: ElectrobikeDirectionResponseBody.Data.Steps.Cost?

            public var instruction: String?

            public var orientation: String?

            public var roadName: String?

            public var stepDistanceMeter: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cost?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cost != nil {
                    map["cost"] = self.cost?.toMap()
                }
                if self.instruction != nil {
                    map["instruction"] = self.instruction!
                }
                if self.orientation != nil {
                    map["orientation"] = self.orientation!
                }
                if self.roadName != nil {
                    map["roadName"] = self.roadName!
                }
                if self.stepDistanceMeter != nil {
                    map["stepDistanceMeter"] = self.stepDistanceMeter!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cost") {
                    var model = ElectrobikeDirectionResponseBody.Data.Steps.Cost()
                    model.fromMap(dict["cost"] as! [String: Any])
                    self.cost = model
                }
                if dict.keys.contains("instruction") {
                    self.instruction = dict["instruction"] as! String
                }
                if dict.keys.contains("orientation") {
                    self.orientation = dict["orientation"] as! String
                }
                if dict.keys.contains("roadName") {
                    self.roadName = dict["roadName"] as! String
                }
                if dict.keys.contains("stepDistanceMeter") {
                    self.stepDistanceMeter = dict["stepDistanceMeter"] as! String
                }
            }
        }
        public var distanceMeter: String?

        public var durationSecond: String?

        public var steps: [ElectrobikeDirectionResponseBody.Data.Steps]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.distanceMeter != nil {
                map["distanceMeter"] = self.distanceMeter!
            }
            if self.durationSecond != nil {
                map["durationSecond"] = self.durationSecond!
            }
            if self.steps != nil {
                var tmp : [Any] = []
                for k in self.steps! {
                    tmp.append(k.toMap())
                }
                map["steps"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("distanceMeter") {
                self.distanceMeter = dict["distanceMeter"] as! String
            }
            if dict.keys.contains("durationSecond") {
                self.durationSecond = dict["durationSecond"] as! String
            }
            if dict.keys.contains("steps") {
                var tmp : [ElectrobikeDirectionResponseBody.Data.Steps] = []
                for v in dict["steps"] as! [Any] {
                    var model = ElectrobikeDirectionResponseBody.Data.Steps()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.steps = tmp
            }
        }
    }
    public var data: [ElectrobikeDirectionResponseBody.Data]?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [ElectrobikeDirectionResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ElectrobikeDirectionResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ElectrobikeDirectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ElectrobikeDirectionResponseBody?

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
            var model = ElectrobikeDirectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ElectrobikeDirectionNovaRequest : Tea.TeaModel {
    public var destinationLatitude: String?

    public var destinationLongitude: String?

    public var originLatitude: String?

    public var originLongitude: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationLatitude != nil {
            map["destinationLatitude"] = self.destinationLatitude!
        }
        if self.destinationLongitude != nil {
            map["destinationLongitude"] = self.destinationLongitude!
        }
        if self.originLatitude != nil {
            map["originLatitude"] = self.originLatitude!
        }
        if self.originLongitude != nil {
            map["originLongitude"] = self.originLongitude!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("destinationLatitude") {
            self.destinationLatitude = dict["destinationLatitude"] as! String
        }
        if dict.keys.contains("destinationLongitude") {
            self.destinationLongitude = dict["destinationLongitude"] as! String
        }
        if dict.keys.contains("originLatitude") {
            self.originLatitude = dict["originLatitude"] as! String
        }
        if dict.keys.contains("originLongitude") {
            self.originLongitude = dict["originLongitude"] as! String
        }
    }
}

public class ElectrobikeDirectionNovaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Paths : Tea.TeaModel {
            public class Cost : Tea.TeaModel {
                public var durationSecond: String?

                public var taxiFee: String?

                public var tollDistanceMeter: String?

                public var tollRoads: String?

                public var tolls: String?

                public var trafficLights: String?

                public var transitFee: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.durationSecond != nil {
                        map["durationSecond"] = self.durationSecond!
                    }
                    if self.taxiFee != nil {
                        map["taxiFee"] = self.taxiFee!
                    }
                    if self.tollDistanceMeter != nil {
                        map["tollDistanceMeter"] = self.tollDistanceMeter!
                    }
                    if self.tollRoads != nil {
                        map["tollRoads"] = self.tollRoads!
                    }
                    if self.tolls != nil {
                        map["tolls"] = self.tolls!
                    }
                    if self.trafficLights != nil {
                        map["trafficLights"] = self.trafficLights!
                    }
                    if self.transitFee != nil {
                        map["transitFee"] = self.transitFee!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("durationSecond") {
                        self.durationSecond = dict["durationSecond"] as! String
                    }
                    if dict.keys.contains("taxiFee") {
                        self.taxiFee = dict["taxiFee"] as! String
                    }
                    if dict.keys.contains("tollDistanceMeter") {
                        self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                    }
                    if dict.keys.contains("tollRoads") {
                        self.tollRoads = dict["tollRoads"] as! String
                    }
                    if dict.keys.contains("tolls") {
                        self.tolls = dict["tolls"] as! String
                    }
                    if dict.keys.contains("trafficLights") {
                        self.trafficLights = dict["trafficLights"] as! String
                    }
                    if dict.keys.contains("transitFee") {
                        self.transitFee = dict["transitFee"] as! String
                    }
                }
            }
            public class Steps : Tea.TeaModel {
                public class Cost : Tea.TeaModel {
                    public var durationSecond: String?

                    public var taxiFee: String?

                    public var tollDistanceMeter: String?

                    public var tollRoads: String?

                    public var tolls: String?

                    public var trafficLights: String?

                    public var transitFee: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.durationSecond != nil {
                            map["durationSecond"] = self.durationSecond!
                        }
                        if self.taxiFee != nil {
                            map["taxiFee"] = self.taxiFee!
                        }
                        if self.tollDistanceMeter != nil {
                            map["tollDistanceMeter"] = self.tollDistanceMeter!
                        }
                        if self.tollRoads != nil {
                            map["tollRoads"] = self.tollRoads!
                        }
                        if self.tolls != nil {
                            map["tolls"] = self.tolls!
                        }
                        if self.trafficLights != nil {
                            map["trafficLights"] = self.trafficLights!
                        }
                        if self.transitFee != nil {
                            map["transitFee"] = self.transitFee!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("durationSecond") {
                            self.durationSecond = dict["durationSecond"] as! String
                        }
                        if dict.keys.contains("taxiFee") {
                            self.taxiFee = dict["taxiFee"] as! String
                        }
                        if dict.keys.contains("tollDistanceMeter") {
                            self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                        }
                        if dict.keys.contains("tollRoads") {
                            self.tollRoads = dict["tollRoads"] as! String
                        }
                        if dict.keys.contains("tolls") {
                            self.tolls = dict["tolls"] as! String
                        }
                        if dict.keys.contains("trafficLights") {
                            self.trafficLights = dict["trafficLights"] as! String
                        }
                        if dict.keys.contains("transitFee") {
                            self.transitFee = dict["transitFee"] as! String
                        }
                    }
                }
                public var cost: ElectrobikeDirectionNovaResponseBody.Data.Paths.Steps.Cost?

                public var instruction: String?

                public var orientation: String?

                public var polyline: String?

                public var roadName: String?

                public var stepDistanceMeter: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.cost?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cost != nil {
                        map["cost"] = self.cost?.toMap()
                    }
                    if self.instruction != nil {
                        map["instruction"] = self.instruction!
                    }
                    if self.orientation != nil {
                        map["orientation"] = self.orientation!
                    }
                    if self.polyline != nil {
                        map["polyline"] = self.polyline!
                    }
                    if self.roadName != nil {
                        map["roadName"] = self.roadName!
                    }
                    if self.stepDistanceMeter != nil {
                        map["stepDistanceMeter"] = self.stepDistanceMeter!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cost") {
                        var model = ElectrobikeDirectionNovaResponseBody.Data.Paths.Steps.Cost()
                        model.fromMap(dict["cost"] as! [String: Any])
                        self.cost = model
                    }
                    if dict.keys.contains("instruction") {
                        self.instruction = dict["instruction"] as! String
                    }
                    if dict.keys.contains("orientation") {
                        self.orientation = dict["orientation"] as! String
                    }
                    if dict.keys.contains("polyline") {
                        self.polyline = dict["polyline"] as! String
                    }
                    if dict.keys.contains("roadName") {
                        self.roadName = dict["roadName"] as! String
                    }
                    if dict.keys.contains("stepDistanceMeter") {
                        self.stepDistanceMeter = dict["stepDistanceMeter"] as! String
                    }
                }
            }
            public var cost: ElectrobikeDirectionNovaResponseBody.Data.Paths.Cost?

            public var distanceMeter: String?

            public var durationSecond: String?

            public var restriction: String?

            public var steps: [ElectrobikeDirectionNovaResponseBody.Data.Paths.Steps]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cost?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cost != nil {
                    map["cost"] = self.cost?.toMap()
                }
                if self.distanceMeter != nil {
                    map["distanceMeter"] = self.distanceMeter!
                }
                if self.durationSecond != nil {
                    map["durationSecond"] = self.durationSecond!
                }
                if self.restriction != nil {
                    map["restriction"] = self.restriction!
                }
                if self.steps != nil {
                    var tmp : [Any] = []
                    for k in self.steps! {
                        tmp.append(k.toMap())
                    }
                    map["steps"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cost") {
                    var model = ElectrobikeDirectionNovaResponseBody.Data.Paths.Cost()
                    model.fromMap(dict["cost"] as! [String: Any])
                    self.cost = model
                }
                if dict.keys.contains("distanceMeter") {
                    self.distanceMeter = dict["distanceMeter"] as! String
                }
                if dict.keys.contains("durationSecond") {
                    self.durationSecond = dict["durationSecond"] as! String
                }
                if dict.keys.contains("restriction") {
                    self.restriction = dict["restriction"] as! String
                }
                if dict.keys.contains("steps") {
                    var tmp : [ElectrobikeDirectionNovaResponseBody.Data.Paths.Steps] = []
                    for v in dict["steps"] as! [Any] {
                        var model = ElectrobikeDirectionNovaResponseBody.Data.Paths.Steps()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.steps = tmp
                }
            }
        }
        public var count: String?

        public var destinationLatitude: String?

        public var destinationLongitude: String?

        public var originLatitude: String?

        public var originLongitude: String?

        public var paths: [ElectrobikeDirectionNovaResponseBody.Data.Paths]?

        public var taxiCost: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.destinationLatitude != nil {
                map["destinationLatitude"] = self.destinationLatitude!
            }
            if self.destinationLongitude != nil {
                map["destinationLongitude"] = self.destinationLongitude!
            }
            if self.originLatitude != nil {
                map["originLatitude"] = self.originLatitude!
            }
            if self.originLongitude != nil {
                map["originLongitude"] = self.originLongitude!
            }
            if self.paths != nil {
                var tmp : [Any] = []
                for k in self.paths! {
                    tmp.append(k.toMap())
                }
                map["paths"] = tmp
            }
            if self.taxiCost != nil {
                map["taxiCost"] = self.taxiCost!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("count") {
                self.count = dict["count"] as! String
            }
            if dict.keys.contains("destinationLatitude") {
                self.destinationLatitude = dict["destinationLatitude"] as! String
            }
            if dict.keys.contains("destinationLongitude") {
                self.destinationLongitude = dict["destinationLongitude"] as! String
            }
            if dict.keys.contains("originLatitude") {
                self.originLatitude = dict["originLatitude"] as! String
            }
            if dict.keys.contains("originLongitude") {
                self.originLongitude = dict["originLongitude"] as! String
            }
            if dict.keys.contains("paths") {
                var tmp : [ElectrobikeDirectionNovaResponseBody.Data.Paths] = []
                for v in dict["paths"] as! [Any] {
                    var model = ElectrobikeDirectionNovaResponseBody.Data.Paths()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paths = tmp
            }
            if dict.keys.contains("taxiCost") {
                self.taxiCost = dict["taxiCost"] as! String
            }
        }
    }
    public var data: ElectrobikeDirectionNovaResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var success: Bool?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ElectrobikeDirectionNovaResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! Int32
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ElectrobikeDirectionNovaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ElectrobikeDirectionNovaResponseBody?

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
            var model = ElectrobikeDirectionNovaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GeoCodeRequest : Tea.TeaModel {
    public var address: String?

    public var city: String?

    public override init() {
        super.init()
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
        if self.city != nil {
            map["city"] = self.city!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("address") {
            self.address = dict["address"] as! String
        }
        if dict.keys.contains("city") {
            self.city = dict["city"] as! String
        }
    }
}

public class GeoCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Building : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var building: GeoCodeResponseBody.Data.Building?

        public var city: String?

        public var cityCode: String?

        public var district: String?

        public var districtCode: String?

        public var latitude: String?

        public var level: String?

        public var longitude: String?

        public var number: String?

        public var province: String?

        public var street: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.building?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.building != nil {
                map["building"] = self.building?.toMap()
            }
            if self.city != nil {
                map["city"] = self.city!
            }
            if self.cityCode != nil {
                map["cityCode"] = self.cityCode!
            }
            if self.district != nil {
                map["district"] = self.district!
            }
            if self.districtCode != nil {
                map["districtCode"] = self.districtCode!
            }
            if self.latitude != nil {
                map["latitude"] = self.latitude!
            }
            if self.level != nil {
                map["level"] = self.level!
            }
            if self.longitude != nil {
                map["longitude"] = self.longitude!
            }
            if self.number != nil {
                map["number"] = self.number!
            }
            if self.province != nil {
                map["province"] = self.province!
            }
            if self.street != nil {
                map["street"] = self.street!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("building") {
                var model = GeoCodeResponseBody.Data.Building()
                model.fromMap(dict["building"] as! [String: Any])
                self.building = model
            }
            if dict.keys.contains("city") {
                self.city = dict["city"] as! String
            }
            if dict.keys.contains("cityCode") {
                self.cityCode = dict["cityCode"] as! String
            }
            if dict.keys.contains("district") {
                self.district = dict["district"] as! String
            }
            if dict.keys.contains("districtCode") {
                self.districtCode = dict["districtCode"] as! String
            }
            if dict.keys.contains("latitude") {
                self.latitude = dict["latitude"] as! String
            }
            if dict.keys.contains("level") {
                self.level = dict["level"] as! String
            }
            if dict.keys.contains("longitude") {
                self.longitude = dict["longitude"] as! String
            }
            if dict.keys.contains("number") {
                self.number = dict["number"] as! String
            }
            if dict.keys.contains("province") {
                self.province = dict["province"] as! String
            }
            if dict.keys.contains("street") {
                self.street = dict["street"] as! String
            }
        }
    }
    public var data: [GeoCodeResponseBody.Data]?

    public var errorCode: Int32?

    public var errorMessage: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [GeoCodeResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GeoCodeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! Int32
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GeoCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GeoCodeResponseBody?

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
            var model = GeoCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class NearbySearchNovaRequest : Tea.TeaModel {
    public var keywords: String?

    public var latitude: String?

    public var longitude: String?

    public var page: Int32?

    public var radius: Int32?

    public var size: Int32?

    public var types: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywords != nil {
            map["keywords"] = self.keywords!
        }
        if self.latitude != nil {
            map["latitude"] = self.latitude!
        }
        if self.longitude != nil {
            map["longitude"] = self.longitude!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.radius != nil {
            map["radius"] = self.radius!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.types != nil {
            map["types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keywords") {
            self.keywords = dict["keywords"] as! String
        }
        if dict.keys.contains("latitude") {
            self.latitude = dict["latitude"] as! String
        }
        if dict.keys.contains("longitude") {
            self.longitude = dict["longitude"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("radius") {
            self.radius = dict["radius"] as! Int32
        }
        if dict.keys.contains("size") {
            self.size = dict["size"] as! Int32
        }
        if dict.keys.contains("types") {
            self.types = dict["types"] as! String
        }
    }
}

public class NearbySearchNovaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var title: String?

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
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class Metadata : Tea.TeaModel {
            public var averageSpend: String?

            public var businessArea: String?

            public var dailyOpeningHours: String?

            public var mainTag: String?

            public var phone: String?

            public var score: String?

            public var tag: String?

            public var weeklyOpeningDays: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.averageSpend != nil {
                    map["averageSpend"] = self.averageSpend!
                }
                if self.businessArea != nil {
                    map["businessArea"] = self.businessArea!
                }
                if self.dailyOpeningHours != nil {
                    map["dailyOpeningHours"] = self.dailyOpeningHours!
                }
                if self.mainTag != nil {
                    map["mainTag"] = self.mainTag!
                }
                if self.phone != nil {
                    map["phone"] = self.phone!
                }
                if self.score != nil {
                    map["score"] = self.score!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                if self.weeklyOpeningDays != nil {
                    map["weeklyOpeningDays"] = self.weeklyOpeningDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("averageSpend") {
                    self.averageSpend = dict["averageSpend"] as! String
                }
                if dict.keys.contains("businessArea") {
                    self.businessArea = dict["businessArea"] as! String
                }
                if dict.keys.contains("dailyOpeningHours") {
                    self.dailyOpeningHours = dict["dailyOpeningHours"] as! String
                }
                if dict.keys.contains("mainTag") {
                    self.mainTag = dict["mainTag"] as! String
                }
                if dict.keys.contains("phone") {
                    self.phone = dict["phone"] as! String
                }
                if dict.keys.contains("score") {
                    self.score = dict["score"] as! String
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
                if dict.keys.contains("weeklyOpeningDays") {
                    self.weeklyOpeningDays = dict["weeklyOpeningDays"] as! String
                }
            }
        }
        public var address: String?

        public var cityCode: String?

        public var cityName: String?

        public var distanceMeter: String?

        public var districtCode: String?

        public var districtName: String?

        public var id: String?

        public var images: [NearbySearchNovaResponseBody.Data.Images]?

        public var latitude: String?

        public var longitude: String?

        public var metadata: NearbySearchNovaResponseBody.Data.Metadata?

        public var name: String?

        public var provinceCode: String?

        public var provinceName: String?

        public var typeCode: String?

        public var types: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metadata?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["address"] = self.address!
            }
            if self.cityCode != nil {
                map["cityCode"] = self.cityCode!
            }
            if self.cityName != nil {
                map["cityName"] = self.cityName!
            }
            if self.distanceMeter != nil {
                map["distanceMeter"] = self.distanceMeter!
            }
            if self.districtCode != nil {
                map["districtCode"] = self.districtCode!
            }
            if self.districtName != nil {
                map["districtName"] = self.districtName!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.images != nil {
                var tmp : [Any] = []
                for k in self.images! {
                    tmp.append(k.toMap())
                }
                map["images"] = tmp
            }
            if self.latitude != nil {
                map["latitude"] = self.latitude!
            }
            if self.longitude != nil {
                map["longitude"] = self.longitude!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.provinceCode != nil {
                map["provinceCode"] = self.provinceCode!
            }
            if self.provinceName != nil {
                map["provinceName"] = self.provinceName!
            }
            if self.typeCode != nil {
                map["typeCode"] = self.typeCode!
            }
            if self.types != nil {
                map["types"] = self.types!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("address") {
                self.address = dict["address"] as! String
            }
            if dict.keys.contains("cityCode") {
                self.cityCode = dict["cityCode"] as! String
            }
            if dict.keys.contains("cityName") {
                self.cityName = dict["cityName"] as! String
            }
            if dict.keys.contains("distanceMeter") {
                self.distanceMeter = dict["distanceMeter"] as! String
            }
            if dict.keys.contains("districtCode") {
                self.districtCode = dict["districtCode"] as! String
            }
            if dict.keys.contains("districtName") {
                self.districtName = dict["districtName"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("images") {
                var tmp : [NearbySearchNovaResponseBody.Data.Images] = []
                for v in dict["images"] as! [Any] {
                    var model = NearbySearchNovaResponseBody.Data.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
            }
            if dict.keys.contains("latitude") {
                self.latitude = dict["latitude"] as! String
            }
            if dict.keys.contains("longitude") {
                self.longitude = dict["longitude"] as! String
            }
            if dict.keys.contains("metadata") {
                var model = NearbySearchNovaResponseBody.Data.Metadata()
                model.fromMap(dict["metadata"] as! [String: Any])
                self.metadata = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("provinceCode") {
                self.provinceCode = dict["provinceCode"] as! String
            }
            if dict.keys.contains("provinceName") {
                self.provinceName = dict["provinceName"] as! String
            }
            if dict.keys.contains("typeCode") {
                self.typeCode = dict["typeCode"] as! String
            }
            if dict.keys.contains("types") {
                self.types = dict["types"] as! String
            }
        }
    }
    public var data: [NearbySearchNovaResponseBody.Data]?

    public var errorCode: Int32?

    public var errorMessage: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [NearbySearchNovaResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = NearbySearchNovaResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! Int32
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class NearbySearchNovaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NearbySearchNovaResponseBody?

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
            var model = NearbySearchNovaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PlaceSearchNovaRequest : Tea.TeaModel {
    public var keywords: String?

    public var page: Int32?

    public var region: String?

    public var size: Int32?

    public var types: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywords != nil {
            map["keywords"] = self.keywords!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.types != nil {
            map["types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keywords") {
            self.keywords = dict["keywords"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("size") {
            self.size = dict["size"] as! Int32
        }
        if dict.keys.contains("types") {
            self.types = dict["types"] as! String
        }
    }
}

public class PlaceSearchNovaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var title: String?

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
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class Metadata : Tea.TeaModel {
            public var averageSpend: String?

            public var businessArea: String?

            public var dailyOpeningHours: String?

            public var mainTag: String?

            public var phone: String?

            public var tag: String?

            public var weeklyOpeningDays: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.averageSpend != nil {
                    map["averageSpend"] = self.averageSpend!
                }
                if self.businessArea != nil {
                    map["businessArea"] = self.businessArea!
                }
                if self.dailyOpeningHours != nil {
                    map["dailyOpeningHours"] = self.dailyOpeningHours!
                }
                if self.mainTag != nil {
                    map["mainTag"] = self.mainTag!
                }
                if self.phone != nil {
                    map["phone"] = self.phone!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                if self.weeklyOpeningDays != nil {
                    map["weeklyOpeningDays"] = self.weeklyOpeningDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("averageSpend") {
                    self.averageSpend = dict["averageSpend"] as! String
                }
                if dict.keys.contains("businessArea") {
                    self.businessArea = dict["businessArea"] as! String
                }
                if dict.keys.contains("dailyOpeningHours") {
                    self.dailyOpeningHours = dict["dailyOpeningHours"] as! String
                }
                if dict.keys.contains("mainTag") {
                    self.mainTag = dict["mainTag"] as! String
                }
                if dict.keys.contains("phone") {
                    self.phone = dict["phone"] as! String
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
                if dict.keys.contains("weeklyOpeningDays") {
                    self.weeklyOpeningDays = dict["weeklyOpeningDays"] as! String
                }
            }
        }
        public var address: String?

        public var cityCode: String?

        public var cityName: String?

        public var distanceMeter: String?

        public var districtCode: String?

        public var districtName: String?

        public var id: String?

        public var images: [PlaceSearchNovaResponseBody.Data.Images]?

        public var latitude: String?

        public var longitude: String?

        public var metadata: PlaceSearchNovaResponseBody.Data.Metadata?

        public var name: String?

        public var provinceCode: String?

        public var provinceName: String?

        public var typeCode: String?

        public var types: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metadata?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["address"] = self.address!
            }
            if self.cityCode != nil {
                map["cityCode"] = self.cityCode!
            }
            if self.cityName != nil {
                map["cityName"] = self.cityName!
            }
            if self.distanceMeter != nil {
                map["distanceMeter"] = self.distanceMeter!
            }
            if self.districtCode != nil {
                map["districtCode"] = self.districtCode!
            }
            if self.districtName != nil {
                map["districtName"] = self.districtName!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.images != nil {
                var tmp : [Any] = []
                for k in self.images! {
                    tmp.append(k.toMap())
                }
                map["images"] = tmp
            }
            if self.latitude != nil {
                map["latitude"] = self.latitude!
            }
            if self.longitude != nil {
                map["longitude"] = self.longitude!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.provinceCode != nil {
                map["provinceCode"] = self.provinceCode!
            }
            if self.provinceName != nil {
                map["provinceName"] = self.provinceName!
            }
            if self.typeCode != nil {
                map["typeCode"] = self.typeCode!
            }
            if self.types != nil {
                map["types"] = self.types!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("address") {
                self.address = dict["address"] as! String
            }
            if dict.keys.contains("cityCode") {
                self.cityCode = dict["cityCode"] as! String
            }
            if dict.keys.contains("cityName") {
                self.cityName = dict["cityName"] as! String
            }
            if dict.keys.contains("distanceMeter") {
                self.distanceMeter = dict["distanceMeter"] as! String
            }
            if dict.keys.contains("districtCode") {
                self.districtCode = dict["districtCode"] as! String
            }
            if dict.keys.contains("districtName") {
                self.districtName = dict["districtName"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("images") {
                var tmp : [PlaceSearchNovaResponseBody.Data.Images] = []
                for v in dict["images"] as! [Any] {
                    var model = PlaceSearchNovaResponseBody.Data.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
            }
            if dict.keys.contains("latitude") {
                self.latitude = dict["latitude"] as! String
            }
            if dict.keys.contains("longitude") {
                self.longitude = dict["longitude"] as! String
            }
            if dict.keys.contains("metadata") {
                var model = PlaceSearchNovaResponseBody.Data.Metadata()
                model.fromMap(dict["metadata"] as! [String: Any])
                self.metadata = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("provinceCode") {
                self.provinceCode = dict["provinceCode"] as! String
            }
            if dict.keys.contains("provinceName") {
                self.provinceName = dict["provinceName"] as! String
            }
            if dict.keys.contains("typeCode") {
                self.typeCode = dict["typeCode"] as! String
            }
            if dict.keys.contains("types") {
                self.types = dict["types"] as! String
            }
        }
    }
    public var data: [PlaceSearchNovaResponseBody.Data]?

    public var errorCode: Int32?

    public var errorMessage: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [PlaceSearchNovaResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = PlaceSearchNovaResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! Int32
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class PlaceSearchNovaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PlaceSearchNovaResponseBody?

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
            var model = PlaceSearchNovaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RgeoCodeRequest : Tea.TeaModel {
    public var latitude: String?

    public var longitude: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latitude != nil {
            map["latitude"] = self.latitude!
        }
        if self.longitude != nil {
            map["longitude"] = self.longitude!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("latitude") {
            self.latitude = dict["latitude"] as! String
        }
        if dict.keys.contains("longitude") {
            self.longitude = dict["longitude"] as! String
        }
    }
}

public class RgeoCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Building : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class BusinessAreas : Tea.TeaModel {
            public var id: String?

            public var latitude: String?

            public var longitude: String?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.latitude != nil {
                    map["latitude"] = self.latitude!
                }
                if self.longitude != nil {
                    map["longitude"] = self.longitude!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("latitude") {
                    self.latitude = dict["latitude"] as! String
                }
                if dict.keys.contains("longitude") {
                    self.longitude = dict["longitude"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public class Neighborhood : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class StreetNumber : Tea.TeaModel {
            public var direction: String?

            public var distanceMeter: String?

            public var latitude: String?

            public var longitude: String?

            public var number: String?

            public var street: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.direction != nil {
                    map["direction"] = self.direction!
                }
                if self.distanceMeter != nil {
                    map["distanceMeter"] = self.distanceMeter!
                }
                if self.latitude != nil {
                    map["latitude"] = self.latitude!
                }
                if self.longitude != nil {
                    map["longitude"] = self.longitude!
                }
                if self.number != nil {
                    map["number"] = self.number!
                }
                if self.street != nil {
                    map["street"] = self.street!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("direction") {
                    self.direction = dict["direction"] as! String
                }
                if dict.keys.contains("distanceMeter") {
                    self.distanceMeter = dict["distanceMeter"] as! String
                }
                if dict.keys.contains("latitude") {
                    self.latitude = dict["latitude"] as! String
                }
                if dict.keys.contains("longitude") {
                    self.longitude = dict["longitude"] as! String
                }
                if dict.keys.contains("number") {
                    self.number = dict["number"] as! String
                }
                if dict.keys.contains("street") {
                    self.street = dict["street"] as! String
                }
            }
        }
        public var building: RgeoCodeResponseBody.Data.Building?

        public var businessAreas: [RgeoCodeResponseBody.Data.BusinessAreas]?

        public var city: String?

        public var cityCode: String?

        public var country: String?

        public var district: String?

        public var districtCode: String?

        public var formattedAddress: String?

        public var neighborhood: RgeoCodeResponseBody.Data.Neighborhood?

        public var province: String?

        public var streetNumber: RgeoCodeResponseBody.Data.StreetNumber?

        public var townCode: String?

        public var townShip: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.building?.validate()
            try self.neighborhood?.validate()
            try self.streetNumber?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.building != nil {
                map["building"] = self.building?.toMap()
            }
            if self.businessAreas != nil {
                var tmp : [Any] = []
                for k in self.businessAreas! {
                    tmp.append(k.toMap())
                }
                map["businessAreas"] = tmp
            }
            if self.city != nil {
                map["city"] = self.city!
            }
            if self.cityCode != nil {
                map["cityCode"] = self.cityCode!
            }
            if self.country != nil {
                map["country"] = self.country!
            }
            if self.district != nil {
                map["district"] = self.district!
            }
            if self.districtCode != nil {
                map["districtCode"] = self.districtCode!
            }
            if self.formattedAddress != nil {
                map["formattedAddress"] = self.formattedAddress!
            }
            if self.neighborhood != nil {
                map["neighborhood"] = self.neighborhood?.toMap()
            }
            if self.province != nil {
                map["province"] = self.province!
            }
            if self.streetNumber != nil {
                map["streetNumber"] = self.streetNumber?.toMap()
            }
            if self.townCode != nil {
                map["townCode"] = self.townCode!
            }
            if self.townShip != nil {
                map["townShip"] = self.townShip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("building") {
                var model = RgeoCodeResponseBody.Data.Building()
                model.fromMap(dict["building"] as! [String: Any])
                self.building = model
            }
            if dict.keys.contains("businessAreas") {
                var tmp : [RgeoCodeResponseBody.Data.BusinessAreas] = []
                for v in dict["businessAreas"] as! [Any] {
                    var model = RgeoCodeResponseBody.Data.BusinessAreas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.businessAreas = tmp
            }
            if dict.keys.contains("city") {
                self.city = dict["city"] as! String
            }
            if dict.keys.contains("cityCode") {
                self.cityCode = dict["cityCode"] as! String
            }
            if dict.keys.contains("country") {
                self.country = dict["country"] as! String
            }
            if dict.keys.contains("district") {
                self.district = dict["district"] as! String
            }
            if dict.keys.contains("districtCode") {
                self.districtCode = dict["districtCode"] as! String
            }
            if dict.keys.contains("formattedAddress") {
                self.formattedAddress = dict["formattedAddress"] as! String
            }
            if dict.keys.contains("neighborhood") {
                var model = RgeoCodeResponseBody.Data.Neighborhood()
                model.fromMap(dict["neighborhood"] as! [String: Any])
                self.neighborhood = model
            }
            if dict.keys.contains("province") {
                self.province = dict["province"] as! String
            }
            if dict.keys.contains("streetNumber") {
                var model = RgeoCodeResponseBody.Data.StreetNumber()
                model.fromMap(dict["streetNumber"] as! [String: Any])
                self.streetNumber = model
            }
            if dict.keys.contains("townCode") {
                self.townCode = dict["townCode"] as! String
            }
            if dict.keys.contains("townShip") {
                self.townShip = dict["townShip"] as! String
            }
        }
    }
    public var data: RgeoCodeResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var success: Bool?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = RgeoCodeResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! Int32
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class RgeoCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RgeoCodeResponseBody?

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
            var model = RgeoCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TransitIntegratedDirectionRequest : Tea.TeaModel {
    public var destinationCity: String?

    public var destinationLatitude: String?

    public var destinationLongitude: String?

    public var originCity: String?

    public var originLatitude: String?

    public var originLongitude: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationCity != nil {
            map["destinationCity"] = self.destinationCity!
        }
        if self.destinationLatitude != nil {
            map["destinationLatitude"] = self.destinationLatitude!
        }
        if self.destinationLongitude != nil {
            map["destinationLongitude"] = self.destinationLongitude!
        }
        if self.originCity != nil {
            map["originCity"] = self.originCity!
        }
        if self.originLatitude != nil {
            map["originLatitude"] = self.originLatitude!
        }
        if self.originLongitude != nil {
            map["originLongitude"] = self.originLongitude!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("destinationCity") {
            self.destinationCity = dict["destinationCity"] as! String
        }
        if dict.keys.contains("destinationLatitude") {
            self.destinationLatitude = dict["destinationLatitude"] as! String
        }
        if dict.keys.contains("destinationLongitude") {
            self.destinationLongitude = dict["destinationLongitude"] as! String
        }
        if dict.keys.contains("originCity") {
            self.originCity = dict["originCity"] as! String
        }
        if dict.keys.contains("originLatitude") {
            self.originLatitude = dict["originLatitude"] as! String
        }
        if dict.keys.contains("originLongitude") {
            self.originLongitude = dict["originLongitude"] as! String
        }
    }
}

public class TransitIntegratedDirectionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Cost : Tea.TeaModel {
            public var durationSecond: String?

            public var taxiFee: String?

            public var tollDistanceMeter: String?

            public var tollRoads: String?

            public var tolls: String?

            public var trafficLights: String?

            public var transitFee: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.durationSecond != nil {
                    map["durationSecond"] = self.durationSecond!
                }
                if self.taxiFee != nil {
                    map["taxiFee"] = self.taxiFee!
                }
                if self.tollDistanceMeter != nil {
                    map["tollDistanceMeter"] = self.tollDistanceMeter!
                }
                if self.tollRoads != nil {
                    map["tollRoads"] = self.tollRoads!
                }
                if self.tolls != nil {
                    map["tolls"] = self.tolls!
                }
                if self.trafficLights != nil {
                    map["trafficLights"] = self.trafficLights!
                }
                if self.transitFee != nil {
                    map["transitFee"] = self.transitFee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("durationSecond") {
                    self.durationSecond = dict["durationSecond"] as! String
                }
                if dict.keys.contains("taxiFee") {
                    self.taxiFee = dict["taxiFee"] as! String
                }
                if dict.keys.contains("tollDistanceMeter") {
                    self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                }
                if dict.keys.contains("tollRoads") {
                    self.tollRoads = dict["tollRoads"] as! String
                }
                if dict.keys.contains("tolls") {
                    self.tolls = dict["tolls"] as! String
                }
                if dict.keys.contains("trafficLights") {
                    self.trafficLights = dict["trafficLights"] as! String
                }
                if dict.keys.contains("transitFee") {
                    self.transitFee = dict["transitFee"] as! String
                }
            }
        }
        public class Paths : Tea.TeaModel {
            public class Cost : Tea.TeaModel {
                public var durationSecond: String?

                public var taxiFee: String?

                public var tollDistanceMeter: String?

                public var tollRoads: String?

                public var tolls: String?

                public var trafficLights: String?

                public var transitFee: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.durationSecond != nil {
                        map["durationSecond"] = self.durationSecond!
                    }
                    if self.taxiFee != nil {
                        map["taxiFee"] = self.taxiFee!
                    }
                    if self.tollDistanceMeter != nil {
                        map["tollDistanceMeter"] = self.tollDistanceMeter!
                    }
                    if self.tollRoads != nil {
                        map["tollRoads"] = self.tollRoads!
                    }
                    if self.tolls != nil {
                        map["tolls"] = self.tolls!
                    }
                    if self.trafficLights != nil {
                        map["trafficLights"] = self.trafficLights!
                    }
                    if self.transitFee != nil {
                        map["transitFee"] = self.transitFee!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("durationSecond") {
                        self.durationSecond = dict["durationSecond"] as! String
                    }
                    if dict.keys.contains("taxiFee") {
                        self.taxiFee = dict["taxiFee"] as! String
                    }
                    if dict.keys.contains("tollDistanceMeter") {
                        self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                    }
                    if dict.keys.contains("tollRoads") {
                        self.tollRoads = dict["tollRoads"] as! String
                    }
                    if dict.keys.contains("tolls") {
                        self.tolls = dict["tolls"] as! String
                    }
                    if dict.keys.contains("trafficLights") {
                        self.trafficLights = dict["trafficLights"] as! String
                    }
                    if dict.keys.contains("transitFee") {
                        self.transitFee = dict["transitFee"] as! String
                    }
                }
            }
            public class Segments : Tea.TeaModel {
                public class Bus : Tea.TeaModel {
                    public class Buslines : Tea.TeaModel {
                        public class ArrivalStop : Tea.TeaModel {
                            public class Exit : Tea.TeaModel {
                                public var id: String?

                                public var location: String?

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
                                    if self.id != nil {
                                        map["id"] = self.id!
                                    }
                                    if self.location != nil {
                                        map["location"] = self.location!
                                    }
                                    if self.name != nil {
                                        map["name"] = self.name!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("id") {
                                        self.id = dict["id"] as! String
                                    }
                                    if dict.keys.contains("location") {
                                        self.location = dict["location"] as! String
                                    }
                                    if dict.keys.contains("name") {
                                        self.name = dict["name"] as! String
                                    }
                                }
                            }
                            public var exit: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.ArrivalStop.Exit?

                            public var id: String?

                            public var location: String?

                            public var name: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.exit?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.exit != nil {
                                    map["exit"] = self.exit?.toMap()
                                }
                                if self.id != nil {
                                    map["id"] = self.id!
                                }
                                if self.location != nil {
                                    map["location"] = self.location!
                                }
                                if self.name != nil {
                                    map["name"] = self.name!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("exit") {
                                    var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.ArrivalStop.Exit()
                                    model.fromMap(dict["exit"] as! [String: Any])
                                    self.exit = model
                                }
                                if dict.keys.contains("id") {
                                    self.id = dict["id"] as! String
                                }
                                if dict.keys.contains("location") {
                                    self.location = dict["location"] as! String
                                }
                                if dict.keys.contains("name") {
                                    self.name = dict["name"] as! String
                                }
                            }
                        }
                        public class Cost : Tea.TeaModel {
                            public var durationSecond: String?

                            public var taxiFee: String?

                            public var tollDistanceMeter: String?

                            public var tollRoads: String?

                            public var tolls: String?

                            public var trafficLights: String?

                            public var transitFee: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.durationSecond != nil {
                                    map["durationSecond"] = self.durationSecond!
                                }
                                if self.taxiFee != nil {
                                    map["taxiFee"] = self.taxiFee!
                                }
                                if self.tollDistanceMeter != nil {
                                    map["tollDistanceMeter"] = self.tollDistanceMeter!
                                }
                                if self.tollRoads != nil {
                                    map["tollRoads"] = self.tollRoads!
                                }
                                if self.tolls != nil {
                                    map["tolls"] = self.tolls!
                                }
                                if self.trafficLights != nil {
                                    map["trafficLights"] = self.trafficLights!
                                }
                                if self.transitFee != nil {
                                    map["transitFee"] = self.transitFee!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("durationSecond") {
                                    self.durationSecond = dict["durationSecond"] as! String
                                }
                                if dict.keys.contains("taxiFee") {
                                    self.taxiFee = dict["taxiFee"] as! String
                                }
                                if dict.keys.contains("tollDistanceMeter") {
                                    self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                                }
                                if dict.keys.contains("tollRoads") {
                                    self.tollRoads = dict["tollRoads"] as! String
                                }
                                if dict.keys.contains("tolls") {
                                    self.tolls = dict["tolls"] as! String
                                }
                                if dict.keys.contains("trafficLights") {
                                    self.trafficLights = dict["trafficLights"] as! String
                                }
                                if dict.keys.contains("transitFee") {
                                    self.transitFee = dict["transitFee"] as! String
                                }
                            }
                        }
                        public class DepartureStop : Tea.TeaModel {
                            public class Entrance : Tea.TeaModel {
                                public var id: String?

                                public var location: String?

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
                                    if self.id != nil {
                                        map["id"] = self.id!
                                    }
                                    if self.location != nil {
                                        map["location"] = self.location!
                                    }
                                    if self.name != nil {
                                        map["name"] = self.name!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("id") {
                                        self.id = dict["id"] as! String
                                    }
                                    if dict.keys.contains("location") {
                                        self.location = dict["location"] as! String
                                    }
                                    if dict.keys.contains("name") {
                                        self.name = dict["name"] as! String
                                    }
                                }
                            }
                            public var entrance: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.DepartureStop.Entrance?

                            public var id: String?

                            public var location: String?

                            public var name: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.entrance?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.entrance != nil {
                                    map["entrance"] = self.entrance?.toMap()
                                }
                                if self.id != nil {
                                    map["id"] = self.id!
                                }
                                if self.location != nil {
                                    map["location"] = self.location!
                                }
                                if self.name != nil {
                                    map["name"] = self.name!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("entrance") {
                                    var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.DepartureStop.Entrance()
                                    model.fromMap(dict["entrance"] as! [String: Any])
                                    self.entrance = model
                                }
                                if dict.keys.contains("id") {
                                    self.id = dict["id"] as! String
                                }
                                if dict.keys.contains("location") {
                                    self.location = dict["location"] as! String
                                }
                                if dict.keys.contains("name") {
                                    self.name = dict["name"] as! String
                                }
                            }
                        }
                        public class Polyline : Tea.TeaModel {
                            public var polyline: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.polyline != nil {
                                    map["polyline"] = self.polyline!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("polyline") {
                                    self.polyline = dict["polyline"] as! String
                                }
                            }
                        }
                        public class ViaStops : Tea.TeaModel {
                            public var id: String?

                            public var location: String?

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
                                if self.id != nil {
                                    map["id"] = self.id!
                                }
                                if self.location != nil {
                                    map["location"] = self.location!
                                }
                                if self.name != nil {
                                    map["name"] = self.name!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("id") {
                                    self.id = dict["id"] as! String
                                }
                                if dict.keys.contains("location") {
                                    self.location = dict["location"] as! String
                                }
                                if dict.keys.contains("name") {
                                    self.name = dict["name"] as! String
                                }
                            }
                        }
                        public var arrivalStop: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.ArrivalStop?

                        public var busTimeTips: String?

                        public var bustimetag: String?

                        public var cost: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.Cost?

                        public var departureStop: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.DepartureStop?

                        public var distanceMeter: String?

                        public var endTime: String?

                        public var id: String?

                        public var name: String?

                        public var polyline: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.Polyline?

                        public var startTime: String?

                        public var type: String?

                        public var viaNum: String?

                        public var viaStops: [TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.ViaStops]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.arrivalStop?.validate()
                            try self.cost?.validate()
                            try self.departureStop?.validate()
                            try self.polyline?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.arrivalStop != nil {
                                map["arrivalStop"] = self.arrivalStop?.toMap()
                            }
                            if self.busTimeTips != nil {
                                map["busTimeTips"] = self.busTimeTips!
                            }
                            if self.bustimetag != nil {
                                map["bustimetag"] = self.bustimetag!
                            }
                            if self.cost != nil {
                                map["cost"] = self.cost?.toMap()
                            }
                            if self.departureStop != nil {
                                map["departureStop"] = self.departureStop?.toMap()
                            }
                            if self.distanceMeter != nil {
                                map["distanceMeter"] = self.distanceMeter!
                            }
                            if self.endTime != nil {
                                map["endTime"] = self.endTime!
                            }
                            if self.id != nil {
                                map["id"] = self.id!
                            }
                            if self.name != nil {
                                map["name"] = self.name!
                            }
                            if self.polyline != nil {
                                map["polyline"] = self.polyline?.toMap()
                            }
                            if self.startTime != nil {
                                map["startTime"] = self.startTime!
                            }
                            if self.type != nil {
                                map["type"] = self.type!
                            }
                            if self.viaNum != nil {
                                map["viaNum"] = self.viaNum!
                            }
                            if self.viaStops != nil {
                                var tmp : [Any] = []
                                for k in self.viaStops! {
                                    tmp.append(k.toMap())
                                }
                                map["viaStops"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("arrivalStop") {
                                var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.ArrivalStop()
                                model.fromMap(dict["arrivalStop"] as! [String: Any])
                                self.arrivalStop = model
                            }
                            if dict.keys.contains("busTimeTips") {
                                self.busTimeTips = dict["busTimeTips"] as! String
                            }
                            if dict.keys.contains("bustimetag") {
                                self.bustimetag = dict["bustimetag"] as! String
                            }
                            if dict.keys.contains("cost") {
                                var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.Cost()
                                model.fromMap(dict["cost"] as! [String: Any])
                                self.cost = model
                            }
                            if dict.keys.contains("departureStop") {
                                var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.DepartureStop()
                                model.fromMap(dict["departureStop"] as! [String: Any])
                                self.departureStop = model
                            }
                            if dict.keys.contains("distanceMeter") {
                                self.distanceMeter = dict["distanceMeter"] as! String
                            }
                            if dict.keys.contains("endTime") {
                                self.endTime = dict["endTime"] as! String
                            }
                            if dict.keys.contains("id") {
                                self.id = dict["id"] as! String
                            }
                            if dict.keys.contains("name") {
                                self.name = dict["name"] as! String
                            }
                            if dict.keys.contains("polyline") {
                                var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.Polyline()
                                model.fromMap(dict["polyline"] as! [String: Any])
                                self.polyline = model
                            }
                            if dict.keys.contains("startTime") {
                                self.startTime = dict["startTime"] as! String
                            }
                            if dict.keys.contains("type") {
                                self.type = dict["type"] as! String
                            }
                            if dict.keys.contains("viaNum") {
                                self.viaNum = dict["viaNum"] as! String
                            }
                            if dict.keys.contains("viaStops") {
                                var tmp : [TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.ViaStops] = []
                                for v in dict["viaStops"] as! [Any] {
                                    var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines.ViaStops()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.viaStops = tmp
                            }
                        }
                    }
                    public var buslines: [TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.buslines != nil {
                            var tmp : [Any] = []
                            for k in self.buslines! {
                                tmp.append(k.toMap())
                            }
                            map["buslines"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("buslines") {
                            var tmp : [TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines] = []
                            for v in dict["buslines"] as! [Any] {
                                var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus.Buslines()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.buslines = tmp
                        }
                    }
                }
                public class Railway : Tea.TeaModel {
                    public class ArrivalStop : Tea.TeaModel {
                        public var adcode: String?

                        public var end: String?

                        public var id: String?

                        public var location: String?

                        public var name: String?

                        public var time: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.adcode != nil {
                                map["adcode"] = self.adcode!
                            }
                            if self.end != nil {
                                map["end"] = self.end!
                            }
                            if self.id != nil {
                                map["id"] = self.id!
                            }
                            if self.location != nil {
                                map["location"] = self.location!
                            }
                            if self.name != nil {
                                map["name"] = self.name!
                            }
                            if self.time != nil {
                                map["time"] = self.time!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("adcode") {
                                self.adcode = dict["adcode"] as! String
                            }
                            if dict.keys.contains("end") {
                                self.end = dict["end"] as! String
                            }
                            if dict.keys.contains("id") {
                                self.id = dict["id"] as! String
                            }
                            if dict.keys.contains("location") {
                                self.location = dict["location"] as! String
                            }
                            if dict.keys.contains("name") {
                                self.name = dict["name"] as! String
                            }
                            if dict.keys.contains("time") {
                                self.time = dict["time"] as! String
                            }
                        }
                    }
                    public class DepartureStop : Tea.TeaModel {
                        public var adcode: String?

                        public var id: String?

                        public var location: String?

                        public var name: String?

                        public var start: String?

                        public var time: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.adcode != nil {
                                map["adcode"] = self.adcode!
                            }
                            if self.id != nil {
                                map["id"] = self.id!
                            }
                            if self.location != nil {
                                map["location"] = self.location!
                            }
                            if self.name != nil {
                                map["name"] = self.name!
                            }
                            if self.start != nil {
                                map["start"] = self.start!
                            }
                            if self.time != nil {
                                map["time"] = self.time!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("adcode") {
                                self.adcode = dict["adcode"] as! String
                            }
                            if dict.keys.contains("id") {
                                self.id = dict["id"] as! String
                            }
                            if dict.keys.contains("location") {
                                self.location = dict["location"] as! String
                            }
                            if dict.keys.contains("name") {
                                self.name = dict["name"] as! String
                            }
                            if dict.keys.contains("start") {
                                self.start = dict["start"] as! String
                            }
                            if dict.keys.contains("time") {
                                self.time = dict["time"] as! String
                            }
                        }
                    }
                    public class Spaces : Tea.TeaModel {
                        public var code: String?

                        public var cost: String?

                        public override init() {
                            super.init()
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
                            if self.cost != nil {
                                map["cost"] = self.cost!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("code") {
                                self.code = dict["code"] as! String
                            }
                            if dict.keys.contains("cost") {
                                self.cost = dict["cost"] as! String
                            }
                        }
                    }
                    public var arrivalStop: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Railway.ArrivalStop?

                    public var departureStop: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Railway.DepartureStop?

                    public var distanceMeter: String?

                    public var id: String?

                    public var name: String?

                    public var spaces: [TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Railway.Spaces]?

                    public var time: String?

                    public var trip: String?

                    public var type: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.arrivalStop?.validate()
                        try self.departureStop?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.arrivalStop != nil {
                            map["arrivalStop"] = self.arrivalStop?.toMap()
                        }
                        if self.departureStop != nil {
                            map["departureStop"] = self.departureStop?.toMap()
                        }
                        if self.distanceMeter != nil {
                            map["distanceMeter"] = self.distanceMeter!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.spaces != nil {
                            var tmp : [Any] = []
                            for k in self.spaces! {
                                tmp.append(k.toMap())
                            }
                            map["spaces"] = tmp
                        }
                        if self.time != nil {
                            map["time"] = self.time!
                        }
                        if self.trip != nil {
                            map["trip"] = self.trip!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("arrivalStop") {
                            var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Railway.ArrivalStop()
                            model.fromMap(dict["arrivalStop"] as! [String: Any])
                            self.arrivalStop = model
                        }
                        if dict.keys.contains("departureStop") {
                            var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Railway.DepartureStop()
                            model.fromMap(dict["departureStop"] as! [String: Any])
                            self.departureStop = model
                        }
                        if dict.keys.contains("distanceMeter") {
                            self.distanceMeter = dict["distanceMeter"] as! String
                        }
                        if dict.keys.contains("id") {
                            self.id = dict["id"] as! String
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("spaces") {
                            var tmp : [TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Railway.Spaces] = []
                            for v in dict["spaces"] as! [Any] {
                                var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Railway.Spaces()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.spaces = tmp
                        }
                        if dict.keys.contains("time") {
                            self.time = dict["time"] as! String
                        }
                        if dict.keys.contains("trip") {
                            self.trip = dict["trip"] as! String
                        }
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                    }
                }
                public class Taxi : Tea.TeaModel {
                    public var destinationName: String?

                    public var destinationPoint: String?

                    public var distanceMeter: String?

                    public var driveTimeSecond: String?

                    public var originName: String?

                    public var originPoint: String?

                    public var price: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.destinationName != nil {
                            map["destinationName"] = self.destinationName!
                        }
                        if self.destinationPoint != nil {
                            map["destinationPoint"] = self.destinationPoint!
                        }
                        if self.distanceMeter != nil {
                            map["distanceMeter"] = self.distanceMeter!
                        }
                        if self.driveTimeSecond != nil {
                            map["driveTimeSecond"] = self.driveTimeSecond!
                        }
                        if self.originName != nil {
                            map["originName"] = self.originName!
                        }
                        if self.originPoint != nil {
                            map["originPoint"] = self.originPoint!
                        }
                        if self.price != nil {
                            map["price"] = self.price!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("destinationName") {
                            self.destinationName = dict["destinationName"] as! String
                        }
                        if dict.keys.contains("destinationPoint") {
                            self.destinationPoint = dict["destinationPoint"] as! String
                        }
                        if dict.keys.contains("distanceMeter") {
                            self.distanceMeter = dict["distanceMeter"] as! String
                        }
                        if dict.keys.contains("driveTimeSecond") {
                            self.driveTimeSecond = dict["driveTimeSecond"] as! String
                        }
                        if dict.keys.contains("originName") {
                            self.originName = dict["originName"] as! String
                        }
                        if dict.keys.contains("originPoint") {
                            self.originPoint = dict["originPoint"] as! String
                        }
                        if dict.keys.contains("price") {
                            self.price = dict["price"] as! String
                        }
                    }
                }
                public class Walking : Tea.TeaModel {
                    public class Cost : Tea.TeaModel {
                        public var durationSecond: String?

                        public var taxiFee: String?

                        public var tollDistanceMeter: String?

                        public var tollRoads: String?

                        public var tolls: String?

                        public var trafficLights: String?

                        public var transitFee: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.durationSecond != nil {
                                map["durationSecond"] = self.durationSecond!
                            }
                            if self.taxiFee != nil {
                                map["taxiFee"] = self.taxiFee!
                            }
                            if self.tollDistanceMeter != nil {
                                map["tollDistanceMeter"] = self.tollDistanceMeter!
                            }
                            if self.tollRoads != nil {
                                map["tollRoads"] = self.tollRoads!
                            }
                            if self.tolls != nil {
                                map["tolls"] = self.tolls!
                            }
                            if self.trafficLights != nil {
                                map["trafficLights"] = self.trafficLights!
                            }
                            if self.transitFee != nil {
                                map["transitFee"] = self.transitFee!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("durationSecond") {
                                self.durationSecond = dict["durationSecond"] as! String
                            }
                            if dict.keys.contains("taxiFee") {
                                self.taxiFee = dict["taxiFee"] as! String
                            }
                            if dict.keys.contains("tollDistanceMeter") {
                                self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                            }
                            if dict.keys.contains("tollRoads") {
                                self.tollRoads = dict["tollRoads"] as! String
                            }
                            if dict.keys.contains("tolls") {
                                self.tolls = dict["tolls"] as! String
                            }
                            if dict.keys.contains("trafficLights") {
                                self.trafficLights = dict["trafficLights"] as! String
                            }
                            if dict.keys.contains("transitFee") {
                                self.transitFee = dict["transitFee"] as! String
                            }
                        }
                    }
                    public class Steps : Tea.TeaModel {
                        public class Cost : Tea.TeaModel {
                            public var durationSecond: String?

                            public var taxiFee: String?

                            public var tollDistanceMeter: String?

                            public var tollRoads: String?

                            public var tolls: String?

                            public var trafficLights: String?

                            public var transitFee: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.durationSecond != nil {
                                    map["durationSecond"] = self.durationSecond!
                                }
                                if self.taxiFee != nil {
                                    map["taxiFee"] = self.taxiFee!
                                }
                                if self.tollDistanceMeter != nil {
                                    map["tollDistanceMeter"] = self.tollDistanceMeter!
                                }
                                if self.tollRoads != nil {
                                    map["tollRoads"] = self.tollRoads!
                                }
                                if self.tolls != nil {
                                    map["tolls"] = self.tolls!
                                }
                                if self.trafficLights != nil {
                                    map["trafficLights"] = self.trafficLights!
                                }
                                if self.transitFee != nil {
                                    map["transitFee"] = self.transitFee!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("durationSecond") {
                                    self.durationSecond = dict["durationSecond"] as! String
                                }
                                if dict.keys.contains("taxiFee") {
                                    self.taxiFee = dict["taxiFee"] as! String
                                }
                                if dict.keys.contains("tollDistanceMeter") {
                                    self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                                }
                                if dict.keys.contains("tollRoads") {
                                    self.tollRoads = dict["tollRoads"] as! String
                                }
                                if dict.keys.contains("tolls") {
                                    self.tolls = dict["tolls"] as! String
                                }
                                if dict.keys.contains("trafficLights") {
                                    self.trafficLights = dict["trafficLights"] as! String
                                }
                                if dict.keys.contains("transitFee") {
                                    self.transitFee = dict["transitFee"] as! String
                                }
                            }
                        }
                        public class Polyline : Tea.TeaModel {
                            public var polyline: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.polyline != nil {
                                    map["polyline"] = self.polyline!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("polyline") {
                                    self.polyline = dict["polyline"] as! String
                                }
                            }
                        }
                        public var cost: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking.Steps.Cost?

                        public var instruction: String?

                        public var orientation: String?

                        public var polyline: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking.Steps.Polyline?

                        public var roadName: String?

                        public var stepDistanceMeter: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.cost?.validate()
                            try self.polyline?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.cost != nil {
                                map["cost"] = self.cost?.toMap()
                            }
                            if self.instruction != nil {
                                map["instruction"] = self.instruction!
                            }
                            if self.orientation != nil {
                                map["orientation"] = self.orientation!
                            }
                            if self.polyline != nil {
                                map["polyline"] = self.polyline?.toMap()
                            }
                            if self.roadName != nil {
                                map["roadName"] = self.roadName!
                            }
                            if self.stepDistanceMeter != nil {
                                map["stepDistanceMeter"] = self.stepDistanceMeter!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("cost") {
                                var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking.Steps.Cost()
                                model.fromMap(dict["cost"] as! [String: Any])
                                self.cost = model
                            }
                            if dict.keys.contains("instruction") {
                                self.instruction = dict["instruction"] as! String
                            }
                            if dict.keys.contains("orientation") {
                                self.orientation = dict["orientation"] as! String
                            }
                            if dict.keys.contains("polyline") {
                                var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking.Steps.Polyline()
                                model.fromMap(dict["polyline"] as! [String: Any])
                                self.polyline = model
                            }
                            if dict.keys.contains("roadName") {
                                self.roadName = dict["roadName"] as! String
                            }
                            if dict.keys.contains("stepDistanceMeter") {
                                self.stepDistanceMeter = dict["stepDistanceMeter"] as! String
                            }
                        }
                    }
                    public var cost: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking.Cost?

                    public var destination: String?

                    public var distanceMeter: String?

                    public var origin: String?

                    public var steps: [TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking.Steps]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.cost?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.cost != nil {
                            map["cost"] = self.cost?.toMap()
                        }
                        if self.destination != nil {
                            map["destination"] = self.destination!
                        }
                        if self.distanceMeter != nil {
                            map["distanceMeter"] = self.distanceMeter!
                        }
                        if self.origin != nil {
                            map["origin"] = self.origin!
                        }
                        if self.steps != nil {
                            var tmp : [Any] = []
                            for k in self.steps! {
                                tmp.append(k.toMap())
                            }
                            map["steps"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("cost") {
                            var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking.Cost()
                            model.fromMap(dict["cost"] as! [String: Any])
                            self.cost = model
                        }
                        if dict.keys.contains("destination") {
                            self.destination = dict["destination"] as! String
                        }
                        if dict.keys.contains("distanceMeter") {
                            self.distanceMeter = dict["distanceMeter"] as! String
                        }
                        if dict.keys.contains("origin") {
                            self.origin = dict["origin"] as! String
                        }
                        if dict.keys.contains("steps") {
                            var tmp : [TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking.Steps] = []
                            for v in dict["steps"] as! [Any] {
                                var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking.Steps()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.steps = tmp
                        }
                    }
                }
                public var bus: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus?

                public var railway: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Railway?

                public var taxi: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Taxi?

                public var walking: TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.bus?.validate()
                    try self.railway?.validate()
                    try self.taxi?.validate()
                    try self.walking?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bus != nil {
                        map["bus"] = self.bus?.toMap()
                    }
                    if self.railway != nil {
                        map["railway"] = self.railway?.toMap()
                    }
                    if self.taxi != nil {
                        map["taxi"] = self.taxi?.toMap()
                    }
                    if self.walking != nil {
                        map["walking"] = self.walking?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("bus") {
                        var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Bus()
                        model.fromMap(dict["bus"] as! [String: Any])
                        self.bus = model
                    }
                    if dict.keys.contains("railway") {
                        var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Railway()
                        model.fromMap(dict["railway"] as! [String: Any])
                        self.railway = model
                    }
                    if dict.keys.contains("taxi") {
                        var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Taxi()
                        model.fromMap(dict["taxi"] as! [String: Any])
                        self.taxi = model
                    }
                    if dict.keys.contains("walking") {
                        var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments.Walking()
                        model.fromMap(dict["walking"] as! [String: Any])
                        self.walking = model
                    }
                }
            }
            public var cost: TransitIntegratedDirectionResponseBody.Data.Paths.Cost?

            public var distanceMeter: String?

            public var nightflag: String?

            public var segments: [TransitIntegratedDirectionResponseBody.Data.Paths.Segments]?

            public var walkingDistanceMeter: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cost?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cost != nil {
                    map["cost"] = self.cost?.toMap()
                }
                if self.distanceMeter != nil {
                    map["distanceMeter"] = self.distanceMeter!
                }
                if self.nightflag != nil {
                    map["nightflag"] = self.nightflag!
                }
                if self.segments != nil {
                    var tmp : [Any] = []
                    for k in self.segments! {
                        tmp.append(k.toMap())
                    }
                    map["segments"] = tmp
                }
                if self.walkingDistanceMeter != nil {
                    map["walkingDistanceMeter"] = self.walkingDistanceMeter!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cost") {
                    var model = TransitIntegratedDirectionResponseBody.Data.Paths.Cost()
                    model.fromMap(dict["cost"] as! [String: Any])
                    self.cost = model
                }
                if dict.keys.contains("distanceMeter") {
                    self.distanceMeter = dict["distanceMeter"] as! String
                }
                if dict.keys.contains("nightflag") {
                    self.nightflag = dict["nightflag"] as! String
                }
                if dict.keys.contains("segments") {
                    var tmp : [TransitIntegratedDirectionResponseBody.Data.Paths.Segments] = []
                    for v in dict["segments"] as! [Any] {
                        var model = TransitIntegratedDirectionResponseBody.Data.Paths.Segments()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segments = tmp
                }
                if dict.keys.contains("walkingDistanceMeter") {
                    self.walkingDistanceMeter = dict["walkingDistanceMeter"] as! String
                }
            }
        }
        public var cost: TransitIntegratedDirectionResponseBody.Data.Cost?

        public var count: String?

        public var destinationLatitude: String?

        public var destinationLongitude: String?

        public var distanceMeter: String?

        public var originLatitude: String?

        public var originLongitude: String?

        public var paths: [TransitIntegratedDirectionResponseBody.Data.Paths]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cost?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cost != nil {
                map["cost"] = self.cost?.toMap()
            }
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.destinationLatitude != nil {
                map["destinationLatitude"] = self.destinationLatitude!
            }
            if self.destinationLongitude != nil {
                map["destinationLongitude"] = self.destinationLongitude!
            }
            if self.distanceMeter != nil {
                map["distanceMeter"] = self.distanceMeter!
            }
            if self.originLatitude != nil {
                map["originLatitude"] = self.originLatitude!
            }
            if self.originLongitude != nil {
                map["originLongitude"] = self.originLongitude!
            }
            if self.paths != nil {
                var tmp : [Any] = []
                for k in self.paths! {
                    tmp.append(k.toMap())
                }
                map["paths"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cost") {
                var model = TransitIntegratedDirectionResponseBody.Data.Cost()
                model.fromMap(dict["cost"] as! [String: Any])
                self.cost = model
            }
            if dict.keys.contains("count") {
                self.count = dict["count"] as! String
            }
            if dict.keys.contains("destinationLatitude") {
                self.destinationLatitude = dict["destinationLatitude"] as! String
            }
            if dict.keys.contains("destinationLongitude") {
                self.destinationLongitude = dict["destinationLongitude"] as! String
            }
            if dict.keys.contains("distanceMeter") {
                self.distanceMeter = dict["distanceMeter"] as! String
            }
            if dict.keys.contains("originLatitude") {
                self.originLatitude = dict["originLatitude"] as! String
            }
            if dict.keys.contains("originLongitude") {
                self.originLongitude = dict["originLongitude"] as! String
            }
            if dict.keys.contains("paths") {
                var tmp : [TransitIntegratedDirectionResponseBody.Data.Paths] = []
                for v in dict["paths"] as! [Any] {
                    var model = TransitIntegratedDirectionResponseBody.Data.Paths()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paths = tmp
            }
        }
    }
    public var data: TransitIntegratedDirectionResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var success: Bool?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = TransitIntegratedDirectionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! Int32
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class TransitIntegratedDirectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransitIntegratedDirectionResponseBody?

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
            var model = TransitIntegratedDirectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class WalkingDirectionNovaRequest : Tea.TeaModel {
    public var destinationLatitude: String?

    public var destinationLongitude: String?

    public var originLatitude: String?

    public var originLongitude: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationLatitude != nil {
            map["destinationLatitude"] = self.destinationLatitude!
        }
        if self.destinationLongitude != nil {
            map["destinationLongitude"] = self.destinationLongitude!
        }
        if self.originLatitude != nil {
            map["originLatitude"] = self.originLatitude!
        }
        if self.originLongitude != nil {
            map["originLongitude"] = self.originLongitude!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("destinationLatitude") {
            self.destinationLatitude = dict["destinationLatitude"] as! String
        }
        if dict.keys.contains("destinationLongitude") {
            self.destinationLongitude = dict["destinationLongitude"] as! String
        }
        if dict.keys.contains("originLatitude") {
            self.originLatitude = dict["originLatitude"] as! String
        }
        if dict.keys.contains("originLongitude") {
            self.originLongitude = dict["originLongitude"] as! String
        }
    }
}

public class WalkingDirectionNovaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Paths : Tea.TeaModel {
            public class Cost : Tea.TeaModel {
                public var durationSecond: String?

                public var taxiFee: String?

                public var tollDistanceMeter: String?

                public var tollRoads: String?

                public var tolls: String?

                public var trafficLights: String?

                public var transitFee: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.durationSecond != nil {
                        map["durationSecond"] = self.durationSecond!
                    }
                    if self.taxiFee != nil {
                        map["taxiFee"] = self.taxiFee!
                    }
                    if self.tollDistanceMeter != nil {
                        map["tollDistanceMeter"] = self.tollDistanceMeter!
                    }
                    if self.tollRoads != nil {
                        map["tollRoads"] = self.tollRoads!
                    }
                    if self.tolls != nil {
                        map["tolls"] = self.tolls!
                    }
                    if self.trafficLights != nil {
                        map["trafficLights"] = self.trafficLights!
                    }
                    if self.transitFee != nil {
                        map["transitFee"] = self.transitFee!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("durationSecond") {
                        self.durationSecond = dict["durationSecond"] as! String
                    }
                    if dict.keys.contains("taxiFee") {
                        self.taxiFee = dict["taxiFee"] as! String
                    }
                    if dict.keys.contains("tollDistanceMeter") {
                        self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                    }
                    if dict.keys.contains("tollRoads") {
                        self.tollRoads = dict["tollRoads"] as! String
                    }
                    if dict.keys.contains("tolls") {
                        self.tolls = dict["tolls"] as! String
                    }
                    if dict.keys.contains("trafficLights") {
                        self.trafficLights = dict["trafficLights"] as! String
                    }
                    if dict.keys.contains("transitFee") {
                        self.transitFee = dict["transitFee"] as! String
                    }
                }
            }
            public class Steps : Tea.TeaModel {
                public class Cost : Tea.TeaModel {
                    public var durationSecond: String?

                    public var taxiFee: String?

                    public var tollDistanceMeter: String?

                    public var tollRoads: String?

                    public var tolls: String?

                    public var trafficLights: String?

                    public var transitFee: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.durationSecond != nil {
                            map["durationSecond"] = self.durationSecond!
                        }
                        if self.taxiFee != nil {
                            map["taxiFee"] = self.taxiFee!
                        }
                        if self.tollDistanceMeter != nil {
                            map["tollDistanceMeter"] = self.tollDistanceMeter!
                        }
                        if self.tollRoads != nil {
                            map["tollRoads"] = self.tollRoads!
                        }
                        if self.tolls != nil {
                            map["tolls"] = self.tolls!
                        }
                        if self.trafficLights != nil {
                            map["trafficLights"] = self.trafficLights!
                        }
                        if self.transitFee != nil {
                            map["transitFee"] = self.transitFee!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("durationSecond") {
                            self.durationSecond = dict["durationSecond"] as! String
                        }
                        if dict.keys.contains("taxiFee") {
                            self.taxiFee = dict["taxiFee"] as! String
                        }
                        if dict.keys.contains("tollDistanceMeter") {
                            self.tollDistanceMeter = dict["tollDistanceMeter"] as! String
                        }
                        if dict.keys.contains("tollRoads") {
                            self.tollRoads = dict["tollRoads"] as! String
                        }
                        if dict.keys.contains("tolls") {
                            self.tolls = dict["tolls"] as! String
                        }
                        if dict.keys.contains("trafficLights") {
                            self.trafficLights = dict["trafficLights"] as! String
                        }
                        if dict.keys.contains("transitFee") {
                            self.transitFee = dict["transitFee"] as! String
                        }
                    }
                }
                public var cost: WalkingDirectionNovaResponseBody.Data.Paths.Steps.Cost?

                public var instruction: String?

                public var orientation: String?

                public var polyline: String?

                public var roadName: String?

                public var stepDistanceMeter: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.cost?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cost != nil {
                        map["cost"] = self.cost?.toMap()
                    }
                    if self.instruction != nil {
                        map["instruction"] = self.instruction!
                    }
                    if self.orientation != nil {
                        map["orientation"] = self.orientation!
                    }
                    if self.polyline != nil {
                        map["polyline"] = self.polyline!
                    }
                    if self.roadName != nil {
                        map["roadName"] = self.roadName!
                    }
                    if self.stepDistanceMeter != nil {
                        map["stepDistanceMeter"] = self.stepDistanceMeter!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cost") {
                        var model = WalkingDirectionNovaResponseBody.Data.Paths.Steps.Cost()
                        model.fromMap(dict["cost"] as! [String: Any])
                        self.cost = model
                    }
                    if dict.keys.contains("instruction") {
                        self.instruction = dict["instruction"] as! String
                    }
                    if dict.keys.contains("orientation") {
                        self.orientation = dict["orientation"] as! String
                    }
                    if dict.keys.contains("polyline") {
                        self.polyline = dict["polyline"] as! String
                    }
                    if dict.keys.contains("roadName") {
                        self.roadName = dict["roadName"] as! String
                    }
                    if dict.keys.contains("stepDistanceMeter") {
                        self.stepDistanceMeter = dict["stepDistanceMeter"] as! String
                    }
                }
            }
            public var cost: WalkingDirectionNovaResponseBody.Data.Paths.Cost?

            public var distanceMeter: String?

            public var durationSecond: String?

            public var restriction: String?

            public var steps: [WalkingDirectionNovaResponseBody.Data.Paths.Steps]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cost?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cost != nil {
                    map["cost"] = self.cost?.toMap()
                }
                if self.distanceMeter != nil {
                    map["distanceMeter"] = self.distanceMeter!
                }
                if self.durationSecond != nil {
                    map["durationSecond"] = self.durationSecond!
                }
                if self.restriction != nil {
                    map["restriction"] = self.restriction!
                }
                if self.steps != nil {
                    var tmp : [Any] = []
                    for k in self.steps! {
                        tmp.append(k.toMap())
                    }
                    map["steps"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cost") {
                    var model = WalkingDirectionNovaResponseBody.Data.Paths.Cost()
                    model.fromMap(dict["cost"] as! [String: Any])
                    self.cost = model
                }
                if dict.keys.contains("distanceMeter") {
                    self.distanceMeter = dict["distanceMeter"] as! String
                }
                if dict.keys.contains("durationSecond") {
                    self.durationSecond = dict["durationSecond"] as! String
                }
                if dict.keys.contains("restriction") {
                    self.restriction = dict["restriction"] as! String
                }
                if dict.keys.contains("steps") {
                    var tmp : [WalkingDirectionNovaResponseBody.Data.Paths.Steps] = []
                    for v in dict["steps"] as! [Any] {
                        var model = WalkingDirectionNovaResponseBody.Data.Paths.Steps()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.steps = tmp
                }
            }
        }
        public var count: String?

        public var destinationLatitude: String?

        public var destinationLongitude: String?

        public var originLatitude: String?

        public var originLongitude: String?

        public var paths: [WalkingDirectionNovaResponseBody.Data.Paths]?

        public var taxiCost: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.destinationLatitude != nil {
                map["destinationLatitude"] = self.destinationLatitude!
            }
            if self.destinationLongitude != nil {
                map["destinationLongitude"] = self.destinationLongitude!
            }
            if self.originLatitude != nil {
                map["originLatitude"] = self.originLatitude!
            }
            if self.originLongitude != nil {
                map["originLongitude"] = self.originLongitude!
            }
            if self.paths != nil {
                var tmp : [Any] = []
                for k in self.paths! {
                    tmp.append(k.toMap())
                }
                map["paths"] = tmp
            }
            if self.taxiCost != nil {
                map["taxiCost"] = self.taxiCost!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("count") {
                self.count = dict["count"] as! String
            }
            if dict.keys.contains("destinationLatitude") {
                self.destinationLatitude = dict["destinationLatitude"] as! String
            }
            if dict.keys.contains("destinationLongitude") {
                self.destinationLongitude = dict["destinationLongitude"] as! String
            }
            if dict.keys.contains("originLatitude") {
                self.originLatitude = dict["originLatitude"] as! String
            }
            if dict.keys.contains("originLongitude") {
                self.originLongitude = dict["originLongitude"] as! String
            }
            if dict.keys.contains("paths") {
                var tmp : [WalkingDirectionNovaResponseBody.Data.Paths] = []
                for v in dict["paths"] as! [Any] {
                    var model = WalkingDirectionNovaResponseBody.Data.Paths()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paths = tmp
            }
            if dict.keys.contains("taxiCost") {
                self.taxiCost = dict["taxiCost"] as! String
            }
        }
    }
    public var data: WalkingDirectionNovaResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var success: Bool?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = WalkingDirectionNovaResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! Int32
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class WalkingDirectionNovaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WalkingDirectionNovaResponseBody?

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
            var model = WalkingDirectionNovaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
