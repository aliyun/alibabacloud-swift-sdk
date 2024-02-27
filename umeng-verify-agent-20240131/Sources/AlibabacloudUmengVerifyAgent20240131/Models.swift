import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateRequest : Tea.TeaModel {
    public var appName: String?

    public var bundleId: String?

    public var packName: String?

    public var platform: String?

    public var schemeName: String?

    public var signName: String?

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
        if self.appName != nil {
            map["appName"] = self.appName!
        }
        if self.bundleId != nil {
            map["bundleId"] = self.bundleId!
        }
        if self.packName != nil {
            map["packName"] = self.packName!
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        if self.schemeName != nil {
            map["schemeName"] = self.schemeName!
        }
        if self.signName != nil {
            map["signName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appName") && dict["appName"] != nil {
            self.appName = dict["appName"] as! String
        }
        if dict.keys.contains("bundleId") && dict["bundleId"] != nil {
            self.bundleId = dict["bundleId"] as! String
        }
        if dict.keys.contains("packName") && dict["packName"] != nil {
            self.packName = dict["packName"] as! String
        }
        if dict.keys.contains("platform") && dict["platform"] != nil {
            self.platform = dict["platform"] as! String
        }
        if dict.keys.contains("schemeName") && dict["schemeName"] != nil {
            self.schemeName = dict["schemeName"] as! String
        }
        if dict.keys.contains("signName") && dict["signName"] != nil {
            self.signName = dict["signName"] as! String
        }
    }
}

public class CreateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var schemeCode: String?

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
            if self.schemeCode != nil {
                map["schemeCode"] = self.schemeCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("schemeCode") && dict["schemeCode"] != nil {
                self.schemeCode = dict["schemeCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMobileWithTokenRequest : Tea.TeaModel {
    public var apiCode: Int32?

    public var operatorId: Int32?

    public var osType: String?

    public var schemeCode: String?

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
        if self.apiCode != nil {
            map["apiCode"] = self.apiCode!
        }
        if self.operatorId != nil {
            map["operatorId"] = self.operatorId!
        }
        if self.osType != nil {
            map["osType"] = self.osType!
        }
        if self.schemeCode != nil {
            map["schemeCode"] = self.schemeCode!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apiCode") && dict["apiCode"] != nil {
            self.apiCode = dict["apiCode"] as! Int32
        }
        if dict.keys.contains("operatorId") && dict["operatorId"] != nil {
            self.operatorId = dict["operatorId"] as! Int32
        }
        if dict.keys.contains("osType") && dict["osType"] != nil {
            self.osType = dict["osType"] as! String
        }
        if dict.keys.contains("schemeCode") && dict["schemeCode"] != nil {
            self.schemeCode = dict["schemeCode"] as! String
        }
        if dict.keys.contains("token") && dict["token"] != nil {
            self.token = dict["token"] as! String
        }
    }
}

public class GetMobileWithTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var mobile: String?

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
            if self.mobile != nil {
                map["mobile"] = self.mobile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("mobile") && dict["mobile"] != nil {
                self.mobile = dict["mobile"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetMobileWithTokenResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetMobileWithTokenResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetMobileWithTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMobileWithTokenResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetMobileWithTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAppInfoBySchemeRequest : Tea.TeaModel {
    public var schemeCode: String?

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
        if self.schemeCode != nil {
            map["schemeCode"] = self.schemeCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("schemeCode") && dict["schemeCode"] != nil {
            self.schemeCode = dict["schemeCode"] as! String
        }
    }
}

public class QueryAppInfoBySchemeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cmAppId: String?

        public var cmAppKey: String?

        public var ctAppId: String?

        public var ctAppKey: String?

        public var cuAppId: String?

        public var cuAppKey: String?

        public var cuRsaPublickKey: String?

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
            if self.cmAppId != nil {
                map["cmAppId"] = self.cmAppId!
            }
            if self.cmAppKey != nil {
                map["cmAppKey"] = self.cmAppKey!
            }
            if self.ctAppId != nil {
                map["ctAppId"] = self.ctAppId!
            }
            if self.ctAppKey != nil {
                map["ctAppKey"] = self.ctAppKey!
            }
            if self.cuAppId != nil {
                map["cuAppId"] = self.cuAppId!
            }
            if self.cuAppKey != nil {
                map["cuAppKey"] = self.cuAppKey!
            }
            if self.cuRsaPublickKey != nil {
                map["cuRsaPublickKey"] = self.cuRsaPublickKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cmAppId") && dict["cmAppId"] != nil {
                self.cmAppId = dict["cmAppId"] as! String
            }
            if dict.keys.contains("cmAppKey") && dict["cmAppKey"] != nil {
                self.cmAppKey = dict["cmAppKey"] as! String
            }
            if dict.keys.contains("ctAppId") && dict["ctAppId"] != nil {
                self.ctAppId = dict["ctAppId"] as! String
            }
            if dict.keys.contains("ctAppKey") && dict["ctAppKey"] != nil {
                self.ctAppKey = dict["ctAppKey"] as! String
            }
            if dict.keys.contains("cuAppId") && dict["cuAppId"] != nil {
                self.cuAppId = dict["cuAppId"] as! String
            }
            if dict.keys.contains("cuAppKey") && dict["cuAppKey"] != nil {
                self.cuAppKey = dict["cuAppKey"] as! String
            }
            if dict.keys.contains("cuRsaPublickKey") && dict["cuRsaPublickKey"] != nil {
                self.cuRsaPublickKey = dict["cuRsaPublickKey"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryAppInfoBySchemeResponseBody.Data?

    public var msg: String?

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
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = QueryAppInfoBySchemeResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class QueryAppInfoBySchemeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAppInfoBySchemeResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryAppInfoBySchemeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
