import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetTokenRequest : Tea.TeaModel {
    public var appKey: String?

    public var appSecret: String?

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
        if self.appKey != nil {
            map["appKey"] = self.appKey!
        }
        if self.appSecret != nil {
            map["appSecret"] = self.appSecret!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appKey") {
            self.appKey = dict["appKey"] as! String
        }
        if dict.keys.contains("appSecret") {
            self.appSecret = dict["appSecret"] as! String
        }
    }
}

public class GetTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expireTime: String?

        public var generateTime: String?

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
            if self.expireTime != nil {
                map["expireTime"] = self.expireTime!
            }
            if self.generateTime != nil {
                map["generateTime"] = self.generateTime!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("expireTime") {
                self.expireTime = dict["expireTime"] as! String
            }
            if dict.keys.contains("generateTime") {
                self.generateTime = dict["generateTime"] as! String
            }
            if dict.keys.contains("token") {
                self.token = dict["token"] as! String
            }
        }
    }
    public class ErrorData : Tea.TeaModel {
        public var rawErrorCode: String?

        public var rawErrorMsg: String?

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
            if self.rawErrorCode != nil {
                map["rawErrorCode"] = self.rawErrorCode!
            }
            if self.rawErrorMsg != nil {
                map["rawErrorMsg"] = self.rawErrorMsg!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("rawErrorCode") {
                self.rawErrorCode = dict["rawErrorCode"] as! String
            }
            if dict.keys.contains("rawErrorMsg") {
                self.rawErrorMsg = dict["rawErrorMsg"] as! String
            }
        }
    }
    public var data: GetTokenResponseBody.Data?

    public var errorCode: String?

    public var errorData: GetTokenResponseBody.ErrorData?

    public var errorMsg: String?

    public var requestId: String?

    public var status: Int32?

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
        try self.errorData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorData != nil {
            map["errorData"] = self.errorData?.toMap()
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetTokenResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorData") {
            var model = GetTokenResponseBody.ErrorData()
            model.fromMap(dict["errorData"] as! [String: Any])
            self.errorData = model
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenResponseBody?

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
            var model = GetTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
