import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class QueryTokenForMnsQueueRequest : Tea.TeaModel {
    public var messageType: String?

    public var ownerId: Int64?

    public var queueName: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageType"] as? String {
            self.messageType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QueryTokenForMnsQueueResponseBody : Tea.TeaModel {
    public class MessageTokenDTO : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var createTime: String?

        public var expireTime: String?

        public var securityToken: String?

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
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var messageTokenDTO: QueryTokenForMnsQueueResponseBody.MessageTokenDTO?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.messageTokenDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.messageTokenDTO != nil {
            map["MessageTokenDTO"] = self.messageTokenDTO?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MessageTokenDTO"] as? [String: Any?] {
            var model = QueryTokenForMnsQueueResponseBody.MessageTokenDTO()
            model.fromMap(value)
            self.messageTokenDTO = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryTokenForMnsQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTokenForMnsQueueResponseBody?

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
            var model = QueryTokenForMnsQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
