import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChatRequest : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public var fileUrl: String?

            public var imageUrl: String?

            public var text: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileUrl != nil {
                    map["FileUrl"] = self.fileUrl!
                }
                if self.imageUrl != nil {
                    map["ImageUrl"] = self.imageUrl!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileUrl"] as? String {
                    self.fileUrl = value
                }
                if let value = dict["ImageUrl"] as? String {
                    self.imageUrl = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var content: [ChatRequest.Input.Content]?

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
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["Content"] = tmp
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [ChatRequest.Input.Content] = []
                for v in value {
                    if v != nil {
                        var model = ChatRequest.Input.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
        }
    }
    public class Settings : Tea.TeaModel {
        public var outputFileMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.outputFileMode != nil {
                map["OutputFileMode"] = self.outputFileMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OutputFileMode"] as? String {
                self.outputFileMode = value
            }
        }
    }
    public class StreamOptions : Tea.TeaModel {
        public var includeReasoning: Bool?

        public var includeToolCalls: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.includeReasoning != nil {
                map["IncludeReasoning"] = self.includeReasoning!
            }
            if self.includeToolCalls != nil {
                map["IncludeToolCalls"] = self.includeToolCalls!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IncludeReasoning"] as? Bool {
                self.includeReasoning = value
            }
            if let value = dict["IncludeToolCalls"] as? Bool {
                self.includeToolCalls = value
            }
        }
    }
    public var authorization: String?

    public var externalUserId: String?

    public var input: [ChatRequest.Input]?

    public var routingKey: String?

    public var sessionId: String?

    public var settings: ChatRequest.Settings?

    public var streamOptions: ChatRequest.StreamOptions?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.settings?.validate()
        try self.streamOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        if self.externalUserId != nil {
            map["ExternalUserId"] = self.externalUserId!
        }
        if self.input != nil {
            var tmp : [Any] = []
            for k in self.input! {
                tmp.append(k.toMap())
            }
            map["Input"] = tmp
        }
        if self.routingKey != nil {
            map["RoutingKey"] = self.routingKey!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        if self.streamOptions != nil {
            map["StreamOptions"] = self.streamOptions?.toMap()
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Authorization"] as? String {
            self.authorization = value
        }
        if let value = dict["ExternalUserId"] as? String {
            self.externalUserId = value
        }
        if let value = dict["Input"] as? [Any?] {
            var tmp : [ChatRequest.Input] = []
            for v in value {
                if v != nil {
                    var model = ChatRequest.Input()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.input = tmp
        }
        if let value = dict["RoutingKey"] as? String {
            self.routingKey = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Settings"] as? [String: Any?] {
            var model = ChatRequest.Settings()
            model.fromMap(value)
            self.settings = model
        }
        if let value = dict["StreamOptions"] as? [String: Any?] {
            var model = ChatRequest.StreamOptions()
            model.fromMap(value)
            self.streamOptions = model
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class ChatShrinkRequest : Tea.TeaModel {
    public var authorization: String?

    public var externalUserId: String?

    public var inputShrink: String?

    public var routingKey: String?

    public var sessionId: String?

    public var settingsShrink: String?

    public var streamOptionsShrink: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        if self.externalUserId != nil {
            map["ExternalUserId"] = self.externalUserId!
        }
        if self.inputShrink != nil {
            map["Input"] = self.inputShrink!
        }
        if self.routingKey != nil {
            map["RoutingKey"] = self.routingKey!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.settingsShrink != nil {
            map["Settings"] = self.settingsShrink!
        }
        if self.streamOptionsShrink != nil {
            map["StreamOptions"] = self.streamOptionsShrink!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Authorization"] as? String {
            self.authorization = value
        }
        if let value = dict["ExternalUserId"] as? String {
            self.externalUserId = value
        }
        if let value = dict["Input"] as? String {
            self.inputShrink = value
        }
        if let value = dict["RoutingKey"] as? String {
            self.routingKey = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Settings"] as? String {
            self.settingsShrink = value
        }
        if let value = dict["StreamOptions"] as? String {
            self.streamOptionsShrink = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class ChatResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var data: [String: Any]?

        public var object: String?

        public var text: String?

        public var type: String?

        public override init() {
            super.init()
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
            if self.object != nil {
                map["Object"] = self.object!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String: Any] {
                self.data = value
            }
            if let value = dict["Object"] as? String {
                self.object = value
            }
            if let value = dict["Text"] as? String {
                self.text = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var code: String?

    public var content: [ChatResponseBody.Content]?

    public var created: String?

    public var createdAt: String?

    public var httpStatusCode: Int32?

    public var id: String?

    public var message: String?

    public var object: String?

    public var requestId: String?

    public var role: String?

    public var sequenceNumber: String?

    public var sessionId: String?

    public var status: String?

    public var success: Bool?

    public var text: String?

    public var type: String?

    public override init() {
        super.init()
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
        if self.content != nil {
            var tmp : [Any] = []
            for k in self.content! {
                tmp.append(k.toMap())
            }
            map["Content"] = tmp
        }
        if self.created != nil {
            map["Created"] = self.created!
        }
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.object != nil {
            map["Object"] = self.object!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.sequenceNumber != nil {
            map["SequenceNumber"] = self.sequenceNumber!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Content"] as? [Any?] {
            var tmp : [ChatResponseBody.Content] = []
            for v in value {
                if v != nil {
                    var model = ChatResponseBody.Content()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.content = tmp
        }
        if let value = dict["Created"] as? String {
            self.created = value
        }
        if let value = dict["CreatedAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Object"] as? String {
            self.object = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["SequenceNumber"] as? String {
            self.sequenceNumber = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatResponseBody?

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
            var model = ChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccessTokenRequest : Tea.TeaModel {
    public var externalUserId: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalUserId != nil {
            map["ExternalUserId"] = self.externalUserId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExternalUserId"] as? String {
            self.externalUserId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class GetAccessTokenResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var accessToken: String?

    public var code: String?

    public var httpStatusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.code != nil {
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessTokenResponseBody?

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
            var model = GetAccessTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
