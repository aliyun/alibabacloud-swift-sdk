import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabacloudEndpointUtil

public class CreateTokenResponseBody : Tea.TeaModel {
    public class Token : Tea.TeaModel {
        public var expireTime: Int32?

        public var id: String?

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
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpireTime"] as? Int32 {
                self.expireTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var errCode: Int32?

    public var errMsg: String?

    public var nlsRequestId: String?

    public var requestId: String?

    public var token: CreateTokenResponseBody.Token?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.token?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["ErrMsg"] = self.errMsg!
        }
        if self.nlsRequestId != nil {
            map["NlsRequestId"] = self.nlsRequestId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.token != nil {
            map["Token"] = self.token?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrCode"] as? Int32 {
            self.errCode = value
        }
        if let value = dict["ErrMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["NlsRequestId"] as? String {
            self.nlsRequestId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Token"] as? [String: Any?] {
            var model = CreateTokenResponseBody.Token()
            model.fromMap(value)
            self.token = model
        }
    }
}

public class CreateTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTokenResponseBody?

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
            var model = CreateTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
