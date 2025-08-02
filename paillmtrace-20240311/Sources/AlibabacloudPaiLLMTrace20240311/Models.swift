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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JsonPathInSpan"] as? String {
                self.jsonPathInSpan = value
            }
            if let value = dict["JsonPathInSpanValue"] as? String {
                self.jsonPathInSpanValue = value
            }
            if let value = dict["SpanName"] as? String {
                self.spanName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JsonPathInSpan"] as? String {
                self.jsonPathInSpan = value
            }
            if let value = dict["JsonPathInSpanValue"] as? String {
                self.jsonPathInSpanValue = value
            }
            if let value = dict["SpanName"] as? String {
                self.spanName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JsonPathInSpan"] as? String {
                self.jsonPathInSpan = value
            }
            if let value = dict["JsonPathInSpanValue"] as? String {
                self.jsonPathInSpanValue = value
            }
            if let value = dict["SpanName"] as? String {
                self.spanName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Answer"] as? [String: Any?] {
            var model = EvaluationConfig.Answer()
            model.fromMap(value)
            self.answer = model
        }
        if let value = dict["Context"] as? [String: Any?] {
            var model = EvaluationConfig.Context()
            model.fromMap(value)
            self.context = model
        }
        if let value = dict["Query"] as? [String: Any?] {
            var model = EvaluationConfig.Query()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["IsSelfHost"] as? Bool {
            self.isSelfHost = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Temperature"] as? Double {
            self.temperature = value
        }
        if let value = dict["TopP"] as? Double {
            self.topP = value
        }
        if let value = dict["UseFunctionCall"] as? Bool {
            self.useFunctionCall = value
        }
    }
}

public class QuestionAnswer : Tea.TeaModel {
    public class Answer : Tea.TeaModel {
        public var contexts: [String]?

        public var text: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contexts != nil {
                map["Contexts"] = self.contexts!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Contexts"] as? [String] {
                self.contexts = value
            }
            if let value = dict["Text"] as? String {
                self.text = value
            }
        }
    }
    public class GroundTruth : Tea.TeaModel {
        public var contexts: [String]?

        public var text: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contexts != nil {
                map["Contexts"] = self.contexts!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Contexts"] as? [String] {
                self.contexts = value
            }
            if let value = dict["Text"] as? String {
                self.text = value
            }
        }
    }
    public var answer: QuestionAnswer.Answer?

    public var groundTruth: QuestionAnswer.GroundTruth?

    public var question: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.answer?.validate()
        try self.groundTruth?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.answer != nil {
            map["Answer"] = self.answer?.toMap()
        }
        if self.groundTruth != nil {
            map["GroundTruth"] = self.groundTruth?.toMap()
        }
        if self.question != nil {
            map["Question"] = self.question!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Answer"] as? [String: Any?] {
            var model = QuestionAnswer.Answer()
            model.fromMap(value)
            self.answer = model
        }
        if let value = dict["GroundTruth"] as? [String: Any?] {
            var model = QuestionAnswer.GroundTruth()
            model.fromMap(value)
            self.groundTruth = model
        }
        if let value = dict["Question"] as? String {
            self.question = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["EvaluationConfig"] as? [String: Any?] {
                var model = EvaluationConfig()
                model.fromMap(value)
                self.evaluationConfig = model
            }
            if let value = dict["Filters"] as? [Any?] {
                var tmp : [CreateOnlineEvalTaskRequest.Body.Filters] = []
                for v in value {
                    if v != nil {
                        var model = CreateOnlineEvalTaskRequest.Body.Filters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.filters = tmp
            }
            if let value = dict["ModelConfig"] as? [String: Any?] {
                var model = ModelConfig()
                model.fromMap(value)
                self.modelConfig = model
            }
            if let value = dict["SamplingFrequencyMinutes"] as? Int32 {
                self.samplingFrequencyMinutes = value
            }
            if let value = dict["SamplingRatio"] as? Int32 {
                self.samplingRatio = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateOnlineEvalTaskRequest.Body()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateOnlineEvalTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleDetails"] as? String {
            self.roleDetails = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceIdentityRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteOnlineEvalTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["EvaluationConfig"] as? [String: Any?] {
            var model = EvaluationConfig()
            model.fromMap(value)
            self.evaluationConfig = model
        }
        if let value = dict["EvaluationId"] as? String {
            self.evaluationId = value
        }
        if let value = dict["MaxTime"] as? String {
            self.maxTime = value
        }
        if let value = dict["MinTime"] as? String {
            self.minTime = value
        }
        if let value = dict["ModelConfig"] as? [String: Any?] {
            var model = ModelConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EvaluationId"] as? String {
            self.evaluationId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EvaluateTraceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EvaluationTemplates"] as? [Any] {
            self.evaluationTemplates = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEvaluationTemplatesResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunUid"] as? String {
                self.aliyunUid = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EvalResults"] as? String {
                self.evalResults = value
            }
            if let value = dict["EvaluationConfig"] as? [String: Any?] {
                var model = EvaluationConfig()
                model.fromMap(value)
                self.evaluationConfig = model
            }
            if let value = dict["Filters"] as? [Any?] {
                var tmp : [GetOnlineEvalTaskResponseBody.Task.Filters] = []
                for v in value {
                    if v != nil {
                        var model = GetOnlineEvalTaskResponseBody.Task.Filters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.filters = tmp
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtEndTime"] as? String {
                self.gmtEndTime = value
            }
            if let value = dict["GmtLastSamplingWindowEndTime"] as? String {
                self.gmtLastSamplingWindowEndTime = value
            }
            if let value = dict["GmtLastSamplingWindowStartTime"] as? String {
                self.gmtLastSamplingWindowStartTime = value
            }
            if let value = dict["GmtStartTime"] as? String {
                self.gmtStartTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["ModelConfig"] as? [String: Any?] {
                var model = ModelConfig()
                model.fromMap(value)
                self.modelConfig = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RecordCount"] as? Int32 {
                self.recordCount = value
            }
            if let value = dict["SamplingFrequencyMinutes"] as? Int32 {
                self.samplingFrequencyMinutes = value
            }
            if let value = dict["SamplingRatio"] as? Int32 {
                self.samplingRatio = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Task"] as? [String: Any?] {
            var model = GetOnlineEvalTaskResponseBody.Task()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetOnlineEvalTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleDetail"] as? String {
            self.roleDetail = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceIdentityRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["GrpcEndpoint"] as? String {
            self.grpcEndpoint = value
        }
        if let value = dict["GrpcInternalEndpoint"] as? String {
            self.grpcInternalEndpoint = value
        }
        if let value = dict["HttpEndpoint"] as? String {
            self.httpEndpoint = value
        }
        if let value = dict["HttpInternalEndpoint"] as? String {
            self.httpInternalEndpoint = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetXtraceTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEvalResultsRequest : Tea.TeaModel {
    public var evaluationId: String?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var recordIds: [String]?

    public override init() {
        super.init()
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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.recordIds != nil {
            map["RecordIds"] = self.recordIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EvaluationId"] as? String {
            self.evaluationId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RecordIds"] as? [String] {
            self.recordIds = value
        }
    }
}

public class ListEvalResultsShrinkRequest : Tea.TeaModel {
    public var evaluationId: String?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var recordIdsShrink: String?

    public override init() {
        super.init()
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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.recordIdsShrink != nil {
            map["RecordIds"] = self.recordIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EvaluationId"] as? String {
            self.evaluationId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RecordIds"] as? String {
            self.recordIdsShrink = value
        }
    }
}

public class ListEvalResultsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EvaluationResults"] as? [String] {
            self.evaluationResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListEvalResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEvalResultsResponseBody?

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
            var model = ListEvalResultsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EvaluationId"] as? String {
            self.evaluationId = value
        }
        if let value = dict["MostRecentResultsOnly"] as? Bool {
            self.mostRecentResultsOnly = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TraceIds"] as? [String] {
            self.traceIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EvaluationId"] as? String {
            self.evaluationId = value
        }
        if let value = dict["MostRecentResultsOnly"] as? Bool {
            self.mostRecentResultsOnly = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TraceIds"] as? String {
            self.traceIdsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EvaluationResults"] as? [String] {
            self.evaluationResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOnlineEvalTaskResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOnlineEvalTasksRequest : Tea.TeaModel {
    public var appName: String?

    public var keyword: String?

    public var maxTime: String?

    public var minTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MaxTime"] as? String {
            self.maxTime = value
        }
        if let value = dict["MinTime"] as? String {
            self.minTime = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var aliyunUid: String?

        public var appName: String?

        public var description_: String?

        public var evalResults: String?

        public var evaluationConfig: EvaluationConfig?

        public var filters: [ListOnlineEvalTasksResponseBody.Tasks.Filters]?

        public var gmtCreateTime: String?

        public var gmtEndTime: String?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunUid"] as? String {
                self.aliyunUid = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EvalResults"] as? String {
                self.evalResults = value
            }
            if let value = dict["EvaluationConfig"] as? [String: Any?] {
                var model = EvaluationConfig()
                model.fromMap(value)
                self.evaluationConfig = model
            }
            if let value = dict["Filters"] as? [Any?] {
                var tmp : [ListOnlineEvalTasksResponseBody.Tasks.Filters] = []
                for v in value {
                    if v != nil {
                        var model = ListOnlineEvalTasksResponseBody.Tasks.Filters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.filters = tmp
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtEndTime"] as? String {
                self.gmtEndTime = value
            }
            if let value = dict["GmtStartTime"] as? String {
                self.gmtStartTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["ModelConfig"] as? [String: Any?] {
                var model = ModelConfig()
                model.fromMap(value)
                self.modelConfig = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RecordCount"] as? Int32 {
                self.recordCount = value
            }
            if let value = dict["SamplingFrequencyMinutes"] as? Int32 {
                self.samplingFrequencyMinutes = value
            }
            if let value = dict["SamplingRatio"] as? Int32 {
                self.samplingRatio = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [ListOnlineEvalTasksResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = ListOnlineEvalTasksResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOnlineEvalTasksResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var endUserId: String?

    public var filters: [ListTracesDatasRequest.Filters]?

    public var hasEvents: Bool?

    public var hasStatusMessage: Bool?

    public var llmAppName: String?

    public var maxDuration: Double?

    public var maxTime: String?

    public var minDuration: Double?

    public var minTime: String?

    public var opentelemetryCompatible: Bool?

    public var ownerId: String?

    public var ownerSubId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

    public var spanIds: [String]?

    public var spanName: String?

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
        if self.maxDuration != nil {
            map["MaxDuration"] = self.maxDuration!
        }
        if self.maxTime != nil {
            map["MaxTime"] = self.maxTime!
        }
        if self.minDuration != nil {
            map["MinDuration"] = self.minDuration!
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
        if self.spanName != nil {
            map["SpanName"] = self.spanName!
        }
        if self.traceIds != nil {
            map["TraceIds"] = self.traceIds!
        }
        if self.traceReduceMethod != nil {
            map["TraceReduceMethod"] = self.traceReduceMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [ListTracesDatasRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = ListTracesDatasRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["HasEvents"] as? Bool {
            self.hasEvents = value
        }
        if let value = dict["HasStatusMessage"] as? Bool {
            self.hasStatusMessage = value
        }
        if let value = dict["LlmAppName"] as? String {
            self.llmAppName = value
        }
        if let value = dict["MaxDuration"] as? Double {
            self.maxDuration = value
        }
        if let value = dict["MaxTime"] as? String {
            self.maxTime = value
        }
        if let value = dict["MinDuration"] as? Double {
            self.minDuration = value
        }
        if let value = dict["MinTime"] as? String {
            self.minTime = value
        }
        if let value = dict["OpentelemetryCompatible"] as? Bool {
            self.opentelemetryCompatible = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["OwnerSubId"] as? String {
            self.ownerSubId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["SpanIds"] as? [String] {
            self.spanIds = value
        }
        if let value = dict["SpanName"] as? String {
            self.spanName = value
        }
        if let value = dict["TraceIds"] as? [String] {
            self.traceIds = value
        }
        if let value = dict["TraceReduceMethod"] as? String {
            self.traceReduceMethod = value
        }
    }
}

public class ListTracesDatasShrinkRequest : Tea.TeaModel {
    public var endUserId: String?

    public var filtersShrink: String?

    public var hasEvents: Bool?

    public var hasStatusMessage: Bool?

    public var llmAppName: String?

    public var maxDuration: Double?

    public var maxTime: String?

    public var minDuration: Double?

    public var minTime: String?

    public var opentelemetryCompatible: Bool?

    public var ownerId: String?

    public var ownerSubId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sortOrder: String?

    public var spanIdsShrink: String?

    public var spanName: String?

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
        if self.maxDuration != nil {
            map["MaxDuration"] = self.maxDuration!
        }
        if self.maxTime != nil {
            map["MaxTime"] = self.maxTime!
        }
        if self.minDuration != nil {
            map["MinDuration"] = self.minDuration!
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
        if self.spanName != nil {
            map["SpanName"] = self.spanName!
        }
        if self.traceIdsShrink != nil {
            map["TraceIds"] = self.traceIdsShrink!
        }
        if self.traceReduceMethod != nil {
            map["TraceReduceMethod"] = self.traceReduceMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["Filters"] as? String {
            self.filtersShrink = value
        }
        if let value = dict["HasEvents"] as? Bool {
            self.hasEvents = value
        }
        if let value = dict["HasStatusMessage"] as? Bool {
            self.hasStatusMessage = value
        }
        if let value = dict["LlmAppName"] as? String {
            self.llmAppName = value
        }
        if let value = dict["MaxDuration"] as? Double {
            self.maxDuration = value
        }
        if let value = dict["MaxTime"] as? String {
            self.maxTime = value
        }
        if let value = dict["MinDuration"] as? Double {
            self.minDuration = value
        }
        if let value = dict["MinTime"] as? String {
            self.minTime = value
        }
        if let value = dict["OpentelemetryCompatible"] as? Bool {
            self.opentelemetryCompatible = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["OwnerSubId"] as? String {
            self.ownerSubId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["SpanIds"] as? String {
            self.spanIdsShrink = value
        }
        if let value = dict["SpanName"] as? String {
            self.spanName = value
        }
        if let value = dict["TraceIds"] as? String {
            self.traceIdsShrink = value
        }
        if let value = dict["TraceReduceMethod"] as? String {
            self.traceReduceMethod = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Traces"] as? [Any] {
            self.traces = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTracesDatasResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopOnlineEvalTaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EvaluationConfig"] as? [String: Any?] {
            var model = EvaluationConfig()
            model.fromMap(value)
            self.evaluationConfig = model
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [UpdateOnlineEvalTaskRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = UpdateOnlineEvalTaskRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["ModelConfig"] as? [String: Any?] {
            var model = ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["SamplingFrequencyMinutes"] as? Int32 {
            self.samplingFrequencyMinutes = value
        }
        if let value = dict["SamplingRatio"] as? Int32 {
            self.samplingRatio = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateOnlineEvalTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
