import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddEnterpriseTagRequest : Tea.TeaModel {
    public var agentKey: String?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TagName") && dict["TagName"] != nil {
            self.tagName = dict["TagName"] as! String
        }
    }
}

public class AddEnterpriseTagResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var tagId: Int64?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! Int64
            }
            if dict.keys.contains("TagName") && dict["TagName"] != nil {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var data: AddEnterpriseTagResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = AddEnterpriseTagResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddEnterpriseTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddEnterpriseTagResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddEnterpriseTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelFineTuneJobRequest : Tea.TeaModel {
    public var agentKey: String?

    public var jobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class CancelFineTuneJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelFineTuneJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelFineTuneJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelFineTuneJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFineTuneJobRequest : Tea.TeaModel {
    public class HyperParameters : Tea.TeaModel {
        public var batchSize: Int32?

        public var epochs: Int32?

        public var learningRate: String?

        public var promptLossWeight: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchSize != nil {
                map["BatchSize"] = self.batchSize!
            }
            if self.epochs != nil {
                map["Epochs"] = self.epochs!
            }
            if self.learningRate != nil {
                map["LearningRate"] = self.learningRate!
            }
            if self.promptLossWeight != nil {
                map["PromptLossWeight"] = self.promptLossWeight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BatchSize") && dict["BatchSize"] != nil {
                self.batchSize = dict["BatchSize"] as! Int32
            }
            if dict.keys.contains("Epochs") && dict["Epochs"] != nil {
                self.epochs = dict["Epochs"] as! Int32
            }
            if dict.keys.contains("LearningRate") && dict["LearningRate"] != nil {
                self.learningRate = dict["LearningRate"] as! String
            }
            if dict.keys.contains("PromptLossWeight") && dict["PromptLossWeight"] != nil {
                self.promptLossWeight = dict["PromptLossWeight"] as! Double
            }
        }
    }
    public var agentKey: String?

    public var baseModel: String?

    public var hyperParameters: CreateFineTuneJobRequest.HyperParameters?

    public var modelName: String?

    public var trainingFiles: [String]?

    public var trainingType: String?

    public var validationFiles: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hyperParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.baseModel != nil {
            map["BaseModel"] = self.baseModel!
        }
        if self.hyperParameters != nil {
            map["HyperParameters"] = self.hyperParameters?.toMap()
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.trainingFiles != nil {
            map["TrainingFiles"] = self.trainingFiles!
        }
        if self.trainingType != nil {
            map["TrainingType"] = self.trainingType!
        }
        if self.validationFiles != nil {
            map["ValidationFiles"] = self.validationFiles!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("BaseModel") && dict["BaseModel"] != nil {
            self.baseModel = dict["BaseModel"] as! String
        }
        if dict.keys.contains("HyperParameters") && dict["HyperParameters"] != nil {
            var model = CreateFineTuneJobRequest.HyperParameters()
            model.fromMap(dict["HyperParameters"] as! [String: Any])
            self.hyperParameters = model
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("TrainingFiles") && dict["TrainingFiles"] != nil {
            self.trainingFiles = dict["TrainingFiles"] as! [String]
        }
        if dict.keys.contains("TrainingType") && dict["TrainingType"] != nil {
            self.trainingType = dict["TrainingType"] as! String
        }
        if dict.keys.contains("ValidationFiles") && dict["ValidationFiles"] != nil {
            self.validationFiles = dict["ValidationFiles"] as! [String]
        }
    }
}

public class CreateFineTuneJobShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var baseModel: String?

    public var hyperParametersShrink: String?

    public var modelName: String?

    public var trainingFilesShrink: String?

    public var trainingType: String?

    public var validationFilesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.baseModel != nil {
            map["BaseModel"] = self.baseModel!
        }
        if self.hyperParametersShrink != nil {
            map["HyperParameters"] = self.hyperParametersShrink!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.trainingFilesShrink != nil {
            map["TrainingFiles"] = self.trainingFilesShrink!
        }
        if self.trainingType != nil {
            map["TrainingType"] = self.trainingType!
        }
        if self.validationFilesShrink != nil {
            map["ValidationFiles"] = self.validationFilesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("BaseModel") && dict["BaseModel"] != nil {
            self.baseModel = dict["BaseModel"] as! String
        }
        if dict.keys.contains("HyperParameters") && dict["HyperParameters"] != nil {
            self.hyperParametersShrink = dict["HyperParameters"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("TrainingFiles") && dict["TrainingFiles"] != nil {
            self.trainingFilesShrink = dict["TrainingFiles"] as! String
        }
        if dict.keys.contains("TrainingType") && dict["TrainingType"] != nil {
            self.trainingType = dict["TrainingType"] as! String
        }
        if dict.keys.contains("ValidationFiles") && dict["ValidationFiles"] != nil {
            self.validationFilesShrink = dict["ValidationFiles"] as! String
        }
    }
}

public class CreateFineTuneJobResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class CreateFineTuneJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFineTuneJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateFineTuneJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceRequest : Tea.TeaModel {
    public var agentKey: String?

    public var model: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            self.model = dict["Model"] as! String
        }
    }
}

public class CreateServiceResponseBody : Tea.TeaModel {
    public var modelServiceId: String?

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
        if self.modelServiceId != nil {
            map["ModelServiceId"] = self.modelServiceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelServiceId") && dict["ModelServiceId"] != nil {
            self.modelServiceId = dict["ModelServiceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTextEmbeddingsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var input: [String]?

    public var textType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.textType != nil {
            map["TextType"] = self.textType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Input") && dict["Input"] != nil {
            self.input = dict["Input"] as! [String]
        }
        if dict.keys.contains("TextType") && dict["TextType"] != nil {
            self.textType = dict["TextType"] as! String
        }
    }
}

public class CreateTextEmbeddingsShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var inputShrink: String?

    public var textType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.inputShrink != nil {
            map["Input"] = self.inputShrink!
        }
        if self.textType != nil {
            map["TextType"] = self.textType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Input") && dict["Input"] != nil {
            self.inputShrink = dict["Input"] as! String
        }
        if dict.keys.contains("TextType") && dict["TextType"] != nil {
            self.textType = dict["TextType"] as! String
        }
    }
}

public class CreateTextEmbeddingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Embeddings : Tea.TeaModel {
            public var embedding: [Double]?

            public var textIndex: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.embedding != nil {
                    map["Embedding"] = self.embedding!
                }
                if self.textIndex != nil {
                    map["TextIndex"] = self.textIndex!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Embedding") && dict["Embedding"] != nil {
                    self.embedding = dict["Embedding"] as! [Double]
                }
                if dict.keys.contains("TextIndex") && dict["TextIndex"] != nil {
                    self.textIndex = dict["TextIndex"] as! Int32
                }
            }
        }
        public var embeddings: [CreateTextEmbeddingsResponseBody.Data.Embeddings]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.embeddings != nil {
                var tmp : [Any] = []
                for k in self.embeddings! {
                    tmp.append(k.toMap())
                }
                map["Embeddings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Embeddings") && dict["Embeddings"] != nil {
                var tmp : [CreateTextEmbeddingsResponseBody.Data.Embeddings] = []
                for v in dict["Embeddings"] as! [Any] {
                    var model = CreateTextEmbeddingsResponseBody.Data.Embeddings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.embeddings = tmp
            }
        }
    }
    public var code: String?

    public var data: CreateTextEmbeddingsResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateTextEmbeddingsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateTextEmbeddingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTextEmbeddingsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTextEmbeddingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTokenRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class CreateTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expiredTime: Int64?

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
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("Token") && dict["Token"] != nil {
                self.token = dict["Token"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateTokenResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTokenResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DelEnterpriseTagRequest : Tea.TeaModel {
    public var agentKey: String?

    public var tagId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! Int64
        }
    }
}

public class DelEnterpriseTagResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMsg: String?

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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DelEnterpriseTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DelEnterpriseTagResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DelEnterpriseTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEnterpriseDataRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
    }
}

public class DeleteEnterpriseDataResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMsg: String?

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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteEnterpriseDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEnterpriseDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteEnterpriseDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFineTuneJobRequest : Tea.TeaModel {
    public var agentKey: String?

    public var jobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class DeleteFineTuneJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteFineTuneJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFineTuneJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteFineTuneJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteServiceRequest : Tea.TeaModel {
    public var agentKey: String?

    public var modelServiceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.modelServiceId != nil {
            map["ModelServiceId"] = self.modelServiceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ModelServiceId") && dict["ModelServiceId"] != nil {
            self.modelServiceId = dict["ModelServiceId"] as! String
        }
    }
}

public class DeleteServiceResponseBody : Tea.TeaModel {
    public var modelServiceId: String?

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
        if self.modelServiceId != nil {
            map["ModelServiceId"] = self.modelServiceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelServiceId") && dict["ModelServiceId"] != nil {
            self.modelServiceId = dict["ModelServiceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFineTuneJobRequest : Tea.TeaModel {
    public var agentKey: String?

    public var jobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class DescribeFineTuneJobResponseBody : Tea.TeaModel {
    public class HyperParameters : Tea.TeaModel {
        public var batchSize: Int32?

        public var epochs: Int32?

        public var learningRate: String?

        public var promptLossWeight: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchSize != nil {
                map["BatchSize"] = self.batchSize!
            }
            if self.epochs != nil {
                map["Epochs"] = self.epochs!
            }
            if self.learningRate != nil {
                map["LearningRate"] = self.learningRate!
            }
            if self.promptLossWeight != nil {
                map["PromptLossWeight"] = self.promptLossWeight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BatchSize") && dict["BatchSize"] != nil {
                self.batchSize = dict["BatchSize"] as! Int32
            }
            if dict.keys.contains("Epochs") && dict["Epochs"] != nil {
                self.epochs = dict["Epochs"] as! Int32
            }
            if dict.keys.contains("LearningRate") && dict["LearningRate"] != nil {
                self.learningRate = dict["LearningRate"] as! String
            }
            if dict.keys.contains("PromptLossWeight") && dict["PromptLossWeight"] != nil {
                self.promptLossWeight = dict["PromptLossWeight"] as! Double
            }
        }
    }
    public var baseModel: String?

    public var fineTunedModel: String?

    public var hyperParameters: DescribeFineTuneJobResponseBody.HyperParameters?

    public var jobId: String?

    public var message: String?

    public var modelName: String?

    public var requestId: String?

    public var status: String?

    public var trainingFiles: [String]?

    public var trainingType: String?

    public var validationFiles: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hyperParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseModel != nil {
            map["BaseModel"] = self.baseModel!
        }
        if self.fineTunedModel != nil {
            map["FineTunedModel"] = self.fineTunedModel!
        }
        if self.hyperParameters != nil {
            map["HyperParameters"] = self.hyperParameters?.toMap()
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.trainingFiles != nil {
            map["TrainingFiles"] = self.trainingFiles!
        }
        if self.trainingType != nil {
            map["TrainingType"] = self.trainingType!
        }
        if self.validationFiles != nil {
            map["ValidationFiles"] = self.validationFiles!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseModel") && dict["BaseModel"] != nil {
            self.baseModel = dict["BaseModel"] as! String
        }
        if dict.keys.contains("FineTunedModel") && dict["FineTunedModel"] != nil {
            self.fineTunedModel = dict["FineTunedModel"] as! String
        }
        if dict.keys.contains("HyperParameters") && dict["HyperParameters"] != nil {
            var model = DescribeFineTuneJobResponseBody.HyperParameters()
            model.fromMap(dict["HyperParameters"] as! [String: Any])
            self.hyperParameters = model
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TrainingFiles") && dict["TrainingFiles"] != nil {
            self.trainingFiles = dict["TrainingFiles"] as! [String]
        }
        if dict.keys.contains("TrainingType") && dict["TrainingType"] != nil {
            self.trainingType = dict["TrainingType"] as! String
        }
        if dict.keys.contains("ValidationFiles") && dict["ValidationFiles"] != nil {
            self.validationFiles = dict["ValidationFiles"] as! [String]
        }
    }
}

public class DescribeFineTuneJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFineTuneJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeFineTuneJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeServiceRequest : Tea.TeaModel {
    public var agentKey: String?

    public var modelServiceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.modelServiceId != nil {
            map["ModelServiceId"] = self.modelServiceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ModelServiceId") && dict["ModelServiceId"] != nil {
            self.modelServiceId = dict["ModelServiceId"] as! String
        }
    }
}

public class DescribeServiceResponseBody : Tea.TeaModel {
    public var appId: String?

    public var modelServiceId: String?

    public var requestId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.modelServiceId != nil {
            map["ModelServiceId"] = self.modelServiceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModelServiceId") && dict["ModelServiceId"] != nil {
            self.modelServiceId = dict["ModelServiceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnterpriseDataByDataIdRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class GetEnterpriseDataByDataIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataId: String?

        public var dataName: String?

        public var dataSize: String?

        public var dataStatus: String?

        public var dataStatusCode: Int32?

        public var dataType: String?

        public var dataTypeCode: Int32?

        public var statusDetail: String?

        public var storeType: String?

        public var tags: String?

        public var uploadTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.dataName != nil {
                map["DataName"] = self.dataName!
            }
            if self.dataSize != nil {
                map["DataSize"] = self.dataSize!
            }
            if self.dataStatus != nil {
                map["DataStatus"] = self.dataStatus!
            }
            if self.dataStatusCode != nil {
                map["DataStatusCode"] = self.dataStatusCode!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.dataTypeCode != nil {
                map["DataTypeCode"] = self.dataTypeCode!
            }
            if self.statusDetail != nil {
                map["StatusDetail"] = self.statusDetail!
            }
            if self.storeType != nil {
                map["StoreType"] = self.storeType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.uploadTime != nil {
                map["UploadTime"] = self.uploadTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("DataName") && dict["DataName"] != nil {
                self.dataName = dict["DataName"] as! String
            }
            if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                self.dataSize = dict["DataSize"] as! String
            }
            if dict.keys.contains("DataStatus") && dict["DataStatus"] != nil {
                self.dataStatus = dict["DataStatus"] as! String
            }
            if dict.keys.contains("DataStatusCode") && dict["DataStatusCode"] != nil {
                self.dataStatusCode = dict["DataStatusCode"] as! Int32
            }
            if dict.keys.contains("DataType") && dict["DataType"] != nil {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("DataTypeCode") && dict["DataTypeCode"] != nil {
                self.dataTypeCode = dict["DataTypeCode"] as! Int32
            }
            if dict.keys.contains("StatusDetail") && dict["StatusDetail"] != nil {
                self.statusDetail = dict["StatusDetail"] as! String
            }
            if dict.keys.contains("StoreType") && dict["StoreType"] != nil {
                self.storeType = dict["StoreType"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                self.tags = dict["Tags"] as! String
            }
            if dict.keys.contains("UploadTime") && dict["UploadTime"] != nil {
                self.uploadTime = dict["UploadTime"] as! String
            }
        }
    }
    public var data: GetEnterpriseDataByDataIdResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetEnterpriseDataByDataIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetEnterpriseDataByDataIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnterpriseDataByDataIdResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetEnterpriseDataByDataIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnterpriseDataChunkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
    }
}

public class GetEnterpriseDataChunkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var text: String?

        public var title: String?

        public var titlePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.titlePath != nil {
                map["TitlePath"] = self.titlePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Text") && dict["Text"] != nil {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("TitlePath") && dict["TitlePath"] != nil {
                self.titlePath = dict["TitlePath"] as! String
            }
        }
    }
    public var data: [GetEnterpriseDataChunkResponseBody.Data]?

    public var errorCode: String?

    public var errorMsg: String?

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
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GetEnterpriseDataChunkResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetEnterpriseDataChunkResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetEnterpriseDataChunkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnterpriseDataChunkResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetEnterpriseDataChunkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnterpriseDataPageImageRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
    }
}

public class GetEnterpriseDataPageImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var height: Int32?

        public var imageUrl: String?

        public var pageId: String?

        public var width: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.pageId != nil {
                map["PageId"] = self.pageId!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Height") && dict["Height"] != nil {
                self.height = dict["Height"] as! Int32
            }
            if dict.keys.contains("ImageUrl") && dict["ImageUrl"] != nil {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("PageId") && dict["PageId"] != nil {
                self.pageId = dict["PageId"] as! String
            }
            if dict.keys.contains("Width") && dict["Width"] != nil {
                self.width = dict["Width"] as! Int32
            }
        }
    }
    public var data: [GetEnterpriseDataPageImageResponseBody.Data]?

    public var errorCode: String?

    public var errorMsg: String?

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
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GetEnterpriseDataPageImageResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetEnterpriseDataPageImageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetEnterpriseDataPageImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnterpriseDataPageImageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetEnterpriseDataPageImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnterpriseDataParseResultRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
    }
}

public class GetEnterpriseDataParseResultResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetEnterpriseDataParseResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnterpriseDataParseResultResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetEnterpriseDataParseResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFileStoreUploadPolicyRequest : Tea.TeaModel {
    public var agentKey: String?

    public var fileName: String?

    public var fileStoreId: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileStoreId != nil {
            map["FileStoreId"] = self.fileStoreId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("FileStoreId") && dict["FileStoreId"] != nil {
            self.fileStoreId = dict["FileStoreId"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetFileStoreUploadPolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessId: String?

        public var dir: String?

        public var expire: String?

        public var host: String?

        public var key: String?

        public var policy: String?

        public var securityToken: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.dir != nil {
                map["Dir"] = self.dir!
            }
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("Dir") && dict["Dir"] != nil {
                self.dir = dict["Dir"] as! String
            }
            if dict.keys.contains("Expire") && dict["Expire"] != nil {
                self.expire = dict["Expire"] as! String
            }
            if dict.keys.contains("Host") && dict["Host"] != nil {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                self.securityToken = dict["SecurityToken"] as! String
            }
            if dict.keys.contains("Signature") && dict["Signature"] != nil {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var data: GetFileStoreUploadPolicyResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetFileStoreUploadPolicyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetFileStoreUploadPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileStoreUploadPolicyResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetFileStoreUploadPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetImportTaskResultRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetImportTaskResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Details : Tea.TeaModel {
            public var dataId: String?

            public var dataName: String?

            public var errorMsg: String?

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
                if self.dataId != nil {
                    map["DataId"] = self.dataId!
                }
                if self.dataName != nil {
                    map["DataName"] = self.dataName!
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataId") && dict["DataId"] != nil {
                    self.dataId = dict["DataId"] as! String
                }
                if dict.keys.contains("DataName") && dict["DataName"] != nil {
                    self.dataName = dict["DataName"] as! String
                }
                if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
                    self.errorMsg = dict["ErrorMsg"] as! String
                }
                if dict.keys.contains("Success") && dict["Success"] != nil {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var details: [GetImportTaskResultResponseBody.Data.Details]?

        public var taskId: String?

        public var taskStatus: Int32?

        public var taskStatusText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.details != nil {
                var tmp : [Any] = []
                for k in self.details! {
                    tmp.append(k.toMap())
                }
                map["Details"] = tmp
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskStatusText != nil {
                map["TaskStatusText"] = self.taskStatusText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Details") && dict["Details"] != nil {
                var tmp : [GetImportTaskResultResponseBody.Data.Details] = []
                for v in dict["Details"] as! [Any] {
                    var model = GetImportTaskResultResponseBody.Data.Details()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.details = tmp
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
            if dict.keys.contains("TaskStatusText") && dict["TaskStatusText"] != nil {
                self.taskStatusText = dict["TaskStatusText"] as! String
            }
        }
    }
    public var data: GetImportTaskResultResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetImportTaskResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetImportTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImportTaskResultResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetImportTaskResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPromptRequest : Tea.TeaModel {
    public var agentKey: String?

    public var promptId: String?

    public var vars: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.promptId != nil {
            map["PromptId"] = self.promptId!
        }
        if self.vars != nil {
            map["Vars"] = self.vars!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PromptId") && dict["PromptId"] != nil {
            self.promptId = dict["PromptId"] as! String
        }
        if dict.keys.contains("Vars") && dict["Vars"] != nil {
            self.vars = dict["Vars"] as! String
        }
    }
}

public class GetPromptResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var promptContent: String?

        public var promptId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.promptContent != nil {
                map["PromptContent"] = self.promptContent!
            }
            if self.promptId != nil {
                map["PromptId"] = self.promptId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PromptContent") && dict["PromptContent"] != nil {
                self.promptContent = dict["PromptContent"] as! String
            }
            if dict.keys.contains("PromptId") && dict["PromptId"] != nil {
                self.promptId = dict["PromptId"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetPromptResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetPromptResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPromptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPromptResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetPromptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetText2ImageJobRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetText2ImageJobResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var code: String?

        public var message: String?

        public var URL: String?

        public override init() {
            super.init()
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
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("URL") && dict["URL"] != nil {
                self.URL = dict["URL"] as! String
            }
        }
    }
    public class TaskMetrics : Tea.TeaModel {
        public var failed: Int32?

        public var succeeded: Int32?

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
            if self.failed != nil {
                map["Failed"] = self.failed!
            }
            if self.succeeded != nil {
                map["Succeeded"] = self.succeeded!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Failed") && dict["Failed"] != nil {
                self.failed = dict["Failed"] as! Int32
            }
            if dict.keys.contains("Succeeded") && dict["Succeeded"] != nil {
                self.succeeded = dict["Succeeded"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var imageCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageCount != nil {
                map["ImageCount"] = self.imageCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageCount") && dict["ImageCount"] != nil {
                self.imageCount = dict["ImageCount"] as! Int32
            }
        }
    }
    public var images: [GetText2ImageJobResponseBody.Images]?

    public var requestId: String?

    public var taskId: String?

    public var taskMetrics: GetText2ImageJobResponseBody.TaskMetrics?

    public var taskStatus: String?

    public var usage: [GetText2ImageJobResponseBody.Usage]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskMetrics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskMetrics != nil {
            map["TaskMetrics"] = self.taskMetrics?.toMap()
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.usage != nil {
            var tmp : [Any] = []
            for k in self.usage! {
                tmp.append(k.toMap())
            }
            map["Usage"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Images") && dict["Images"] != nil {
            var tmp : [GetText2ImageJobResponseBody.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = GetText2ImageJobResponseBody.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskMetrics") && dict["TaskMetrics"] != nil {
            var model = GetText2ImageJobResponseBody.TaskMetrics()
            model.fromMap(dict["TaskMetrics"] as! [String: Any])
            self.taskMetrics = model
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("Usage") && dict["Usage"] != nil {
            var tmp : [GetText2ImageJobResponseBody.Usage] = []
            for v in dict["Usage"] as! [Any] {
                var model = GetText2ImageJobResponseBody.Usage()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.usage = tmp
        }
    }
}

public class GetText2ImageJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetText2ImageJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetText2ImageJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportEnterpriseDocumentRequest : Tea.TeaModel {
    public class DocumentList : Tea.TeaModel {
        public var bizId: String?

        public var fileCanDownload: Bool?

        public var fileLink: String?

        public var fileName: String?

        public var filePreviewLink: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.fileCanDownload != nil {
                map["FileCanDownload"] = self.fileCanDownload!
            }
            if self.fileLink != nil {
                map["FileLink"] = self.fileLink!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.filePreviewLink != nil {
                map["FilePreviewLink"] = self.filePreviewLink!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizId") && dict["BizId"] != nil {
                self.bizId = dict["BizId"] as! String
            }
            if dict.keys.contains("FileCanDownload") && dict["FileCanDownload"] != nil {
                self.fileCanDownload = dict["FileCanDownload"] as! Bool
            }
            if dict.keys.contains("FileLink") && dict["FileLink"] != nil {
                self.fileLink = dict["FileLink"] as! String
            }
            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FilePreviewLink") && dict["FilePreviewLink"] != nil {
                self.filePreviewLink = dict["FilePreviewLink"] as! String
            }
        }
    }
    public var agentKey: String?

    public var dataType: Int32?

    public var documentList: [ImportEnterpriseDocumentRequest.DocumentList]?

    public var ownerId: Int64?

    public var storeId: Int64?

    public var tags: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.documentList != nil {
            var tmp : [Any] = []
            for k in self.documentList! {
                tmp.append(k.toMap())
            }
            map["DocumentList"] = tmp
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
            self.dataType = dict["DataType"] as! Int32
        }
        if dict.keys.contains("DocumentList") && dict["DocumentList"] != nil {
            var tmp : [ImportEnterpriseDocumentRequest.DocumentList] = []
            for v in dict["DocumentList"] as! [Any] {
                var model = ImportEnterpriseDocumentRequest.DocumentList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.documentList = tmp
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! Int64
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String]
        }
    }
}

public class ImportEnterpriseDocumentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataType: Int32?

    public var documentListShrink: String?

    public var ownerId: Int64?

    public var storeId: Int64?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.documentListShrink != nil {
            map["DocumentList"] = self.documentListShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
            self.dataType = dict["DataType"] as! Int32
        }
        if dict.keys.contains("DocumentList") && dict["DocumentList"] != nil {
            self.documentListShrink = dict["DocumentList"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! Int64
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class ImportEnterpriseDocumentResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ImportEnterpriseDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportEnterpriseDocumentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ImportEnterpriseDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportUserDocumentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var fileName: String?

    public var fileStoreId: Int64?

    public var ossPath: String?

    public var storeId: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileStoreId != nil {
            map["FileStoreId"] = self.fileStoreId!
        }
        if self.ossPath != nil {
            map["OssPath"] = self.ossPath!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("FileStoreId") && dict["FileStoreId"] != nil {
            self.fileStoreId = dict["FileStoreId"] as! Int64
        }
        if dict.keys.contains("OssPath") && dict["OssPath"] != nil {
            self.ossPath = dict["OssPath"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ImportUserDocumentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataId: String?

        public var dataStatus: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.dataStatus != nil {
                map["DataStatus"] = self.dataStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("DataStatus") && dict["DataStatus"] != nil {
                self.dataStatus = dict["DataStatus"] as! Int64
            }
        }
    }
    public var data: ImportUserDocumentResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ImportUserDocumentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ImportUserDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportUserDocumentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ImportUserDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFineTuneJobsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var pageNo: Int32?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListFineTuneJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public class HyperParameters : Tea.TeaModel {
            public var batchSize: Int32?

            public var epochs: Int32?

            public var learningRate: String?

            public var promptLossWeight: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.batchSize != nil {
                    map["BatchSize"] = self.batchSize!
                }
                if self.epochs != nil {
                    map["Epochs"] = self.epochs!
                }
                if self.learningRate != nil {
                    map["LearningRate"] = self.learningRate!
                }
                if self.promptLossWeight != nil {
                    map["PromptLossWeight"] = self.promptLossWeight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BatchSize") && dict["BatchSize"] != nil {
                    self.batchSize = dict["BatchSize"] as! Int32
                }
                if dict.keys.contains("Epochs") && dict["Epochs"] != nil {
                    self.epochs = dict["Epochs"] as! Int32
                }
                if dict.keys.contains("LearningRate") && dict["LearningRate"] != nil {
                    self.learningRate = dict["LearningRate"] as! String
                }
                if dict.keys.contains("PromptLossWeight") && dict["PromptLossWeight"] != nil {
                    self.promptLossWeight = dict["PromptLossWeight"] as! Double
                }
            }
        }
        public var baseModel: String?

        public var fineTunedModel: String?

        public var hyperParameters: ListFineTuneJobsResponseBody.Jobs.HyperParameters?

        public var jobId: String?

        public var message: String?

        public var modelName: String?

        public var status: String?

        public var trainingFiles: [String]?

        public var trainingType: String?

        public var validationFiles: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.hyperParameters?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.baseModel != nil {
                map["BaseModel"] = self.baseModel!
            }
            if self.fineTunedModel != nil {
                map["FineTunedModel"] = self.fineTunedModel!
            }
            if self.hyperParameters != nil {
                map["HyperParameters"] = self.hyperParameters?.toMap()
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.trainingFiles != nil {
                map["TrainingFiles"] = self.trainingFiles!
            }
            if self.trainingType != nil {
                map["TrainingType"] = self.trainingType!
            }
            if self.validationFiles != nil {
                map["ValidationFiles"] = self.validationFiles!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BaseModel") && dict["BaseModel"] != nil {
                self.baseModel = dict["BaseModel"] as! String
            }
            if dict.keys.contains("FineTunedModel") && dict["FineTunedModel"] != nil {
                self.fineTunedModel = dict["FineTunedModel"] as! String
            }
            if dict.keys.contains("HyperParameters") && dict["HyperParameters"] != nil {
                var model = ListFineTuneJobsResponseBody.Jobs.HyperParameters()
                model.fromMap(dict["HyperParameters"] as! [String: Any])
                self.hyperParameters = model
            }
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TrainingFiles") && dict["TrainingFiles"] != nil {
                self.trainingFiles = dict["TrainingFiles"] as! [String]
            }
            if dict.keys.contains("TrainingType") && dict["TrainingType"] != nil {
                self.trainingType = dict["TrainingType"] as! String
            }
            if dict.keys.contains("ValidationFiles") && dict["ValidationFiles"] != nil {
                self.validationFiles = dict["ValidationFiles"] as! [String]
            }
        }
    }
    public var jobs: [ListFineTuneJobsResponseBody.Jobs]?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["Jobs"] = tmp
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Jobs") && dict["Jobs"] != nil {
            var tmp : [ListFineTuneJobsResponseBody.Jobs] = []
            for v in dict["Jobs"] as! [Any] {
                var model = ListFineTuneJobsResponseBody.Jobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobs = tmp
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListFineTuneJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFineTuneJobsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListFineTuneJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServicesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var pageNo: Int32?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListServicesResponseBody : Tea.TeaModel {
    public class ModelServices : Tea.TeaModel {
        public var appId: String?

        public var modelServiceId: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.modelServiceId != nil {
                map["ModelServiceId"] = self.modelServiceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ModelServiceId") && dict["ModelServiceId"] != nil {
                self.modelServiceId = dict["ModelServiceId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var modelServices: [ListServicesResponseBody.ModelServices]?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.modelServices != nil {
            var tmp : [Any] = []
            for k in self.modelServices! {
                tmp.append(k.toMap())
            }
            map["ModelServices"] = tmp
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelServices") && dict["ModelServices"] != nil {
            var tmp : [ListServicesResponseBody.ModelServices] = []
            for v in dict["ModelServices"] as! [Any] {
                var model = ListServicesResponseBody.ModelServices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.modelServices = tmp
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServicesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryEnterpriseDataListRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataName: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var storeType: String?

    public var tags: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataName != nil {
            map["DataName"] = self.dataName!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.storeType != nil {
            map["StoreType"] = self.storeType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataName") && dict["DataName"] != nil {
            self.dataName = dict["DataName"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StoreType") && dict["StoreType"] != nil {
            self.storeType = dict["StoreType"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String]
        }
    }
}

public class QueryEnterpriseDataListShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataName: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var storeType: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataName != nil {
            map["DataName"] = self.dataName!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.storeType != nil {
            map["StoreType"] = self.storeType!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataName") && dict["DataName"] != nil {
            self.dataName = dict["DataName"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StoreType") && dict["StoreType"] != nil {
            self.storeType = dict["StoreType"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class QueryEnterpriseDataListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var dataId: String?

            public var dataName: String?

            public var dataSize: String?

            public var dataStatus: String?

            public var dataStatusCode: Int32?

            public var dataType: String?

            public var dataTypeCode: Int32?

            public var statusDetail: String?

            public var storeType: String?

            public var tags: String?

            public var uploadTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataId != nil {
                    map["DataId"] = self.dataId!
                }
                if self.dataName != nil {
                    map["DataName"] = self.dataName!
                }
                if self.dataSize != nil {
                    map["DataSize"] = self.dataSize!
                }
                if self.dataStatus != nil {
                    map["DataStatus"] = self.dataStatus!
                }
                if self.dataStatusCode != nil {
                    map["DataStatusCode"] = self.dataStatusCode!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.dataTypeCode != nil {
                    map["DataTypeCode"] = self.dataTypeCode!
                }
                if self.statusDetail != nil {
                    map["StatusDetail"] = self.statusDetail!
                }
                if self.storeType != nil {
                    map["StoreType"] = self.storeType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                if self.uploadTime != nil {
                    map["UploadTime"] = self.uploadTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataId") && dict["DataId"] != nil {
                    self.dataId = dict["DataId"] as! String
                }
                if dict.keys.contains("DataName") && dict["DataName"] != nil {
                    self.dataName = dict["DataName"] as! String
                }
                if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                    self.dataSize = dict["DataSize"] as! String
                }
                if dict.keys.contains("DataStatus") && dict["DataStatus"] != nil {
                    self.dataStatus = dict["DataStatus"] as! String
                }
                if dict.keys.contains("DataStatusCode") && dict["DataStatusCode"] != nil {
                    self.dataStatusCode = dict["DataStatusCode"] as! Int32
                }
                if dict.keys.contains("DataType") && dict["DataType"] != nil {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("DataTypeCode") && dict["DataTypeCode"] != nil {
                    self.dataTypeCode = dict["DataTypeCode"] as! Int32
                }
                if dict.keys.contains("StatusDetail") && dict["StatusDetail"] != nil {
                    self.statusDetail = dict["StatusDetail"] as! String
                }
                if dict.keys.contains("StoreType") && dict["StoreType"] != nil {
                    self.storeType = dict["StoreType"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    self.tags = dict["Tags"] as! String
                }
                if dict.keys.contains("UploadTime") && dict["UploadTime"] != nil {
                    self.uploadTime = dict["UploadTime"] as! String
                }
            }
        }
        public var list: [QueryEnterpriseDataListResponseBody.Data.List]?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryEnterpriseDataListResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryEnterpriseDataListResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var data: QueryEnterpriseDataListResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryEnterpriseDataListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryEnterpriseDataListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEnterpriseDataListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryEnterpriseDataListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryEnterpriseDataTagRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
    }
}

public class QueryEnterpriseDataTagResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataId: String?

        public var tagId: Int64?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! Int64
            }
            if dict.keys.contains("TagName") && dict["TagName"] != nil {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var data: [QueryEnterpriseDataTagResponseBody.Data]?

    public var errorCode: String?

    public var errorMsg: String?

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
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryEnterpriseDataTagResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryEnterpriseDataTagResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryEnterpriseDataTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEnterpriseDataTagResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryEnterpriseDataTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryEnterpriseTagListRequest : Tea.TeaModel {
    public var agentKey: String?

    public var pageNo: Int32?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryEnterpriseTagListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var tagId: Int64?

            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagId != nil {
                    map["TagId"] = self.tagId!
                }
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagId") && dict["TagId"] != nil {
                    self.tagId = dict["TagId"] as! Int64
                }
                if dict.keys.contains("TagName") && dict["TagName"] != nil {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var list: [QueryEnterpriseTagListResponseBody.Data.List]?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryEnterpriseTagListResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryEnterpriseTagListResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var data: QueryEnterpriseTagListResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryEnterpriseTagListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryEnterpriseTagListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEnterpriseTagListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryEnterpriseTagListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryUserDocumentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class QueryUserDocumentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataId: String?

        public var dataStatus: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.dataStatus != nil {
                map["DataStatus"] = self.dataStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("DataStatus") && dict["DataStatus"] != nil {
                self.dataStatus = dict["DataStatus"] as! Int64
            }
        }
    }
    public var data: QueryUserDocumentResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryUserDocumentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryUserDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserDocumentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryUserDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchEnterpriseDataRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataIdList: [String]?

    public var enableRank: Bool?

    public var ownerId: Int64?

    public var query: String?

    public var storeId: Int64?

    public var tagIdList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataIdList != nil {
            map["DataIdList"] = self.dataIdList!
        }
        if self.enableRank != nil {
            map["EnableRank"] = self.enableRank!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.tagIdList != nil {
            map["TagIdList"] = self.tagIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataIdList") && dict["DataIdList"] != nil {
            self.dataIdList = dict["DataIdList"] as! [String]
        }
        if dict.keys.contains("EnableRank") && dict["EnableRank"] != nil {
            self.enableRank = dict["EnableRank"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! Int64
        }
        if dict.keys.contains("TagIdList") && dict["TagIdList"] != nil {
            self.tagIdList = dict["TagIdList"] as! [Int64]
        }
    }
}

public class SearchEnterpriseDataShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataIdListShrink: String?

    public var enableRank: Bool?

    public var ownerId: Int64?

    public var query: String?

    public var storeId: Int64?

    public var tagIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataIdListShrink != nil {
            map["DataIdList"] = self.dataIdListShrink!
        }
        if self.enableRank != nil {
            map["EnableRank"] = self.enableRank!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.tagIdListShrink != nil {
            map["TagIdList"] = self.tagIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataIdList") && dict["DataIdList"] != nil {
            self.dataIdListShrink = dict["DataIdList"] as! String
        }
        if dict.keys.contains("EnableRank") && dict["EnableRank"] != nil {
            self.enableRank = dict["EnableRank"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! Int64
        }
        if dict.keys.contains("TagIdList") && dict["TagIdList"] != nil {
            self.tagIdListShrink = dict["TagIdList"] as! String
        }
    }
}

public class SearchEnterpriseDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataId: String?

        public var dataName: String?

        public var score: String?

        public var source: String?

        public var text: String?

        public var title: String?

        public var titlePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.dataName != nil {
                map["DataName"] = self.dataName!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.titlePath != nil {
                map["TitlePath"] = self.titlePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("DataName") && dict["DataName"] != nil {
                self.dataName = dict["DataName"] as! String
            }
            if dict.keys.contains("Score") && dict["Score"] != nil {
                self.score = dict["Score"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Text") && dict["Text"] != nil {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("TitlePath") && dict["TitlePath"] != nil {
                self.titlePath = dict["TitlePath"] as! String
            }
        }
    }
    public var data: [SearchEnterpriseDataResponseBody.Data]?

    public var errorCode: String?

    public var errorMsg: String?

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
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [SearchEnterpriseDataResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = SearchEnterpriseDataResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SearchEnterpriseDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchEnterpriseDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchEnterpriseDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitText2ImageJobRequest : Tea.TeaModel {
    public var agentKey: String?

    public var appId: String?

    public var n: Int32?

    public var negativePrompt: String?

    public var prompt: String?

    public var seed: Int32?

    public var size: String?

    public var style: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.n != nil {
            map["N"] = self.n!
        }
        if self.negativePrompt != nil {
            map["NegativePrompt"] = self.negativePrompt!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.seed != nil {
            map["Seed"] = self.seed!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.style != nil {
            map["Style"] = self.style!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("N") && dict["N"] != nil {
            self.n = dict["N"] as! Int32
        }
        if dict.keys.contains("NegativePrompt") && dict["NegativePrompt"] != nil {
            self.negativePrompt = dict["NegativePrompt"] as! String
        }
        if dict.keys.contains("Prompt") && dict["Prompt"] != nil {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("Seed") && dict["Seed"] != nil {
            self.seed = dict["Seed"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! String
        }
        if dict.keys.contains("Style") && dict["Style"] != nil {
            self.style = dict["Style"] as! String
        }
    }
}

public class SubmitText2ImageJobResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskId: String?

    public var taskStatus: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! String
        }
    }
}

public class SubmitText2ImageJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitText2ImageJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitText2ImageJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEnterpriseDataInfoRequest : Tea.TeaModel {
    public var agentKey: String?

    public var bizId: String?

    public var dataId: String?

    public var dataName: String?

    public var filePreviewLink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        if self.dataName != nil {
            map["DataName"] = self.dataName!
        }
        if self.filePreviewLink != nil {
            map["FilePreviewLink"] = self.filePreviewLink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
        if dict.keys.contains("DataName") && dict["DataName"] != nil {
            self.dataName = dict["DataName"] as! String
        }
        if dict.keys.contains("FilePreviewLink") && dict["FilePreviewLink"] != nil {
            self.filePreviewLink = dict["FilePreviewLink"] as! String
        }
    }
}

public class UpdateEnterpriseDataInfoResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMsg: String?

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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateEnterpriseDataInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEnterpriseDataInfoResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateEnterpriseDataInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEnterpriseDataTagRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataId: String?

    public var tags: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [Int64]
        }
    }
}

public class UpdateEnterpriseDataTagShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dataId: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class UpdateEnterpriseDataTagResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMsg: String?

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
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateEnterpriseDataTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEnterpriseDataTagResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateEnterpriseDataTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEnterpriseTagRequest : Tea.TeaModel {
    public var agentKey: String?

    public var tagId: Int64?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! Int64
        }
        if dict.keys.contains("TagName") && dict["TagName"] != nil {
            self.tagName = dict["TagName"] as! String
        }
    }
}

public class UpdateEnterpriseTagResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var tagId: Int64?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! Int64
            }
            if dict.keys.contains("TagName") && dict["TagName"] != nil {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var data: UpdateEnterpriseTagResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateEnterpriseTagResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateEnterpriseTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEnterpriseTagResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateEnterpriseTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
