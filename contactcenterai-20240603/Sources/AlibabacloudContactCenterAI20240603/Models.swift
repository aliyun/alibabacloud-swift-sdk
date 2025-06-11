import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AnalyzeAudioSyncRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDesc"] as? String {
                self.tagDesc = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["desc"] as? String {
                    self.desc = value
                }
                if let value = dict["enumValue"] as? String {
                    self.enumValue = value
                }
            }
        }
        public var code: String?

        public var desc: String?

        public var enumValues: [AnalyzeAudioSyncRequest.Fields.EnumValues]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["desc"] as? String {
                self.desc = value
            }
            if let value = dict["enumValues"] as? [Any?] {
                var tmp : [AnalyzeAudioSyncRequest.Fields.EnumValues] = []
                for v in value {
                    if v != nil {
                        var model = AnalyzeAudioSyncRequest.Fields.EnumValues()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.enumValues = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
            }
        }
        public var inspectionContents: [AnalyzeAudioSyncRequest.ServiceInspection.InspectionContents]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["inspectionContents"] as? [Any?] {
                var tmp : [AnalyzeAudioSyncRequest.ServiceInspection.InspectionContents] = []
                for v in value {
                    if v != nil {
                        var model = AnalyzeAudioSyncRequest.ServiceInspection.InspectionContents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inspectionContents = tmp
            }
            if let value = dict["inspectionIntroduction"] as? String {
                self.inspectionIntroduction = value
            }
            if let value = dict["sceneIntroduction"] as? String {
                self.sceneIntroduction = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asrModelCode"] as? String {
                self.asrModelCode = value
            }
            if let value = dict["autoSplit"] as? Int32 {
                self.autoSplit = value
            }
            if let value = dict["clientChannel"] as? Int32 {
                self.clientChannel = value
            }
            if let value = dict["fileName"] as? String {
                self.fileName = value
            }
            if let value = dict["level"] as? String {
                self.level = value
            }
            if let value = dict["serviceChannel"] as? Int32 {
                self.serviceChannel = value
            }
            if let value = dict["serviceChannelKeywords"] as? [String] {
                self.serviceChannelKeywords = value
            }
            if let value = dict["vocabularyId"] as? String {
                self.vocabularyId = value
            }
            if let value = dict["voiceFileUrl"] as? String {
                self.voiceFileUrl = value
            }
        }
    }
    public class Variables : Tea.TeaModel {
        public var variableCode: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variableCode != nil {
                map["variableCode"] = self.variableCode!
            }
            if self.variableValue != nil {
                map["variableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["variableCode"] as? String {
                self.variableCode = value
            }
            if let value = dict["variableValue"] as? String {
                self.variableValue = value
            }
        }
    }
    public var categoryTags: [AnalyzeAudioSyncRequest.CategoryTags]?

    public var customPrompt: String?

    public var fields: [AnalyzeAudioSyncRequest.Fields]?

    public var modelCode: String?

    public var responseFormatType: String?

    public var resultTypes: [String]?

    public var serviceInspection: AnalyzeAudioSyncRequest.ServiceInspection?

    public var stream: Bool?

    public var templateIds: [String]?

    public var transcription: AnalyzeAudioSyncRequest.Transcription?

    public var variables: [AnalyzeAudioSyncRequest.Variables]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serviceInspection?.validate()
        try self.transcription?.validate()
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
        if self.responseFormatType != nil {
            map["responseFormatType"] = self.responseFormatType!
        }
        if self.resultTypes != nil {
            map["resultTypes"] = self.resultTypes!
        }
        if self.serviceInspection != nil {
            map["serviceInspection"] = self.serviceInspection?.toMap()
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.templateIds != nil {
            map["templateIds"] = self.templateIds!
        }
        if self.transcription != nil {
            map["transcription"] = self.transcription?.toMap()
        }
        if self.variables != nil {
            var tmp : [Any] = []
            for k in self.variables! {
                tmp.append(k.toMap())
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categoryTags"] as? [Any?] {
            var tmp : [AnalyzeAudioSyncRequest.CategoryTags] = []
            for v in value {
                if v != nil {
                    var model = AnalyzeAudioSyncRequest.CategoryTags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.categoryTags = tmp
        }
        if let value = dict["customPrompt"] as? String {
            self.customPrompt = value
        }
        if let value = dict["fields"] as? [Any?] {
            var tmp : [AnalyzeAudioSyncRequest.Fields] = []
            for v in value {
                if v != nil {
                    var model = AnalyzeAudioSyncRequest.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["modelCode"] as? String {
            self.modelCode = value
        }
        if let value = dict["responseFormatType"] as? String {
            self.responseFormatType = value
        }
        if let value = dict["resultTypes"] as? [String] {
            self.resultTypes = value
        }
        if let value = dict["serviceInspection"] as? [String: Any?] {
            var model = AnalyzeAudioSyncRequest.ServiceInspection()
            model.fromMap(value)
            self.serviceInspection = model
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["templateIds"] as? [String] {
            self.templateIds = value
        }
        if let value = dict["transcription"] as? [String: Any?] {
            var model = AnalyzeAudioSyncRequest.Transcription()
            model.fromMap(value)
            self.transcription = model
        }
        if let value = dict["variables"] as? [Any?] {
            var tmp : [AnalyzeAudioSyncRequest.Variables] = []
            for v in value {
                if v != nil {
                    var model = AnalyzeAudioSyncRequest.Variables()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.variables = tmp
        }
    }
}

public class AnalyzeAudioSyncResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["finishReason"] as? String {
            self.finishReason = value
        }
        if let value = dict["inputTokens"] as? String {
            self.inputTokens = value
        }
        if let value = dict["outputTokens"] as? String {
            self.outputTokens = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["totalTokens"] as? String {
            self.totalTokens = value
        }
    }
}

public class AnalyzeAudioSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AnalyzeAudioSyncResponseBody?

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
            var model = AnalyzeAudioSyncResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDesc"] as? String {
                self.tagDesc = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["sentences"] as? [Any?] {
                var tmp : [AnalyzeConversationRequest.Dialogue.Sentences] = []
                for v in value {
                    if v != nil {
                        var model = AnalyzeConversationRequest.Dialogue.Sentences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sentences = tmp
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chatId"] as? String {
                    self.chatId = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? String {
                self.output = value
            }
            if let value = dict["sentences"] as? [Any?] {
                var tmp : [AnalyzeConversationRequest.Examples.Sentences] = []
                for v in value {
                    if v != nil {
                        var model = AnalyzeConversationRequest.Examples.Sentences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["desc"] as? String {
                    self.desc = value
                }
                if let value = dict["enumValue"] as? String {
                    self.enumValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["desc"] as? String {
                self.desc = value
            }
            if let value = dict["enumValues"] as? [Any?] {
                var tmp : [AnalyzeConversationRequest.Fields.EnumValues] = []
                for v in value {
                    if v != nil {
                        var model = AnalyzeConversationRequest.Fields.EnumValues()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.enumValues = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["inspectionContents"] as? [Any?] {
                var tmp : [AnalyzeConversationRequest.ServiceInspection.InspectionContents] = []
                for v in value {
                    if v != nil {
                        var model = AnalyzeConversationRequest.ServiceInspection.InspectionContents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inspectionContents = tmp
            }
            if let value = dict["inspectionIntroduction"] as? String {
                self.inspectionIntroduction = value
            }
            if let value = dict["sceneIntroduction"] as? String {
                self.sceneIntroduction = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var categoryTags: [AnalyzeConversationRequest.CategoryTags]?

    public var customPrompt: String?

    public var dialogue: AnalyzeConversationRequest.Dialogue?

    public var examples: [AnalyzeConversationRequest.Examples]?

    public var fields: [AnalyzeConversationRequest.Fields]?

    public var modelCode: String?

    public var responseFormatType: String?

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
        if self.responseFormatType != nil {
            map["responseFormatType"] = self.responseFormatType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categoryTags"] as? [Any?] {
            var tmp : [AnalyzeConversationRequest.CategoryTags] = []
            for v in value {
                if v != nil {
                    var model = AnalyzeConversationRequest.CategoryTags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.categoryTags = tmp
        }
        if let value = dict["customPrompt"] as? String {
            self.customPrompt = value
        }
        if let value = dict["dialogue"] as? [String: Any?] {
            var model = AnalyzeConversationRequest.Dialogue()
            model.fromMap(value)
            self.dialogue = model
        }
        if let value = dict["examples"] as? [Any?] {
            var tmp : [AnalyzeConversationRequest.Examples] = []
            for v in value {
                if v != nil {
                    var model = AnalyzeConversationRequest.Examples()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.examples = tmp
        }
        if let value = dict["fields"] as? [Any?] {
            var tmp : [AnalyzeConversationRequest.Fields] = []
            for v in value {
                if v != nil {
                    var model = AnalyzeConversationRequest.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["modelCode"] as? String {
            self.modelCode = value
        }
        if let value = dict["responseFormatType"] as? String {
            self.responseFormatType = value
        }
        if let value = dict["resultTypes"] as? [String] {
            self.resultTypes = value
        }
        if let value = dict["sceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["serviceInspection"] as? [String: Any?] {
            var model = AnalyzeConversationRequest.ServiceInspection()
            model.fromMap(value)
            self.serviceInspection = model
        }
        if let value = dict["sourceCallerUid"] as? String {
            self.sourceCallerUid = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["timeConstraintList"] as? [String] {
            self.timeConstraintList = value
        }
        if let value = dict["userProfiles"] as? [Any?] {
            var tmp : [AnalyzeConversationRequest.UserProfiles] = []
            for v in value {
                if v != nil {
                    var model = AnalyzeConversationRequest.UserProfiles()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorInfo"] as? String {
            self.errorInfo = value
        }
        if let value = dict["finishReason"] as? String {
            self.finishReason = value
        }
        if let value = dict["inputTokens"] as? String {
            self.inputTokens = value
        }
        if let value = dict["outputTokens"] as? String {
            self.outputTokens = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["totalTokens"] as? String {
            self.totalTokens = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AnalyzeConversationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AnalyzeImageRequest : Tea.TeaModel {
    public var imageUrls: [String]?

    public var responseFormatType: String?

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
        if self.responseFormatType != nil {
            map["responseFormatType"] = self.responseFormatType!
        }
        if self.resultTypes != nil {
            map["resultTypes"] = self.resultTypes!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["imageUrls"] as? [String] {
            self.imageUrls = value
        }
        if let value = dict["responseFormatType"] as? String {
            self.responseFormatType = value
        }
        if let value = dict["resultTypes"] as? [String] {
            self.resultTypes = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["finishReason"] as? String {
            self.finishReason = value
        }
        if let value = dict["inputTokens"] as? String {
            self.inputTokens = value
        }
        if let value = dict["outputTokens"] as? String {
            self.outputTokens = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["totalTokens"] as? String {
            self.totalTokens = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AnalyzeImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTaskRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDesc"] as? String {
                self.tagDesc = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["sentences"] as? [Any?] {
                var tmp : [CreateTaskRequest.Dialogue.Sentences] = []
                for v in value {
                    if v != nil {
                        var model = CreateTaskRequest.Dialogue.Sentences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sentences = tmp
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? String {
                self.output = value
            }
            if let value = dict["sentences"] as? [Any?] {
                var tmp : [CreateTaskRequest.Examples.Sentences] = []
                for v in value {
                    if v != nil {
                        var model = CreateTaskRequest.Examples.Sentences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["desc"] as? String {
                    self.desc = value
                }
                if let value = dict["enumValue"] as? String {
                    self.enumValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["desc"] as? String {
                self.desc = value
            }
            if let value = dict["enumValues"] as? [Any?] {
                var tmp : [CreateTaskRequest.Fields.EnumValues] = []
                for v in value {
                    if v != nil {
                        var model = CreateTaskRequest.Fields.EnumValues()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.enumValues = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["inspectionContents"] as? [Any?] {
                var tmp : [CreateTaskRequest.ServiceInspection.InspectionContents] = []
                for v in value {
                    if v != nil {
                        var model = CreateTaskRequest.ServiceInspection.InspectionContents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inspectionContents = tmp
            }
            if let value = dict["inspectionIntroduction"] as? String {
                self.inspectionIntroduction = value
            }
            if let value = dict["sceneIntroduction"] as? String {
                self.sceneIntroduction = value
            }
        }
    }
    public class Transcription : Tea.TeaModel {
        public var asrModelCode: String?

        public var autoSplit: Int32?

        public var clientChannel: Int32?

        public var fileName: String?

        public var level: String?

        public var roleIdentification: Bool?

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
            if self.roleIdentification != nil {
                map["roleIdentification"] = self.roleIdentification!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asrModelCode"] as? String {
                self.asrModelCode = value
            }
            if let value = dict["autoSplit"] as? Int32 {
                self.autoSplit = value
            }
            if let value = dict["clientChannel"] as? Int32 {
                self.clientChannel = value
            }
            if let value = dict["fileName"] as? String {
                self.fileName = value
            }
            if let value = dict["level"] as? String {
                self.level = value
            }
            if let value = dict["roleIdentification"] as? Bool {
                self.roleIdentification = value
            }
            if let value = dict["serviceChannel"] as? Int32 {
                self.serviceChannel = value
            }
            if let value = dict["serviceChannelKeywords"] as? [String] {
                self.serviceChannelKeywords = value
            }
            if let value = dict["vocabularyId"] as? String {
                self.vocabularyId = value
            }
            if let value = dict["voiceFileUrl"] as? String {
                self.voiceFileUrl = value
            }
        }
    }
    public class Variables : Tea.TeaModel {
        public var variableCode: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variableCode != nil {
                map["variableCode"] = self.variableCode!
            }
            if self.variableValue != nil {
                map["variableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["variableCode"] as? String {
                self.variableCode = value
            }
            if let value = dict["variableValue"] as? String {
                self.variableValue = value
            }
        }
    }
    public var callBackUrl: String?

    public var categoryTags: [CreateTaskRequest.CategoryTags]?

    public var customPrompt: String?

    public var dialogue: CreateTaskRequest.Dialogue?

    public var examples: CreateTaskRequest.Examples?

    public var fields: [CreateTaskRequest.Fields]?

    public var modelCode: String?

    public var responseFormatType: String?

    public var resultTypes: [String]?

    public var serviceInspection: CreateTaskRequest.ServiceInspection?

    public var taskType: String?

    public var templateIds: [String]?

    public var transcription: CreateTaskRequest.Transcription?

    public var variables: [CreateTaskRequest.Variables]?

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
        if self.callBackUrl != nil {
            map["callBackUrl"] = self.callBackUrl!
        }
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
        if self.responseFormatType != nil {
            map["responseFormatType"] = self.responseFormatType!
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
        if self.variables != nil {
            var tmp : [Any] = []
            for k in self.variables! {
                tmp.append(k.toMap())
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["callBackUrl"] as? String {
            self.callBackUrl = value
        }
        if let value = dict["categoryTags"] as? [Any?] {
            var tmp : [CreateTaskRequest.CategoryTags] = []
            for v in value {
                if v != nil {
                    var model = CreateTaskRequest.CategoryTags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.categoryTags = tmp
        }
        if let value = dict["customPrompt"] as? String {
            self.customPrompt = value
        }
        if let value = dict["dialogue"] as? [String: Any?] {
            var model = CreateTaskRequest.Dialogue()
            model.fromMap(value)
            self.dialogue = model
        }
        if let value = dict["examples"] as? [String: Any?] {
            var model = CreateTaskRequest.Examples()
            model.fromMap(value)
            self.examples = model
        }
        if let value = dict["fields"] as? [Any?] {
            var tmp : [CreateTaskRequest.Fields] = []
            for v in value {
                if v != nil {
                    var model = CreateTaskRequest.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["modelCode"] as? String {
            self.modelCode = value
        }
        if let value = dict["responseFormatType"] as? String {
            self.responseFormatType = value
        }
        if let value = dict["resultTypes"] as? [String] {
            self.resultTypes = value
        }
        if let value = dict["serviceInspection"] as? [String: Any?] {
            var model = CreateTaskRequest.ServiceInspection()
            model.fromMap(value)
            self.serviceInspection = model
        }
        if let value = dict["taskType"] as? String {
            self.taskType = value
        }
        if let value = dict["templateIds"] as? [String] {
            self.templateIds = value
        }
        if let value = dict["transcription"] as? [String: Any?] {
            var model = CreateTaskRequest.Transcription()
            model.fromMap(value)
            self.transcription = model
        }
        if let value = dict["variables"] as? [Any?] {
            var tmp : [CreateTaskRequest.Variables] = []
            for v in value {
                if v != nil {
                    var model = CreateTaskRequest.Variables()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.variables = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVocabRequest : Tea.TeaModel {
    public class WordWeightList : Tea.TeaModel {
        public var weight: Int32?

        public var word: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            if self.word != nil {
                map["word"] = self.word!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
            if let value = dict["word"] as? String {
                self.word = value
            }
        }
    }
    public var audioModelCode: String?

    public var description_: String?

    public var name: String?

    public var wordWeightList: [CreateVocabRequest.WordWeightList]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioModelCode != nil {
            map["audioModelCode"] = self.audioModelCode!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.wordWeightList != nil {
            var tmp : [Any] = []
            for k in self.wordWeightList! {
                tmp.append(k.toMap())
            }
            map["wordWeightList"] = tmp
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["audioModelCode"] as? String {
            self.audioModelCode = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["wordWeightList"] as? [Any?] {
            var tmp : [CreateVocabRequest.WordWeightList] = []
            for v in value {
                if v != nil {
                    var model = CreateVocabRequest.WordWeightList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wordWeightList = tmp
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateVocabResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var vocabularyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vocabularyId != nil {
                map["vocabularyId"] = self.vocabularyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["vocabularyId"] as? String {
                self.vocabularyId = value
            }
        }
    }
    public var data: CreateVocabResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateVocabResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class CreateVocabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVocabResponseBody?

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
            var model = CreateVocabResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVocabRequest : Tea.TeaModel {
    public var vocabularyId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.vocabularyId != nil {
            map["vocabularyId"] = self.vocabularyId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["vocabularyId"] as? String {
            self.vocabularyId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteVocabResponseBody : Tea.TeaModel {
    public var data: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class DeleteVocabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVocabResponseBody?

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
            var model = DeleteVocabResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requiredFieldList"] as? [String] {
            self.requiredFieldList = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requiredFieldList"] as? String {
            self.requiredFieldListShrink = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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

            public var roleName: String?

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
                if self.roleName != nil {
                    map["roleName"] = self.roleName!
                }
                if self.speechRate != nil {
                    map["speechRate"] = self.speechRate!
                }
                if self.words != nil {
                    map["words"] = self.words!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["begin"] as? Int64 {
                    self.begin = value
                }
                if let value = dict["emotionValue"] as? Int32 {
                    self.emotionValue = value
                }
                if let value = dict["end"] as? Int64 {
                    self.end = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["roleName"] as? String {
                    self.roleName = value
                }
                if let value = dict["speechRate"] as? Int32 {
                    self.speechRate = value
                }
                if let value = dict["words"] as? String {
                    self.words = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asrResult"] as? [Any?] {
                var tmp : [GetTaskResultResponseBody.Data.AsrResult] = []
                for v in value {
                    if v != nil {
                        var model = GetTaskResultResponseBody.Data.AsrResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.asrResult = tmp
            }
            if let value = dict["extra"] as? String {
                self.extra = value
            }
            if let value = dict["taskErrorMessage"] as? String {
                self.taskErrorMessage = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["text"] as? String {
                self.text = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTaskResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTaskResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVocabRequest : Tea.TeaModel {
    public var vocabularyId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.vocabularyId != nil {
            map["vocabularyId"] = self.vocabularyId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["vocabularyId"] as? String {
            self.vocabularyId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetVocabResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WordWeightList : Tea.TeaModel {
            public var weight: Int32?

            public var word: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                if self.word != nil {
                    map["word"] = self.word!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
                if let value = dict["word"] as? String {
                    self.word = value
                }
            }
        }
        public var audioModelCode: String?

        public var description_: String?

        public var name: String?

        public var vocabularyId: String?

        public var wordWeightList: [GetVocabResponseBody.Data.WordWeightList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioModelCode != nil {
                map["audioModelCode"] = self.audioModelCode!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.vocabularyId != nil {
                map["vocabularyId"] = self.vocabularyId!
            }
            if self.wordWeightList != nil {
                var tmp : [Any] = []
                for k in self.wordWeightList! {
                    tmp.append(k.toMap())
                }
                map["wordWeightList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["audioModelCode"] as? String {
                self.audioModelCode = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["vocabularyId"] as? String {
                self.vocabularyId = value
            }
            if let value = dict["wordWeightList"] as? [Any?] {
                var tmp : [GetVocabResponseBody.Data.WordWeightList] = []
                for v in value {
                    if v != nil {
                        var model = GetVocabResponseBody.Data.WordWeightList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.wordWeightList = tmp
            }
        }
    }
    public var data: GetVocabResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetVocabResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class GetVocabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVocabResponseBody?

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
            var model = GetVocabResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVocabRequest : Tea.TeaModel {
    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListVocabResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WordWeightList : Tea.TeaModel {
            public var weight: Int32?

            public var word: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                if self.word != nil {
                    map["word"] = self.word!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
                if let value = dict["word"] as? String {
                    self.word = value
                }
            }
        }
        public var audioModelCode: String?

        public var description_: String?

        public var name: String?

        public var vocabularyId: String?

        public var wordWeightList: [ListVocabResponseBody.Data.WordWeightList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioModelCode != nil {
                map["audioModelCode"] = self.audioModelCode!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.vocabularyId != nil {
                map["vocabularyId"] = self.vocabularyId!
            }
            if self.wordWeightList != nil {
                var tmp : [Any] = []
                for k in self.wordWeightList! {
                    tmp.append(k.toMap())
                }
                map["wordWeightList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["audioModelCode"] as? String {
                self.audioModelCode = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["vocabularyId"] as? String {
                self.vocabularyId = value
            }
            if let value = dict["wordWeightList"] as? [Any?] {
                var tmp : [ListVocabResponseBody.Data.WordWeightList] = []
                for v in value {
                    if v != nil {
                        var model = ListVocabResponseBody.Data.WordWeightList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.wordWeightList = tmp
            }
        }
    }
    public var data: [ListVocabResponseBody.Data]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListVocabResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListVocabResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class ListVocabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVocabResponseBody?

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
            var model = ListVocabResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChatId"] as? String {
                    self.chatId = value
                }
                if let value = dict["Role"] as? String {
                    self.role = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Sentences"] as? [Any?] {
                var tmp : [RunCompletionRequest.Dialogue.Sentences] = []
                for v in value {
                    if v != nil {
                        var model = RunCompletionRequest.Dialogue.Sentences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sentences = tmp
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Desc"] as? String {
                    self.desc = value
                }
                if let value = dict["EnumValue"] as? String {
                    self.enumValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Desc"] as? String {
                self.desc = value
            }
            if let value = dict["EnumValues"] as? [Any?] {
                var tmp : [RunCompletionRequest.Fields.EnumValues] = []
                for v in value {
                    if v != nil {
                        var model = RunCompletionRequest.Fields.EnumValues()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.enumValues = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InspectionContents"] as? [Any?] {
                var tmp : [RunCompletionRequest.ServiceInspection.InspectionContents] = []
                for v in value {
                    if v != nil {
                        var model = RunCompletionRequest.ServiceInspection.InspectionContents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inspectionContents = tmp
            }
            if let value = dict["InspectionIntroduction"] as? String {
                self.inspectionIntroduction = value
            }
            if let value = dict["SceneIntroduction"] as? String {
                self.sceneIntroduction = value
            }
        }
    }
    public class Variables : Tea.TeaModel {
        public var variableCode: String?

        public var variableValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variableCode != nil {
                map["variableCode"] = self.variableCode!
            }
            if self.variableValue != nil {
                map["variableValue"] = self.variableValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["variableCode"] as? String {
                self.variableCode = value
            }
            if let value = dict["variableValue"] as? String {
                self.variableValue = value
            }
        }
    }
    public var dialogue: RunCompletionRequest.Dialogue?

    public var fields: [RunCompletionRequest.Fields]?

    public var modelCode: String?

    public var serviceInspection: RunCompletionRequest.ServiceInspection?

    public var stream: Bool?

    public var templateIds: [Int64]?

    public var responseFormatType: String?

    public var variables: [RunCompletionRequest.Variables]?

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
        if self.responseFormatType != nil {
            map["responseFormatType"] = self.responseFormatType!
        }
        if self.variables != nil {
            var tmp : [Any] = []
            for k in self.variables! {
                tmp.append(k.toMap())
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dialogue"] as? [String: Any?] {
            var model = RunCompletionRequest.Dialogue()
            model.fromMap(value)
            self.dialogue = model
        }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [RunCompletionRequest.Fields] = []
            for v in value {
                if v != nil {
                    var model = RunCompletionRequest.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["ModelCode"] as? String {
            self.modelCode = value
        }
        if let value = dict["ServiceInspection"] as? [String: Any?] {
            var model = RunCompletionRequest.ServiceInspection()
            model.fromMap(value)
            self.serviceInspection = model
        }
        if let value = dict["Stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["TemplateIds"] as? [Int64] {
            self.templateIds = value
        }
        if let value = dict["responseFormatType"] as? String {
            self.responseFormatType = value
        }
        if let value = dict["variables"] as? [Any?] {
            var tmp : [RunCompletionRequest.Variables] = []
            for v in value {
                if v != nil {
                    var model = RunCompletionRequest.Variables()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.variables = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FinishReason"] as? String {
            self.finishReason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
        if let value = dict["inputTokens"] as? String {
            self.inputTokens = value
        }
        if let value = dict["outputTokens"] as? String {
            self.outputTokens = value
        }
        if let value = dict["totalTokens"] as? String {
            self.totalTokens = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunCompletionResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
        }
    }
    public var messages: [RunCompletionMessageRequest.Messages]?

    public var modelCode: String?

    public var stream: Bool?

    public var responseFormatType: String?

    public override init() {
        super.init()
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
        if self.responseFormatType != nil {
            map["responseFormatType"] = self.responseFormatType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Messages"] as? [Any?] {
            var tmp : [RunCompletionMessageRequest.Messages] = []
            for v in value {
                if v != nil {
                    var model = RunCompletionMessageRequest.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["ModelCode"] as? String {
            self.modelCode = value
        }
        if let value = dict["Stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["responseFormatType"] as? String {
            self.responseFormatType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FinishReason"] as? String {
            self.finishReason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
        if let value = dict["inputTokens"] as? String {
            self.inputTokens = value
        }
        if let value = dict["outputTokens"] as? String {
            self.outputTokens = value
        }
        if let value = dict["totalTokens"] as? String {
            self.totalTokens = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunCompletionMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVocabRequest : Tea.TeaModel {
    public class WordWeightList : Tea.TeaModel {
        public var weight: Int32?

        public var word: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            if self.word != nil {
                map["word"] = self.word!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
            if let value = dict["word"] as? String {
                self.word = value
            }
        }
    }
    public var description_: String?

    public var name: String?

    public var vocabularyId: String?

    public var wordWeightList: [UpdateVocabRequest.WordWeightList]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.vocabularyId != nil {
            map["vocabularyId"] = self.vocabularyId!
        }
        if self.wordWeightList != nil {
            var tmp : [Any] = []
            for k in self.wordWeightList! {
                tmp.append(k.toMap())
            }
            map["wordWeightList"] = tmp
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["vocabularyId"] as? String {
            self.vocabularyId = value
        }
        if let value = dict["wordWeightList"] as? [Any?] {
            var tmp : [UpdateVocabRequest.WordWeightList] = []
            for v in value {
                if v != nil {
                    var model = UpdateVocabRequest.WordWeightList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wordWeightList = tmp
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateVocabResponseBody : Tea.TeaModel {
    public var data: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class UpdateVocabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVocabResponseBody?

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
            var model = UpdateVocabResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
