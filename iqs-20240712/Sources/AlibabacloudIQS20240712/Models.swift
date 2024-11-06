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

public class NearbySearchRequest : Tea.TeaModel {
    public var keywords: String?

    public var latitude: String?

    public var longitude: String?

    public var page: Int32?

    public var radius: Int64?

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
            self.radius = dict["radius"] as! Int64
        }
        if dict.keys.contains("size") {
            self.size = dict["size"] as! Int32
        }
        if dict.keys.contains("types") {
            self.types = dict["types"] as! String
        }
    }
}

public class NearbySearchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Images : Tea.TeaModel {
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

        public var images: [NearbySearchResponseBody.Data.Images]?

        public var latitude: String?

        public var longitude: String?

        public var metadata: NearbySearchResponseBody.Data.Metadata?

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
                var tmp : [NearbySearchResponseBody.Data.Images] = []
                for v in dict["images"] as! [Any] {
                    var model = NearbySearchResponseBody.Data.Images()
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
                var model = NearbySearchResponseBody.Data.Metadata()
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
    public var data: [NearbySearchResponseBody.Data]?

    public var errorCode: String?

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
            var tmp : [NearbySearchResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = NearbySearchResponseBody.Data()
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
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class NearbySearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NearbySearchResponseBody?

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
            var model = NearbySearchResponseBody()
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

public class PlaceSearchRequest : Tea.TeaModel {
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

public class PlaceSearchResponseBody : Tea.TeaModel {
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
                if self.businessArea != nil {
                    map["businessArea"] = self.businessArea!
                }
                if self.dailyOpeningHours != nil {
                    map["dailyOpeningHours"] = self.dailyOpeningHours!
                }
                if self.mainTag != nil {
                    map["mainTag"] = self.mainTag!
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
                if dict.keys.contains("businessArea") {
                    self.businessArea = dict["businessArea"] as! String
                }
                if dict.keys.contains("dailyOpeningHours") {
                    self.dailyOpeningHours = dict["dailyOpeningHours"] as! String
                }
                if dict.keys.contains("mainTag") {
                    self.mainTag = dict["mainTag"] as! String
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

        public var districtCode: String?

        public var districtName: String?

        public var id: String?

        public var images: [PlaceSearchResponseBody.Data.Images]?

        public var latitude: String?

        public var longitude: String?

        public var metadata: PlaceSearchResponseBody.Data.Metadata?

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
                var tmp : [PlaceSearchResponseBody.Data.Images] = []
                for v in dict["images"] as! [Any] {
                    var model = PlaceSearchResponseBody.Data.Images()
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
                var model = PlaceSearchResponseBody.Data.Metadata()
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
    public var data: [PlaceSearchResponseBody.Data]?

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
            var tmp : [PlaceSearchResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = PlaceSearchResponseBody.Data()
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

public class PlaceSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PlaceSearchResponseBody?

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
            var model = PlaceSearchResponseBody()
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

public class QueryAttractionsRequest : Tea.TeaModel {
    public var body: AgentBaseQuery?

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
            var model = AgentBaseQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAttractionsResponseBody : Tea.TeaModel {
    public var queryResult: QueryResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryResult != nil {
            map["queryResult"] = self.queryResult?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("queryResult") {
            var model = QueryResult()
            model.fromMap(dict["queryResult"] as! [String: Any])
            self.queryResult = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class QueryAttractionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAttractionsResponseBody?

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
            var model = QueryAttractionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryHotelsRequest : Tea.TeaModel {
    public var body: AgentBaseQuery?

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
            var model = AgentBaseQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryHotelsResponseBody : Tea.TeaModel {
    public var queryResult: QueryResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryResult != nil {
            map["queryResult"] = self.queryResult?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("queryResult") {
            var model = QueryResult()
            model.fromMap(dict["queryResult"] as! [String: Any])
            self.queryResult = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class QueryHotelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryHotelsResponseBody?

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
            var model = QueryHotelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRestaurantsRequest : Tea.TeaModel {
    public var body: AgentBaseQuery?

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
            var model = AgentBaseQuery()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRestaurantsResponseBody : Tea.TeaModel {
    public var queryResult: QueryResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryResult != nil {
            map["queryResult"] = self.queryResult?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("queryResult") {
            var model = QueryResult()
            model.fromMap(dict["queryResult"] as! [String: Any])
            self.queryResult = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class QueryRestaurantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRestaurantsResponseBody?

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
            var model = QueryRestaurantsResponseBody()
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
