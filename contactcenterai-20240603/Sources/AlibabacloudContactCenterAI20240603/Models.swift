import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AnalyzeConversationRequest : Tea.TeaModel {
    public class CategoryTags : Tea.TeaModel {
        public var tagDesc: String?

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
            if self.tagDesc != nil {
                map["tagDesc"] = self.tagDesc!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tagDesc") {
                self.tagDesc = dict["tagDesc"] as! String
            }
            if dict.keys.contains("tagName") {
                self.tagName = dict["tagName"] as! String
            }
        }
    }
    public class Dialogue : Tea.TeaModel {
        public class Sentences : Tea.TeaModel {
            public var role: String?

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
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public var sentences: [AnalyzeConversationRequest.Dialogue.Sentences]?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sentences != nil {
                var tmp : [Any] = []
                for k in self.sentences! {
                    tmp.append(k.toMap())
                }
                map["sentences"] = tmp
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("sentences") {
                var tmp : [AnalyzeConversationRequest.Dialogue.Sentences] = []
                for v in dict["sentences"] as! [Any] {
                    var model = AnalyzeConversationRequest.Dialogue.Sentences()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sentences = tmp
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
        }
    }
    public class Examples : Tea.TeaModel {
        public class Sentences : Tea.TeaModel {
            public var chatId: String?

            public var role: String?

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
                if self.chatId != nil {
                    map["chatId"] = self.chatId!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chatId") {
                    self.chatId = dict["chatId"] as! String
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public var output: String?

        public var sentences: [AnalyzeConversationRequest.Examples.Sentences]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output!
            }
            if self.sentences != nil {
                var tmp : [Any] = []
                for k in self.sentences! {
                    tmp.append(k.toMap())
                }
                map["sentences"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                self.output = dict["output"] as! String
            }
            if dict.keys.contains("sentences") {
                var tmp : [AnalyzeConversationRequest.Examples.Sentences] = []
                for v in dict["sentences"] as! [Any] {
                    var model = AnalyzeConversationRequest.Examples.Sentences()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sentences = tmp
            }
        }
    }
    public class Fields : Tea.TeaModel {
        public class EnumValues : Tea.TeaModel {
            public var desc: String?

            public var enumValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.desc != nil {
                    map["desc"] = self.desc!
                }
                if self.enumValue != nil {
                    map["enumValue"] = self.enumValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("desc") {
                    self.desc = dict["desc"] as! String
                }
                if dict.keys.contains("enumValue") {
                    self.enumValue = dict["enumValue"] as! String
                }
            }
        }
        public var code: String?

        public var desc: String?

        public var enumValues: [AnalyzeConversationRequest.Fields.EnumValues]?

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
            if self.desc != nil {
                map["desc"] = self.desc!
            }
            if self.enumValues != nil {
                var tmp : [Any] = []
                for k in self.enumValues! {
                    tmp.append(k.toMap())
                }
                map["enumValues"] = tmp
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
            if dict.keys.contains("desc") {
                self.desc = dict["desc"] as! String
            }
            if dict.keys.contains("enumValues") {
                var tmp : [AnalyzeConversationRequest.Fields.EnumValues] = []
                for v in dict["enumValues"] as! [Any] {
                    var model = AnalyzeConversationRequest.Fields.EnumValues()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.enumValues = tmp
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public class ServiceInspection : Tea.TeaModel {
        public class InspectionContents : Tea.TeaModel {
            public var content: String?

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
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public var inspectionContents: [AnalyzeConversationRequest.ServiceInspection.InspectionContents]?

        public var inspectionIntroduction: String?

        public var sceneIntroduction: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inspectionContents != nil {
                var tmp : [Any] = []
                for k in self.inspectionContents! {
                    tmp.append(k.toMap())
                }
                map["inspectionContents"] = tmp
            }
            if self.inspectionIntroduction != nil {
                map["inspectionIntroduction"] = self.inspectionIntroduction!
            }
            if self.sceneIntroduction != nil {
                map["sceneIntroduction"] = self.sceneIntroduction!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("inspectionContents") {
                var tmp : [AnalyzeConversationRequest.ServiceInspection.InspectionContents] = []
                for v in dict["inspectionContents"] as! [Any] {
                    var model = AnalyzeConversationRequest.ServiceInspection.InspectionContents()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inspectionContents = tmp
            }
            if dict.keys.contains("inspectionIntroduction") {
                self.inspectionIntroduction = dict["inspectionIntroduction"] as! String
            }
            if dict.keys.contains("sceneIntroduction") {
                self.sceneIntroduction = dict["sceneIntroduction"] as! String
            }
        }
    }
    public class UserProfiles : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var categoryTags: [AnalyzeConversationRequest.CategoryTags]?

    public var customPrompt: String?

    public var dialogue: AnalyzeConversationRequest.Dialogue?

    public var examples: [AnalyzeConversationRequest.Examples]?

    public var fields: [AnalyzeConversationRequest.Fields]?

    public var modelCode: String?

    public var resultTypes: [String]?

    public var sceneName: String?

    public var serviceInspection: AnalyzeConversationRequest.ServiceInspection?

    public var sourceCallerUid: String?

    public var stream: Bool?

    public var timeConstraintList: [String]?

    public var userProfiles: [AnalyzeConversationRequest.UserProfiles]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dialogue?.validate()
        try self.serviceInspection?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryTags != nil {
            var tmp : [Any] = []
            for k in self.categoryTags! {
                tmp.append(k.toMap())
            }
            map["categoryTags"] = tmp
        }
        if self.customPrompt != nil {
            map["customPrompt"] = self.customPrompt!
        }
        if self.dialogue != nil {
            map["dialogue"] = self.dialogue?.toMap()
        }
        if self.examples != nil {
            var tmp : [Any] = []
            for k in self.examples! {
                tmp.append(k.toMap())
            }
            map["examples"] = tmp
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["fields"] = tmp
        }
        if self.modelCode != nil {
            map["modelCode"] = self.modelCode!
        }
        if self.resultTypes != nil {
            map["resultTypes"] = self.resultTypes!
        }
        if self.sceneName != nil {
            map["sceneName"] = self.sceneName!
        }
        if self.serviceInspection != nil {
            map["serviceInspection"] = self.serviceInspection?.toMap()
        }
        if self.sourceCallerUid != nil {
            map["sourceCallerUid"] = self.sourceCallerUid!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.timeConstraintList != nil {
            map["timeConstraintList"] = self.timeConstraintList!
        }
        if self.userProfiles != nil {
            var tmp : [Any] = []
            for k in self.userProfiles! {
                tmp.append(k.toMap())
            }
            map["userProfiles"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("categoryTags") {
            var tmp : [AnalyzeConversationRequest.CategoryTags] = []
            for v in dict["categoryTags"] as! [Any] {
                var model = AnalyzeConversationRequest.CategoryTags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.categoryTags = tmp
        }
        if dict.keys.contains("customPrompt") {
            self.customPrompt = dict["customPrompt"] as! String
        }
        if dict.keys.contains("dialogue") {
            var model = AnalyzeConversationRequest.Dialogue()
            model.fromMap(dict["dialogue"] as! [String: Any])
            self.dialogue = model
        }
        if dict.keys.contains("examples") {
            var tmp : [AnalyzeConversationRequest.Examples] = []
            for v in dict["examples"] as! [Any] {
                var model = AnalyzeConversationRequest.Examples()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.examples = tmp
        }
        if dict.keys.contains("fields") {
            var tmp : [AnalyzeConversationRequest.Fields] = []
            for v in dict["fields"] as! [Any] {
                var model = AnalyzeConversationRequest.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("modelCode") {
            self.modelCode = dict["modelCode"] as! String
        }
        if dict.keys.contains("resultTypes") {
            self.resultTypes = dict["resultTypes"] as! [String]
        }
        if dict.keys.contains("sceneName") {
            self.sceneName = dict["sceneName"] as! String
        }
        if dict.keys.contains("serviceInspection") {
            var model = AnalyzeConversationRequest.ServiceInspection()
            model.fromMap(dict["serviceInspection"] as! [String: Any])
            self.serviceInspection = model
        }
        if dict.keys.contains("sourceCallerUid") {
            self.sourceCallerUid = dict["sourceCallerUid"] as! String
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("timeConstraintList") {
            self.timeConstraintList = dict["timeConstraintList"] as! [String]
        }
        if dict.keys.contains("userProfiles") {
            var tmp : [AnalyzeConversationRequest.UserProfiles] = []
            for v in dict["userProfiles"] as! [Any] {
                var model = AnalyzeConversationRequest.UserProfiles()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userProfiles = tmp
        }
    }
}

public class AnalyzeConversationResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorInfo: String?

    public var finishReason: String?

    public var inputTokens: String?

    public var outputTokens: String?

    public var requestId: String?

    public var success: Bool?

    public var text: String?

    public var totalTokens: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorInfo != nil {
            map["errorInfo"] = self.errorInfo!
        }
        if self.finishReason != nil {
            map["finishReason"] = self.finishReason!
        }
        if self.inputTokens != nil {
            map["inputTokens"] = self.inputTokens!
        }
        if self.outputTokens != nil {
            map["outputTokens"] = self.outputTokens!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.totalTokens != nil {
            map["totalTokens"] = self.totalTokens!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorInfo") {
            self.errorInfo = dict["errorInfo"] as! String
        }
        if dict.keys.contains("finishReason") {
            self.finishReason = dict["finishReason"] as! String
        }
        if dict.keys.contains("inputTokens") {
            self.inputTokens = dict["inputTokens"] as! String
        }
        if dict.keys.contains("outputTokens") {
            self.outputTokens = dict["outputTokens"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("text") {
            self.text = dict["text"] as! String
        }
        if dict.keys.contains("totalTokens") {
            self.totalTokens = dict["totalTokens"] as! String
        }
    }
}

public class AnalyzeConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AnalyzeConversationResponseBody?

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
            var model = AnalyzeConversationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AnalyzeImageRequest : Tea.TeaModel {
    public var imageUrls: [String]?

    public var resultTypes: [String]?

    public var stream: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrls != nil {
            map["imageUrls"] = self.imageUrls!
        }
        if self.resultTypes != nil {
            map["resultTypes"] = self.resultTypes!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("imageUrls") {
            self.imageUrls = dict["imageUrls"] as! [String]
        }
        if dict.keys.contains("resultTypes") {
            self.resultTypes = dict["resultTypes"] as! [String]
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
    }
}

public class AnalyzeImageResponseBody : Tea.TeaModel {
    public var finishReason: String?

    public var inputTokens: String?

    public var outputTokens: String?

    public var requestId: String?

    public var success: Bool?

    public var text: String?

    public var totalTokens: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.finishReason != nil {
            map["finishReason"] = self.finishReason!
        }
        if self.inputTokens != nil {
            map["inputTokens"] = self.inputTokens!
        }
        if self.outputTokens != nil {
            map["outputTokens"] = self.outputTokens!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.totalTokens != nil {
            map["totalTokens"] = self.totalTokens!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("finishReason") {
            self.finishReason = dict["finishReason"] as! String
        }
        if dict.keys.contains("inputTokens") {
            self.inputTokens = dict["inputTokens"] as! String
        }
        if dict.keys.contains("outputTokens") {
            self.outputTokens = dict["outputTokens"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("text") {
            self.text = dict["text"] as! String
        }
        if dict.keys.contains("totalTokens") {
            self.totalTokens = dict["totalTokens"] as! String
        }
    }
}

public class AnalyzeImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AnalyzeImageResponseBody?

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
            var model = AnalyzeImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTaskRequest : Tea.TeaModel {
    public class Dialogue : Tea.TeaModel {
        public class Sentences : Tea.TeaModel {
            public var role: String?

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
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public var sentences: [CreateTaskRequest.Dialogue.Sentences]?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sentences != nil {
                var tmp : [Any] = []
                for k in self.sentences! {
                    tmp.append(k.toMap())
                }
                map["sentences"] = tmp
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("sentences") {
                var tmp : [CreateTaskRequest.Dialogue.Sentences] = []
                for v in dict["sentences"] as! [Any] {
                    var model = CreateTaskRequest.Dialogue.Sentences()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sentences = tmp
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
        }
    }
    public class Examples : Tea.TeaModel {
        public class Sentences : Tea.TeaModel {
            public var role: String?

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
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public var output: String?

        public var sentences: [CreateTaskRequest.Examples.Sentences]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output!
            }
            if self.sentences != nil {
                var tmp : [Any] = []
                for k in self.sentences! {
                    tmp.append(k.toMap())
                }
                map["sentences"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                self.output = dict["output"] as! String
            }
            if dict.keys.contains("sentences") {
                var tmp : [CreateTaskRequest.Examples.Sentences] = []
                for v in dict["sentences"] as! [Any] {
                    var model = CreateTaskRequest.Examples.Sentences()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sentences = tmp
            }
        }
    }
    public class Fields : Tea.TeaModel {
        public class EnumValues : Tea.TeaModel {
            public var desc: String?

            public var enumValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.desc != nil {
                    map["desc"] = self.desc!
                }
                if self.enumValue != nil {
                    map["enumValue"] = self.enumValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("desc") {
                    self.desc = dict["desc"] as! String
                }
                if dict.keys.contains("enumValue") {
                    self.enumValue = dict["enumValue"] as! String
                }
            }
        }
        public var code: String?

        public var desc: String?

        public var enumValues: [CreateTaskRequest.Fields.EnumValues]?

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
            if self.desc != nil {
                map["desc"] = self.desc!
            }
            if self.enumValues != nil {
                var tmp : [Any] = []
                for k in self.enumValues! {
                    tmp.append(k.toMap())
                }
                map["enumValues"] = tmp
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
            if dict.keys.contains("desc") {
                self.desc = dict["desc"] as! String
            }
            if dict.keys.contains("enumValues") {
                var tmp : [CreateTaskRequest.Fields.EnumValues] = []
                for v in dict["enumValues"] as! [Any] {
                    var model = CreateTaskRequest.Fields.EnumValues()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.enumValues = tmp
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public class ServiceInspection : Tea.TeaModel {
        public class InspectionContents : Tea.TeaModel {
            public var content: String?

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
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public var inspectionContents: [CreateTaskRequest.ServiceInspection.InspectionContents]?

        public var inspectionIntroduction: String?

        public var sceneIntroduction: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inspectionContents != nil {
                var tmp : [Any] = []
                for k in self.inspectionContents! {
                    tmp.append(k.toMap())
                }
                map["inspectionContents"] = tmp
            }
            if self.inspectionIntroduction != nil {
                map["inspectionIntroduction"] = self.inspectionIntroduction!
            }
            if self.sceneIntroduction != nil {
                map["sceneIntroduction"] = self.sceneIntroduction!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("inspectionContents") {
                var tmp : [CreateTaskRequest.ServiceInspection.InspectionContents] = []
                for v in dict["inspectionContents"] as! [Any] {
                    var model = CreateTaskRequest.ServiceInspection.InspectionContents()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inspectionContents = tmp
            }
            if dict.keys.contains("inspectionIntroduction") {
                self.inspectionIntroduction = dict["inspectionIntroduction"] as! String
            }
            if dict.keys.contains("sceneIntroduction") {
                self.sceneIntroduction = dict["sceneIntroduction"] as! String
            }
        }
    }
    public class Transcription : Tea.TeaModel {
        public var asrModelCode: String?

        public var autoSplit: Int32?

        public var clientChannel: Int32?

        public var fileName: String?

        public var level: String?

        public var serviceChannel: Int32?

        public var serviceChannelKeywords: [String]?

        public var vocabularyId: String?

        public var voiceFileUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asrModelCode != nil {
                map["asrModelCode"] = self.asrModelCode!
            }
            if self.autoSplit != nil {
                map["autoSplit"] = self.autoSplit!
            }
            if self.clientChannel != nil {
                map["clientChannel"] = self.clientChannel!
            }
            if self.fileName != nil {
                map["fileName"] = self.fileName!
            }
            if self.level != nil {
                map["level"] = self.level!
            }
            if self.serviceChannel != nil {
                map["serviceChannel"] = self.serviceChannel!
            }
            if self.serviceChannelKeywords != nil {
                map["serviceChannelKeywords"] = self.serviceChannelKeywords!
            }
            if self.vocabularyId != nil {
                map["vocabularyId"] = self.vocabularyId!
            }
            if self.voiceFileUrl != nil {
                map["voiceFileUrl"] = self.voiceFileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("asrModelCode") {
                self.asrModelCode = dict["asrModelCode"] as! String
            }
            if dict.keys.contains("autoSplit") {
                self.autoSplit = dict["autoSplit"] as! Int32
            }
            if dict.keys.contains("clientChannel") {
                self.clientChannel = dict["clientChannel"] as! Int32
            }
            if dict.keys.contains("fileName") {
                self.fileName = dict["fileName"] as! String
            }
            if dict.keys.contains("level") {
                self.level = dict["level"] as! String
            }
            if dict.keys.contains("serviceChannel") {
                self.serviceChannel = dict["serviceChannel"] as! Int32
            }
            if dict.keys.contains("serviceChannelKeywords") {
                self.serviceChannelKeywords = dict["serviceChannelKeywords"] as! [String]
            }
            if dict.keys.contains("vocabularyId") {
                self.vocabularyId = dict["vocabularyId"] as! String
            }
            if dict.keys.contains("voiceFileUrl") {
                self.voiceFileUrl = dict["voiceFileUrl"] as! String
            }
        }
    }
    public var dialogue: CreateTaskRequest.Dialogue?

    public var examples: CreateTaskRequest.Examples?

    public var fields: [CreateTaskRequest.Fields]?

    public var modelCode: String?

    public var resultTypes: [String]?

    public var serviceInspection: CreateTaskRequest.ServiceInspection?

    public var taskType: String?

    public var templateIds: [String]?

    public var transcription: CreateTaskRequest.Transcription?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dialogue?.validate()
        try self.examples?.validate()
        try self.serviceInspection?.validate()
        try self.transcription?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dialogue != nil {
            map["dialogue"] = self.dialogue?.toMap()
        }
        if self.examples != nil {
            map["examples"] = self.examples?.toMap()
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["fields"] = tmp
        }
        if self.modelCode != nil {
            map["modelCode"] = self.modelCode!
        }
        if self.resultTypes != nil {
            map["resultTypes"] = self.resultTypes!
        }
        if self.serviceInspection != nil {
            map["serviceInspection"] = self.serviceInspection?.toMap()
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        if self.templateIds != nil {
            map["templateIds"] = self.templateIds!
        }
        if self.transcription != nil {
            map["transcription"] = self.transcription?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dialogue") {
            var model = CreateTaskRequest.Dialogue()
            model.fromMap(dict["dialogue"] as! [String: Any])
            self.dialogue = model
        }
        if dict.keys.contains("examples") {
            var model = CreateTaskRequest.Examples()
            model.fromMap(dict["examples"] as! [String: Any])
            self.examples = model
        }
        if dict.keys.contains("fields") {
            var tmp : [CreateTaskRequest.Fields] = []
            for v in dict["fields"] as! [Any] {
                var model = CreateTaskRequest.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("modelCode") {
            self.modelCode = dict["modelCode"] as! String
        }
        if dict.keys.contains("resultTypes") {
            self.resultTypes = dict["resultTypes"] as! [String]
        }
        if dict.keys.contains("serviceInspection") {
            var model = CreateTaskRequest.ServiceInspection()
            model.fromMap(dict["serviceInspection"] as! [String: Any])
            self.serviceInspection = model
        }
        if dict.keys.contains("taskType") {
            self.taskType = dict["taskType"] as! String
        }
        if dict.keys.contains("templateIds") {
            self.templateIds = dict["templateIds"] as! [String]
        }
        if dict.keys.contains("transcription") {
            var model = CreateTaskRequest.Transcription()
            model.fromMap(dict["transcription"] as! [String: Any])
            self.transcription = model
        }
    }
}

public class CreateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var data: CreateTaskResponseBody.Data?

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
            var model = CreateTaskResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class CreateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTaskResponseBody?

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
            var model = CreateTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskResultRequest : Tea.TeaModel {
    public var requiredFieldList: [String]?

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
        if self.requiredFieldList != nil {
            map["requiredFieldList"] = self.requiredFieldList!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requiredFieldList") {
            self.requiredFieldList = dict["requiredFieldList"] as! [String]
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class GetTaskResultShrinkRequest : Tea.TeaModel {
    public var requiredFieldListShrink: String?

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
        if self.requiredFieldListShrink != nil {
            map["requiredFieldList"] = self.requiredFieldListShrink!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requiredFieldList") {
            self.requiredFieldListShrink = dict["requiredFieldList"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class GetTaskResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AsrResult : Tea.TeaModel {
            public var begin: Int64?

            public var emotionValue: Int32?

            public var end: Int64?

            public var role: String?

            public var speechRate: Int32?

            public var words: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.begin != nil {
                    map["begin"] = self.begin!
                }
                if self.emotionValue != nil {
                    map["emotionValue"] = self.emotionValue!
                }
                if self.end != nil {
                    map["end"] = self.end!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.speechRate != nil {
                    map["speechRate"] = self.speechRate!
                }
                if self.words != nil {
                    map["words"] = self.words!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("begin") {
                    self.begin = dict["begin"] as! Int64
                }
                if dict.keys.contains("emotionValue") {
                    self.emotionValue = dict["emotionValue"] as! Int32
                }
                if dict.keys.contains("end") {
                    self.end = dict["end"] as! Int64
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
                if dict.keys.contains("speechRate") {
                    self.speechRate = dict["speechRate"] as! Int32
                }
                if dict.keys.contains("words") {
                    self.words = dict["words"] as! String
                }
            }
        }
        public var asrResult: [GetTaskResultResponseBody.Data.AsrResult]?

        public var extra: String?

        public var taskErrorMessage: String?

        public var taskId: String?

        public var taskStatus: String?

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
            if self.asrResult != nil {
                var tmp : [Any] = []
                for k in self.asrResult! {
                    tmp.append(k.toMap())
                }
                map["asrResult"] = tmp
            }
            if self.extra != nil {
                map["extra"] = self.extra!
            }
            if self.taskErrorMessage != nil {
                map["taskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["taskStatus"] = self.taskStatus!
            }
            if self.text != nil {
                map["text"] = self.text!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("asrResult") {
                var tmp : [GetTaskResultResponseBody.Data.AsrResult] = []
                for v in dict["asrResult"] as! [Any] {
                    var model = GetTaskResultResponseBody.Data.AsrResult()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.asrResult = tmp
            }
            if dict.keys.contains("extra") {
                self.extra = dict["extra"] as! String
            }
            if dict.keys.contains("taskErrorMessage") {
                self.taskErrorMessage = dict["taskErrorMessage"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("taskStatus") {
                self.taskStatus = dict["taskStatus"] as! String
            }
            if dict.keys.contains("text") {
                self.text = dict["text"] as! String
            }
        }
    }
    public var data: GetTaskResultResponseBody.Data?

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
            var model = GetTaskResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class GetTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResultResponseBody?

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
            var model = GetTaskResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunCompletionRequest : Tea.TeaModel {
    public class Dialogue : Tea.TeaModel {
        public class Sentences : Tea.TeaModel {
            public var chatId: String?

            public var role: String?

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
                if self.chatId != nil {
                    map["ChatId"] = self.chatId!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChatId") {
                    self.chatId = dict["ChatId"] as! String
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public var sentences: [RunCompletionRequest.Dialogue.Sentences]?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sentences != nil {
                var tmp : [Any] = []
                for k in self.sentences! {
                    tmp.append(k.toMap())
                }
                map["Sentences"] = tmp
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Sentences") {
                var tmp : [RunCompletionRequest.Dialogue.Sentences] = []
                for v in dict["Sentences"] as! [Any] {
                    var model = RunCompletionRequest.Dialogue.Sentences()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sentences = tmp
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public class Fields : Tea.TeaModel {
        public class EnumValues : Tea.TeaModel {
            public var desc: String?

            public var enumValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.desc != nil {
                    map["Desc"] = self.desc!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Desc") {
                    self.desc = dict["Desc"] as! String
                }
                if dict.keys.contains("EnumValue") {
                    self.enumValue = dict["EnumValue"] as! String
                }
            }
        }
        public var code: String?

        public var desc: String?

        public var enumValues: [RunCompletionRequest.Fields.EnumValues]?

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
                map["Code"] = self.code!
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.enumValues != nil {
                var tmp : [Any] = []
                for k in self.enumValues! {
                    tmp.append(k.toMap())
                }
                map["EnumValues"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("EnumValues") {
                var tmp : [RunCompletionRequest.Fields.EnumValues] = []
                for v in dict["EnumValues"] as! [Any] {
                    var model = RunCompletionRequest.Fields.EnumValues()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.enumValues = tmp
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public class ServiceInspection : Tea.TeaModel {
        public class InspectionContents : Tea.TeaModel {
            public var content: String?

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
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var inspectionContents: [RunCompletionRequest.ServiceInspection.InspectionContents]?

        public var inspectionIntroduction: String?

        public var sceneIntroduction: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inspectionContents != nil {
                var tmp : [Any] = []
                for k in self.inspectionContents! {
                    tmp.append(k.toMap())
                }
                map["InspectionContents"] = tmp
            }
            if self.inspectionIntroduction != nil {
                map["InspectionIntroduction"] = self.inspectionIntroduction!
            }
            if self.sceneIntroduction != nil {
                map["SceneIntroduction"] = self.sceneIntroduction!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InspectionContents") {
                var tmp : [RunCompletionRequest.ServiceInspection.InspectionContents] = []
                for v in dict["InspectionContents"] as! [Any] {
                    var model = RunCompletionRequest.ServiceInspection.InspectionContents()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inspectionContents = tmp
            }
            if dict.keys.contains("InspectionIntroduction") {
                self.inspectionIntroduction = dict["InspectionIntroduction"] as! String
            }
            if dict.keys.contains("SceneIntroduction") {
                self.sceneIntroduction = dict["SceneIntroduction"] as! String
            }
        }
    }
    public var dialogue: RunCompletionRequest.Dialogue?

    public var fields: [RunCompletionRequest.Fields]?

    public var modelCode: String?

    public var serviceInspection: RunCompletionRequest.ServiceInspection?

    public var stream: Bool?

    public var templateIds: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dialogue?.validate()
        try self.serviceInspection?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dialogue != nil {
            map["Dialogue"] = self.dialogue?.toMap()
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.modelCode != nil {
            map["ModelCode"] = self.modelCode!
        }
        if self.serviceInspection != nil {
            map["ServiceInspection"] = self.serviceInspection?.toMap()
        }
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        if self.templateIds != nil {
            map["TemplateIds"] = self.templateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dialogue") {
            var model = RunCompletionRequest.Dialogue()
            model.fromMap(dict["Dialogue"] as! [String: Any])
            self.dialogue = model
        }
        if dict.keys.contains("Fields") {
            var tmp : [RunCompletionRequest.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = RunCompletionRequest.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("ModelCode") {
            self.modelCode = dict["ModelCode"] as! String
        }
        if dict.keys.contains("ServiceInspection") {
            var model = RunCompletionRequest.ServiceInspection()
            model.fromMap(dict["ServiceInspection"] as! [String: Any])
            self.serviceInspection = model
        }
        if dict.keys.contains("Stream") {
            self.stream = dict["Stream"] as! Bool
        }
        if dict.keys.contains("TemplateIds") {
            self.templateIds = dict["TemplateIds"] as! [Int64]
        }
    }
}

public class RunCompletionResponseBody : Tea.TeaModel {
    public var finishReason: String?

    public var requestId: String?

    public var text: String?

    public var inputTokens: String?

    public var outputTokens: String?

    public var totalTokens: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.finishReason != nil {
            map["FinishReason"] = self.finishReason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.inputTokens != nil {
            map["inputTokens"] = self.inputTokens!
        }
        if self.outputTokens != nil {
            map["outputTokens"] = self.outputTokens!
        }
        if self.totalTokens != nil {
            map["totalTokens"] = self.totalTokens!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FinishReason") {
            self.finishReason = dict["FinishReason"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("inputTokens") {
            self.inputTokens = dict["inputTokens"] as! String
        }
        if dict.keys.contains("outputTokens") {
            self.outputTokens = dict["outputTokens"] as! String
        }
        if dict.keys.contains("totalTokens") {
            self.totalTokens = dict["totalTokens"] as! String
        }
    }
}

public class RunCompletionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCompletionResponseBody?

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
            var model = RunCompletionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunCompletionMessageRequest : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public var content: String?

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
                map["Content"] = self.content!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Role") {
                self.role = dict["Role"] as! String
            }
        }
    }
    public var messages: [RunCompletionMessageRequest.Messages]?

    public var modelCode: String?

    public var stream: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["Messages"] = tmp
        }
        if self.modelCode != nil {
            map["ModelCode"] = self.modelCode!
        }
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Messages") {
            var tmp : [RunCompletionMessageRequest.Messages] = []
            for v in dict["Messages"] as! [Any] {
                var model = RunCompletionMessageRequest.Messages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.messages = tmp
        }
        if dict.keys.contains("ModelCode") {
            self.modelCode = dict["ModelCode"] as! String
        }
        if dict.keys.contains("Stream") {
            self.stream = dict["Stream"] as! Bool
        }
    }
}

public class RunCompletionMessageResponseBody : Tea.TeaModel {
    public var finishReason: String?

    public var requestId: String?

    public var text: String?

    public var inputTokens: String?

    public var outputTokens: String?

    public var totalTokens: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.finishReason != nil {
            map["FinishReason"] = self.finishReason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.inputTokens != nil {
            map["inputTokens"] = self.inputTokens!
        }
        if self.outputTokens != nil {
            map["outputTokens"] = self.outputTokens!
        }
        if self.totalTokens != nil {
            map["totalTokens"] = self.totalTokens!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FinishReason") {
            self.finishReason = dict["FinishReason"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("inputTokens") {
            self.inputTokens = dict["inputTokens"] as! String
        }
        if dict.keys.contains("outputTokens") {
            self.outputTokens = dict["outputTokens"] as! String
        }
        if dict.keys.contains("totalTokens") {
            self.totalTokens = dict["totalTokens"] as! String
        }
    }
}

public class RunCompletionMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCompletionMessageResponseBody?

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
            var model = RunCompletionMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
