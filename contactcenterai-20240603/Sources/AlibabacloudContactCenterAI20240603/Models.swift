import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AnalyzeConversationRequest : Tea.TeaModel {
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
    public var dialogue: AnalyzeConversationRequest.Dialogue?

    public var examples: [AnalyzeConversationRequest.Examples]?

    public var fields: [AnalyzeConversationRequest.Fields]?

    public var modelCode: String?

    public var resultTypes: [String]?

    public var sceneName: String?

    public var serviceInspection: AnalyzeConversationRequest.ServiceInspection?

    public var stream: Bool?

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
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
    }
}

public class AnalyzeConversationResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorInfo: String?

    public var finishReason: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorInfo != nil {
            map["errorInfo"] = self.errorInfo!
        }
        if self.finishReason != nil {
            map["finishReason"] = self.finishReason!
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("text") {
            self.text = dict["text"] as! String
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

    public override init() {
        super.init()
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

    public override init() {
        super.init()
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
