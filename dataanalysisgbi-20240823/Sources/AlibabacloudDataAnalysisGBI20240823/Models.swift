import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class RunDataAnalysisRequest : Tea.TeaModel {
    public var generateSqlOnly: Bool?

    public var query: String?

    public var sessionId: String?

    public var specificationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.generateSqlOnly != nil {
            map["generateSqlOnly"] = self.generateSqlOnly!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.specificationType != nil {
            map["specificationType"] = self.specificationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("generateSqlOnly") {
            self.generateSqlOnly = dict["generateSqlOnly"] as! Bool
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("specificationType") {
            self.specificationType = dict["specificationType"] as! String
        }
    }
}

public class RunDataAnalysisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SqlData : Tea.TeaModel {
            public var column: [String]?

            public var data: [[String: Any]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.column != nil {
                    map["column"] = self.column!
                }
                if self.data != nil {
                    map["data"] = self.data!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("column") {
                    self.column = dict["column"] as! [String]
                }
                if dict.keys.contains("data") {
                    self.data = dict["data"] as! [[String: Any]]
                }
            }
        }
        public class Visualization : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public var plotType: String?

                public var xAxis: [String]?

                public var yAxis: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.plotType != nil {
                        map["plotType"] = self.plotType!
                    }
                    if self.xAxis != nil {
                        map["xAxis"] = self.xAxis!
                    }
                    if self.yAxis != nil {
                        map["yAxis"] = self.yAxis!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("plotType") {
                        self.plotType = dict["plotType"] as! String
                    }
                    if dict.keys.contains("xAxis") {
                        self.xAxis = dict["xAxis"] as! [String]
                    }
                    if dict.keys.contains("yAxis") {
                        self.yAxis = dict["yAxis"] as! [String]
                    }
                }
            }
            public var data: RunDataAnalysisResponseBody.Data.Visualization.Data?

            public var text: String?

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
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("data") {
                    var model = RunDataAnalysisResponseBody.Data.Visualization.Data()
                    model.fromMap(dict["data"] as! [String: Any])
                    self.data = model
                }
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public var errorMessage: String?

        public var event: String?

        public var evidence: String?

        public var httpStatusCode: Int64?

        public var requestId: String?

        public var rewrite: String?

        public var selector: [String]?

        public var sessionId: String?

        public var sql: String?

        public var sqlData: RunDataAnalysisResponseBody.Data.SqlData?

        public var sqlError: String?

        public var visualization: RunDataAnalysisResponseBody.Data.Visualization?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sqlData?.validate()
            try self.visualization?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.evidence != nil {
                map["evidence"] = self.evidence!
            }
            if self.httpStatusCode != nil {
                map["httpStatusCode"] = self.httpStatusCode!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.rewrite != nil {
                map["rewrite"] = self.rewrite!
            }
            if self.selector != nil {
                map["selector"] = self.selector!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.sql != nil {
                map["sql"] = self.sql!
            }
            if self.sqlData != nil {
                map["sqlData"] = self.sqlData?.toMap()
            }
            if self.sqlError != nil {
                map["sqlError"] = self.sqlError!
            }
            if self.visualization != nil {
                map["visualization"] = self.visualization?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("evidence") {
                self.evidence = dict["evidence"] as! String
            }
            if dict.keys.contains("httpStatusCode") {
                self.httpStatusCode = dict["httpStatusCode"] as! Int64
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("rewrite") {
                self.rewrite = dict["rewrite"] as! String
            }
            if dict.keys.contains("selector") {
                self.selector = dict["selector"] as! [String]
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("sql") {
                self.sql = dict["sql"] as! String
            }
            if dict.keys.contains("sqlData") {
                var model = RunDataAnalysisResponseBody.Data.SqlData()
                model.fromMap(dict["sqlData"] as! [String: Any])
                self.sqlData = model
            }
            if dict.keys.contains("sqlError") {
                self.sqlError = dict["sqlError"] as! String
            }
            if dict.keys.contains("visualization") {
                var model = RunDataAnalysisResponseBody.Data.Visualization()
                model.fromMap(dict["visualization"] as! [String: Any])
                self.visualization = model
            }
        }
    }
    public var code: String?

    public var data: RunDataAnalysisResponseBody.Data?

    public var httpStatusCode: Int64?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = RunDataAnalysisResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int64
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
    }
}

public class RunDataAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunDataAnalysisResponseBody?

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
            var model = RunDataAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
