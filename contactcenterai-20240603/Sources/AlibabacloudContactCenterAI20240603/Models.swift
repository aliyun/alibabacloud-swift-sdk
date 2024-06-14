import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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
    public class Dimensions : Tea.TeaModel {
        public var desc: String?

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
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public class Fields : Tea.TeaModel {
        public var code: String?

        public var desc: String?

        public var enums: [String]?

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
            if self.enums != nil {
                map["Enums"] = self.enums!
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
            if dict.keys.contains("Enums") {
                self.enums = dict["Enums"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var dialogue: RunCompletionRequest.Dialogue?

    public var dimensions: [RunCompletionRequest.Dimensions]?

    public var fields: [RunCompletionRequest.Fields]?

    public var modelCode: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dialogue != nil {
            map["Dialogue"] = self.dialogue?.toMap()
        }
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
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
        if dict.keys.contains("Dimensions") {
            var tmp : [RunCompletionRequest.Dimensions] = []
            for v in dict["Dimensions"] as! [Any] {
                var model = RunCompletionRequest.Dimensions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dimensions = tmp
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
