import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class EvaluationConfig : Tea.TeaModel {
    public class Answer : Tea.TeaModel {
        public var jsonPathInSpan: String?

        public var jsonPathInSpanValue: String?

        public var spanName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jsonPathInSpan != nil {
                map["JsonPathInSpan"] = self.jsonPathInSpan!
            }
            if self.jsonPathInSpanValue != nil {
                map["JsonPathInSpanValue"] = self.jsonPathInSpanValue!
            }
            if self.spanName != nil {
                map["SpanName"] = self.spanName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JsonPathInSpan") {
                self.jsonPathInSpan = dict["JsonPathInSpan"] as! String
            }
            if dict.keys.contains("JsonPathInSpanValue") {
                self.jsonPathInSpanValue = dict["JsonPathInSpanValue"] as! String
            }
            if dict.keys.contains("SpanName") {
                self.spanName = dict["SpanName"] as! String
            }
        }
    }
    public class Context : Tea.TeaModel {
        public var jsonPathInSpan: String?

        public var jsonPathInSpanValue: String?

        public var spanName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jsonPathInSpan != nil {
                map["JsonPathInSpan"] = self.jsonPathInSpan!
            }
            if self.jsonPathInSpanValue != nil {
                map["JsonPathInSpanValue"] = self.jsonPathInSpanValue!
            }
            if self.spanName != nil {
                map["SpanName"] = self.spanName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JsonPathInSpan") {
                self.jsonPathInSpan = dict["JsonPathInSpan"] as! String
            }
            if dict.keys.contains("JsonPathInSpanValue") {
                self.jsonPathInSpanValue = dict["JsonPathInSpanValue"] as! String
            }
            if dict.keys.contains("SpanName") {
                self.spanName = dict["SpanName"] as! String
            }
        }
    }
    public class Query : Tea.TeaModel {
        public var jsonPathInSpan: String?

        public var jsonPathInSpanValue: String?

        public var spanName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jsonPathInSpan != nil {
                map["JsonPathInSpan"] = self.jsonPathInSpan!
            }
            if self.jsonPathInSpanValue != nil {
                map["JsonPathInSpanValue"] = self.jsonPathInSpanValue!
            }
            if self.spanName != nil {
                map["SpanName"] = self.spanName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JsonPathInSpan") {
                self.jsonPathInSpan = dict["JsonPathInSpan"] as! String
            }
            if dict.keys.contains("JsonPathInSpanValue") {
                self.jsonPathInSpanValue = dict["JsonPathInSpanValue"] as! String
            }
            if dict.keys.contains("SpanName") {
                self.spanName = dict["SpanName"] as! String
            }
        }
    }
    public var answer: EvaluationConfig.Answer?

    public var context: EvaluationConfig.Context?

    public var query: EvaluationConfig.Query?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.answer?.validate()
        try self.context?.validate()
        try self.query?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.answer != nil {
            map["Answer"] = self.answer?.toMap()
        }
        if self.context != nil {
            map["Context"] = self.context?.toMap()
        }
        if self.query != nil {
            map["Query"] = self.query?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Answer") {
            var model = EvaluationConfig.Answer()
            model.fromMap(dict["Answer"] as! [String: Any])
            self.answer = model
        }
        if dict.keys.contains("Context") {
            var model = EvaluationConfig.Context()
            model.fromMap(dict["Context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("Query") {
            var model = EvaluationConfig.Query()
            model.fromMap(dict["Query"] as! [String: Any])
            self.query = model
        }
    }
}

public class ModelConfig : Tea.TeaModel {
    public var apiKey: String?

    public var endpoint: String?

    public var isSelfHost: Bool?

    public var name: String?

    public var temperature: Double?

    public var topP: Double?

    public var useFunctionCall: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["ApiKey"] = self.apiKey!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.isSelfHost != nil {
            map["IsSelfHost"] = self.isSelfHost!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.temperature != nil {
            map["Temperature"] = self.temperature!
        }
        if self.topP != nil {
            map["TopP"] = self.topP!
        }
        if self.useFunctionCall != nil {
            map["UseFunctionCall"] = self.useFunctionCall!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiKey") {
            self.apiKey = dict["ApiKey"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("IsSelfHost") {
            self.isSelfHost = dict["IsSelfHost"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Temperature") {
            self.temperature = dict["Temperature"] as! Double
        }
        if dict.keys.contains("TopP") {
            self.topP = dict["TopP"] as! Double
        }
        if dict.keys.contains("UseFunctionCall") {
            self.useFunctionCall = dict["UseFunctionCall"] as! Bool
        }
    }
}

public class CreateOnlineEvalTaskRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Filters : Tea.TeaModel {
            public var key: String?

            public var operator_: String?

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
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
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
                if dict.keys.contains("Operator") {
                    self.operator_ = dict["Operator"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var appName: String?

        public var description_: String?

        public var endTime: String?

        public var evaluationConfig: EvaluationConfig?

        public var filters: [CreateOnlineEvalTaskRequest.Body.Filters]?

        public var modelConfig: ModelConfig?

        public var samplingFrequencyMinutes: Int32?

        public var samplingRatio: Int32?

        public var startTime: String?

        public var taskName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.evaluationConfig?.validate()
            try self.modelConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.evaluationConfig != nil {
                map["EvaluationConfig"] = self.evaluationConfig?.toMap()
            }
            if self.filters != nil {
                var tmp : [Any] = []
                for k in self.filters! {
                    tmp.append(k.toMap())
                }
                map["Filters"] = tmp
            }
            if self.modelConfig != nil {
                map["ModelConfig"] = self.modelConfig?.toMap()
            }
            if self.samplingFrequencyMinutes != nil {
                map["SamplingFrequencyMinutes"] = self.samplingFrequencyMinutes!
            }
            if self.samplingRatio != nil {
                map["SamplingRatio"] = self.samplingRatio!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("EvaluationConfig") {
                var model = EvaluationConfig()
                model.fromMap(dict["EvaluationConfig"] as! [String: Any])
                self.evaluationConfig = model
            }
            if dict.keys.contains("Filters") {
                var tmp : [CreateOnlineEvalTaskRequest.Body.Filters] = []
                for v in dict["Filters"] as! [Any] {
                    var model = CreateOnlineEvalTaskRequest.Body.Filters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.filters = tmp
            }
            if dict.keys.contains("ModelConfig") {
                var model = ModelConfig()
                model.fromMap(dict["ModelConfig"] as! [String: Any])
                self.modelConfig = model
            }
            if dict.keys.contains("SamplingFrequencyMinutes") {
                self.samplingFrequencyMinutes = dict["SamplingFrequencyMinutes"] as! Int32
            }
            if dict.keys.contains("SamplingRatio") {
                self.samplingRatio = dict["SamplingRatio"] as! Int32
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
        }
    }
    public var body: CreateOnlineEvalTaskRequest.Body?

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
            var model = CreateOnlineEvalTaskRequest.Body()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOnlineEvalTaskShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.bodyShrink = dict["body"] as! String
        }
    }
}

public class CreateOnlineEvalTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateOnlineEvalTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOnlineEvalTaskResponseBody?

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
            var model = CreateOnlineEvalTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceIdentityRoleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var roleDetails: String?

    public var roleName: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleDetails != nil {
            map["RoleDetails"] = self.roleDetails!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleDetails") {
            self.roleDetails = dict["RoleDetails"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class CreateServiceIdentityRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceIdentityRoleResponseBody?

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
            var model = CreateServiceIdentityRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOnlineEvalTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteOnlineEvalTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOnlineEvalTaskResponseBody?

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
            var model = DeleteOnlineEvalTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EvaluateTraceRequest : Tea.TeaModel {
    public var appName: String?

    public var evaluationConfig: EvaluationConfig?

    public var evaluationId: String?

    public var maxTime: String?

    public var minTime: String?

    public var modelConfig: ModelConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evaluationConfig?.validate()
        try self.modelConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.evaluationConfig != nil {
            map["EvaluationConfig"] = self.evaluationConfig?.toMap()
        }
        if self.evaluationId != nil {
            map["EvaluationId"] = self.evaluationId!
        }
        if self.maxTime != nil {
            map["MaxTime"] = self.maxTime!
        }
        if self.minTime != nil {
            map["MinTime"] = self.minTime!
        }
        if self.modelConfig != nil {
            map["ModelConfig"] = self.modelConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("EvaluationConfig") {
            var model = EvaluationConfig()
            model.fromMap(dict["EvaluationConfig"] as! [String: Any])
            self.evaluationConfig = model
        }
        if dict.keys.contains("EvaluationId") {
            self.evaluationId = dict["EvaluationId"] as! String
        }
        if dict.keys.contains("MaxTime") {
            self.maxTime = dict["MaxTime"] as! String
        }
        if dict.keys.contains("MinTime") {
            self.minTime = dict["MinTime"] as! String
        }
        if dict.keys.contains("ModelConfig") {
            var model = ModelConfig()
            model.fromMap(dict["ModelConfig"] as! [String: Any])
            self.modelConfig = model
        }
    }
}

public class EvaluateTraceResponseBody : Tea.TeaModel {
    public var code: String?

    public var evaluationId: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.evaluationId != nil {
            map["EvaluationId"] = self.evaluationId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EvaluationId") {
            self.evaluationId = dict["EvaluationId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EvaluateTraceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EvaluateTraceResponseBody?

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
            var model = EvaluateTraceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEvaluationTemplatesResponseBody : Tea.TeaModel {
    public var code: String?

    public var evaluationTemplates: [Any]?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.evaluationTemplates != nil {
            map["EvaluationTemplates"] = self.evaluationTemplates!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EvaluationTemplates") {
            self.evaluationTemplates = dict["EvaluationTemplates"] as! [Any]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetEvaluationTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEvaluationTemplatesResponseBody?

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
            var model = GetEvaluationTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOnlineEvalTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public class Filters : Tea.TeaModel {
            public var key: String?

            public var operator_: String?

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
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
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
                if dict.keys.contains("Operator") {
                    self.operator_ = dict["Operator"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var aliyunUid: String?

        public var appName: String?

        public var description_: String?

        public var evalResults: String?

        public var evaluationConfig: EvaluationConfig?

        public var filters: [GetOnlineEvalTaskResponseBody.Task.Filters]?

        public var gmtCreateTime: String?

        public var gmtEndTime: String?

        public var gmtLastSamplingWindowEndTime: String?

        public var gmtLastSamplingWindowStartTime: String?

        public var gmtStartTime: String?

        public var id: String?

        public var modelConfig: ModelConfig?

        public var name: String?

        public var recordCount: Int32?

        public var samplingFrequencyMinutes: Int32?

        public var samplingRatio: Int32?

        public var status: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.evaluationConfig?.validate()
            try self.modelConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunUid != nil {
                map["AliyunUid"] = self.aliyunUid!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.evalResults != nil {
                map["EvalResults"] = self.evalResults!
            }
            if self.evaluationConfig != nil {
                map["EvaluationConfig"] = self.evaluationConfig?.toMap()
            }
            if self.filters != nil {
                var tmp : [Any] = []
                for k in self.filters! {
                    tmp.append(k.toMap())
                }
                map["Filters"] = tmp
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtEndTime != nil {
                map["GmtEndTime"] = self.gmtEndTime!
            }
            if self.gmtLastSamplingWindowEndTime != nil {
                map["GmtLastSamplingWindowEndTime"] = self.gmtLastSamplingWindowEndTime!
            }
            if self.gmtLastSamplingWindowStartTime != nil {
                map["GmtLastSamplingWindowStartTime"] = self.gmtLastSamplingWindowStartTime!
            }
            if self.gmtStartTime != nil {
                map["GmtStartTime"] = self.gmtStartTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modelConfig != nil {
                map["ModelConfig"] = self.modelConfig?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.recordCount != nil {
                map["RecordCount"] = self.recordCount!
            }
            if self.samplingFrequencyMinutes != nil {
                map["SamplingFrequencyMinutes"] = self.samplingFrequencyMinutes!
            }
            if self.samplingRatio != nil {
                map["SamplingRatio"] = self.samplingRatio!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunUid") {
                self.aliyunUid = dict["AliyunUid"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EvalResults") {
                self.evalResults = dict["EvalResults"] as! String
            }
            if dict.keys.contains("EvaluationConfig") {
                var model = EvaluationConfig()
                model.fromMap(dict["EvaluationConfig"] as! [String: Any])
                self.evaluationConfig = model
            }
            if dict.keys.contains("Filters") {
                var tmp : [GetOnlineEvalTaskResponseBody.Task.Filters] = []
                for v in dict["Filters"] as! [Any] {
                    var model = GetOnlineEvalTaskResponseBody.Task.Filters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.filters = tmp
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtEndTime") {
                self.gmtEndTime = dict["GmtEndTime"] as! String
            }
            if dict.keys.contains("GmtLastSamplingWindowEndTime") {
                self.gmtLastSamplingWindowEndTime = dict["GmtLastSamplingWindowEndTime"] as! String
            }
            if dict.keys.contains("GmtLastSamplingWindowStartTime") {
                self.gmtLastSamplingWindowStartTime = dict["GmtLastSamplingWindowStartTime"] as! String
            }
            if dict.keys.contains("GmtStartTime") {
                self.gmtStartTime = dict["GmtStartTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModelConfig") {
                var model = ModelConfig()
                model.fromMap(dict["ModelConfig"] as! [String: Any])
                self.modelConfig = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RecordCount") {
                self.recordCount = dict["RecordCount"] as! Int32
            }
            if dict.keys.contains("SamplingFrequencyMinutes") {
                self.samplingFrequencyMinutes = dict["SamplingFrequencyMinutes"] as! Int32
            }
            if dict.keys.contains("SamplingRatio") {
                self.samplingRatio = dict["SamplingRatio"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var task: GetOnlineEvalTaskResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.task != nil {
            map["Task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Task") {
            var model = GetOnlineEvalTaskResponseBody.Task()
            model.fromMap(dict["Task"] as! [String: Any])
            self.task = model
        }
    }
}

public class GetOnlineEvalTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOnlineEvalTaskResponseBody?

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
            var model = GetOnlineEvalTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceIdentityRoleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var roleDetail: String?

    public var roleName: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleDetail != nil {
            map["RoleDetail"] = self.roleDetail!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleDetail") {
            self.roleDetail = dict["RoleDetail"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class GetServiceIdentityRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceIdentityRoleResponseBody?

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
            var model = GetServiceIdentityRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetXtraceTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var grpcEndpoint: String?

    public var grpcInternalEndpoint: String?

    public var httpEndpoint: String?

    public var httpInternalEndpoint: String?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.grpcEndpoint != nil {
            map["GrpcEndpoint"] = self.grpcEndpoint!
        }
        if self.grpcInternalEndpoint != nil {
            map["GrpcInternalEndpoint"] = self.grpcInternalEndpoint!
        }
        if self.httpEndpoint != nil {
            map["HttpEndpoint"] = self.httpEndpoint!
        }
        if self.httpInternalEndpoint != nil {
            map["HttpInternalEndpoint"] = self.httpInternalEndpoint!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GrpcEndpoint") {
            self.grpcEndpoint = dict["GrpcEndpoint"] as! String
        }
        if dict.keys.contains("GrpcInternalEndpoint") {
            self.grpcInternalEndpoint = dict["GrpcInternalEndpoint"] as! String
        }
        if dict.keys.contains("HttpEndpoint") {
            self.httpEndpoint = dict["HttpEndpoint"] as! String
        }
        if dict.keys.contains("HttpInternalEndpoint") {
            self.httpInternalEndpoint = dict["HttpInternalEndpoint"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class GetXtraceTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetXtraceTokenResponseBody?

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
            var model = GetXtraceTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOnlineEvalTaskResultsRequest : Tea.TeaModel {
    public var evaluationId: String?

    public var mostRecentResultsOnly: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var traceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.evaluationId != nil {
            map["EvaluationId"] = self.evaluationId!
        }
        if self.mostRecentResultsOnly != nil {
            map["MostRecentResultsOnly"] = self.mostRecentResultsOnly!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.traceIds != nil {
            map["TraceIds"] = self.traceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EvaluationId") {
            self.evaluationId = dict["EvaluationId"] as! String
        }
        if dict.keys.contains("MostRecentResultsOnly") {
            self.mostRecentResultsOnly = dict["MostRecentResultsOnly"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TraceIds") {
            self.traceIds = dict["TraceIds"] as! [String]
        }
    }
}

public class ListOnlineEvalTaskResultsShrinkRequest : Tea.TeaModel {
    public var evaluationId: String?

    public var mostRecentResultsOnly: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var traceIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.evaluationId != nil {
            map["EvaluationId"] = self.evaluationId!
        }
        if self.mostRecentResultsOnly != nil {
            map["MostRecentResultsOnly"] = self.mostRecentResultsOnly!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.traceIdsShrink != nil {
            map["TraceIds"] = self.traceIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EvaluationId") {
            self.evaluationId = dict["EvaluationId"] as! String
        }
        if dict.keys.contains("MostRecentResultsOnly") {
            self.mostRecentResultsOnly = dict["MostRecentResultsOnly"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TraceIds") {
            self.traceIdsShrink = dict["TraceIds"] as! String
        }
    }
}

public class ListOnlineEvalTaskResultsResponseBody : Tea.TeaModel {
    public var code: String?

    public var evaluationResults: [String]?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.evaluationResults != nil {
            map["EvaluationResults"] = self.evaluationResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EvaluationResults") {
            self.evaluationResults = dict["EvaluationResults"] as! [String]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListOnlineEvalTaskResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOnlineEvalTaskResultsResponseBody?

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
            var model = ListOnlineEvalTaskResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOnlineEvalTasksRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxTime: String?

    public var minTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
            map["Keyword"] = self.keyword!
        }
        if self.maxTime != nil {
            map["MaxTime"] = self.maxTime!
        }
        if self.minTime != nil {
            map["MinTime"] = self.minTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("MaxTime") {
            self.maxTime = dict["MaxTime"] as! String
        }
        if dict.keys.contains("MinTime") {
            self.minTime = dict["MinTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListOnlineEvalTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public class Filters : Tea.TeaModel {
            public var key: String?

            public var operator_: String?

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
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
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
                if dict.keys.contains("Operator") {
                    self.operator_ = dict["Operator"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var aliyunUid: String?

        public var appName: String?

        public var description_: String?

        public var evaluationConfig: EvaluationConfig?

        public var filters: [ListOnlineEvalTasksResponseBody.Tasks.Filters]?

        public var gmtCreateTime: String?

        public var gmtEndTime: String?

        public var gmtStartTime: String?

        public var id: String?

        public var modelConfig: ModelConfig?

        public var name: String?

        public var samplingFrequencyMinutes: Int32?

        public var samplingRatio: Int32?

        public var status: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.evaluationConfig?.validate()
            try self.modelConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunUid != nil {
                map["AliyunUid"] = self.aliyunUid!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.evaluationConfig != nil {
                map["EvaluationConfig"] = self.evaluationConfig?.toMap()
            }
            if self.filters != nil {
                var tmp : [Any] = []
                for k in self.filters! {
                    tmp.append(k.toMap())
                }
                map["Filters"] = tmp
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtEndTime != nil {
                map["GmtEndTime"] = self.gmtEndTime!
            }
            if self.gmtStartTime != nil {
                map["GmtStartTime"] = self.gmtStartTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modelConfig != nil {
                map["ModelConfig"] = self.modelConfig?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.samplingFrequencyMinutes != nil {
                map["SamplingFrequencyMinutes"] = self.samplingFrequencyMinutes!
            }
            if self.samplingRatio != nil {
                map["SamplingRatio"] = self.samplingRatio!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunUid") {
                self.aliyunUid = dict["AliyunUid"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EvaluationConfig") {
                var model = EvaluationConfig()
                model.fromMap(dict["EvaluationConfig"] as! [String: Any])
                self.evaluationConfig = model
            }
            if dict.keys.contains("Filters") {
                var tmp : [ListOnlineEvalTasksResponseBody.Tasks.Filters] = []
                for v in dict["Filters"] as! [Any] {
                    var model = ListOnlineEvalTasksResponseBody.Tasks.Filters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.filters = tmp
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtEndTime") {
                self.gmtEndTime = dict["GmtEndTime"] as! String
            }
            if dict.keys.contains("GmtStartTime") {
                self.gmtStartTime = dict["GmtStartTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModelConfig") {
                var model = ModelConfig()
                model.fromMap(dict["ModelConfig"] as! [String: Any])
                self.modelConfig = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SamplingFrequencyMinutes") {
                self.samplingFrequencyMinutes = dict["SamplingFrequencyMinutes"] as! Int32
            }
            if dict.keys.contains("SamplingRatio") {
                self.samplingRatio = dict["SamplingRatio"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var tasks: [ListOnlineEvalTasksResponseBody.Tasks]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [ListOnlineEvalTasksResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ListOnlineEvalTasksResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListOnlineEvalTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOnlineEvalTasksResponseBody?

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
            var model = ListOnlineEvalTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTracesDatasRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
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
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var endUserId: String?

    public var filters: [ListTracesDatasRequest.Filters]?

    public var hasEvents: Bool?

    public var hasStatusMessage: Bool?

    public var llmAppName: String?

    public var maxTime: String?

    public var minTime: String?

    public var opentelemetryCompatible: Bool?

    public var ownerId: String?

    public var ownerSubId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

    public var spanIds: [String]?

    public var traceIds: [String]?

    public var traceReduceMethod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.hasEvents != nil {
            map["HasEvents"] = self.hasEvents!
        }
        if self.hasStatusMessage != nil {
            map["HasStatusMessage"] = self.hasStatusMessage!
        }
        if self.llmAppName != nil {
            map["LlmAppName"] = self.llmAppName!
        }
        if self.maxTime != nil {
            map["MaxTime"] = self.maxTime!
        }
        if self.minTime != nil {
            map["MinTime"] = self.minTime!
        }
        if self.opentelemetryCompatible != nil {
            map["OpentelemetryCompatible"] = self.opentelemetryCompatible!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.ownerSubId != nil {
            map["OwnerSubId"] = self.ownerSubId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.spanIds != nil {
            map["SpanIds"] = self.spanIds!
        }
        if self.traceIds != nil {
            map["TraceIds"] = self.traceIds!
        }
        if self.traceReduceMethod != nil {
            map["TraceReduceMethod"] = self.traceReduceMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("Filters") {
            var tmp : [ListTracesDatasRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = ListTracesDatasRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("HasEvents") {
            self.hasEvents = dict["HasEvents"] as! Bool
        }
        if dict.keys.contains("HasStatusMessage") {
            self.hasStatusMessage = dict["HasStatusMessage"] as! Bool
        }
        if dict.keys.contains("LlmAppName") {
            self.llmAppName = dict["LlmAppName"] as! String
        }
        if dict.keys.contains("MaxTime") {
            self.maxTime = dict["MaxTime"] as! String
        }
        if dict.keys.contains("MinTime") {
            self.minTime = dict["MinTime"] as! String
        }
        if dict.keys.contains("OpentelemetryCompatible") {
            self.opentelemetryCompatible = dict["OpentelemetryCompatible"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("OwnerSubId") {
            self.ownerSubId = dict["OwnerSubId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("SpanIds") {
            self.spanIds = dict["SpanIds"] as! [String]
        }
        if dict.keys.contains("TraceIds") {
            self.traceIds = dict["TraceIds"] as! [String]
        }
        if dict.keys.contains("TraceReduceMethod") {
            self.traceReduceMethod = dict["TraceReduceMethod"] as! String
        }
    }
}

public class ListTracesDatasShrinkRequest : Tea.TeaModel {
    public var endUserId: String?

    public var filtersShrink: String?

    public var hasEvents: Bool?

    public var hasStatusMessage: Bool?

    public var llmAppName: String?

    public var maxTime: String?

    public var minTime: String?

    public var opentelemetryCompatible: Bool?

    public var ownerId: String?

    public var ownerSubId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

    public var spanIdsShrink: String?

    public var traceIdsShrink: String?

    public var traceReduceMethod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.filtersShrink != nil {
            map["Filters"] = self.filtersShrink!
        }
        if self.hasEvents != nil {
            map["HasEvents"] = self.hasEvents!
        }
        if self.hasStatusMessage != nil {
            map["HasStatusMessage"] = self.hasStatusMessage!
        }
        if self.llmAppName != nil {
            map["LlmAppName"] = self.llmAppName!
        }
        if self.maxTime != nil {
            map["MaxTime"] = self.maxTime!
        }
        if self.minTime != nil {
            map["MinTime"] = self.minTime!
        }
        if self.opentelemetryCompatible != nil {
            map["OpentelemetryCompatible"] = self.opentelemetryCompatible!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.ownerSubId != nil {
            map["OwnerSubId"] = self.ownerSubId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.spanIdsShrink != nil {
            map["SpanIds"] = self.spanIdsShrink!
        }
        if self.traceIdsShrink != nil {
            map["TraceIds"] = self.traceIdsShrink!
        }
        if self.traceReduceMethod != nil {
            map["TraceReduceMethod"] = self.traceReduceMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("Filters") {
            self.filtersShrink = dict["Filters"] as! String
        }
        if dict.keys.contains("HasEvents") {
            self.hasEvents = dict["HasEvents"] as! Bool
        }
        if dict.keys.contains("HasStatusMessage") {
            self.hasStatusMessage = dict["HasStatusMessage"] as! Bool
        }
        if dict.keys.contains("LlmAppName") {
            self.llmAppName = dict["LlmAppName"] as! String
        }
        if dict.keys.contains("MaxTime") {
            self.maxTime = dict["MaxTime"] as! String
        }
        if dict.keys.contains("MinTime") {
            self.minTime = dict["MinTime"] as! String
        }
        if dict.keys.contains("OpentelemetryCompatible") {
            self.opentelemetryCompatible = dict["OpentelemetryCompatible"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("OwnerSubId") {
            self.ownerSubId = dict["OwnerSubId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("SpanIds") {
            self.spanIdsShrink = dict["SpanIds"] as! String
        }
        if dict.keys.contains("TraceIds") {
            self.traceIdsShrink = dict["TraceIds"] as! String
        }
        if dict.keys.contains("TraceReduceMethod") {
            self.traceReduceMethod = dict["TraceReduceMethod"] as! String
        }
    }
}

public class ListTracesDatasResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var traces: [Any]?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.traces != nil {
            map["Traces"] = self.traces!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Traces") {
            self.traces = dict["Traces"] as! [Any]
        }
    }
}

public class ListTracesDatasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTracesDatasResponseBody?

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
            var model = ListTracesDatasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopOnlineEvalTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopOnlineEvalTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopOnlineEvalTaskResponseBody?

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
            var model = StopOnlineEvalTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOnlineEvalTaskRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
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
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var appName: String?

    public var description_: String?

    public var endTime: String?

    public var evaluationConfig: EvaluationConfig?

    public var filters: [UpdateOnlineEvalTaskRequest.Filters]?

    public var modelConfig: ModelConfig?

    public var samplingFrequencyMinutes: Int32?

    public var samplingRatio: Int32?

    public var startTime: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evaluationConfig?.validate()
        try self.modelConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.evaluationConfig != nil {
            map["EvaluationConfig"] = self.evaluationConfig?.toMap()
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.modelConfig != nil {
            map["ModelConfig"] = self.modelConfig?.toMap()
        }
        if self.samplingFrequencyMinutes != nil {
            map["SamplingFrequencyMinutes"] = self.samplingFrequencyMinutes!
        }
        if self.samplingRatio != nil {
            map["SamplingRatio"] = self.samplingRatio!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EvaluationConfig") {
            var model = EvaluationConfig()
            model.fromMap(dict["EvaluationConfig"] as! [String: Any])
            self.evaluationConfig = model
        }
        if dict.keys.contains("Filters") {
            var tmp : [UpdateOnlineEvalTaskRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = UpdateOnlineEvalTaskRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("ModelConfig") {
            var model = ModelConfig()
            model.fromMap(dict["ModelConfig"] as! [String: Any])
            self.modelConfig = model
        }
        if dict.keys.contains("SamplingFrequencyMinutes") {
            self.samplingFrequencyMinutes = dict["SamplingFrequencyMinutes"] as! Int32
        }
        if dict.keys.contains("SamplingRatio") {
            self.samplingRatio = dict["SamplingRatio"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class UpdateOnlineEvalTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOnlineEvalTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOnlineEvalTaskResponseBody?

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
            var model = UpdateOnlineEvalTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
