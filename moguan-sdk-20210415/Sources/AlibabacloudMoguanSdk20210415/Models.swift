import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class RegisterDeviceRequest : Tea.TeaModel {
    public var appKey: String?

    public var deviceId: String?

    public var extend: [String: Any]?

    public var sdkCode: String?

    public var userDeviceId: String?

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
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.sdkCode != nil {
            map["SdkCode"] = self.sdkCode!
        }
        if self.userDeviceId != nil {
            map["UserDeviceId"] = self.userDeviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("Extend") && dict["Extend"] != nil {
            self.extend = dict["Extend"] as! [String: Any]
        }
        if dict.keys.contains("SdkCode") && dict["SdkCode"] != nil {
            self.sdkCode = dict["SdkCode"] as! String
        }
        if dict.keys.contains("UserDeviceId") && dict["UserDeviceId"] != nil {
            self.userDeviceId = dict["UserDeviceId"] as! String
        }
    }
}

public class RegisterDeviceShrinkRequest : Tea.TeaModel {
    public var appKey: String?

    public var deviceId: String?

    public var extendShrink: String?

    public var sdkCode: String?

    public var userDeviceId: String?

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
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.extendShrink != nil {
            map["Extend"] = self.extendShrink!
        }
        if self.sdkCode != nil {
            map["SdkCode"] = self.sdkCode!
        }
        if self.userDeviceId != nil {
            map["UserDeviceId"] = self.userDeviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("Extend") && dict["Extend"] != nil {
            self.extendShrink = dict["Extend"] as! String
        }
        if dict.keys.contains("SdkCode") && dict["SdkCode"] != nil {
            self.sdkCode = dict["SdkCode"] as! String
        }
        if dict.keys.contains("UserDeviceId") && dict["UserDeviceId"] != nil {
            self.userDeviceId = dict["UserDeviceId"] as! String
        }
    }
}

public class RegisterDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var license: String?

        public var publicKey: String?

        public var rid: String?

        public var signature: String?

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
            if self.license != nil {
                map["License"] = self.license!
            }
            if self.publicKey != nil {
                map["PublicKey"] = self.publicKey!
            }
            if self.rid != nil {
                map["Rid"] = self.rid!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("License") && dict["License"] != nil {
                self.license = dict["License"] as! String
            }
            if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
                self.publicKey = dict["PublicKey"] as! String
            }
            if dict.keys.contains("Rid") && dict["Rid"] != nil {
                self.rid = dict["Rid"] as! String
            }
            if dict.keys.contains("Signature") && dict["Signature"] != nil {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var data: RegisterDeviceResponseBody.Data?

    public var errorCode: Int32?

    public var errorMessage: String?

    public var message: String?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = RegisterDeviceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RegisterDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterDeviceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RegisterDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
