import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChatSessionInfo : Tea.TeaModel {
    public var createdAt: Int64?

    public var mainAccountId: Int64?

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
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.mainAccountId != nil {
            map["mainAccountId"] = self.mainAccountId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["mainAccountId"] as? Int64 {
            self.mainAccountId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class CloseChatInstanceSessionsRequest : Tea.TeaModel {
    public var sessionIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionIds != nil {
            map["sessionIds"] = self.sessionIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionIds"] as? [String] {
            self.sessionIds = value
        }
    }
}

public class CloseChatInstanceSessionsShrinkRequest : Tea.TeaModel {
    public var sessionIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionIdsShrink != nil {
            map["sessionIds"] = self.sessionIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionIds"] as? String {
            self.sessionIdsShrink = value
        }
    }
}

public class CloseChatInstanceSessionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [ChatSessionInfo]?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ChatSessionInfo] = []
            for v in value {
                if v != nil {
                    var model = ChatSessionInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
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

public class CloseChatInstanceSessionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseChatInstanceSessionsResponseBody?

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
            var model = CloseChatInstanceSessionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChatSessionRequest : Tea.TeaModel {
    public var instanceId: String?

    public var license: String?

    public var platform: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.license != nil {
            map["license"] = self.license!
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["license"] as? String {
            self.license = value
        }
        if let value = dict["platform"] as? String {
            self.platform = value
        }
    }
}

public class CreateChatSessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AvatarAssets : Tea.TeaModel {
            public var md5: String?

            public var minRequiredVersion: String?

            public var secret: String?

            public var type: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.md5 != nil {
                    map["md5"] = self.md5!
                }
                if self.minRequiredVersion != nil {
                    map["minRequiredVersion"] = self.minRequiredVersion!
                }
                if self.secret != nil {
                    map["secret"] = self.secret!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["md5"] as? String {
                    self.md5 = value
                }
                if let value = dict["minRequiredVersion"] as? String {
                    self.minRequiredVersion = value
                }
                if let value = dict["secret"] as? String {
                    self.secret = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public class RtcParams : Tea.TeaModel {
            public var appId: String?

            public var avatarUserId: String?

            public var channel: String?

            public var clientUserId: String?

            public var gslb: String?

            public var nonce: String?

            public var serverUserId: String?

            public var timestamp: Int64?

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
                if self.appId != nil {
                    map["appId"] = self.appId!
                }
                if self.avatarUserId != nil {
                    map["avatarUserId"] = self.avatarUserId!
                }
                if self.channel != nil {
                    map["channel"] = self.channel!
                }
                if self.clientUserId != nil {
                    map["clientUserId"] = self.clientUserId!
                }
                if self.gslb != nil {
                    map["gslb"] = self.gslb!
                }
                if self.nonce != nil {
                    map["nonce"] = self.nonce!
                }
                if self.serverUserId != nil {
                    map["serverUserId"] = self.serverUserId!
                }
                if self.timestamp != nil {
                    map["timestamp"] = self.timestamp!
                }
                if self.token != nil {
                    map["token"] = self.token!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["appId"] as? String {
                    self.appId = value
                }
                if let value = dict["avatarUserId"] as? String {
                    self.avatarUserId = value
                }
                if let value = dict["channel"] as? String {
                    self.channel = value
                }
                if let value = dict["clientUserId"] as? String {
                    self.clientUserId = value
                }
                if let value = dict["gslb"] as? String {
                    self.gslb = value
                }
                if let value = dict["nonce"] as? String {
                    self.nonce = value
                }
                if let value = dict["serverUserId"] as? String {
                    self.serverUserId = value
                }
                if let value = dict["timestamp"] as? Int64 {
                    self.timestamp = value
                }
                if let value = dict["token"] as? String {
                    self.token = value
                }
            }
        }
        public var avatarAssets: CreateChatSessionResponseBody.Data.AvatarAssets?

        public var rtcParams: CreateChatSessionResponseBody.Data.RtcParams?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.avatarAssets?.validate()
            try self.rtcParams?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avatarAssets != nil {
                map["avatarAssets"] = self.avatarAssets?.toMap()
            }
            if self.rtcParams != nil {
                map["rtcParams"] = self.rtcParams?.toMap()
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["avatarAssets"] as? [String: Any?] {
                var model = CreateChatSessionResponseBody.Data.AvatarAssets()
                model.fromMap(value)
                self.avatarAssets = model
            }
            if let value = dict["rtcParams"] as? [String: Any?] {
                var model = CreateChatSessionResponseBody.Data.RtcParams()
                model.fromMap(value)
                self.rtcParams = model
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var code: String?

    public var data: CreateChatSessionResponseBody.Data?

    public var httpStatusCode: Int64?

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
            var model = CreateChatSessionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int64 {
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

public class CreateChatSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatSessionResponseBody?

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
            var model = CreateChatSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryChatInstanceSessionsRequest : Tea.TeaModel {
    public var sessionIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionIds != nil {
            map["sessionIds"] = self.sessionIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionIds"] as? [String] {
            self.sessionIds = value
        }
    }
}

public class QueryChatInstanceSessionsShrinkRequest : Tea.TeaModel {
    public var sessionIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionIdsShrink != nil {
            map["sessionIds"] = self.sessionIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionIds"] as? String {
            self.sessionIdsShrink = value
        }
    }
}

public class QueryChatInstanceSessionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [ChatSessionInfo]?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ChatSessionInfo] = []
            for v in value {
                if v != nil {
                    var model = ChatSessionInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
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

public class QueryChatInstanceSessionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryChatInstanceSessionsResponseBody?

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
            var model = QueryChatInstanceSessionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
