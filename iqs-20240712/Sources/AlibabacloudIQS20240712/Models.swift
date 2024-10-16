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
