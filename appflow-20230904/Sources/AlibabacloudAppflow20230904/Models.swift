import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GenerateUserSessionTokenRequest : Tea.TeaModel {
    public var chatbotId: String?

    public var expireSecond: Int64?

    public var extraInfo: String?

    public var integrateId: String?

    public var userAvatar: String?

    public var userId: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chatbotId != nil {
            map["ChatbotId"] = self.chatbotId!
        }
        if self.expireSecond != nil {
            map["ExpireSecond"] = self.expireSecond!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.integrateId != nil {
            map["IntegrateId"] = self.integrateId!
        }
        if self.userAvatar != nil {
            map["UserAvatar"] = self.userAvatar!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChatbotId"] as? String {
            self.chatbotId = value
        }
        if let value = dict["ExpireSecond"] as? Int64 {
            self.expireSecond = value
        }
        if let value = dict["ExtraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["IntegrateId"] as? String {
            self.integrateId = value
        }
        if let value = dict["UserAvatar"] as? String {
            self.userAvatar = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class GenerateUserSessionTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var userSessionToken: String?

    public override init() {
        super.init()
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
        if self.userSessionToken != nil {
            map["UserSessionToken"] = self.userSessionToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserSessionToken"] as? String {
            self.userSessionToken = value
        }
    }
}

public class GenerateUserSessionTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateUserSessionTokenResponseBody?

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
            var model = GenerateUserSessionTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
