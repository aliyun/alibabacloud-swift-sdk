import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchTranslateRequest : Tea.TeaModel {
    public class Ext : Tea.TeaModel {
        public class Examples : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class Terminologies : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class TextTransform : Tea.TeaModel {
            public var toLower: Bool?

            public var toTitle: Bool?

            public var toUpper: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.toLower != nil {
                    map["toLower"] = self.toLower!
                }
                if self.toTitle != nil {
                    map["toTitle"] = self.toTitle!
                }
                if self.toUpper != nil {
                    map["toUpper"] = self.toUpper!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["toLower"] as? Bool {
                    self.toLower = value
                }
                if let value = dict["toTitle"] as? Bool {
                    self.toTitle = value
                }
                if let value = dict["toUpper"] as? Bool {
                    self.toUpper = value
                }
            }
        }
        public var domainHint: String?

        public var examples: [BatchTranslateRequest.Ext.Examples]?

        public var sensitives: [String]?

        public var terminologies: [BatchTranslateRequest.Ext.Terminologies]?

        public var textTransform: BatchTranslateRequest.Ext.TextTransform?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.textTransform?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainHint != nil {
                map["domainHint"] = self.domainHint!
            }
            if self.examples != nil {
                var tmp : [Any] = []
                for k in self.examples! {
                    tmp.append(k.toMap())
                }
                map["examples"] = tmp
            }
            if self.sensitives != nil {
                map["sensitives"] = self.sensitives!
            }
            if self.terminologies != nil {
                var tmp : [Any] = []
                for k in self.terminologies! {
                    tmp.append(k.toMap())
                }
                map["terminologies"] = tmp
            }
            if self.textTransform != nil {
                map["textTransform"] = self.textTransform?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainHint"] as? String {
                self.domainHint = value
            }
            if let value = dict["examples"] as? [Any?] {
                var tmp : [BatchTranslateRequest.Ext.Examples] = []
                for v in value {
                    if v != nil {
                        var model = BatchTranslateRequest.Ext.Examples()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.examples = tmp
            }
            if let value = dict["sensitives"] as? [String] {
                self.sensitives = value
            }
            if let value = dict["terminologies"] as? [Any?] {
                var tmp : [BatchTranslateRequest.Ext.Terminologies] = []
                for v in value {
                    if v != nil {
                        var model = BatchTranslateRequest.Ext.Terminologies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.terminologies = tmp
            }
            if let value = dict["textTransform"] as? [String: Any?] {
                var model = BatchTranslateRequest.Ext.TextTransform()
                model.fromMap(value)
                self.textTransform = model
            }
        }
    }
    public var ext: BatchTranslateRequest.Ext?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var text: [String: Any]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ext != nil {
            map["ext"] = self.ext?.toMap()
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? [String: Any?] {
            var model = BatchTranslateRequest.Ext()
            model.fromMap(value)
            self.ext = model
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? [String: Any] {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class BatchTranslateShrinkRequest : Tea.TeaModel {
    public var extShrink: String?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var textShrink: String?

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
        if self.extShrink != nil {
            map["ext"] = self.extShrink!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.textShrink != nil {
            map["text"] = self.textShrink!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? String {
            self.extShrink = value
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.textShrink = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class BatchTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TranslationList : Tea.TeaModel {
            public class Usage : Tea.TeaModel {
                public var inputTokens: Int64?

                public var outputTokens: Int64?

                public var totalTokens: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
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
                    if let value = dict["inputTokens"] as? Int64 {
                        self.inputTokens = value
                    }
                    if let value = dict["outputTokens"] as? Int64 {
                        self.outputTokens = value
                    }
                    if let value = dict["totalTokens"] as? Int64 {
                        self.totalTokens = value
                    }
                }
            }
            public var code: Int64?

            public var index: String?

            public var message: String?

            public var translation: String?

            public var usage: BatchTranslateResponseBody.Data.TranslationList.Usage?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.usage?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                if self.translation != nil {
                    map["translation"] = self.translation!
                }
                if self.usage != nil {
                    map["usage"] = self.usage?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["code"] as? Int64 {
                    self.code = value
                }
                if let value = dict["index"] as? String {
                    self.index = value
                }
                if let value = dict["message"] as? String {
                    self.message = value
                }
                if let value = dict["translation"] as? String {
                    self.translation = value
                }
                if let value = dict["usage"] as? [String: Any?] {
                    var model = BatchTranslateResponseBody.Data.TranslationList.Usage()
                    model.fromMap(value)
                    self.usage = model
                }
            }
        }
        public var translationList: [BatchTranslateResponseBody.Data.TranslationList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.translationList != nil {
                var tmp : [Any] = []
                for k in self.translationList! {
                    tmp.append(k.toMap())
                }
                map["translationList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["translationList"] as? [Any?] {
                var tmp : [BatchTranslateResponseBody.Data.TranslationList] = []
                for v in value {
                    if v != nil {
                        var model = BatchTranslateResponseBody.Data.TranslationList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.translationList = tmp
            }
        }
    }
    public var code: String?

    public var data: BatchTranslateResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = BatchTranslateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchTranslateResponseBody?

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
            var model = BatchTranslateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocTranslateTaskRequest : Tea.TeaModel {
    public var taskId: String?

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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetDocTranslateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var charactersCount: Int32?

        public var pageCount: Int32?

        public var status: String?

        public var taskId: String?

        public var translateFileUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.charactersCount != nil {
                map["charactersCount"] = self.charactersCount!
            }
            if self.pageCount != nil {
                map["pageCount"] = self.pageCount!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.translateFileUrl != nil {
                map["translateFileUrl"] = self.translateFileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["charactersCount"] as? Int32 {
                self.charactersCount = value
            }
            if let value = dict["pageCount"] as? Int32 {
                self.pageCount = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["translateFileUrl"] as? String {
                self.translateFileUrl = value
            }
        }
    }
    public var code: String?

    public var data: GetDocTranslateTaskResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDocTranslateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDocTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocTranslateTaskResponseBody?

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
            var model = GetDocTranslateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHtmlTranslateTaskRequest : Tea.TeaModel {
    public var taskId: String?

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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetHtmlTranslateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
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
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var translation: String?

        public var usage: GetHtmlTranslateTaskResponseBody.Data.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.translation != nil {
                map["translation"] = self.translation!
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["translation"] as? String {
                self.translation = value
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = GetHtmlTranslateTaskResponseBody.Data.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var code: String?

    public var data: GetHtmlTranslateTaskResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetHtmlTranslateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetHtmlTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHtmlTranslateTaskResponseBody?

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
            var model = GetHtmlTranslateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetImageTranslateTaskRequest : Tea.TeaModel {
    public var taskId: String?

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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetImageTranslateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Translation : Tea.TeaModel {
            public class BoundingBoxes : Tea.TeaModel {
                public class DownLeft : Tea.TeaModel {
                    public var x: Int64?

                    public var y: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["x"] = self.x!
                        }
                        if self.y != nil {
                            map["y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["x"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public class DownRight : Tea.TeaModel {
                    public var x: Int64?

                    public var y: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["x"] = self.x!
                        }
                        if self.y != nil {
                            map["y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["x"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public class UpLeft : Tea.TeaModel {
                    public var x: Int64?

                    public var y: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["x"] = self.x!
                        }
                        if self.y != nil {
                            map["y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["x"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public class UpRight : Tea.TeaModel {
                    public var x: Int64?

                    public var y: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["x"] = self.x!
                        }
                        if self.y != nil {
                            map["y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["x"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public var confidence: Double?

                public var direction: Int64?

                public var downLeft: GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes.DownLeft?

                public var downRight: GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes.DownRight?

                public var tableCellId: Int64?

                public var tableId: Int64?

                public var text: String?

                public var translation: [String: Any]?

                public var upLeft: GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes.UpLeft?

                public var upRight: GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes.UpRight?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.downLeft?.validate()
                    try self.downRight?.validate()
                    try self.upLeft?.validate()
                    try self.upRight?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confidence != nil {
                        map["confidence"] = self.confidence!
                    }
                    if self.direction != nil {
                        map["direction"] = self.direction!
                    }
                    if self.downLeft != nil {
                        map["downLeft"] = self.downLeft?.toMap()
                    }
                    if self.downRight != nil {
                        map["downRight"] = self.downRight?.toMap()
                    }
                    if self.tableCellId != nil {
                        map["tableCellId"] = self.tableCellId!
                    }
                    if self.tableId != nil {
                        map["tableId"] = self.tableId!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.translation != nil {
                        map["translation"] = self.translation!
                    }
                    if self.upLeft != nil {
                        map["upLeft"] = self.upLeft?.toMap()
                    }
                    if self.upRight != nil {
                        map["upRight"] = self.upRight?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["confidence"] as? Double {
                        self.confidence = value
                    }
                    if let value = dict["direction"] as? Int64 {
                        self.direction = value
                    }
                    if let value = dict["downLeft"] as? [String: Any?] {
                        var model = GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes.DownLeft()
                        model.fromMap(value)
                        self.downLeft = model
                    }
                    if let value = dict["downRight"] as? [String: Any?] {
                        var model = GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes.DownRight()
                        model.fromMap(value)
                        self.downRight = model
                    }
                    if let value = dict["tableCellId"] as? Int64 {
                        self.tableCellId = value
                    }
                    if let value = dict["tableId"] as? Int64 {
                        self.tableId = value
                    }
                    if let value = dict["text"] as? String {
                        self.text = value
                    }
                    if let value = dict["translation"] as? [String: Any] {
                        self.translation = value
                    }
                    if let value = dict["upLeft"] as? [String: Any?] {
                        var model = GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes.UpLeft()
                        model.fromMap(value)
                        self.upLeft = model
                    }
                    if let value = dict["upRight"] as? [String: Any?] {
                        var model = GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes.UpRight()
                        model.fromMap(value)
                        self.upRight = model
                    }
                }
            }
            public class TableInfos : Tea.TeaModel {
                public class CellInfos : Tea.TeaModel {
                    public class Pos : Tea.TeaModel {
                        public var x: Int64?

                        public var y: Int64?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.x != nil {
                                map["x"] = self.x!
                            }
                            if self.y != nil {
                                map["y"] = self.y!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["x"] as? Int64 {
                                self.x = value
                            }
                            if let value = dict["y"] as? Int64 {
                                self.y = value
                            }
                        }
                    }
                    public var pos: [GetImageTranslateTaskResponseBody.Data.Translation.TableInfos.CellInfos.Pos]?

                    public var tableCellId: Int64?

                    public var text: String?

                    public var xec: Int64?

                    public var xsc: Int64?

                    public var yec: Int64?

                    public var ysc: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.pos != nil {
                            var tmp : [Any] = []
                            for k in self.pos! {
                                tmp.append(k.toMap())
                            }
                            map["pos"] = tmp
                        }
                        if self.tableCellId != nil {
                            map["tableCellId"] = self.tableCellId!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        if self.xec != nil {
                            map["xec"] = self.xec!
                        }
                        if self.xsc != nil {
                            map["xsc"] = self.xsc!
                        }
                        if self.yec != nil {
                            map["yec"] = self.yec!
                        }
                        if self.ysc != nil {
                            map["ysc"] = self.ysc!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["pos"] as? [Any?] {
                            var tmp : [GetImageTranslateTaskResponseBody.Data.Translation.TableInfos.CellInfos.Pos] = []
                            for v in value {
                                if v != nil {
                                    var model = GetImageTranslateTaskResponseBody.Data.Translation.TableInfos.CellInfos.Pos()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.pos = tmp
                        }
                        if let value = dict["tableCellId"] as? Int64 {
                            self.tableCellId = value
                        }
                        if let value = dict["text"] as? String {
                            self.text = value
                        }
                        if let value = dict["xec"] as? Int64 {
                            self.xec = value
                        }
                        if let value = dict["xsc"] as? Int64 {
                            self.xsc = value
                        }
                        if let value = dict["yec"] as? Int64 {
                            self.yec = value
                        }
                        if let value = dict["ysc"] as? Int64 {
                            self.ysc = value
                        }
                    }
                }
                public var cellInfos: [GetImageTranslateTaskResponseBody.Data.Translation.TableInfos.CellInfos]?

                public var tableId: Int64?

                public var xCellSize: Int64?

                public var yCellSize: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cellInfos != nil {
                        var tmp : [Any] = []
                        for k in self.cellInfos! {
                            tmp.append(k.toMap())
                        }
                        map["cellInfos"] = tmp
                    }
                    if self.tableId != nil {
                        map["tableId"] = self.tableId!
                    }
                    if self.xCellSize != nil {
                        map["xCellSize"] = self.xCellSize!
                    }
                    if self.yCellSize != nil {
                        map["yCellSize"] = self.yCellSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["cellInfos"] as? [Any?] {
                        var tmp : [GetImageTranslateTaskResponseBody.Data.Translation.TableInfos.CellInfos] = []
                        for v in value {
                            if v != nil {
                                var model = GetImageTranslateTaskResponseBody.Data.Translation.TableInfos.CellInfos()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.cellInfos = tmp
                    }
                    if let value = dict["tableId"] as? Int64 {
                        self.tableId = value
                    }
                    if let value = dict["xCellSize"] as? Int64 {
                        self.xCellSize = value
                    }
                    if let value = dict["yCellSize"] as? Int64 {
                        self.yCellSize = value
                    }
                }
            }
            public var angle: Int64?

            public var boundingBoxes: [GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes]?

            public var boxesCount: Int64?

            public var height: Int64?

            public var orgHeight: Int64?

            public var orgWidth: Int64?

            public var tableInfos: [GetImageTranslateTaskResponseBody.Data.Translation.TableInfos]?

            public var width: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.angle != nil {
                    map["angle"] = self.angle!
                }
                if self.boundingBoxes != nil {
                    var tmp : [Any] = []
                    for k in self.boundingBoxes! {
                        tmp.append(k.toMap())
                    }
                    map["boundingBoxes"] = tmp
                }
                if self.boxesCount != nil {
                    map["boxesCount"] = self.boxesCount!
                }
                if self.height != nil {
                    map["height"] = self.height!
                }
                if self.orgHeight != nil {
                    map["orgHeight"] = self.orgHeight!
                }
                if self.orgWidth != nil {
                    map["orgWidth"] = self.orgWidth!
                }
                if self.tableInfos != nil {
                    var tmp : [Any] = []
                    for k in self.tableInfos! {
                        tmp.append(k.toMap())
                    }
                    map["tableInfos"] = tmp
                }
                if self.width != nil {
                    map["width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["angle"] as? Int64 {
                    self.angle = value
                }
                if let value = dict["boundingBoxes"] as? [Any?] {
                    var tmp : [GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes] = []
                    for v in value {
                        if v != nil {
                            var model = GetImageTranslateTaskResponseBody.Data.Translation.BoundingBoxes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.boundingBoxes = tmp
                }
                if let value = dict["boxesCount"] as? Int64 {
                    self.boxesCount = value
                }
                if let value = dict["height"] as? Int64 {
                    self.height = value
                }
                if let value = dict["orgHeight"] as? Int64 {
                    self.orgHeight = value
                }
                if let value = dict["orgWidth"] as? Int64 {
                    self.orgWidth = value
                }
                if let value = dict["tableInfos"] as? [Any?] {
                    var tmp : [GetImageTranslateTaskResponseBody.Data.Translation.TableInfos] = []
                    for v in value {
                        if v != nil {
                            var model = GetImageTranslateTaskResponseBody.Data.Translation.TableInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tableInfos = tmp
                }
                if let value = dict["width"] as? Int64 {
                    self.width = value
                }
            }
        }
        public var traceId: String?

        public var translation: GetImageTranslateTaskResponseBody.Data.Translation?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.translation?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            if self.translation != nil {
                map["translation"] = self.translation?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
            if let value = dict["translation"] as? [String: Any?] {
                var model = GetImageTranslateTaskResponseBody.Data.Translation()
                model.fromMap(value)
                self.translation = model
            }
        }
    }
    public var code: String?

    public var data: GetImageTranslateTaskResponseBody.Data?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var synchro: Bool?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.synchro != nil {
            map["synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetImageTranslateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class GetImageTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageTranslateTaskResponseBody?

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
            var model = GetImageTranslateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLongTextTranslateTaskRequest : Tea.TeaModel {
    public var taskId: String?

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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetLongTextTranslateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
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
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var translation: String?

        public var usage: GetLongTextTranslateTaskResponseBody.Data.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.translation != nil {
                map["translation"] = self.translation!
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["translation"] as? String {
                self.translation = value
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = GetLongTextTranslateTaskResponseBody.Data.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var code: String?

    public var data: GetLongTextTranslateTaskResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetLongTextTranslateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetLongTextTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLongTextTranslateTaskResponseBody?

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
            var model = GetLongTextTranslateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitDocTranslateTaskRequest : Tea.TeaModel {
    public class Ext : Tea.TeaModel {
        public class Examples : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class Terminologies : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class TextTransform : Tea.TeaModel {
            public var toLower: Bool?

            public var toTitle: Bool?

            public var toUpper: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.toLower != nil {
                    map["toLower"] = self.toLower!
                }
                if self.toTitle != nil {
                    map["toTitle"] = self.toTitle!
                }
                if self.toUpper != nil {
                    map["toUpper"] = self.toUpper!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["toLower"] as? Bool {
                    self.toLower = value
                }
                if let value = dict["toTitle"] as? Bool {
                    self.toTitle = value
                }
                if let value = dict["toUpper"] as? Bool {
                    self.toUpper = value
                }
            }
        }
        public var domainHint: String?

        public var examples: [SubmitDocTranslateTaskRequest.Ext.Examples]?

        public var sensitives: [String]?

        public var terminologies: [SubmitDocTranslateTaskRequest.Ext.Terminologies]?

        public var textTransform: SubmitDocTranslateTaskRequest.Ext.TextTransform?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.textTransform?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainHint != nil {
                map["domainHint"] = self.domainHint!
            }
            if self.examples != nil {
                var tmp : [Any] = []
                for k in self.examples! {
                    tmp.append(k.toMap())
                }
                map["examples"] = tmp
            }
            if self.sensitives != nil {
                map["sensitives"] = self.sensitives!
            }
            if self.terminologies != nil {
                var tmp : [Any] = []
                for k in self.terminologies! {
                    tmp.append(k.toMap())
                }
                map["terminologies"] = tmp
            }
            if self.textTransform != nil {
                map["textTransform"] = self.textTransform?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainHint"] as? String {
                self.domainHint = value
            }
            if let value = dict["examples"] as? [Any?] {
                var tmp : [SubmitDocTranslateTaskRequest.Ext.Examples] = []
                for v in value {
                    if v != nil {
                        var model = SubmitDocTranslateTaskRequest.Ext.Examples()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.examples = tmp
            }
            if let value = dict["sensitives"] as? [String] {
                self.sensitives = value
            }
            if let value = dict["terminologies"] as? [Any?] {
                var tmp : [SubmitDocTranslateTaskRequest.Ext.Terminologies] = []
                for v in value {
                    if v != nil {
                        var model = SubmitDocTranslateTaskRequest.Ext.Terminologies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.terminologies = tmp
            }
            if let value = dict["textTransform"] as? [String: Any?] {
                var model = SubmitDocTranslateTaskRequest.Ext.TextTransform()
                model.fromMap(value)
                self.textTransform = model
            }
        }
    }
    public var ext: SubmitDocTranslateTaskRequest.Ext?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var text: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ext != nil {
            map["ext"] = self.ext?.toMap()
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? [String: Any?] {
            var model = SubmitDocTranslateTaskRequest.Ext()
            model.fromMap(value)
            self.ext = model
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class SubmitDocTranslateTaskShrinkRequest : Tea.TeaModel {
    public var extShrink: String?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var text: String?

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
        if self.extShrink != nil {
            map["ext"] = self.extShrink!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? String {
            self.extShrink = value
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class SubmitDocTranslateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var status: String?

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
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitDocTranslateTaskResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitDocTranslateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitDocTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDocTranslateTaskResponseBody?

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
            var model = SubmitDocTranslateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitHtmlTranslateTaskRequest : Tea.TeaModel {
    public class Ext : Tea.TeaModel {
        public class Examples : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class Terminologies : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class TextTransform : Tea.TeaModel {
            public var toLower: Bool?

            public var toTitle: Bool?

            public var toUpper: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.toLower != nil {
                    map["toLower"] = self.toLower!
                }
                if self.toTitle != nil {
                    map["toTitle"] = self.toTitle!
                }
                if self.toUpper != nil {
                    map["toUpper"] = self.toUpper!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["toLower"] as? Bool {
                    self.toLower = value
                }
                if let value = dict["toTitle"] as? Bool {
                    self.toTitle = value
                }
                if let value = dict["toUpper"] as? Bool {
                    self.toUpper = value
                }
            }
        }
        public var domainHint: String?

        public var examples: [SubmitHtmlTranslateTaskRequest.Ext.Examples]?

        public var sensitives: [String]?

        public var terminologies: [SubmitHtmlTranslateTaskRequest.Ext.Terminologies]?

        public var textTransform: SubmitHtmlTranslateTaskRequest.Ext.TextTransform?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.textTransform?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainHint != nil {
                map["domainHint"] = self.domainHint!
            }
            if self.examples != nil {
                var tmp : [Any] = []
                for k in self.examples! {
                    tmp.append(k.toMap())
                }
                map["examples"] = tmp
            }
            if self.sensitives != nil {
                map["sensitives"] = self.sensitives!
            }
            if self.terminologies != nil {
                var tmp : [Any] = []
                for k in self.terminologies! {
                    tmp.append(k.toMap())
                }
                map["terminologies"] = tmp
            }
            if self.textTransform != nil {
                map["textTransform"] = self.textTransform?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainHint"] as? String {
                self.domainHint = value
            }
            if let value = dict["examples"] as? [Any?] {
                var tmp : [SubmitHtmlTranslateTaskRequest.Ext.Examples] = []
                for v in value {
                    if v != nil {
                        var model = SubmitHtmlTranslateTaskRequest.Ext.Examples()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.examples = tmp
            }
            if let value = dict["sensitives"] as? [String] {
                self.sensitives = value
            }
            if let value = dict["terminologies"] as? [Any?] {
                var tmp : [SubmitHtmlTranslateTaskRequest.Ext.Terminologies] = []
                for v in value {
                    if v != nil {
                        var model = SubmitHtmlTranslateTaskRequest.Ext.Terminologies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.terminologies = tmp
            }
            if let value = dict["textTransform"] as? [String: Any?] {
                var model = SubmitHtmlTranslateTaskRequest.Ext.TextTransform()
                model.fromMap(value)
                self.textTransform = model
            }
        }
    }
    public var ext: SubmitHtmlTranslateTaskRequest.Ext?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var text: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ext != nil {
            map["ext"] = self.ext?.toMap()
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? [String: Any?] {
            var model = SubmitHtmlTranslateTaskRequest.Ext()
            model.fromMap(value)
            self.ext = model
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class SubmitHtmlTranslateTaskShrinkRequest : Tea.TeaModel {
    public var extShrink: String?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var text: String?

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
        if self.extShrink != nil {
            map["ext"] = self.extShrink!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? String {
            self.extShrink = value
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class SubmitHtmlTranslateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var status: String?

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
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitHtmlTranslateTaskResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitHtmlTranslateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitHtmlTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitHtmlTranslateTaskResponseBody?

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
            var model = SubmitHtmlTranslateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitImageTranslateTaskRequest : Tea.TeaModel {
    public class Ext : Tea.TeaModel {
        public class Examples : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class Terminologies : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class TextTransform : Tea.TeaModel {
            public var toLower: Bool?

            public var toTitle: Bool?

            public var toUpper: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.toLower != nil {
                    map["toLower"] = self.toLower!
                }
                if self.toTitle != nil {
                    map["toTitle"] = self.toTitle!
                }
                if self.toUpper != nil {
                    map["toUpper"] = self.toUpper!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["toLower"] as? Bool {
                    self.toLower = value
                }
                if let value = dict["toTitle"] as? Bool {
                    self.toTitle = value
                }
                if let value = dict["toUpper"] as? Bool {
                    self.toUpper = value
                }
            }
        }
        public var domainHint: String?

        public var examples: [SubmitImageTranslateTaskRequest.Ext.Examples]?

        public var sensitives: [String]?

        public var terminologies: [SubmitImageTranslateTaskRequest.Ext.Terminologies]?

        public var textTransform: SubmitImageTranslateTaskRequest.Ext.TextTransform?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.textTransform?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainHint != nil {
                map["domainHint"] = self.domainHint!
            }
            if self.examples != nil {
                var tmp : [Any] = []
                for k in self.examples! {
                    tmp.append(k.toMap())
                }
                map["examples"] = tmp
            }
            if self.sensitives != nil {
                map["sensitives"] = self.sensitives!
            }
            if self.terminologies != nil {
                var tmp : [Any] = []
                for k in self.terminologies! {
                    tmp.append(k.toMap())
                }
                map["terminologies"] = tmp
            }
            if self.textTransform != nil {
                map["textTransform"] = self.textTransform?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainHint"] as? String {
                self.domainHint = value
            }
            if let value = dict["examples"] as? [Any?] {
                var tmp : [SubmitImageTranslateTaskRequest.Ext.Examples] = []
                for v in value {
                    if v != nil {
                        var model = SubmitImageTranslateTaskRequest.Ext.Examples()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.examples = tmp
            }
            if let value = dict["sensitives"] as? [String] {
                self.sensitives = value
            }
            if let value = dict["terminologies"] as? [Any?] {
                var tmp : [SubmitImageTranslateTaskRequest.Ext.Terminologies] = []
                for v in value {
                    if v != nil {
                        var model = SubmitImageTranslateTaskRequest.Ext.Terminologies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.terminologies = tmp
            }
            if let value = dict["textTransform"] as? [String: Any?] {
                var model = SubmitImageTranslateTaskRequest.Ext.TextTransform()
                model.fromMap(value)
                self.textTransform = model
            }
        }
    }
    public var ext: SubmitImageTranslateTaskRequest.Ext?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: [String]?

    public var text: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ext != nil {
            map["ext"] = self.ext?.toMap()
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? [String: Any?] {
            var model = SubmitImageTranslateTaskRequest.Ext()
            model.fromMap(value)
            self.ext = model
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? [String] {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class SubmitImageTranslateTaskShrinkRequest : Tea.TeaModel {
    public var extShrink: String?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguageShrink: String?

    public var text: String?

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
        if self.extShrink != nil {
            map["ext"] = self.extShrink!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguageShrink != nil {
            map["targetLanguage"] = self.targetLanguageShrink!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? String {
            self.extShrink = value
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguageShrink = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class SubmitImageTranslateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var status: String?

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
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitImageTranslateTaskResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitImageTranslateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitImageTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitImageTranslateTaskResponseBody?

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
            var model = SubmitImageTranslateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitLongTextTranslateTaskRequest : Tea.TeaModel {
    public class Ext : Tea.TeaModel {
        public class Examples : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class Terminologies : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class TextTransform : Tea.TeaModel {
            public var toLower: Bool?

            public var toTitle: Bool?

            public var toUpper: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.toLower != nil {
                    map["toLower"] = self.toLower!
                }
                if self.toTitle != nil {
                    map["toTitle"] = self.toTitle!
                }
                if self.toUpper != nil {
                    map["toUpper"] = self.toUpper!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["toLower"] as? Bool {
                    self.toLower = value
                }
                if let value = dict["toTitle"] as? Bool {
                    self.toTitle = value
                }
                if let value = dict["toUpper"] as? Bool {
                    self.toUpper = value
                }
            }
        }
        public var domainHint: String?

        public var examples: [SubmitLongTextTranslateTaskRequest.Ext.Examples]?

        public var sensitives: [String]?

        public var terminologies: [SubmitLongTextTranslateTaskRequest.Ext.Terminologies]?

        public var textTransform: SubmitLongTextTranslateTaskRequest.Ext.TextTransform?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.textTransform?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainHint != nil {
                map["domainHint"] = self.domainHint!
            }
            if self.examples != nil {
                var tmp : [Any] = []
                for k in self.examples! {
                    tmp.append(k.toMap())
                }
                map["examples"] = tmp
            }
            if self.sensitives != nil {
                map["sensitives"] = self.sensitives!
            }
            if self.terminologies != nil {
                var tmp : [Any] = []
                for k in self.terminologies! {
                    tmp.append(k.toMap())
                }
                map["terminologies"] = tmp
            }
            if self.textTransform != nil {
                map["textTransform"] = self.textTransform?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainHint"] as? String {
                self.domainHint = value
            }
            if let value = dict["examples"] as? [Any?] {
                var tmp : [SubmitLongTextTranslateTaskRequest.Ext.Examples] = []
                for v in value {
                    if v != nil {
                        var model = SubmitLongTextTranslateTaskRequest.Ext.Examples()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.examples = tmp
            }
            if let value = dict["sensitives"] as? [String] {
                self.sensitives = value
            }
            if let value = dict["terminologies"] as? [Any?] {
                var tmp : [SubmitLongTextTranslateTaskRequest.Ext.Terminologies] = []
                for v in value {
                    if v != nil {
                        var model = SubmitLongTextTranslateTaskRequest.Ext.Terminologies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.terminologies = tmp
            }
            if let value = dict["textTransform"] as? [String: Any?] {
                var model = SubmitLongTextTranslateTaskRequest.Ext.TextTransform()
                model.fromMap(value)
                self.textTransform = model
            }
        }
    }
    public var ext: SubmitLongTextTranslateTaskRequest.Ext?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var text: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ext != nil {
            map["ext"] = self.ext?.toMap()
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? [String: Any?] {
            var model = SubmitLongTextTranslateTaskRequest.Ext()
            model.fromMap(value)
            self.ext = model
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class SubmitLongTextTranslateTaskShrinkRequest : Tea.TeaModel {
    public var extShrink: String?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var text: String?

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
        if self.extShrink != nil {
            map["ext"] = self.extShrink!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? String {
            self.extShrink = value
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class SubmitLongTextTranslateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var status: String?

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
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitLongTextTranslateTaskResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitLongTextTranslateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitLongTextTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitLongTextTranslateTaskResponseBody?

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
            var model = SubmitLongTextTranslateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TermEditRequest : Tea.TeaModel {
    public class Ext : Tea.TeaModel {
        public class Terms : Tea.TeaModel {
            public var src: String?

            public var termId: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.termId != nil {
                    map["termId"] = self.termId!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["termId"] as? String {
                    self.termId = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public var terms: [TermEditRequest.Ext.Terms]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.terms != nil {
                var tmp : [Any] = []
                for k in self.terms! {
                    tmp.append(k.toMap())
                }
                map["terms"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["terms"] as? [Any?] {
                var tmp : [TermEditRequest.Ext.Terms] = []
                for v in value {
                    if v != nil {
                        var model = TermEditRequest.Ext.Terms()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.terms = tmp
            }
        }
    }
    public var action: String?

    public var ext: TermEditRequest.Ext?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.ext != nil {
            map["ext"] = self.ext?.toMap()
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["ext"] as? [String: Any?] {
            var model = TermEditRequest.Ext()
            model.fromMap(value)
            self.ext = model
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class TermEditShrinkRequest : Tea.TeaModel {
    public var action: String?

    public var extShrink: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

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
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.extShrink != nil {
            map["ext"] = self.extShrink!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["ext"] as? String {
            self.extShrink = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class TermEditResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Terms : Tea.TeaModel {
            public var src: String?

            public var termId: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.termId != nil {
                    map["termId"] = self.termId!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["termId"] as? String {
                    self.termId = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public var failCount: Int64?

        public var terms: [TermEditResponseBody.Data.Terms]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failCount != nil {
                map["failCount"] = self.failCount!
            }
            if self.terms != nil {
                var tmp : [Any] = []
                for k in self.terms! {
                    tmp.append(k.toMap())
                }
                map["terms"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["failCount"] as? Int64 {
                self.failCount = value
            }
            if let value = dict["terms"] as? [Any?] {
                var tmp : [TermEditResponseBody.Data.Terms] = []
                for v in value {
                    if v != nil {
                        var model = TermEditResponseBody.Data.Terms()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.terms = tmp
            }
        }
    }
    public var code: String?

    public var data: TermEditResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = TermEditResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class TermEditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TermEditResponseBody?

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
            var model = TermEditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TermQueryRequest : Tea.TeaModel {
    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var text: String?

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
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class TermQueryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Terms : Tea.TeaModel {
            public var src: String?

            public var termId: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.termId != nil {
                    map["termId"] = self.termId!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["termId"] as? String {
                    self.termId = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public var failCount: Int64?

        public var terms: [TermQueryResponseBody.Data.Terms]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failCount != nil {
                map["failCount"] = self.failCount!
            }
            if self.terms != nil {
                var tmp : [Any] = []
                for k in self.terms! {
                    tmp.append(k.toMap())
                }
                map["terms"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["failCount"] as? Int64 {
                self.failCount = value
            }
            if let value = dict["terms"] as? [Any?] {
                var tmp : [TermQueryResponseBody.Data.Terms] = []
                for v in value {
                    if v != nil {
                        var model = TermQueryResponseBody.Data.Terms()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.terms = tmp
            }
        }
    }
    public var code: String?

    public var data: TermQueryResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = TermQueryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class TermQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TermQueryResponseBody?

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
            var model = TermQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TextTranslateRequest : Tea.TeaModel {
    public class Ext : Tea.TeaModel {
        public class Examples : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class Terminologies : Tea.TeaModel {
            public var src: String?

            public var tgt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.src != nil {
                    map["src"] = self.src!
                }
                if self.tgt != nil {
                    map["tgt"] = self.tgt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["src"] as? String {
                    self.src = value
                }
                if let value = dict["tgt"] as? String {
                    self.tgt = value
                }
            }
        }
        public class TextTransform : Tea.TeaModel {
            public var toLower: Bool?

            public var toTitle: Bool?

            public var toUpper: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.toLower != nil {
                    map["toLower"] = self.toLower!
                }
                if self.toTitle != nil {
                    map["toTitle"] = self.toTitle!
                }
                if self.toUpper != nil {
                    map["toUpper"] = self.toUpper!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["toLower"] as? Bool {
                    self.toLower = value
                }
                if let value = dict["toTitle"] as? Bool {
                    self.toTitle = value
                }
                if let value = dict["toUpper"] as? Bool {
                    self.toUpper = value
                }
            }
        }
        public var domainHint: String?

        public var examples: [TextTranslateRequest.Ext.Examples]?

        public var sensitives: [String]?

        public var terminologies: [TextTranslateRequest.Ext.Terminologies]?

        public var textTransform: TextTranslateRequest.Ext.TextTransform?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.textTransform?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainHint != nil {
                map["domainHint"] = self.domainHint!
            }
            if self.examples != nil {
                var tmp : [Any] = []
                for k in self.examples! {
                    tmp.append(k.toMap())
                }
                map["examples"] = tmp
            }
            if self.sensitives != nil {
                map["sensitives"] = self.sensitives!
            }
            if self.terminologies != nil {
                var tmp : [Any] = []
                for k in self.terminologies! {
                    tmp.append(k.toMap())
                }
                map["terminologies"] = tmp
            }
            if self.textTransform != nil {
                map["textTransform"] = self.textTransform?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domainHint"] as? String {
                self.domainHint = value
            }
            if let value = dict["examples"] as? [Any?] {
                var tmp : [TextTranslateRequest.Ext.Examples] = []
                for v in value {
                    if v != nil {
                        var model = TextTranslateRequest.Ext.Examples()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.examples = tmp
            }
            if let value = dict["sensitives"] as? [String] {
                self.sensitives = value
            }
            if let value = dict["terminologies"] as? [Any?] {
                var tmp : [TextTranslateRequest.Ext.Terminologies] = []
                for v in value {
                    if v != nil {
                        var model = TextTranslateRequest.Ext.Terminologies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.terminologies = tmp
            }
            if let value = dict["textTransform"] as? [String: Any?] {
                var model = TextTranslateRequest.Ext.TextTransform()
                model.fromMap(value)
                self.textTransform = model
            }
        }
    }
    public var ext: TextTranslateRequest.Ext?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var text: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ext != nil {
            map["ext"] = self.ext?.toMap()
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? [String: Any?] {
            var model = TextTranslateRequest.Ext()
            model.fromMap(value)
            self.ext = model
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class TextTranslateShrinkRequest : Tea.TeaModel {
    public var extShrink: String?

    public var format: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var text: String?

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
        if self.extShrink != nil {
            map["ext"] = self.extShrink!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["sourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["targetLanguage"] = self.targetLanguage!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? String {
            self.extShrink = value
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["sourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["targetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class TextTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
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
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var translation: String?

        public var usage: TextTranslateResponseBody.Data.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.translation != nil {
                map["translation"] = self.translation!
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["translation"] as? String {
                self.translation = value
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = TextTranslateResponseBody.Data.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var code: String?

    public var data: TextTranslateResponseBody.Data?

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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = TextTranslateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class TextTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TextTranslateResponseBody?

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
            var model = TextTranslateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
