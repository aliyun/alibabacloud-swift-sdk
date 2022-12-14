import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetAuthCodeRequest : Tea.TeaModel {
    public var endUserId: String?

    public var externalUserId: String?

    public var policy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.externalUserId != nil {
            map["ExternalUserId"] = self.externalUserId!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("ExternalUserId") {
            self.externalUserId = dict["ExternalUserId"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
    }
}

public class GetAuthCodeResponseBody : Tea.TeaModel {
    public class AuthModel : Tea.TeaModel {
        public var authCode: String?

        public var endUserId: String?

        public var expireTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authCode != nil {
                map["AuthCode"] = self.authCode!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthCode") {
                self.authCode = dict["AuthCode"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
        }
    }
    public var authModel: GetAuthCodeResponseBody.AuthModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authModel != nil {
            map["AuthModel"] = self.authModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthModel") {
            var model = GetAuthCodeResponseBody.AuthModel()
            model.fromMap(dict["AuthModel"] as! [String: Any])
            self.authModel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAuthCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuthCodeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAuthCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
