import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class OpenApiMultiResponse : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InferenceJobList : Tea.TeaModel {
            public var createTime: String?

            public var id: String?

            public var jobStatus: String?

            public var jobTrainProgress: Double?

            public var modelId: String?

            public var promptId: String?

            public var resultImageUrl: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.jobStatus != nil {
                    map["jobStatus"] = self.jobStatus!
                }
                if self.jobTrainProgress != nil {
                    map["jobTrainProgress"] = self.jobTrainProgress!
                }
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.promptId != nil {
                    map["promptId"] = self.promptId!
                }
                if self.resultImageUrl != nil {
                    map["resultImageUrl"] = self.resultImageUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("jobStatus") {
                    self.jobStatus = dict["jobStatus"] as! String
                }
                if dict.keys.contains("jobTrainProgress") {
                    self.jobTrainProgress = dict["jobTrainProgress"] as! Double
                }
                if dict.keys.contains("modelId") {
                    self.modelId = dict["modelId"] as! String
                }
                if dict.keys.contains("promptId") {
                    self.promptId = dict["promptId"] as! String
                }
                if dict.keys.contains("resultImageUrl") {
                    self.resultImageUrl = dict["resultImageUrl"] as! [String]
                }
            }
        }
        public var createTime: String?

        public var id: String?

        public var imageUrl: [String]?

        public var inferenceImageCount: Int32?

        public var inferenceJobList: [OpenApiMultiResponse.Data.InferenceJobList]?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var name: String?

        public var objectType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.imageUrl != nil {
                map["imageUrl"] = self.imageUrl!
            }
            if self.inferenceImageCount != nil {
                map["inferenceImageCount"] = self.inferenceImageCount!
            }
            if self.inferenceJobList != nil {
                var tmp : [Any] = []
                for k in self.inferenceJobList! {
                    tmp.append(k.toMap())
                }
                map["inferenceJobList"] = tmp
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("imageUrl") {
                self.imageUrl = dict["imageUrl"] as! [String]
            }
            if dict.keys.contains("inferenceImageCount") {
                self.inferenceImageCount = dict["inferenceImageCount"] as! Int32
            }
            if dict.keys.contains("inferenceJobList") {
                var tmp : [OpenApiMultiResponse.Data.InferenceJobList] = []
                for v in dict["inferenceJobList"] as! [Any] {
                    var model = OpenApiMultiResponse.Data.InferenceJobList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inferenceJobList = tmp
            }
            if dict.keys.contains("jobStatus") {
                self.jobStatus = dict["jobStatus"] as! String
            }
            if dict.keys.contains("jobTrainProgress") {
                self.jobTrainProgress = dict["jobTrainProgress"] as! Double
            }
            if dict.keys.contains("modelId") {
                self.modelId = dict["modelId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("objectType") {
                self.objectType = dict["objectType"] as! String
            }
        }
    }
    public var data: [OpenApiMultiResponse.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var tmp : [OpenApiMultiResponse.Data] = []
            for v in dict["data"] as! [Any] {
                var model = OpenApiMultiResponse.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class OpenApiSingleResponse : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var modelTrainStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelTrainStatus != nil {
                map["modelTrainStatus"] = self.modelTrainStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("modelTrainStatus") {
                self.modelTrainStatus = dict["modelTrainStatus"] as! String
            }
        }
    }
    public var data: OpenApiSingleResponse.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = OpenApiSingleResponse.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class Personalizedtxt2imgAddInferenceJobCmd : Tea.TeaModel {
    public var imageNumber: Int32?

    public var modelId: String?

    public var prompt: String?

    public var seed: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNumber != nil {
            map["imageNumber"] = self.imageNumber!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.seed != nil {
            map["seed"] = self.seed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("imageNumber") {
            self.imageNumber = dict["imageNumber"] as! Int32
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("prompt") {
            self.prompt = dict["prompt"] as! String
        }
        if dict.keys.contains("seed") {
            self.seed = dict["seed"] as! Int32
        }
    }
}

public class Personalizedtxt2imgAddModelTrainJobCmd : Tea.TeaModel {
    public var imageUrl: [String]?

    public var name: String?

    public var objectType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.objectType != nil {
            map["objectType"] = self.objectType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("imageUrl") {
            self.imageUrl = dict["imageUrl"] as! [String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("objectType") {
            self.objectType = dict["objectType"] as! String
        }
    }
}

public class Personalizedtxt2imgInferenceJobInfoDTO : Tea.TeaModel {
    public var createUserId: String?

    public var id: String?

    public var jobStatus: String?

    public var modelId: String?

    public var resultImageUrl: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createUserId != nil {
            map["createUserId"] = self.createUserId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.jobStatus != nil {
            map["jobStatus"] = self.jobStatus!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.resultImageUrl != nil {
            map["resultImageUrl"] = self.resultImageUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createUserId") {
            self.createUserId = dict["createUserId"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("jobStatus") {
            self.jobStatus = dict["jobStatus"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("resultImageUrl") {
            self.resultImageUrl = dict["resultImageUrl"] as! [String]
        }
    }
}

public class Personalizedtxt2imgModelTrainJobInfoDTO : Tea.TeaModel {
    public var createTime: String?

    public var createUserId: String?

    public var imageUrl: [String]?

    public var inferenceJobList: [Personalizedtxt2imgInferenceJobInfoDTO]?

    public var jobStatus: String?

    public var name: String?

    public var objectType: String?

    public var id: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.inferenceJobList != nil {
            var tmp : [Any] = []
            for k in self.inferenceJobList! {
                tmp.append(k.toMap())
            }
            map["InferenceJobList"] = tmp
        }
        if self.jobStatus != nil {
            map["JobStatus"] = self.jobStatus!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! [String]
        }
        if dict.keys.contains("InferenceJobList") {
            var tmp : [Personalizedtxt2imgInferenceJobInfoDTO] = []
            for v in dict["InferenceJobList"] as! [Any] {
                var model = Personalizedtxt2imgInferenceJobInfoDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.inferenceJobList = tmp
        }
        if dict.keys.contains("JobStatus") {
            self.jobStatus = dict["JobStatus"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
    }
}

public class AITeacherExpansionPracticeTaskGenerateRequest : Tea.TeaModel {
    public var grade: String?

    public var keySentences: [String]?

    public var keyWords: [String]?

    public var learningObject: String?

    public var textContent: String?

    public var textbook: String?

    public var topic: String?

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
        if self.grade != nil {
            map["grade"] = self.grade!
        }
        if self.keySentences != nil {
            map["keySentences"] = self.keySentences!
        }
        if self.keyWords != nil {
            map["keyWords"] = self.keyWords!
        }
        if self.learningObject != nil {
            map["learningObject"] = self.learningObject!
        }
        if self.textContent != nil {
            map["textContent"] = self.textContent!
        }
        if self.textbook != nil {
            map["textbook"] = self.textbook!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("grade") {
            self.grade = dict["grade"] as! String
        }
        if dict.keys.contains("keySentences") {
            self.keySentences = dict["keySentences"] as! [String]
        }
        if dict.keys.contains("keyWords") {
            self.keyWords = dict["keyWords"] as! [String]
        }
        if dict.keys.contains("learningObject") {
            self.learningObject = dict["learningObject"] as! String
        }
        if dict.keys.contains("textContent") {
            self.textContent = dict["textContent"] as! String
        }
        if dict.keys.contains("textbook") {
            self.textbook = dict["textbook"] as! String
        }
        if dict.keys.contains("topic") {
            self.topic = dict["topic"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class AITeacherExpansionPracticeTaskGenerateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RoleSet : Tea.TeaModel {
            public var assistant: String?

            public var user: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assistant != nil {
                    map["assistant"] = self.assistant!
                }
                if self.user != nil {
                    map["user"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("assistant") {
                    self.assistant = dict["assistant"] as! String
                }
                if dict.keys.contains("user") {
                    self.user = dict["user"] as! String
                }
            }
        }
        public class TaskContent : Tea.TeaModel {
            public var assistant: String?

            public var user: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assistant != nil {
                    map["assistant"] = self.assistant!
                }
                if self.user != nil {
                    map["user"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("assistant") {
                    self.assistant = dict["assistant"] as! String
                }
                if dict.keys.contains("user") {
                    self.user = dict["user"] as! String
                }
            }
        }
        public var backgroundDescription: String?

        public var roleSet: AITeacherExpansionPracticeTaskGenerateResponseBody.Data.RoleSet?

        public var startSentence: String?

        public var taskContent: [AITeacherExpansionPracticeTaskGenerateResponseBody.Data.TaskContent]?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.roleSet?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backgroundDescription != nil {
                map["backgroundDescription"] = self.backgroundDescription!
            }
            if self.roleSet != nil {
                map["roleSet"] = self.roleSet?.toMap()
            }
            if self.startSentence != nil {
                map["startSentence"] = self.startSentence!
            }
            if self.taskContent != nil {
                var tmp : [Any] = []
                for k in self.taskContent! {
                    tmp.append(k.toMap())
                }
                map["taskContent"] = tmp
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("backgroundDescription") {
                self.backgroundDescription = dict["backgroundDescription"] as! String
            }
            if dict.keys.contains("roleSet") {
                var model = AITeacherExpansionPracticeTaskGenerateResponseBody.Data.RoleSet()
                model.fromMap(dict["roleSet"] as! [String: Any])
                self.roleSet = model
            }
            if dict.keys.contains("startSentence") {
                self.startSentence = dict["startSentence"] as! String
            }
            if dict.keys.contains("taskContent") {
                var tmp : [AITeacherExpansionPracticeTaskGenerateResponseBody.Data.TaskContent] = []
                for v in dict["taskContent"] as! [Any] {
                    var model = AITeacherExpansionPracticeTaskGenerateResponseBody.Data.TaskContent()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskContent = tmp
            }
            if dict.keys.contains("taskType") {
                self.taskType = dict["taskType"] as! String
            }
        }
    }
    public var data: AITeacherExpansionPracticeTaskGenerateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = AITeacherExpansionPracticeTaskGenerateResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class AITeacherExpansionPracticeTaskGenerateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AITeacherExpansionPracticeTaskGenerateResponseBody?

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
            var model = AITeacherExpansionPracticeTaskGenerateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AITeacherSyncPracticeTaskGenerateRequest : Tea.TeaModel {
    public var grade: String?

    public var keySentences: [String]?

    public var keyWords: [String]?

    public var learningObject: String?

    public var textContent: String?

    public var textbook: String?

    public var topic: String?

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
        if self.grade != nil {
            map["grade"] = self.grade!
        }
        if self.keySentences != nil {
            map["keySentences"] = self.keySentences!
        }
        if self.keyWords != nil {
            map["keyWords"] = self.keyWords!
        }
        if self.learningObject != nil {
            map["learningObject"] = self.learningObject!
        }
        if self.textContent != nil {
            map["textContent"] = self.textContent!
        }
        if self.textbook != nil {
            map["textbook"] = self.textbook!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("grade") {
            self.grade = dict["grade"] as! String
        }
        if dict.keys.contains("keySentences") {
            self.keySentences = dict["keySentences"] as! [String]
        }
        if dict.keys.contains("keyWords") {
            self.keyWords = dict["keyWords"] as! [String]
        }
        if dict.keys.contains("learningObject") {
            self.learningObject = dict["learningObject"] as! String
        }
        if dict.keys.contains("textContent") {
            self.textContent = dict["textContent"] as! String
        }
        if dict.keys.contains("textbook") {
            self.textbook = dict["textbook"] as! String
        }
        if dict.keys.contains("topic") {
            self.topic = dict["topic"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class AITeacherSyncPracticeTaskGenerateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskContent : Tea.TeaModel {
            public var assistant: String?

            public var user: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assistant != nil {
                    map["assistant"] = self.assistant!
                }
                if self.user != nil {
                    map["user"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("assistant") {
                    self.assistant = dict["assistant"] as! String
                }
                if dict.keys.contains("user") {
                    self.user = dict["user"] as! String
                }
            }
        }
        public var taskContent: [AITeacherSyncPracticeTaskGenerateResponseBody.Data.TaskContent]?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskContent != nil {
                var tmp : [Any] = []
                for k in self.taskContent! {
                    tmp.append(k.toMap())
                }
                map["taskContent"] = tmp
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("taskContent") {
                var tmp : [AITeacherSyncPracticeTaskGenerateResponseBody.Data.TaskContent] = []
                for v in dict["taskContent"] as! [Any] {
                    var model = AITeacherSyncPracticeTaskGenerateResponseBody.Data.TaskContent()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskContent = tmp
            }
            if dict.keys.contains("taskType") {
                self.taskType = dict["taskType"] as! String
            }
        }
    }
    public var data: AITeacherSyncPracticeTaskGenerateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = AITeacherSyncPracticeTaskGenerateResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class AITeacherSyncPracticeTaskGenerateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AITeacherSyncPracticeTaskGenerateResponseBody?

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
            var model = AITeacherSyncPracticeTaskGenerateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var freeConcurrencyCount: Int32?

        public var freeCount: Int32?

        public var serviceCode: String?

        public var serviceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.freeConcurrencyCount != nil {
                map["FreeConcurrencyCount"] = self.freeConcurrencyCount!
            }
            if self.freeCount != nil {
                map["FreeCount"] = self.freeCount!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FreeConcurrencyCount") {
                self.freeConcurrencyCount = dict["FreeConcurrencyCount"] as! Int32
            }
            if dict.keys.contains("FreeCount") {
                self.freeCount = dict["FreeCount"] as! Int32
            }
            if dict.keys.contains("ServiceCode") {
                self.serviceCode = dict["ServiceCode"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
        }
    }
    public var data: [AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var tmp : [AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody?

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
            var model = AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var freeConcurrencyCount: Int32?

        public var freeCount: Int32?

        public var serviceCode: String?

        public var serviceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.freeConcurrencyCount != nil {
                map["FreeConcurrencyCount"] = self.freeConcurrencyCount!
            }
            if self.freeCount != nil {
                map["FreeCount"] = self.freeCount!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FreeConcurrencyCount") {
                self.freeConcurrencyCount = dict["FreeConcurrencyCount"] as! Int32
            }
            if dict.keys.contains("FreeCount") {
                self.freeCount = dict["FreeCount"] as! Int32
            }
            if dict.keys.contains("ServiceCode") {
                self.serviceCode = dict["ServiceCode"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
        }
    }
    public var data: [AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var tmp : [AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponseBody?

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
            var model = AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteAITeacherExpansionDialogueRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("assistantTranslate") {
                self.assistantTranslate = dict["assistantTranslate"] as! String
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

        public var role: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("isOffTopicControl") {
                self.isOffTopicControl = dict["isOffTopicControl"] as! Bool
            }
            if dict.keys.contains("isOnTopic") {
                self.isOnTopic = dict["isOnTopic"] as! Bool
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! String
            }
        }
    }
    public class RoleInfo : Tea.TeaModel {
        public var assistant: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public var background: String?

    public var dialogueTasks: [ExecuteAITeacherExpansionDialogueRequest.DialogueTasks]?

    public var languageCode: String?

    public var records: [ExecuteAITeacherExpansionDialogueRequest.Records]?

    public var roleInfo: ExecuteAITeacherExpansionDialogueRequest.RoleInfo?

    public var startSentence: String?

    public var topic: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.background != nil {
            map["background"] = self.background!
        }
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.languageCode != nil {
            map["languageCode"] = self.languageCode!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.roleInfo != nil {
            map["roleInfo"] = self.roleInfo?.toMap()
        }
        if self.startSentence != nil {
            map["startSentence"] = self.startSentence!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("background") {
            self.background = dict["background"] as! String
        }
        if dict.keys.contains("dialogueTasks") {
            var tmp : [ExecuteAITeacherExpansionDialogueRequest.DialogueTasks] = []
            for v in dict["dialogueTasks"] as! [Any] {
                var model = ExecuteAITeacherExpansionDialogueRequest.DialogueTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dialogueTasks = tmp
        }
        if dict.keys.contains("languageCode") {
            self.languageCode = dict["languageCode"] as! String
        }
        if dict.keys.contains("records") {
            var tmp : [ExecuteAITeacherExpansionDialogueRequest.Records] = []
            for v in dict["records"] as! [Any] {
                var model = ExecuteAITeacherExpansionDialogueRequest.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("roleInfo") {
            var model = ExecuteAITeacherExpansionDialogueRequest.RoleInfo()
            model.fromMap(dict["roleInfo"] as! [String: Any])
            self.roleInfo = model
        }
        if dict.keys.contains("startSentence") {
            self.startSentence = dict["startSentence"] as! String
        }
        if dict.keys.contains("topic") {
            self.topic = dict["topic"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class ExecuteAITeacherExpansionDialogueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var chineseResult: String?

        public var englishResult: String?

        public var isFinish: Bool?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var questionIndex: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chineseResult != nil {
                map["chineseResult"] = self.chineseResult!
            }
            if self.englishResult != nil {
                map["englishResult"] = self.englishResult!
            }
            if self.isFinish != nil {
                map["isFinish"] = self.isFinish!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.questionIndex != nil {
                map["questionIndex"] = self.questionIndex!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chineseResult") {
                self.chineseResult = dict["chineseResult"] as! String
            }
            if dict.keys.contains("englishResult") {
                self.englishResult = dict["englishResult"] as! String
            }
            if dict.keys.contains("isFinish") {
                self.isFinish = dict["isFinish"] as! Bool
            }
            if dict.keys.contains("isOffTopicControl") {
                self.isOffTopicControl = dict["isOffTopicControl"] as! Bool
            }
            if dict.keys.contains("isOnTopic") {
                self.isOnTopic = dict["isOnTopic"] as! Bool
            }
            if dict.keys.contains("questionIndex") {
                self.questionIndex = dict["questionIndex"] as! Int32
            }
        }
    }
    public var data: ExecuteAITeacherExpansionDialogueResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteAITeacherExpansionDialogueResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteAITeacherExpansionDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherExpansionDialogueResponseBody?

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
            var model = ExecuteAITeacherExpansionDialogueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteAITeacherExpansionDialogueRefineRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("assistantTranslate") {
                self.assistantTranslate = dict["assistantTranslate"] as! String
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

        public var role: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("isOffTopicControl") {
                self.isOffTopicControl = dict["isOffTopicControl"] as! Bool
            }
            if dict.keys.contains("isOnTopic") {
                self.isOnTopic = dict["isOnTopic"] as! Bool
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! String
            }
        }
    }
    public class RoleInfo : Tea.TeaModel {
        public var assistant: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public var background: String?

    public var dialogueTasks: [ExecuteAITeacherExpansionDialogueRefineRequest.DialogueTasks]?

    public var languageCode: String?

    public var records: [ExecuteAITeacherExpansionDialogueRefineRequest.Records]?

    public var roleInfo: ExecuteAITeacherExpansionDialogueRefineRequest.RoleInfo?

    public var startSentence: String?

    public var topic: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.background != nil {
            map["background"] = self.background!
        }
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.languageCode != nil {
            map["languageCode"] = self.languageCode!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.roleInfo != nil {
            map["roleInfo"] = self.roleInfo?.toMap()
        }
        if self.startSentence != nil {
            map["startSentence"] = self.startSentence!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("background") {
            self.background = dict["background"] as! String
        }
        if dict.keys.contains("dialogueTasks") {
            var tmp : [ExecuteAITeacherExpansionDialogueRefineRequest.DialogueTasks] = []
            for v in dict["dialogueTasks"] as! [Any] {
                var model = ExecuteAITeacherExpansionDialogueRefineRequest.DialogueTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dialogueTasks = tmp
        }
        if dict.keys.contains("languageCode") {
            self.languageCode = dict["languageCode"] as! String
        }
        if dict.keys.contains("records") {
            var tmp : [ExecuteAITeacherExpansionDialogueRefineRequest.Records] = []
            for v in dict["records"] as! [Any] {
                var model = ExecuteAITeacherExpansionDialogueRefineRequest.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("roleInfo") {
            var model = ExecuteAITeacherExpansionDialogueRefineRequest.RoleInfo()
            model.fromMap(dict["roleInfo"] as! [String: Any])
            self.roleInfo = model
        }
        if dict.keys.contains("startSentence") {
            self.startSentence = dict["startSentence"] as! String
        }
        if dict.keys.contains("topic") {
            self.topic = dict["topic"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class ExecuteAITeacherExpansionDialogueRefineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
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
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                self.result = dict["result"] as! String
            }
        }
    }
    public var data: ExecuteAITeacherExpansionDialogueRefineResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteAITeacherExpansionDialogueRefineResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteAITeacherExpansionDialogueRefineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherExpansionDialogueRefineResponseBody?

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
            var model = ExecuteAITeacherExpansionDialogueRefineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteAITeacherExpansionDialogueTranslateRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("assistantTranslate") {
                self.assistantTranslate = dict["assistantTranslate"] as! String
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

        public var role: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("isOffTopicControl") {
                self.isOffTopicControl = dict["isOffTopicControl"] as! Bool
            }
            if dict.keys.contains("isOnTopic") {
                self.isOnTopic = dict["isOnTopic"] as! Bool
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! String
            }
        }
    }
    public class RoleInfo : Tea.TeaModel {
        public var assistant: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public var background: String?

    public var dialogueTasks: [ExecuteAITeacherExpansionDialogueTranslateRequest.DialogueTasks]?

    public var records: [ExecuteAITeacherExpansionDialogueTranslateRequest.Records]?

    public var roleInfo: ExecuteAITeacherExpansionDialogueTranslateRequest.RoleInfo?

    public var startSentence: String?

    public var topic: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.background != nil {
            map["background"] = self.background!
        }
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.roleInfo != nil {
            map["roleInfo"] = self.roleInfo?.toMap()
        }
        if self.startSentence != nil {
            map["startSentence"] = self.startSentence!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("background") {
            self.background = dict["background"] as! String
        }
        if dict.keys.contains("dialogueTasks") {
            var tmp : [ExecuteAITeacherExpansionDialogueTranslateRequest.DialogueTasks] = []
            for v in dict["dialogueTasks"] as! [Any] {
                var model = ExecuteAITeacherExpansionDialogueTranslateRequest.DialogueTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dialogueTasks = tmp
        }
        if dict.keys.contains("records") {
            var tmp : [ExecuteAITeacherExpansionDialogueTranslateRequest.Records] = []
            for v in dict["records"] as! [Any] {
                var model = ExecuteAITeacherExpansionDialogueTranslateRequest.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("roleInfo") {
            var model = ExecuteAITeacherExpansionDialogueTranslateRequest.RoleInfo()
            model.fromMap(dict["roleInfo"] as! [String: Any])
            self.roleInfo = model
        }
        if dict.keys.contains("startSentence") {
            self.startSentence = dict["startSentence"] as! String
        }
        if dict.keys.contains("topic") {
            self.topic = dict["topic"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class ExecuteAITeacherExpansionDialogueTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
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
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                self.result = dict["result"] as! String
            }
        }
    }
    public var data: ExecuteAITeacherExpansionDialogueTranslateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteAITeacherExpansionDialogueTranslateResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteAITeacherExpansionDialogueTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherExpansionDialogueTranslateResponseBody?

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
            var model = ExecuteAITeacherExpansionDialogueTranslateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteAITeacherGrammarCheckRequest : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class ExecuteAITeacherGrammarCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var analysis: String?

        public var correction: String?

        public var correctionStatus: String?

        public var errorReason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analysis != nil {
                map["analysis"] = self.analysis!
            }
            if self.correction != nil {
                map["correction"] = self.correction!
            }
            if self.correctionStatus != nil {
                map["correctionStatus"] = self.correctionStatus!
            }
            if self.errorReason != nil {
                map["errorReason"] = self.errorReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analysis") {
                self.analysis = dict["analysis"] as! String
            }
            if dict.keys.contains("correction") {
                self.correction = dict["correction"] as! String
            }
            if dict.keys.contains("correctionStatus") {
                self.correctionStatus = dict["correctionStatus"] as! String
            }
            if dict.keys.contains("errorReason") {
                self.errorReason = dict["errorReason"] as! String
            }
        }
    }
    public var data: ExecuteAITeacherGrammarCheckResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteAITeacherGrammarCheckResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteAITeacherGrammarCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherGrammarCheckResponseBody?

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
            var model = ExecuteAITeacherGrammarCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteAITeacherSyncDialogueRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("assistantTranslate") {
                self.assistantTranslate = dict["assistantTranslate"] as! String
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

        public var role: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("isOffTopicControl") {
                self.isOffTopicControl = dict["isOffTopicControl"] as! Bool
            }
            if dict.keys.contains("isOnTopic") {
                self.isOnTopic = dict["isOnTopic"] as! Bool
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! String
            }
        }
    }
    public var dialogueTasks: [ExecuteAITeacherSyncDialogueRequest.DialogueTasks]?

    public var languageCode: String?

    public var records: [ExecuteAITeacherSyncDialogueRequest.Records]?

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
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.languageCode != nil {
            map["languageCode"] = self.languageCode!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dialogueTasks") {
            var tmp : [ExecuteAITeacherSyncDialogueRequest.DialogueTasks] = []
            for v in dict["dialogueTasks"] as! [Any] {
                var model = ExecuteAITeacherSyncDialogueRequest.DialogueTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dialogueTasks = tmp
        }
        if dict.keys.contains("languageCode") {
            self.languageCode = dict["languageCode"] as! String
        }
        if dict.keys.contains("records") {
            var tmp : [ExecuteAITeacherSyncDialogueRequest.Records] = []
            for v in dict["records"] as! [Any] {
                var model = ExecuteAITeacherSyncDialogueRequest.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class ExecuteAITeacherSyncDialogueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var englishResult: String?

        public var isFinish: Bool?

        public var isOnTopic: Bool?

        public var questionIndex: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.englishResult != nil {
                map["englishResult"] = self.englishResult!
            }
            if self.isFinish != nil {
                map["isFinish"] = self.isFinish!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.questionIndex != nil {
                map["questionIndex"] = self.questionIndex!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("englishResult") {
                self.englishResult = dict["englishResult"] as! String
            }
            if dict.keys.contains("isFinish") {
                self.isFinish = dict["isFinish"] as! Bool
            }
            if dict.keys.contains("isOnTopic") {
                self.isOnTopic = dict["isOnTopic"] as! Bool
            }
            if dict.keys.contains("questionIndex") {
                self.questionIndex = dict["questionIndex"] as! Int32
            }
        }
    }
    public var data: ExecuteAITeacherSyncDialogueResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteAITeacherSyncDialogueResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteAITeacherSyncDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherSyncDialogueResponseBody?

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
            var model = ExecuteAITeacherSyncDialogueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteAITeacherSyncDialogueTranslateRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("assistantTranslate") {
                self.assistantTranslate = dict["assistantTranslate"] as! String
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

        public var role: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("isOffTopicControl") {
                self.isOffTopicControl = dict["isOffTopicControl"] as! Bool
            }
            if dict.keys.contains("isOnTopic") {
                self.isOnTopic = dict["isOnTopic"] as! Bool
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! String
            }
        }
    }
    public var dialogueTasks: [ExecuteAITeacherSyncDialogueTranslateRequest.DialogueTasks]?

    public var records: [ExecuteAITeacherSyncDialogueTranslateRequest.Records]?

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
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dialogueTasks") {
            var tmp : [ExecuteAITeacherSyncDialogueTranslateRequest.DialogueTasks] = []
            for v in dict["dialogueTasks"] as! [Any] {
                var model = ExecuteAITeacherSyncDialogueTranslateRequest.DialogueTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dialogueTasks = tmp
        }
        if dict.keys.contains("records") {
            var tmp : [ExecuteAITeacherSyncDialogueTranslateRequest.Records] = []
            for v in dict["records"] as! [Any] {
                var model = ExecuteAITeacherSyncDialogueTranslateRequest.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class ExecuteAITeacherSyncDialogueTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
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
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                self.result = dict["result"] as! String
            }
        }
    }
    public var data: ExecuteAITeacherSyncDialogueTranslateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteAITeacherSyncDialogueTranslateResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteAITeacherSyncDialogueTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherSyncDialogueTranslateResponseBody?

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
            var model = ExecuteAITeacherSyncDialogueTranslateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantDialogueRequest : Tea.TeaModel {
    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public var userMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        if self.userMessage != nil {
            map["userMessage"] = self.userMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("chatId") {
            self.chatId = dict["chatId"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
        if dict.keys.contains("userMessage") {
            self.userMessage = dict["userMessage"] as! String
        }
    }
}

public class ExecuteTextbookAssistantDialogueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var chineseResult: String?

            public var englishResult: String?

            public var isFinish: Bool?

            public var isTaskCompleted: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chineseResult != nil {
                    map["chineseResult"] = self.chineseResult!
                }
                if self.englishResult != nil {
                    map["englishResult"] = self.englishResult!
                }
                if self.isFinish != nil {
                    map["isFinish"] = self.isFinish!
                }
                if self.isTaskCompleted != nil {
                    map["isTaskCompleted"] = self.isTaskCompleted!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chineseResult") {
                    self.chineseResult = dict["chineseResult"] as! String
                }
                if dict.keys.contains("englishResult") {
                    self.englishResult = dict["englishResult"] as! String
                }
                if dict.keys.contains("isFinish") {
                    self.isFinish = dict["isFinish"] as! Bool
                }
                if dict.keys.contains("isTaskCompleted") {
                    self.isTaskCompleted = dict["isTaskCompleted"] as! Bool
                }
            }
        }
        public var assistant: String?

        public var chatId: String?

        public var result: ExecuteTextbookAssistantDialogueResponseBody.Data.Result?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.chatId != nil {
                map["chatId"] = self.chatId!
            }
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("chatId") {
                self.chatId = dict["chatId"] as! String
            }
            if dict.keys.contains("result") {
                var model = ExecuteTextbookAssistantDialogueResponseBody.Data.Result()
                model.fromMap(dict["result"] as! [String: Any])
                self.result = model
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public var data: ExecuteTextbookAssistantDialogueResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: String?

    public var requestId: String?

    public var success: String?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteTextbookAssistantDialogueResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class ExecuteTextbookAssistantDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantDialogueResponseBody?

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
            var model = ExecuteTextbookAssistantDialogueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantDifficultyRequest : Tea.TeaModel {
    public var action: String?

    public var assistant: String?

    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.assistant != nil {
            map["assistant"] = self.assistant!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("assistant") {
            self.assistant = dict["assistant"] as! String
        }
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("chatId") {
            self.chatId = dict["chatId"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
    }
}

public class ExecuteTextbookAssistantDifficultyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var result: String?

            public override init() {
                super.init()
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
                    map["result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("result") {
                    self.result = dict["result"] as! String
                }
            }
        }
        public var result: ExecuteTextbookAssistantDifficultyResponseBody.Data.Result?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                var model = ExecuteTextbookAssistantDifficultyResponseBody.Data.Result()
                model.fromMap(dict["result"] as! [String: Any])
                self.result = model
            }
        }
    }
    public var data: ExecuteTextbookAssistantDifficultyResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteTextbookAssistantDifficultyResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteTextbookAssistantDifficultyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantDifficultyResponseBody?

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
            var model = ExecuteTextbookAssistantDifficultyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantGrammarCheckRequest : Tea.TeaModel {
    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public var user: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        if self.user != nil {
            map["user"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("chatId") {
            self.chatId = dict["chatId"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
        if dict.keys.contains("user") {
            self.user = dict["user"] as! String
        }
    }
}

public class ExecuteTextbookAssistantGrammarCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var analysis: String?

            public var correction: String?

            public var correctionStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.analysis != nil {
                    map["analysis"] = self.analysis!
                }
                if self.correction != nil {
                    map["correction"] = self.correction!
                }
                if self.correctionStatus != nil {
                    map["correctionStatus"] = self.correctionStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("analysis") {
                    self.analysis = dict["analysis"] as! String
                }
                if dict.keys.contains("correction") {
                    self.correction = dict["correction"] as! String
                }
                if dict.keys.contains("correctionStatus") {
                    self.correctionStatus = dict["correctionStatus"] as! String
                }
            }
        }
        public var result: ExecuteTextbookAssistantGrammarCheckResponseBody.Data.Result?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                var model = ExecuteTextbookAssistantGrammarCheckResponseBody.Data.Result()
                model.fromMap(dict["result"] as! [String: Any])
                self.result = model
            }
        }
    }
    public var data: ExecuteTextbookAssistantGrammarCheckResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteTextbookAssistantGrammarCheckResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteTextbookAssistantGrammarCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantGrammarCheckResponseBody?

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
            var model = ExecuteTextbookAssistantGrammarCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantRefineByContextRequest : Tea.TeaModel {
    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public var user: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        if self.user != nil {
            map["user"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("chatId") {
            self.chatId = dict["chatId"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
        if dict.keys.contains("user") {
            self.user = dict["user"] as! String
        }
    }
}

public class ExecuteTextbookAssistantRefineByContextResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var result: String?

            public override init() {
                super.init()
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
                    map["result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("result") {
                    self.result = dict["result"] as! String
                }
            }
        }
        public var result: ExecuteTextbookAssistantRefineByContextResponseBody.Data.Result?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                var model = ExecuteTextbookAssistantRefineByContextResponseBody.Data.Result()
                model.fromMap(dict["result"] as! [String: Any])
                self.result = model
            }
        }
    }
    public var data: ExecuteTextbookAssistantRefineByContextResponseBody.Data?

    public var errCode: String?

    public var errMessage: Int32?

    public var httpStatusCode: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteTextbookAssistantRefineByContextResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! Int32
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteTextbookAssistantRefineByContextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantRefineByContextResponseBody?

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
            var model = ExecuteTextbookAssistantRefineByContextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantRetryConversationRequest : Tea.TeaModel {
    public var assistant: String?

    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assistant != nil {
            map["assistant"] = self.assistant!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("assistant") {
            self.assistant = dict["assistant"] as! String
        }
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("chatId") {
            self.chatId = dict["chatId"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
    }
}

public class ExecuteTextbookAssistantRetryConversationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var chineseResult: String?

            public var englishResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chineseResult != nil {
                    map["chineseResult"] = self.chineseResult!
                }
                if self.englishResult != nil {
                    map["englishResult"] = self.englishResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chineseResult") {
                    self.chineseResult = dict["chineseResult"] as! String
                }
                if dict.keys.contains("englishResult") {
                    self.englishResult = dict["englishResult"] as! String
                }
            }
        }
        public var assistant: String?

        public var chatId: String?

        public var result: ExecuteTextbookAssistantRetryConversationResponseBody.Data.Result?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.chatId != nil {
                map["chatId"] = self.chatId!
            }
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("chatId") {
                self.chatId = dict["chatId"] as! String
            }
            if dict.keys.contains("result") {
                var model = ExecuteTextbookAssistantRetryConversationResponseBody.Data.Result()
                model.fromMap(dict["result"] as! [String: Any])
                self.result = model
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public var data: ExecuteTextbookAssistantRetryConversationResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteTextbookAssistantRetryConversationResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteTextbookAssistantRetryConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantRetryConversationResponseBody?

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
            var model = ExecuteTextbookAssistantRetryConversationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantStartConversationRequest : Tea.TeaModel {
    public var articleId: String?

    public var authToken: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.articleId != nil {
            map["articleId"] = self.articleId!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("articleId") {
            self.articleId = dict["articleId"] as! String
        }
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
    }
}

public class ExecuteTextbookAssistantStartConversationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var chineseResult: String?

            public var englishResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chineseResult != nil {
                    map["chineseResult"] = self.chineseResult!
                }
                if self.englishResult != nil {
                    map["englishResult"] = self.englishResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chineseResult") {
                    self.chineseResult = dict["chineseResult"] as! String
                }
                if dict.keys.contains("englishResult") {
                    self.englishResult = dict["englishResult"] as! String
                }
            }
        }
        public var assistant: String?

        public var chatId: String?

        public var result: ExecuteTextbookAssistantStartConversationResponseBody.Data.Result?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.chatId != nil {
                map["chatId"] = self.chatId!
            }
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("chatId") {
                self.chatId = dict["chatId"] as! String
            }
            if dict.keys.contains("result") {
                var model = ExecuteTextbookAssistantStartConversationResponseBody.Data.Result()
                model.fromMap(dict["result"] as! [String: Any])
                self.result = model
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public var data: ExecuteTextbookAssistantStartConversationResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteTextbookAssistantStartConversationResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteTextbookAssistantStartConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantStartConversationResponseBody?

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
            var model = ExecuteTextbookAssistantStartConversationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantSuggestionRequest : Tea.TeaModel {
    public var assistant: String?

    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assistant != nil {
            map["assistant"] = self.assistant!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("assistant") {
            self.assistant = dict["assistant"] as! String
        }
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("chatId") {
            self.chatId = dict["chatId"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
    }
}

public class ExecuteTextbookAssistantSuggestionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var chineseResult: String?

            public var englishResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chineseResult != nil {
                    map["chineseResult"] = self.chineseResult!
                }
                if self.englishResult != nil {
                    map["englishResult"] = self.englishResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chineseResult") {
                    self.chineseResult = dict["chineseResult"] as! String
                }
                if dict.keys.contains("englishResult") {
                    self.englishResult = dict["englishResult"] as! String
                }
            }
        }
        public var result: ExecuteTextbookAssistantSuggestionResponseBody.Data.Result?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                var model = ExecuteTextbookAssistantSuggestionResponseBody.Data.Result()
                model.fromMap(dict["result"] as! [String: Any])
                self.result = model
            }
        }
    }
    public var data: ExecuteTextbookAssistantSuggestionResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpstatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpstatusCode != nil {
            map["httpstatusCode"] = self.httpstatusCode!
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
            var model = ExecuteTextbookAssistantSuggestionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpstatusCode") {
            self.httpstatusCode = dict["httpstatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteTextbookAssistantSuggestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantSuggestionResponseBody?

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
            var model = ExecuteTextbookAssistantSuggestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantTranslateRequest : Tea.TeaModel {
    public var assistant: String?

    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assistant != nil {
            map["assistant"] = self.assistant!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("assistant") {
            self.assistant = dict["assistant"] as! String
        }
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("chatId") {
            self.chatId = dict["chatId"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
    }
}

public class ExecuteTextbookAssistantTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var result: String?

            public override init() {
                super.init()
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
                    map["result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("result") {
                    self.result = dict["result"] as! String
                }
            }
        }
        public var result: ExecuteTextbookAssistantTranslateResponseBody.Data.Result?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                var model = ExecuteTextbookAssistantTranslateResponseBody.Data.Result()
                model.fromMap(dict["result"] as! [String: Any])
                self.result = model
            }
        }
    }
    public var data: ExecuteTextbookAssistantTranslateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ExecuteTextbookAssistantTranslateResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExecuteTextbookAssistantTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantTranslateResponseBody?

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
            var model = ExecuteTextbookAssistantTranslateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAITeacherExpansionDialogueSuggestionRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("assistantTranslate") {
                self.assistantTranslate = dict["assistantTranslate"] as! String
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

        public var role: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("isOffTopicControl") {
                self.isOffTopicControl = dict["isOffTopicControl"] as! Bool
            }
            if dict.keys.contains("isOnTopic") {
                self.isOnTopic = dict["isOnTopic"] as! Bool
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! String
            }
        }
    }
    public class RoleInfo : Tea.TeaModel {
        public var assistant: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public var background: String?

    public var dialogueTasks: [GetAITeacherExpansionDialogueSuggestionRequest.DialogueTasks]?

    public var languageCode: String?

    public var records: [GetAITeacherExpansionDialogueSuggestionRequest.Records]?

    public var roleInfo: GetAITeacherExpansionDialogueSuggestionRequest.RoleInfo?

    public var startSentence: String?

    public var topic: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.background != nil {
            map["background"] = self.background!
        }
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.languageCode != nil {
            map["languageCode"] = self.languageCode!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.roleInfo != nil {
            map["roleInfo"] = self.roleInfo?.toMap()
        }
        if self.startSentence != nil {
            map["startSentence"] = self.startSentence!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("background") {
            self.background = dict["background"] as! String
        }
        if dict.keys.contains("dialogueTasks") {
            var tmp : [GetAITeacherExpansionDialogueSuggestionRequest.DialogueTasks] = []
            for v in dict["dialogueTasks"] as! [Any] {
                var model = GetAITeacherExpansionDialogueSuggestionRequest.DialogueTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dialogueTasks = tmp
        }
        if dict.keys.contains("languageCode") {
            self.languageCode = dict["languageCode"] as! String
        }
        if dict.keys.contains("records") {
            var tmp : [GetAITeacherExpansionDialogueSuggestionRequest.Records] = []
            for v in dict["records"] as! [Any] {
                var model = GetAITeacherExpansionDialogueSuggestionRequest.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("roleInfo") {
            var model = GetAITeacherExpansionDialogueSuggestionRequest.RoleInfo()
            model.fromMap(dict["roleInfo"] as! [String: Any])
            self.roleInfo = model
        }
        if dict.keys.contains("startSentence") {
            self.startSentence = dict["startSentence"] as! String
        }
        if dict.keys.contains("topic") {
            self.topic = dict["topic"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class GetAITeacherExpansionDialogueSuggestionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var chineseResult: String?

        public var englishResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chineseResult != nil {
                map["chineseResult"] = self.chineseResult!
            }
            if self.englishResult != nil {
                map["englishResult"] = self.englishResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chineseResult") {
                self.chineseResult = dict["chineseResult"] as! String
            }
            if dict.keys.contains("englishResult") {
                self.englishResult = dict["englishResult"] as! String
            }
        }
    }
    public var data: GetAITeacherExpansionDialogueSuggestionResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = GetAITeacherExpansionDialogueSuggestionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetAITeacherExpansionDialogueSuggestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAITeacherExpansionDialogueSuggestionResponseBody?

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
            var model = GetAITeacherExpansionDialogueSuggestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAITeacherSyncDialogueSuggestionRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assistant") {
                self.assistant = dict["assistant"] as! String
            }
            if dict.keys.contains("assistantTranslate") {
                self.assistantTranslate = dict["assistantTranslate"] as! String
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

        public var role: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("isOffTopicControl") {
                self.isOffTopicControl = dict["isOffTopicControl"] as! Bool
            }
            if dict.keys.contains("isOnTopic") {
                self.isOnTopic = dict["isOnTopic"] as! Bool
            }
            if dict.keys.contains("order") {
                self.order = dict["order"] as! Int32
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! String
            }
        }
    }
    public var dialogueTasks: [GetAITeacherSyncDialogueSuggestionRequest.DialogueTasks]?

    public var languageCode: String?

    public var records: [GetAITeacherSyncDialogueSuggestionRequest.Records]?

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
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.languageCode != nil {
            map["languageCode"] = self.languageCode!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dialogueTasks") {
            var tmp : [GetAITeacherSyncDialogueSuggestionRequest.DialogueTasks] = []
            for v in dict["dialogueTasks"] as! [Any] {
                var model = GetAITeacherSyncDialogueSuggestionRequest.DialogueTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dialogueTasks = tmp
        }
        if dict.keys.contains("languageCode") {
            self.languageCode = dict["languageCode"] as! String
        }
        if dict.keys.contains("records") {
            var tmp : [GetAITeacherSyncDialogueSuggestionRequest.Records] = []
            for v in dict["records"] as! [Any] {
                var model = GetAITeacherSyncDialogueSuggestionRequest.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class GetAITeacherSyncDialogueSuggestionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var chineseResult: String?

        public var englishResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chineseResult != nil {
                map["chineseResult"] = self.chineseResult!
            }
            if self.englishResult != nil {
                map["englishResult"] = self.englishResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chineseResult") {
                self.chineseResult = dict["chineseResult"] as! String
            }
            if dict.keys.contains("englishResult") {
                self.englishResult = dict["englishResult"] as! String
            }
        }
    }
    public var data: GetAITeacherSyncDialogueSuggestionResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = GetAITeacherSyncDialogueSuggestionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetAITeacherSyncDialogueSuggestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAITeacherSyncDialogueSuggestionResponseBody?

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
            var model = GetAITeacherSyncDialogueSuggestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTextbookAssistantTokenRequest : Tea.TeaModel {
    public var deviceId: String?

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
        if self.deviceId != nil {
            map["deviceId"] = self.deviceId!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deviceId") {
            self.deviceId = dict["deviceId"] as! String
        }
        if dict.keys.contains("model") {
            self.model = dict["model"] as! String
        }
    }
}

public class GetTextbookAssistantTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authToken: String?

        public var expire: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authToken != nil {
                map["authToken"] = self.authToken!
            }
            if self.expire != nil {
                map["expire"] = self.expire!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authToken") {
                self.authToken = dict["authToken"] as! String
            }
            if dict.keys.contains("expire") {
                self.expire = dict["expire"] as! Int32
            }
        }
    }
    public var data: GetTextbookAssistantTokenResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = GetTextbookAssistantTokenResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetTextbookAssistantTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTextbookAssistantTokenResponseBody?

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
            var model = GetTextbookAssistantTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTextbookAssistantArticlesRequest : Tea.TeaModel {
    public var authToken: String?

    public var directoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("directoryId") {
            self.directoryId = dict["directoryId"] as! String
        }
    }
}

public class ListTextbookAssistantArticlesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var articleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.articleId != nil {
                map["articleId"] = self.articleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("articleId") {
                self.articleId = dict["articleId"] as! String
            }
        }
    }
    public var data: [ListTextbookAssistantArticlesResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var tmp : [ListTextbookAssistantArticlesResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListTextbookAssistantArticlesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListTextbookAssistantArticlesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTextbookAssistantArticlesResponseBody?

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
            var model = ListTextbookAssistantArticlesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTextbookAssistantBookDirectoriesRequest : Tea.TeaModel {
    public var authToken: String?

    public var bookId: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.bookId != nil {
            map["bookId"] = self.bookId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("bookId") {
            self.bookId = dict["bookId"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
    }
}

public class ListTextbookAssistantBookDirectoriesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DirectoryTree : Tea.TeaModel {
            public class Topic : Tea.TeaModel {
                public var labelId: String?

                public var labelName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.labelId != nil {
                        map["labelId"] = self.labelId!
                    }
                    if self.labelName != nil {
                        map["labelName"] = self.labelName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("labelId") {
                        self.labelId = dict["labelId"] as! String
                    }
                    if dict.keys.contains("labelName") {
                        self.labelName = dict["labelName"] as! String
                    }
                }
            }
            public var directoryId: String?

            public var directoryName: String?

            public var topic: [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Topic]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.directoryId != nil {
                    map["directoryId"] = self.directoryId!
                }
                if self.directoryName != nil {
                    map["directoryName"] = self.directoryName!
                }
                if self.topic != nil {
                    var tmp : [Any] = []
                    for k in self.topic! {
                        tmp.append(k.toMap())
                    }
                    map["topic"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("directoryId") {
                    self.directoryId = dict["directoryId"] as! String
                }
                if dict.keys.contains("directoryName") {
                    self.directoryName = dict["directoryName"] as! String
                }
                if dict.keys.contains("topic") {
                    var tmp : [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Topic] = []
                    for v in dict["topic"] as! [Any] {
                        var model = ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Topic()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.topic = tmp
                }
            }
        }
        public class EditionInfo : Tea.TeaModel {
            public var bookId: String?

            public var bookVolume: String?

            public var edition: String?

            public var grade: String?

            public var impression: String?

            public var isbn: String?

            public var publisher: String?

            public var subject: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bookId != nil {
                    map["bookId"] = self.bookId!
                }
                if self.bookVolume != nil {
                    map["bookVolume"] = self.bookVolume!
                }
                if self.edition != nil {
                    map["edition"] = self.edition!
                }
                if self.grade != nil {
                    map["grade"] = self.grade!
                }
                if self.impression != nil {
                    map["impression"] = self.impression!
                }
                if self.isbn != nil {
                    map["isbn"] = self.isbn!
                }
                if self.publisher != nil {
                    map["publisher"] = self.publisher!
                }
                if self.subject != nil {
                    map["subject"] = self.subject!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("bookId") {
                    self.bookId = dict["bookId"] as! String
                }
                if dict.keys.contains("bookVolume") {
                    self.bookVolume = dict["bookVolume"] as! String
                }
                if dict.keys.contains("edition") {
                    self.edition = dict["edition"] as! String
                }
                if dict.keys.contains("grade") {
                    self.grade = dict["grade"] as! String
                }
                if dict.keys.contains("impression") {
                    self.impression = dict["impression"] as! String
                }
                if dict.keys.contains("isbn") {
                    self.isbn = dict["isbn"] as! String
                }
                if dict.keys.contains("publisher") {
                    self.publisher = dict["publisher"] as! String
                }
                if dict.keys.contains("subject") {
                    self.subject = dict["subject"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var directoryTree: [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree]?

        public var editionInfo: ListTextbookAssistantBookDirectoriesResponseBody.Data.EditionInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.editionInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.directoryTree != nil {
                var tmp : [Any] = []
                for k in self.directoryTree! {
                    tmp.append(k.toMap())
                }
                map["directoryTree"] = tmp
            }
            if self.editionInfo != nil {
                map["editionInfo"] = self.editionInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("directoryTree") {
                var tmp : [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree] = []
                for v in dict["directoryTree"] as! [Any] {
                    var model = ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.directoryTree = tmp
            }
            if dict.keys.contains("editionInfo") {
                var model = ListTextbookAssistantBookDirectoriesResponseBody.Data.EditionInfo()
                model.fromMap(dict["editionInfo"] as! [String: Any])
                self.editionInfo = model
            }
        }
    }
    public var data: ListTextbookAssistantBookDirectoriesResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ListTextbookAssistantBookDirectoriesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListTextbookAssistantBookDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTextbookAssistantBookDirectoriesResponseBody?

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
            var model = ListTextbookAssistantBookDirectoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTextbookAssistantBooksRequest : Tea.TeaModel {
    public var authToken: String?

    public var bookId: String?

    public var grade: String?

    public var maxResults: String?

    public var page: String?

    public var version: String?

    public var volume: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.bookId != nil {
            map["bookId"] = self.bookId!
        }
        if self.grade != nil {
            map["grade"] = self.grade!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.volume != nil {
            map["volume"] = self.volume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("bookId") {
            self.bookId = dict["bookId"] as! String
        }
        if dict.keys.contains("grade") {
            self.grade = dict["grade"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
        }
        if dict.keys.contains("volume") {
            self.volume = dict["volume"] as! String
        }
    }
}

public class ListTextbookAssistantBooksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BookList : Tea.TeaModel {
            public var author: String?

            public var bookId: String?

            public var bookName: String?

            public var coverImage: String?

            public var edition: String?

            public var grade: String?

            public var impression: String?

            public var isbn: String?

            public var publisher: String?

            public var subject: String?

            public var version: String?

            public var volume: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.author != nil {
                    map["author"] = self.author!
                }
                if self.bookId != nil {
                    map["bookId"] = self.bookId!
                }
                if self.bookName != nil {
                    map["bookName"] = self.bookName!
                }
                if self.coverImage != nil {
                    map["coverImage"] = self.coverImage!
                }
                if self.edition != nil {
                    map["edition"] = self.edition!
                }
                if self.grade != nil {
                    map["grade"] = self.grade!
                }
                if self.impression != nil {
                    map["impression"] = self.impression!
                }
                if self.isbn != nil {
                    map["isbn"] = self.isbn!
                }
                if self.publisher != nil {
                    map["publisher"] = self.publisher!
                }
                if self.subject != nil {
                    map["subject"] = self.subject!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.volume != nil {
                    map["volume"] = self.volume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("author") {
                    self.author = dict["author"] as! String
                }
                if dict.keys.contains("bookId") {
                    self.bookId = dict["bookId"] as! String
                }
                if dict.keys.contains("bookName") {
                    self.bookName = dict["bookName"] as! String
                }
                if dict.keys.contains("coverImage") {
                    self.coverImage = dict["coverImage"] as! String
                }
                if dict.keys.contains("edition") {
                    self.edition = dict["edition"] as! String
                }
                if dict.keys.contains("grade") {
                    self.grade = dict["grade"] as! String
                }
                if dict.keys.contains("impression") {
                    self.impression = dict["impression"] as! String
                }
                if dict.keys.contains("isbn") {
                    self.isbn = dict["isbn"] as! String
                }
                if dict.keys.contains("publisher") {
                    self.publisher = dict["publisher"] as! String
                }
                if dict.keys.contains("subject") {
                    self.subject = dict["subject"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
                if dict.keys.contains("volume") {
                    self.volume = dict["volume"] as! String
                }
            }
        }
        public class PaginationData : Tea.TeaModel {
            public var currentPage: Int32?

            public var maxResults: Int32?

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
                if self.currentPage != nil {
                    map["currentPage"] = self.currentPage!
                }
                if self.maxResults != nil {
                    map["maxResults"] = self.maxResults!
                }
                if self.totalCount != nil {
                    map["totalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("currentPage") {
                    self.currentPage = dict["currentPage"] as! Int32
                }
                if dict.keys.contains("maxResults") {
                    self.maxResults = dict["maxResults"] as! Int32
                }
                if dict.keys.contains("totalCount") {
                    self.totalCount = dict["totalCount"] as! Int32
                }
            }
        }
        public var bookList: [ListTextbookAssistantBooksResponseBody.Data.BookList]?

        public var paginationData: ListTextbookAssistantBooksResponseBody.Data.PaginationData?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.paginationData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bookList != nil {
                var tmp : [Any] = []
                for k in self.bookList! {
                    tmp.append(k.toMap())
                }
                map["bookList"] = tmp
            }
            if self.paginationData != nil {
                map["paginationData"] = self.paginationData?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bookList") {
                var tmp : [ListTextbookAssistantBooksResponseBody.Data.BookList] = []
                for v in dict["bookList"] as! [Any] {
                    var model = ListTextbookAssistantBooksResponseBody.Data.BookList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.bookList = tmp
            }
            if dict.keys.contains("paginationData") {
                var model = ListTextbookAssistantBooksResponseBody.Data.PaginationData()
                model.fromMap(dict["paginationData"] as! [String: Any])
                self.paginationData = model
            }
        }
    }
    public var data: ListTextbookAssistantBooksResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ListTextbookAssistantBooksResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListTextbookAssistantBooksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTextbookAssistantBooksResponseBody?

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
            var model = ListTextbookAssistantBooksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTextbookAssistantGradeVolumesRequest : Tea.TeaModel {
    public var authToken: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authToken") {
            self.authToken = dict["authToken"] as! String
        }
        if dict.keys.contains("scenario") {
            self.scenario = dict["scenario"] as! String
        }
    }
}

public class ListTextbookAssistantGradeVolumesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GradeVolumes : Tea.TeaModel {
            public var grade: String?

            public var volume: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.grade != nil {
                    map["grade"] = self.grade!
                }
                if self.volume != nil {
                    map["volume"] = self.volume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("grade") {
                    self.grade = dict["grade"] as! String
                }
                if dict.keys.contains("volume") {
                    self.volume = dict["volume"] as! String
                }
            }
        }
        public var gradeVolumes: [ListTextbookAssistantGradeVolumesResponseBody.Data.GradeVolumes]?

        public var textbookVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gradeVolumes != nil {
                var tmp : [Any] = []
                for k in self.gradeVolumes! {
                    tmp.append(k.toMap())
                }
                map["gradeVolumes"] = tmp
            }
            if self.textbookVersion != nil {
                map["textbookVersion"] = self.textbookVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gradeVolumes") {
                var tmp : [ListTextbookAssistantGradeVolumesResponseBody.Data.GradeVolumes] = []
                for v in dict["gradeVolumes"] as! [Any] {
                    var model = ListTextbookAssistantGradeVolumesResponseBody.Data.GradeVolumes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.gradeVolumes = tmp
            }
            if dict.keys.contains("textbookVersion") {
                self.textbookVersion = dict["textbookVersion"] as! String
            }
        }
    }
    public var data: ListTextbookAssistantGradeVolumesResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = ListTextbookAssistantGradeVolumesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListTextbookAssistantGradeVolumesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTextbookAssistantGradeVolumesResponseBody?

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
            var model = ListTextbookAssistantGradeVolumesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PersonalizedTextToImageAddInferenceJobRequest : Tea.TeaModel {
    public var imageNumber: Int32?

    public var imageUrl: [String]?

    public var prompt: String?

    public var seed: Int64?

    public var strength: Double?

    public var trainSteps: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNumber != nil {
            map["imageNumber"] = self.imageNumber!
        }
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.seed != nil {
            map["seed"] = self.seed!
        }
        if self.strength != nil {
            map["strength"] = self.strength!
        }
        if self.trainSteps != nil {
            map["trainSteps"] = self.trainSteps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("imageNumber") {
            self.imageNumber = dict["imageNumber"] as! Int32
        }
        if dict.keys.contains("imageUrl") {
            self.imageUrl = dict["imageUrl"] as! [String]
        }
        if dict.keys.contains("prompt") {
            self.prompt = dict["prompt"] as! String
        }
        if dict.keys.contains("seed") {
            self.seed = dict["seed"] as! Int64
        }
        if dict.keys.contains("strength") {
            self.strength = dict["strength"] as! Double
        }
        if dict.keys.contains("trainSteps") {
            self.trainSteps = dict["trainSteps"] as! Int32
        }
    }
}

public class PersonalizedTextToImageAddInferenceJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var id: String?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var promptId: String?

        public var resultImageUrl: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.promptId != nil {
                map["promptId"] = self.promptId!
            }
            if self.resultImageUrl != nil {
                map["resultImageUrl"] = self.resultImageUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("jobStatus") {
                self.jobStatus = dict["jobStatus"] as! String
            }
            if dict.keys.contains("jobTrainProgress") {
                self.jobTrainProgress = dict["jobTrainProgress"] as! Double
            }
            if dict.keys.contains("modelId") {
                self.modelId = dict["modelId"] as! String
            }
            if dict.keys.contains("promptId") {
                self.promptId = dict["promptId"] as! String
            }
            if dict.keys.contains("resultImageUrl") {
                self.resultImageUrl = dict["resultImageUrl"] as! [String]
            }
        }
    }
    public var data: PersonalizedTextToImageAddInferenceJobResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = PersonalizedTextToImageAddInferenceJobResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class PersonalizedTextToImageAddInferenceJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PersonalizedTextToImageAddInferenceJobResponseBody?

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
            var model = PersonalizedTextToImageAddInferenceJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PersonalizedTextToImageQueryImageAssetRequest : Tea.TeaModel {
    public var encodeFormat: String?

    public var imageId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encodeFormat != nil {
            map["encodeFormat"] = self.encodeFormat!
        }
        if self.imageId != nil {
            map["imageId"] = self.imageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("encodeFormat") {
            self.encodeFormat = dict["encodeFormat"] as! String
        }
        if dict.keys.contains("imageId") {
            self.imageId = dict["imageId"] as! String
        }
    }
}

public class PersonalizedTextToImageQueryImageAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Any?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
            map["body"] = self.body!
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
            self.body = dict["body"] as! Any
        }
    }
}

public class PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest : Tea.TeaModel {
    public var inferenceJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inferenceJobId != nil {
            map["inferenceJobId"] = self.inferenceJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("inferenceJobId") {
            self.inferenceJobId = dict["inferenceJobId"] as! String
        }
    }
}

public class PersonalizedTextToImageQueryPreModelInferenceJobInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var id: String?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var promptId: String?

        public var resultImageUrl: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.promptId != nil {
                map["promptId"] = self.promptId!
            }
            if self.resultImageUrl != nil {
                map["resultImageUrl"] = self.resultImageUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("jobStatus") {
                self.jobStatus = dict["jobStatus"] as! String
            }
            if dict.keys.contains("jobTrainProgress") {
                self.jobTrainProgress = dict["jobTrainProgress"] as! Double
            }
            if dict.keys.contains("modelId") {
                self.modelId = dict["modelId"] as! String
            }
            if dict.keys.contains("promptId") {
                self.promptId = dict["promptId"] as! String
            }
            if dict.keys.contains("resultImageUrl") {
                self.resultImageUrl = dict["resultImageUrl"] as! [String]
            }
        }
    }
    public var data: PersonalizedTextToImageQueryPreModelInferenceJobInfoResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = PersonalizedTextToImageQueryPreModelInferenceJobInfoResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PersonalizedTextToImageQueryPreModelInferenceJobInfoResponseBody?

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
            var model = PersonalizedTextToImageQueryPreModelInferenceJobInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Personalizedtxt2imgAddInferenceJobRequest : Tea.TeaModel {
    public var imageNumber: Int32?

    public var modelId: String?

    public var prompt: String?

    public var seed: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNumber != nil {
            map["imageNumber"] = self.imageNumber!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.seed != nil {
            map["seed"] = self.seed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("imageNumber") {
            self.imageNumber = dict["imageNumber"] as! Int32
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("prompt") {
            self.prompt = dict["prompt"] as! String
        }
        if dict.keys.contains("seed") {
            self.seed = dict["seed"] as! Int64
        }
    }
}

public class Personalizedtxt2imgAddInferenceJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var id: String?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var promptId: String?

        public var resultImageUrl: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.promptId != nil {
                map["promptId"] = self.promptId!
            }
            if self.resultImageUrl != nil {
                map["resultImageUrl"] = self.resultImageUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("jobStatus") {
                self.jobStatus = dict["jobStatus"] as! String
            }
            if dict.keys.contains("jobTrainProgress") {
                self.jobTrainProgress = dict["jobTrainProgress"] as! Double
            }
            if dict.keys.contains("modelId") {
                self.modelId = dict["modelId"] as! String
            }
            if dict.keys.contains("promptId") {
                self.promptId = dict["promptId"] as! String
            }
            if dict.keys.contains("resultImageUrl") {
                self.resultImageUrl = dict["resultImageUrl"] as! [String]
            }
        }
    }
    public var data: Personalizedtxt2imgAddInferenceJobResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = Personalizedtxt2imgAddInferenceJobResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class Personalizedtxt2imgAddInferenceJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Personalizedtxt2imgAddInferenceJobResponseBody?

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
            var model = Personalizedtxt2imgAddInferenceJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Personalizedtxt2imgAddModelTrainJobRequest : Tea.TeaModel {
    public var imageUrl: [String]?

    public var name: String?

    public var objectType: String?

    public var trainSteps: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.objectType != nil {
            map["objectType"] = self.objectType!
        }
        if self.trainSteps != nil {
            map["trainSteps"] = self.trainSteps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("imageUrl") {
            self.imageUrl = dict["imageUrl"] as! [String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("objectType") {
            self.objectType = dict["objectType"] as! String
        }
        if dict.keys.contains("trainSteps") {
            self.trainSteps = dict["trainSteps"] as! Int32
        }
    }
}

public class Personalizedtxt2imgAddModelTrainJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InferenceJobList : Tea.TeaModel {
            public var createTime: String?

            public var id: String?

            public var jobStatus: String?

            public var jobTrainProgress: Double?

            public var modelId: String?

            public var promptId: String?

            public var resultImageUrl: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.jobStatus != nil {
                    map["jobStatus"] = self.jobStatus!
                }
                if self.jobTrainProgress != nil {
                    map["jobTrainProgress"] = self.jobTrainProgress!
                }
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.promptId != nil {
                    map["promptId"] = self.promptId!
                }
                if self.resultImageUrl != nil {
                    map["resultImageUrl"] = self.resultImageUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("jobStatus") {
                    self.jobStatus = dict["jobStatus"] as! String
                }
                if dict.keys.contains("jobTrainProgress") {
                    self.jobTrainProgress = dict["jobTrainProgress"] as! Double
                }
                if dict.keys.contains("modelId") {
                    self.modelId = dict["modelId"] as! String
                }
                if dict.keys.contains("promptId") {
                    self.promptId = dict["promptId"] as! String
                }
                if dict.keys.contains("resultImageUrl") {
                    self.resultImageUrl = dict["resultImageUrl"] as! [String]
                }
            }
        }
        public var createTime: String?

        public var id: String?

        public var imageUrl: [String]?

        public var inferenceImageCount: Int32?

        public var inferenceJobList: [Personalizedtxt2imgAddModelTrainJobResponseBody.Data.InferenceJobList]?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var name: String?

        public var objectType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.imageUrl != nil {
                map["imageUrl"] = self.imageUrl!
            }
            if self.inferenceImageCount != nil {
                map["inferenceImageCount"] = self.inferenceImageCount!
            }
            if self.inferenceJobList != nil {
                var tmp : [Any] = []
                for k in self.inferenceJobList! {
                    tmp.append(k.toMap())
                }
                map["inferenceJobList"] = tmp
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("imageUrl") {
                self.imageUrl = dict["imageUrl"] as! [String]
            }
            if dict.keys.contains("inferenceImageCount") {
                self.inferenceImageCount = dict["inferenceImageCount"] as! Int32
            }
            if dict.keys.contains("inferenceJobList") {
                var tmp : [Personalizedtxt2imgAddModelTrainJobResponseBody.Data.InferenceJobList] = []
                for v in dict["inferenceJobList"] as! [Any] {
                    var model = Personalizedtxt2imgAddModelTrainJobResponseBody.Data.InferenceJobList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inferenceJobList = tmp
            }
            if dict.keys.contains("jobStatus") {
                self.jobStatus = dict["jobStatus"] as! String
            }
            if dict.keys.contains("jobTrainProgress") {
                self.jobTrainProgress = dict["jobTrainProgress"] as! Double
            }
            if dict.keys.contains("modelId") {
                self.modelId = dict["modelId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("objectType") {
                self.objectType = dict["objectType"] as! String
            }
        }
    }
    public var data: Personalizedtxt2imgAddModelTrainJobResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = Personalizedtxt2imgAddModelTrainJobResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class Personalizedtxt2imgAddModelTrainJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Personalizedtxt2imgAddModelTrainJobResponseBody?

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
            var model = Personalizedtxt2imgAddModelTrainJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Personalizedtxt2imgQueryImageAssetRequest : Tea.TeaModel {
    public var encodeFormat: String?

    public var imageId: String?

    public var modelId: String?

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
        if self.encodeFormat != nil {
            map["encodeFormat"] = self.encodeFormat!
        }
        if self.imageId != nil {
            map["imageId"] = self.imageId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.promptId != nil {
            map["promptId"] = self.promptId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("encodeFormat") {
            self.encodeFormat = dict["encodeFormat"] as! String
        }
        if dict.keys.contains("imageId") {
            self.imageId = dict["imageId"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("promptId") {
            self.promptId = dict["promptId"] as! String
        }
    }
}

public class Personalizedtxt2imgQueryImageAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Any?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
            map["body"] = self.body!
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
            self.body = dict["body"] as! Any
        }
    }
}

public class Personalizedtxt2imgQueryInferenceJobInfoRequest : Tea.TeaModel {
    public var inferenceJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inferenceJobId != nil {
            map["inferenceJobId"] = self.inferenceJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("inferenceJobId") {
            self.inferenceJobId = dict["inferenceJobId"] as! String
        }
    }
}

public class Personalizedtxt2imgQueryInferenceJobInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var id: String?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var promptId: String?

        public var resultImageUrl: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.promptId != nil {
                map["promptId"] = self.promptId!
            }
            if self.resultImageUrl != nil {
                map["resultImageUrl"] = self.resultImageUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("jobStatus") {
                self.jobStatus = dict["jobStatus"] as! String
            }
            if dict.keys.contains("jobTrainProgress") {
                self.jobTrainProgress = dict["jobTrainProgress"] as! Double
            }
            if dict.keys.contains("modelId") {
                self.modelId = dict["modelId"] as! String
            }
            if dict.keys.contains("promptId") {
                self.promptId = dict["promptId"] as! String
            }
            if dict.keys.contains("resultImageUrl") {
                self.resultImageUrl = dict["resultImageUrl"] as! [String]
            }
        }
    }
    public var data: Personalizedtxt2imgQueryInferenceJobInfoResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = Personalizedtxt2imgQueryInferenceJobInfoResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class Personalizedtxt2imgQueryInferenceJobInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Personalizedtxt2imgQueryInferenceJobInfoResponseBody?

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
            var model = Personalizedtxt2imgQueryInferenceJobInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Personalizedtxt2imgQueryModelTrainJobListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InferenceJobList : Tea.TeaModel {
            public var createTime: String?

            public var id: String?

            public var jobStatus: String?

            public var jobTrainProgress: Double?

            public var modelId: String?

            public var promptId: String?

            public var resultImageUrl: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.jobStatus != nil {
                    map["jobStatus"] = self.jobStatus!
                }
                if self.jobTrainProgress != nil {
                    map["jobTrainProgress"] = self.jobTrainProgress!
                }
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.promptId != nil {
                    map["promptId"] = self.promptId!
                }
                if self.resultImageUrl != nil {
                    map["resultImageUrl"] = self.resultImageUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("jobStatus") {
                    self.jobStatus = dict["jobStatus"] as! String
                }
                if dict.keys.contains("jobTrainProgress") {
                    self.jobTrainProgress = dict["jobTrainProgress"] as! Double
                }
                if dict.keys.contains("modelId") {
                    self.modelId = dict["modelId"] as! String
                }
                if dict.keys.contains("promptId") {
                    self.promptId = dict["promptId"] as! String
                }
                if dict.keys.contains("resultImageUrl") {
                    self.resultImageUrl = dict["resultImageUrl"] as! [String]
                }
            }
        }
        public var createTime: String?

        public var id: String?

        public var imageUrl: [String]?

        public var inferenceImageCount: Int32?

        public var inferenceJobList: [Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data.InferenceJobList]?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var name: String?

        public var objectType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.imageUrl != nil {
                map["imageUrl"] = self.imageUrl!
            }
            if self.inferenceImageCount != nil {
                map["inferenceImageCount"] = self.inferenceImageCount!
            }
            if self.inferenceJobList != nil {
                var tmp : [Any] = []
                for k in self.inferenceJobList! {
                    tmp.append(k.toMap())
                }
                map["inferenceJobList"] = tmp
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("imageUrl") {
                self.imageUrl = dict["imageUrl"] as! [String]
            }
            if dict.keys.contains("inferenceImageCount") {
                self.inferenceImageCount = dict["inferenceImageCount"] as! Int32
            }
            if dict.keys.contains("inferenceJobList") {
                var tmp : [Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data.InferenceJobList] = []
                for v in dict["inferenceJobList"] as! [Any] {
                    var model = Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data.InferenceJobList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inferenceJobList = tmp
            }
            if dict.keys.contains("jobStatus") {
                self.jobStatus = dict["jobStatus"] as! String
            }
            if dict.keys.contains("jobTrainProgress") {
                self.jobTrainProgress = dict["jobTrainProgress"] as! Double
            }
            if dict.keys.contains("modelId") {
                self.modelId = dict["modelId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("objectType") {
                self.objectType = dict["objectType"] as! String
            }
        }
    }
    public var data: [Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var tmp : [Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class Personalizedtxt2imgQueryModelTrainJobListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Personalizedtxt2imgQueryModelTrainJobListResponseBody?

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
            var model = Personalizedtxt2imgQueryModelTrainJobListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Personalizedtxt2imgQueryModelTrainStatusRequest : Tea.TeaModel {
    public var modelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
    }
}

public class Personalizedtxt2imgQueryModelTrainStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var modelTrainStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelTrainStatus != nil {
                map["modelTrainStatus"] = self.modelTrainStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("modelTrainStatus") {
                self.modelTrainStatus = dict["modelTrainStatus"] as! String
            }
        }
    }
    public var data: Personalizedtxt2imgQueryModelTrainStatusResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
            var model = Personalizedtxt2imgQueryModelTrainStatusResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMessage") {
            self.errMessage = dict["errMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class Personalizedtxt2imgQueryModelTrainStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Personalizedtxt2imgQueryModelTrainStatusResponseBody?

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
            var model = Personalizedtxt2imgQueryModelTrainStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
