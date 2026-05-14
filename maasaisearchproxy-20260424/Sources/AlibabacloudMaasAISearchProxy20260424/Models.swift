import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class WebSearchRequest : Tea.TeaModel {
    public var endTime: String?

    public var excludeDomain: [String]?

    public var includeDomain: [String]?

    public var limit: Int32?

    public var query: String?

    public var region: String?

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
            map["endTime"] = self.endTime!
        }
        if self.excludeDomain != nil {
            map["excludeDomain"] = self.excludeDomain!
        }
        if self.includeDomain != nil {
            map["includeDomain"] = self.includeDomain!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["excludeDomain"] as? [String] {
            self.excludeDomain = value
        }
        if let value = dict["includeDomain"] as? [String] {
            self.includeDomain = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class WebSearchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class Source : Tea.TeaModel {
                public var domain: String?

                public var favicon: String?

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
                    if self.domain != nil {
                        map["domain"] = self.domain!
                    }
                    if self.favicon != nil {
                        map["favicon"] = self.favicon!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["domain"] as? String {
                        self.domain = value
                    }
                    if let value = dict["favicon"] as? String {
                        self.favicon = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                }
            }
            public var date: String?

            public var snippet: String?

            public var source: WebSearchResponseBody.Data.Result.Source?

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
                try self.source?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["date"] = self.date!
                }
                if self.snippet != nil {
                    map["snippet"] = self.snippet!
                }
                if self.source != nil {
                    map["source"] = self.source?.toMap()
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["date"] as? String {
                    self.date = value
                }
                if let value = dict["snippet"] as? String {
                    self.snippet = value
                }
                if let value = dict["source"] as? [String: Any?] {
                    var model = WebSearchResponseBody.Data.Result.Source()
                    model.fromMap(value)
                    self.source = model
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public var result: [WebSearchResponseBody.Data.Result]?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["result"] = tmp
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? [Any?] {
                var tmp : [WebSearchResponseBody.Data.Result] = []
                for v in value {
                    if v != nil {
                        var model = WebSearchResponseBody.Data.Result()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.result = tmp
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: WebSearchResponseBody.Data?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = WebSearchResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class WebSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WebSearchResponseBody?

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
            var model = WebSearchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
