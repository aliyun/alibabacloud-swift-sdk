import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddAxnTrackNoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var phoneNoX: String?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subsId: String?

    public var trackNo: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoX != nil {
            map["PhoneNoX"] = self.phoneNoX!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subsId != nil {
            map["SubsId"] = self.subsId!
        }
        if self.trackNo != nil {
            map["trackNo"] = self.trackNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoX") {
            self.phoneNoX = dict["PhoneNoX"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SubsId") {
            self.subsId = dict["SubsId"] as! String
        }
        if dict.keys.contains("trackNo") {
            self.trackNo = dict["trackNo"] as! String
        }
    }
}

public class AddAxnTrackNoResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddAxnTrackNoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddAxnTrackNoResponseBody?

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
            var model = AddAxnTrackNoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddSecretBlacklistRequest : Tea.TeaModel {
    public var blackNo: String?

    public var blackType: String?

    public var poolKey: String?

    public var remark: String?

    public var wayControl: String?

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
        if self.blackNo != nil {
            map["BlackNo"] = self.blackNo!
        }
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.wayControl != nil {
            map["WayControl"] = self.wayControl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackNo") {
            self.blackNo = dict["BlackNo"] as! String
        }
        if dict.keys.contains("BlackType") {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("WayControl") {
            self.wayControl = dict["WayControl"] as! String
        }
    }
}

public class AddSecretBlacklistResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddSecretBlacklistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSecretBlacklistResponseBody?

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
            var model = AddSecretBlacklistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindAXBCallRequest : Tea.TeaModel {
    public var authId: String?

    public var callerParentId: Int64?

    public var customerPoolKey: String?

    public var expiration: Int64?

    public var ownerId: Int64?

    public var reqId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var telA: String?

    public var userData: String?

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
        if self.authId != nil {
            map["AuthId"] = self.authId!
        }
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthId") {
            self.authId = dict["AuthId"] as! String
        }
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("Expiration") {
            self.expiration = dict["Expiration"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TelA") {
            self.telA = dict["TelA"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class BindAXBCallResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var bindId: String?

    public var code: String?

    public var message: String?

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
        if self.bindId != nil {
            map["BindId"] = self.bindId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("BindId") {
            self.bindId = dict["BindId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BindAXBCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAXBCallResponseBody?

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
            var model = BindAXBCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindAxbRequest : Tea.TeaModel {
    public var ASRModelId: String?

    public var ASRStatus: Bool?

    public var callDisplayType: Int32?

    public var callRestrict: String?

    public var callTimeout: Int32?

    public var dtmfConfig: String?

    public var expectCity: String?

    public var expiration: String?

    public var isRecordingEnabled: Bool?

    public var outId: String?

    public var outOrderId: String?

    public var ownerId: Int64?

    public var phoneNoA: String?

    public var phoneNoB: String?

    public var phoneNoX: String?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ringConfig: String?

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
        if self.ASRModelId != nil {
            map["ASRModelId"] = self.ASRModelId!
        }
        if self.ASRStatus != nil {
            map["ASRStatus"] = self.ASRStatus!
        }
        if self.callDisplayType != nil {
            map["CallDisplayType"] = self.callDisplayType!
        }
        if self.callRestrict != nil {
            map["CallRestrict"] = self.callRestrict!
        }
        if self.callTimeout != nil {
            map["CallTimeout"] = self.callTimeout!
        }
        if self.dtmfConfig != nil {
            map["DtmfConfig"] = self.dtmfConfig!
        }
        if self.expectCity != nil {
            map["ExpectCity"] = self.expectCity!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.isRecordingEnabled != nil {
            map["IsRecordingEnabled"] = self.isRecordingEnabled!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.outOrderId != nil {
            map["OutOrderId"] = self.outOrderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
        }
        if self.phoneNoB != nil {
            map["PhoneNoB"] = self.phoneNoB!
        }
        if self.phoneNoX != nil {
            map["PhoneNoX"] = self.phoneNoX!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.ringConfig != nil {
            map["RingConfig"] = self.ringConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ASRModelId") {
            self.ASRModelId = dict["ASRModelId"] as! String
        }
        if dict.keys.contains("ASRStatus") {
            self.ASRStatus = dict["ASRStatus"] as! Bool
        }
        if dict.keys.contains("CallDisplayType") {
            self.callDisplayType = dict["CallDisplayType"] as! Int32
        }
        if dict.keys.contains("CallRestrict") {
            self.callRestrict = dict["CallRestrict"] as! String
        }
        if dict.keys.contains("CallTimeout") {
            self.callTimeout = dict["CallTimeout"] as! Int32
        }
        if dict.keys.contains("DtmfConfig") {
            self.dtmfConfig = dict["DtmfConfig"] as! String
        }
        if dict.keys.contains("ExpectCity") {
            self.expectCity = dict["ExpectCity"] as! String
        }
        if dict.keys.contains("Expiration") {
            self.expiration = dict["Expiration"] as! String
        }
        if dict.keys.contains("IsRecordingEnabled") {
            self.isRecordingEnabled = dict["IsRecordingEnabled"] as! Bool
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OutOrderId") {
            self.outOrderId = dict["OutOrderId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoA") {
            self.phoneNoA = dict["PhoneNoA"] as! String
        }
        if dict.keys.contains("PhoneNoB") {
            self.phoneNoB = dict["PhoneNoB"] as! String
        }
        if dict.keys.contains("PhoneNoX") {
            self.phoneNoX = dict["PhoneNoX"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RingConfig") {
            self.ringConfig = dict["RingConfig"] as! String
        }
    }
}

public class BindAxbResponseBody : Tea.TeaModel {
    public class SecretBindDTO : Tea.TeaModel {
        public var extension_: String?

        public var secretNo: String?

        public var subsId: String?

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
            if self.extension_ != nil {
                map["Extension"] = self.extension_!
            }
            if self.secretNo != nil {
                map["SecretNo"] = self.secretNo!
            }
            if self.subsId != nil {
                map["SubsId"] = self.subsId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Extension") {
                self.extension_ = dict["Extension"] as! String
            }
            if dict.keys.contains("SecretNo") {
                self.secretNo = dict["SecretNo"] as! String
            }
            if dict.keys.contains("SubsId") {
                self.subsId = dict["SubsId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var secretBindDTO: BindAxbResponseBody.SecretBindDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretBindDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretBindDTO != nil {
            map["SecretBindDTO"] = self.secretBindDTO?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretBindDTO") {
            var model = BindAxbResponseBody.SecretBindDTO()
            model.fromMap(dict["SecretBindDTO"] as! [String: Any])
            self.secretBindDTO = model
        }
    }
}

public class BindAxbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAxbResponseBody?

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
            var model = BindAxbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindAxgRequest : Tea.TeaModel {
    public var ASRModelId: String?

    public var ASRStatus: Bool?

    public var callDisplayType: Int32?

    public var callRestrict: String?

    public var expectCity: String?

    public var expiration: String?

    public var groupId: String?

    public var isRecordingEnabled: Bool?

    public var outId: String?

    public var outOrderId: String?

    public var ownerId: Int64?

    public var phoneNoA: String?

    public var phoneNoB: String?

    public var phoneNoX: String?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ringConfig: String?

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
        if self.ASRModelId != nil {
            map["ASRModelId"] = self.ASRModelId!
        }
        if self.ASRStatus != nil {
            map["ASRStatus"] = self.ASRStatus!
        }
        if self.callDisplayType != nil {
            map["CallDisplayType"] = self.callDisplayType!
        }
        if self.callRestrict != nil {
            map["CallRestrict"] = self.callRestrict!
        }
        if self.expectCity != nil {
            map["ExpectCity"] = self.expectCity!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.isRecordingEnabled != nil {
            map["IsRecordingEnabled"] = self.isRecordingEnabled!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.outOrderId != nil {
            map["OutOrderId"] = self.outOrderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
        }
        if self.phoneNoB != nil {
            map["PhoneNoB"] = self.phoneNoB!
        }
        if self.phoneNoX != nil {
            map["PhoneNoX"] = self.phoneNoX!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.ringConfig != nil {
            map["RingConfig"] = self.ringConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ASRModelId") {
            self.ASRModelId = dict["ASRModelId"] as! String
        }
        if dict.keys.contains("ASRStatus") {
            self.ASRStatus = dict["ASRStatus"] as! Bool
        }
        if dict.keys.contains("CallDisplayType") {
            self.callDisplayType = dict["CallDisplayType"] as! Int32
        }
        if dict.keys.contains("CallRestrict") {
            self.callRestrict = dict["CallRestrict"] as! String
        }
        if dict.keys.contains("ExpectCity") {
            self.expectCity = dict["ExpectCity"] as! String
        }
        if dict.keys.contains("Expiration") {
            self.expiration = dict["Expiration"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("IsRecordingEnabled") {
            self.isRecordingEnabled = dict["IsRecordingEnabled"] as! Bool
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OutOrderId") {
            self.outOrderId = dict["OutOrderId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoA") {
            self.phoneNoA = dict["PhoneNoA"] as! String
        }
        if dict.keys.contains("PhoneNoB") {
            self.phoneNoB = dict["PhoneNoB"] as! String
        }
        if dict.keys.contains("PhoneNoX") {
            self.phoneNoX = dict["PhoneNoX"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RingConfig") {
            self.ringConfig = dict["RingConfig"] as! String
        }
    }
}

public class BindAxgResponseBody : Tea.TeaModel {
    public class SecretBindDTO : Tea.TeaModel {
        public var extension_: String?

        public var secretNo: String?

        public var subsId: String?

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
            if self.extension_ != nil {
                map["Extension"] = self.extension_!
            }
            if self.secretNo != nil {
                map["SecretNo"] = self.secretNo!
            }
            if self.subsId != nil {
                map["SubsId"] = self.subsId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Extension") {
                self.extension_ = dict["Extension"] as! String
            }
            if dict.keys.contains("SecretNo") {
                self.secretNo = dict["SecretNo"] as! String
            }
            if dict.keys.contains("SubsId") {
                self.subsId = dict["SubsId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var secretBindDTO: BindAxgResponseBody.SecretBindDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretBindDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretBindDTO != nil {
            map["SecretBindDTO"] = self.secretBindDTO?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretBindDTO") {
            var model = BindAxgResponseBody.SecretBindDTO()
            model.fromMap(dict["SecretBindDTO"] as! [String: Any])
            self.secretBindDTO = model
        }
    }
}

public class BindAxgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAxgResponseBody?

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
            var model = BindAxgResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindAxnRequest : Tea.TeaModel {
    public var ASRModelId: String?

    public var ASRStatus: Bool?

    public var callDisplayType: Int32?

    public var callRestrict: String?

    public var callTimeout: Int32?

    public var expectCity: String?

    public var expiration: String?

    public var extend: String?

    public var isRecordingEnabled: Bool?

    public var noType: String?

    public var outId: String?

    public var outOrderId: String?

    public var ownerId: Int64?

    public var phoneNoA: String?

    public var phoneNoB: String?

    public var phoneNoX: String?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ringConfig: String?

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
        if self.ASRModelId != nil {
            map["ASRModelId"] = self.ASRModelId!
        }
        if self.ASRStatus != nil {
            map["ASRStatus"] = self.ASRStatus!
        }
        if self.callDisplayType != nil {
            map["CallDisplayType"] = self.callDisplayType!
        }
        if self.callRestrict != nil {
            map["CallRestrict"] = self.callRestrict!
        }
        if self.callTimeout != nil {
            map["CallTimeout"] = self.callTimeout!
        }
        if self.expectCity != nil {
            map["ExpectCity"] = self.expectCity!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.isRecordingEnabled != nil {
            map["IsRecordingEnabled"] = self.isRecordingEnabled!
        }
        if self.noType != nil {
            map["NoType"] = self.noType!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.outOrderId != nil {
            map["OutOrderId"] = self.outOrderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
        }
        if self.phoneNoB != nil {
            map["PhoneNoB"] = self.phoneNoB!
        }
        if self.phoneNoX != nil {
            map["PhoneNoX"] = self.phoneNoX!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.ringConfig != nil {
            map["RingConfig"] = self.ringConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ASRModelId") {
            self.ASRModelId = dict["ASRModelId"] as! String
        }
        if dict.keys.contains("ASRStatus") {
            self.ASRStatus = dict["ASRStatus"] as! Bool
        }
        if dict.keys.contains("CallDisplayType") {
            self.callDisplayType = dict["CallDisplayType"] as! Int32
        }
        if dict.keys.contains("CallRestrict") {
            self.callRestrict = dict["CallRestrict"] as! String
        }
        if dict.keys.contains("CallTimeout") {
            self.callTimeout = dict["CallTimeout"] as! Int32
        }
        if dict.keys.contains("ExpectCity") {
            self.expectCity = dict["ExpectCity"] as! String
        }
        if dict.keys.contains("Expiration") {
            self.expiration = dict["Expiration"] as! String
        }
        if dict.keys.contains("Extend") {
            self.extend = dict["Extend"] as! String
        }
        if dict.keys.contains("IsRecordingEnabled") {
            self.isRecordingEnabled = dict["IsRecordingEnabled"] as! Bool
        }
        if dict.keys.contains("NoType") {
            self.noType = dict["NoType"] as! String
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OutOrderId") {
            self.outOrderId = dict["OutOrderId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoA") {
            self.phoneNoA = dict["PhoneNoA"] as! String
        }
        if dict.keys.contains("PhoneNoB") {
            self.phoneNoB = dict["PhoneNoB"] as! String
        }
        if dict.keys.contains("PhoneNoX") {
            self.phoneNoX = dict["PhoneNoX"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RingConfig") {
            self.ringConfig = dict["RingConfig"] as! String
        }
    }
}

public class BindAxnResponseBody : Tea.TeaModel {
    public class SecretBindDTO : Tea.TeaModel {
        public var extension_: String?

        public var secretNo: String?

        public var subsId: String?

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
            if self.extension_ != nil {
                map["Extension"] = self.extension_!
            }
            if self.secretNo != nil {
                map["SecretNo"] = self.secretNo!
            }
            if self.subsId != nil {
                map["SubsId"] = self.subsId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Extension") {
                self.extension_ = dict["Extension"] as! String
            }
            if dict.keys.contains("SecretNo") {
                self.secretNo = dict["SecretNo"] as! String
            }
            if dict.keys.contains("SubsId") {
                self.subsId = dict["SubsId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var secretBindDTO: BindAxnResponseBody.SecretBindDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretBindDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretBindDTO != nil {
            map["SecretBindDTO"] = self.secretBindDTO?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretBindDTO") {
            var model = BindAxnResponseBody.SecretBindDTO()
            model.fromMap(dict["SecretBindDTO"] as! [String: Any])
            self.secretBindDTO = model
        }
    }
}

public class BindAxnResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAxnResponseBody?

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
            var model = BindAxnResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindAxnExtensionRequest : Tea.TeaModel {
    public var ASRModelId: String?

    public var ASRStatus: Bool?

    public var callDisplayType: Int32?

    public var callRestrict: String?

    public var expectCity: String?

    public var expiration: String?

    public var extend: String?

    public var extension_: String?

    public var isRecordingEnabled: Bool?

    public var outId: String?

    public var outOrderId: String?

    public var ownerId: Int64?

    public var phoneNoA: String?

    public var phoneNoB: String?

    public var phoneNoX: String?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ringConfig: String?

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
        if self.ASRModelId != nil {
            map["ASRModelId"] = self.ASRModelId!
        }
        if self.ASRStatus != nil {
            map["ASRStatus"] = self.ASRStatus!
        }
        if self.callDisplayType != nil {
            map["CallDisplayType"] = self.callDisplayType!
        }
        if self.callRestrict != nil {
            map["CallRestrict"] = self.callRestrict!
        }
        if self.expectCity != nil {
            map["ExpectCity"] = self.expectCity!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.extension_ != nil {
            map["Extension"] = self.extension_!
        }
        if self.isRecordingEnabled != nil {
            map["IsRecordingEnabled"] = self.isRecordingEnabled!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.outOrderId != nil {
            map["OutOrderId"] = self.outOrderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
        }
        if self.phoneNoB != nil {
            map["PhoneNoB"] = self.phoneNoB!
        }
        if self.phoneNoX != nil {
            map["PhoneNoX"] = self.phoneNoX!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.ringConfig != nil {
            map["RingConfig"] = self.ringConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ASRModelId") {
            self.ASRModelId = dict["ASRModelId"] as! String
        }
        if dict.keys.contains("ASRStatus") {
            self.ASRStatus = dict["ASRStatus"] as! Bool
        }
        if dict.keys.contains("CallDisplayType") {
            self.callDisplayType = dict["CallDisplayType"] as! Int32
        }
        if dict.keys.contains("CallRestrict") {
            self.callRestrict = dict["CallRestrict"] as! String
        }
        if dict.keys.contains("ExpectCity") {
            self.expectCity = dict["ExpectCity"] as! String
        }
        if dict.keys.contains("Expiration") {
            self.expiration = dict["Expiration"] as! String
        }
        if dict.keys.contains("Extend") {
            self.extend = dict["Extend"] as! String
        }
        if dict.keys.contains("Extension") {
            self.extension_ = dict["Extension"] as! String
        }
        if dict.keys.contains("IsRecordingEnabled") {
            self.isRecordingEnabled = dict["IsRecordingEnabled"] as! Bool
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OutOrderId") {
            self.outOrderId = dict["OutOrderId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoA") {
            self.phoneNoA = dict["PhoneNoA"] as! String
        }
        if dict.keys.contains("PhoneNoB") {
            self.phoneNoB = dict["PhoneNoB"] as! String
        }
        if dict.keys.contains("PhoneNoX") {
            self.phoneNoX = dict["PhoneNoX"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RingConfig") {
            self.ringConfig = dict["RingConfig"] as! String
        }
    }
}

public class BindAxnExtensionResponseBody : Tea.TeaModel {
    public class SecretBindDTO : Tea.TeaModel {
        public var extension_: String?

        public var secretNo: String?

        public var subsId: String?

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
            if self.extension_ != nil {
                map["Extension"] = self.extension_!
            }
            if self.secretNo != nil {
                map["SecretNo"] = self.secretNo!
            }
            if self.subsId != nil {
                map["SubsId"] = self.subsId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Extension") {
                self.extension_ = dict["Extension"] as! String
            }
            if dict.keys.contains("SecretNo") {
                self.secretNo = dict["SecretNo"] as! String
            }
            if dict.keys.contains("SubsId") {
                self.subsId = dict["SubsId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var secretBindDTO: BindAxnExtensionResponseBody.SecretBindDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretBindDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretBindDTO != nil {
            map["SecretBindDTO"] = self.secretBindDTO?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretBindDTO") {
            var model = BindAxnExtensionResponseBody.SecretBindDTO()
            model.fromMap(dict["SecretBindDTO"] as! [String: Any])
            self.secretBindDTO = model
        }
    }
}

public class BindAxnExtensionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAxnExtensionResponseBody?

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
            var model = BindAxnExtensionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindBatchAxgRequest : Tea.TeaModel {
    public class AxgBindList : Tea.TeaModel {
        public var ASRModelId: String?

        public var ASRStatus: Bool?

        public var callDisplayType: Int32?

        public var callRestrict: String?

        public var expectCity: String?

        public var expiration: String?

        public var groupId: String?

        public var isRecordingEnabled: Bool?

        public var outId: String?

        public var outOrderId: String?

        public var phoneNoA: String?

        public var phoneNoB: String?

        public var phoneNoX: String?

        public var ringConfig: String?

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
            if self.ASRModelId != nil {
                map["ASRModelId"] = self.ASRModelId!
            }
            if self.ASRStatus != nil {
                map["ASRStatus"] = self.ASRStatus!
            }
            if self.callDisplayType != nil {
                map["CallDisplayType"] = self.callDisplayType!
            }
            if self.callRestrict != nil {
                map["CallRestrict"] = self.callRestrict!
            }
            if self.expectCity != nil {
                map["ExpectCity"] = self.expectCity!
            }
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.isRecordingEnabled != nil {
                map["IsRecordingEnabled"] = self.isRecordingEnabled!
            }
            if self.outId != nil {
                map["OutId"] = self.outId!
            }
            if self.outOrderId != nil {
                map["OutOrderId"] = self.outOrderId!
            }
            if self.phoneNoA != nil {
                map["PhoneNoA"] = self.phoneNoA!
            }
            if self.phoneNoB != nil {
                map["PhoneNoB"] = self.phoneNoB!
            }
            if self.phoneNoX != nil {
                map["PhoneNoX"] = self.phoneNoX!
            }
            if self.ringConfig != nil {
                map["RingConfig"] = self.ringConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ASRModelId") {
                self.ASRModelId = dict["ASRModelId"] as! String
            }
            if dict.keys.contains("ASRStatus") {
                self.ASRStatus = dict["ASRStatus"] as! Bool
            }
            if dict.keys.contains("CallDisplayType") {
                self.callDisplayType = dict["CallDisplayType"] as! Int32
            }
            if dict.keys.contains("CallRestrict") {
                self.callRestrict = dict["CallRestrict"] as! String
            }
            if dict.keys.contains("ExpectCity") {
                self.expectCity = dict["ExpectCity"] as! String
            }
            if dict.keys.contains("Expiration") {
                self.expiration = dict["Expiration"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("IsRecordingEnabled") {
                self.isRecordingEnabled = dict["IsRecordingEnabled"] as! Bool
            }
            if dict.keys.contains("OutId") {
                self.outId = dict["OutId"] as! String
            }
            if dict.keys.contains("OutOrderId") {
                self.outOrderId = dict["OutOrderId"] as! String
            }
            if dict.keys.contains("PhoneNoA") {
                self.phoneNoA = dict["PhoneNoA"] as! String
            }
            if dict.keys.contains("PhoneNoB") {
                self.phoneNoB = dict["PhoneNoB"] as! String
            }
            if dict.keys.contains("PhoneNoX") {
                self.phoneNoX = dict["PhoneNoX"] as! String
            }
            if dict.keys.contains("RingConfig") {
                self.ringConfig = dict["RingConfig"] as! String
            }
        }
    }
    public var axgBindList: [BindBatchAxgRequest.AxgBindList]?

    public var ownerId: Int64?

    public var poolKey: String?

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
        if self.axgBindList != nil {
            var tmp : [Any] = []
            for k in self.axgBindList! {
                tmp.append(k.toMap())
            }
            map["AxgBindList"] = tmp
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AxgBindList") {
            var tmp : [BindBatchAxgRequest.AxgBindList] = []
            for v in dict["AxgBindList"] as! [Any] {
                var model = BindBatchAxgRequest.AxgBindList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.axgBindList = tmp
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class BindBatchAxgShrinkRequest : Tea.TeaModel {
    public var axgBindListShrink: String?

    public var ownerId: Int64?

    public var poolKey: String?

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
        if self.axgBindListShrink != nil {
            map["AxgBindList"] = self.axgBindListShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AxgBindList") {
            self.axgBindListShrink = dict["AxgBindList"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class BindBatchAxgResponseBody : Tea.TeaModel {
    public class SecretBindList : Tea.TeaModel {
        public class SecretBind : Tea.TeaModel {
            public var code: String?

            public var extension_: String?

            public var groupId: String?

            public var message: String?

            public var phoneNoA: String?

            public var secretNo: String?

            public var subsId: String?

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
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.phoneNoA != nil {
                    map["PhoneNoA"] = self.phoneNoA!
                }
                if self.secretNo != nil {
                    map["SecretNo"] = self.secretNo!
                }
                if self.subsId != nil {
                    map["SubsId"] = self.subsId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Extension") {
                    self.extension_ = dict["Extension"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("PhoneNoA") {
                    self.phoneNoA = dict["PhoneNoA"] as! String
                }
                if dict.keys.contains("SecretNo") {
                    self.secretNo = dict["SecretNo"] as! String
                }
                if dict.keys.contains("SubsId") {
                    self.subsId = dict["SubsId"] as! String
                }
            }
        }
        public var secretBind: [BindBatchAxgResponseBody.SecretBindList.SecretBind]?

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
            if self.secretBind != nil {
                var tmp : [Any] = []
                for k in self.secretBind! {
                    tmp.append(k.toMap())
                }
                map["SecretBind"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecretBind") {
                var tmp : [BindBatchAxgResponseBody.SecretBindList.SecretBind] = []
                for v in dict["SecretBind"] as! [Any] {
                    var model = BindBatchAxgResponseBody.SecretBindList.SecretBind()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.secretBind = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var secretBindList: BindBatchAxgResponseBody.SecretBindList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretBindList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretBindList != nil {
            map["SecretBindList"] = self.secretBindList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretBindList") {
            var model = BindBatchAxgResponseBody.SecretBindList()
            model.fromMap(dict["SecretBindList"] as! [String: Any])
            self.secretBindList = model
        }
    }
}

public class BindBatchAxgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindBatchAxgResponseBody?

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
            var model = BindBatchAxgResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindXBRequest : Tea.TeaModel {
    public var callerParentId: Int64?

    public var customerPoolKey: String?

    public var ownerId: Int64?

    public var reqId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var telB: String?

    public var telX: String?

    public var userData: String?

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
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TelB") {
            self.telB = dict["TelB"] as! String
        }
        if dict.keys.contains("TelX") {
            self.telX = dict["TelX"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class BindXBResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var authId: String?

    public var code: String?

    public var message: String?

    public var success: Bool?

    public var telX: String?

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
        if self.authId != nil {
            map["AuthId"] = self.authId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("AuthId") {
            self.authId = dict["AuthId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TelX") {
            self.telX = dict["TelX"] as! String
        }
    }
}

public class BindXBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindXBResponseBody?

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
            var model = BindXBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BuySecretNoRequest : Tea.TeaModel {
    public var city: String?

    public var displayPool: Bool?

    public var ownerId: Int64?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public var specId: Int64?

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
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.displayPool != nil {
            map["DisplayPool"] = self.displayPool!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("DisplayPool") {
            self.displayPool = dict["DisplayPool"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") {
            self.secretNo = dict["SecretNo"] as! String
        }
        if dict.keys.contains("SpecId") {
            self.specId = dict["SpecId"] as! Int64
        }
    }
}

public class BuySecretNoResponseBody : Tea.TeaModel {
    public class SecretBuyInfoDTO : Tea.TeaModel {
        public var secretNo: String?

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
            if self.secretNo != nil {
                map["SecretNo"] = self.secretNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecretNo") {
                self.secretNo = dict["SecretNo"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var secretBuyInfoDTO: BuySecretNoResponseBody.SecretBuyInfoDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretBuyInfoDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretBuyInfoDTO != nil {
            map["SecretBuyInfoDTO"] = self.secretBuyInfoDTO?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretBuyInfoDTO") {
            var model = BuySecretNoResponseBody.SecretBuyInfoDTO()
            model.fromMap(dict["SecretBuyInfoDTO"] as! [String: Any])
            self.secretBuyInfoDTO = model
        }
    }
}

public class BuySecretNoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BuySecretNoResponseBody?

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
            var model = BuySecretNoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelPickUpWaybillRequest : Tea.TeaModel {
    public var cancelDesc: String?

    public var outerOrderCode: String?

    public var ownerId: Int64?

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
        if self.cancelDesc != nil {
            map["CancelDesc"] = self.cancelDesc!
        }
        if self.outerOrderCode != nil {
            map["OuterOrderCode"] = self.outerOrderCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CancelDesc") {
            self.cancelDesc = dict["CancelDesc"] as! String
        }
        if dict.keys.contains("OuterOrderCode") {
            self.outerOrderCode = dict["OuterOrderCode"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CancelPickUpWaybillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

        public var errorMsg: String?

        public var message: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMsg") {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: CancelPickUpWaybillResponseBody.Data?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CancelPickUpWaybillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelPickUpWaybillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelPickUpWaybillResponseBody?

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
            var model = CancelPickUpWaybillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigXRequest : Tea.TeaModel {
    public class SequenceCalls : Tea.TeaModel {
        public var sequenceCallNoPlayCode: String?

        public var sequenceCalledNo: String?

        public var sequenceCalledPlayCode: String?

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
            if self.sequenceCallNoPlayCode != nil {
                map["SequenceCallNoPlayCode"] = self.sequenceCallNoPlayCode!
            }
            if self.sequenceCalledNo != nil {
                map["SequenceCalledNo"] = self.sequenceCalledNo!
            }
            if self.sequenceCalledPlayCode != nil {
                map["SequenceCalledPlayCode"] = self.sequenceCalledPlayCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SequenceCallNoPlayCode") {
                self.sequenceCallNoPlayCode = dict["SequenceCallNoPlayCode"] as! String
            }
            if dict.keys.contains("SequenceCalledNo") {
                self.sequenceCalledNo = dict["SequenceCalledNo"] as! String
            }
            if dict.keys.contains("SequenceCalledPlayCode") {
                self.sequenceCalledPlayCode = dict["SequenceCalledPlayCode"] as! String
            }
        }
    }
    public var callAbility: String?

    public var callerParentId: Int64?

    public var customerPoolKey: String?

    public var GNFlag: String?

    public var ownerId: Int64?

    public var reqId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sequenceCalls: [ConfigXRequest.SequenceCalls]?

    public var sequenceMode: String?

    public var smsAbility: String?

    public var smsSignMode: String?

    public var telX: String?

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
        if self.callAbility != nil {
            map["CallAbility"] = self.callAbility!
        }
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.GNFlag != nil {
            map["GNFlag"] = self.GNFlag!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sequenceCalls != nil {
            var tmp : [Any] = []
            for k in self.sequenceCalls! {
                tmp.append(k.toMap())
            }
            map["SequenceCalls"] = tmp
        }
        if self.sequenceMode != nil {
            map["SequenceMode"] = self.sequenceMode!
        }
        if self.smsAbility != nil {
            map["SmsAbility"] = self.smsAbility!
        }
        if self.smsSignMode != nil {
            map["SmsSignMode"] = self.smsSignMode!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallAbility") {
            self.callAbility = dict["CallAbility"] as! String
        }
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("GNFlag") {
            self.GNFlag = dict["GNFlag"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SequenceCalls") {
            var tmp : [ConfigXRequest.SequenceCalls] = []
            for v in dict["SequenceCalls"] as! [Any] {
                var model = ConfigXRequest.SequenceCalls()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sequenceCalls = tmp
        }
        if dict.keys.contains("SequenceMode") {
            self.sequenceMode = dict["SequenceMode"] as! String
        }
        if dict.keys.contains("SmsAbility") {
            self.smsAbility = dict["SmsAbility"] as! String
        }
        if dict.keys.contains("SmsSignMode") {
            self.smsSignMode = dict["SmsSignMode"] as! String
        }
        if dict.keys.contains("TelX") {
            self.telX = dict["TelX"] as! String
        }
    }
}

public class ConfigXShrinkRequest : Tea.TeaModel {
    public var callAbility: String?

    public var callerParentId: Int64?

    public var customerPoolKey: String?

    public var GNFlag: String?

    public var ownerId: Int64?

    public var reqId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sequenceCallsShrink: String?

    public var sequenceMode: String?

    public var smsAbility: String?

    public var smsSignMode: String?

    public var telX: String?

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
        if self.callAbility != nil {
            map["CallAbility"] = self.callAbility!
        }
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.GNFlag != nil {
            map["GNFlag"] = self.GNFlag!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sequenceCallsShrink != nil {
            map["SequenceCalls"] = self.sequenceCallsShrink!
        }
        if self.sequenceMode != nil {
            map["SequenceMode"] = self.sequenceMode!
        }
        if self.smsAbility != nil {
            map["SmsAbility"] = self.smsAbility!
        }
        if self.smsSignMode != nil {
            map["SmsSignMode"] = self.smsSignMode!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallAbility") {
            self.callAbility = dict["CallAbility"] as! String
        }
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("GNFlag") {
            self.GNFlag = dict["GNFlag"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SequenceCalls") {
            self.sequenceCallsShrink = dict["SequenceCalls"] as! String
        }
        if dict.keys.contains("SequenceMode") {
            self.sequenceMode = dict["SequenceMode"] as! String
        }
        if dict.keys.contains("SmsAbility") {
            self.smsAbility = dict["SmsAbility"] as! String
        }
        if dict.keys.contains("SmsSignMode") {
            self.smsSignMode = dict["SmsSignMode"] as! String
        }
        if dict.keys.contains("TelX") {
            self.telX = dict["TelX"] as! String
        }
    }
}

public class ConfigXResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ConfigXResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigXResponseBody?

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
            var model = ConfigXResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAxgGroupRequest : Tea.TeaModel {
    public var name: String?

    public var numbers: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var remark: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Numbers") {
            self.numbers = dict["Numbers"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateAxgGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var groupId: Int64?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAxgGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAxgGroupResponseBody?

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
            var model = CreateAxgGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePickUpWaybillRequest : Tea.TeaModel {
    public class ConsigneeAddress : Tea.TeaModel {
        public var addressDetail: String?

        public var areaName: String?

        public var cityName: String?

        public var provinceName: String?

        public var townName: String?

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
            if self.addressDetail != nil {
                map["AddressDetail"] = self.addressDetail!
            }
            if self.areaName != nil {
                map["AreaName"] = self.areaName!
            }
            if self.cityName != nil {
                map["CityName"] = self.cityName!
            }
            if self.provinceName != nil {
                map["ProvinceName"] = self.provinceName!
            }
            if self.townName != nil {
                map["TownName"] = self.townName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddressDetail") {
                self.addressDetail = dict["AddressDetail"] as! String
            }
            if dict.keys.contains("AreaName") {
                self.areaName = dict["AreaName"] as! String
            }
            if dict.keys.contains("CityName") {
                self.cityName = dict["CityName"] as! String
            }
            if dict.keys.contains("ProvinceName") {
                self.provinceName = dict["ProvinceName"] as! String
            }
            if dict.keys.contains("TownName") {
                self.townName = dict["TownName"] as! String
            }
        }
    }
    public class GoodsInfos : Tea.TeaModel {
        public var name: String?

        public var quantity: String?

        public var weight: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Quantity") {
                self.quantity = dict["Quantity"] as! String
            }
            if dict.keys.contains("Weight") {
                self.weight = dict["Weight"] as! String
            }
        }
    }
    public class SendAddress : Tea.TeaModel {
        public var addressDetail: String?

        public var areaName: String?

        public var cityName: String?

        public var provinceName: String?

        public var townName: String?

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
            if self.addressDetail != nil {
                map["AddressDetail"] = self.addressDetail!
            }
            if self.areaName != nil {
                map["AreaName"] = self.areaName!
            }
            if self.cityName != nil {
                map["CityName"] = self.cityName!
            }
            if self.provinceName != nil {
                map["ProvinceName"] = self.provinceName!
            }
            if self.townName != nil {
                map["TownName"] = self.townName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddressDetail") {
                self.addressDetail = dict["AddressDetail"] as! String
            }
            if dict.keys.contains("AreaName") {
                self.areaName = dict["AreaName"] as! String
            }
            if dict.keys.contains("CityName") {
                self.cityName = dict["CityName"] as! String
            }
            if dict.keys.contains("ProvinceName") {
                self.provinceName = dict["ProvinceName"] as! String
            }
            if dict.keys.contains("TownName") {
                self.townName = dict["TownName"] as! String
            }
        }
    }
    public var appointGotEndTime: String?

    public var appointGotStartTime: String?

    public var bizType: Int32?

    public var consigneeAddress: CreatePickUpWaybillRequest.ConsigneeAddress?

    public var consigneeMobile: String?

    public var consigneeName: String?

    public var consigneePhone: String?

    public var cpCode: String?

    public var goodsInfos: [CreatePickUpWaybillRequest.GoodsInfos]?

    public var orderChannels: String?

    public var outerOrderCode: String?

    public var remark: String?

    public var sendAddress: CreatePickUpWaybillRequest.SendAddress?

    public var sendMobile: String?

    public var sendName: String?

    public var sendPhone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.consigneeAddress?.validate()
        try self.sendAddress?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appointGotEndTime != nil {
            map["AppointGotEndTime"] = self.appointGotEndTime!
        }
        if self.appointGotStartTime != nil {
            map["AppointGotStartTime"] = self.appointGotStartTime!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.consigneeAddress != nil {
            map["ConsigneeAddress"] = self.consigneeAddress?.toMap()
        }
        if self.consigneeMobile != nil {
            map["ConsigneeMobile"] = self.consigneeMobile!
        }
        if self.consigneeName != nil {
            map["ConsigneeName"] = self.consigneeName!
        }
        if self.consigneePhone != nil {
            map["ConsigneePhone"] = self.consigneePhone!
        }
        if self.cpCode != nil {
            map["CpCode"] = self.cpCode!
        }
        if self.goodsInfos != nil {
            var tmp : [Any] = []
            for k in self.goodsInfos! {
                tmp.append(k.toMap())
            }
            map["GoodsInfos"] = tmp
        }
        if self.orderChannels != nil {
            map["OrderChannels"] = self.orderChannels!
        }
        if self.outerOrderCode != nil {
            map["OuterOrderCode"] = self.outerOrderCode!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.sendAddress != nil {
            map["SendAddress"] = self.sendAddress?.toMap()
        }
        if self.sendMobile != nil {
            map["SendMobile"] = self.sendMobile!
        }
        if self.sendName != nil {
            map["SendName"] = self.sendName!
        }
        if self.sendPhone != nil {
            map["SendPhone"] = self.sendPhone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppointGotEndTime") {
            self.appointGotEndTime = dict["AppointGotEndTime"] as! String
        }
        if dict.keys.contains("AppointGotStartTime") {
            self.appointGotStartTime = dict["AppointGotStartTime"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! Int32
        }
        if dict.keys.contains("ConsigneeAddress") {
            var model = CreatePickUpWaybillRequest.ConsigneeAddress()
            model.fromMap(dict["ConsigneeAddress"] as! [String: Any])
            self.consigneeAddress = model
        }
        if dict.keys.contains("ConsigneeMobile") {
            self.consigneeMobile = dict["ConsigneeMobile"] as! String
        }
        if dict.keys.contains("ConsigneeName") {
            self.consigneeName = dict["ConsigneeName"] as! String
        }
        if dict.keys.contains("ConsigneePhone") {
            self.consigneePhone = dict["ConsigneePhone"] as! String
        }
        if dict.keys.contains("CpCode") {
            self.cpCode = dict["CpCode"] as! String
        }
        if dict.keys.contains("GoodsInfos") {
            var tmp : [CreatePickUpWaybillRequest.GoodsInfos] = []
            for v in dict["GoodsInfos"] as! [Any] {
                var model = CreatePickUpWaybillRequest.GoodsInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.goodsInfos = tmp
        }
        if dict.keys.contains("OrderChannels") {
            self.orderChannels = dict["OrderChannels"] as! String
        }
        if dict.keys.contains("OuterOrderCode") {
            self.outerOrderCode = dict["OuterOrderCode"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("SendAddress") {
            var model = CreatePickUpWaybillRequest.SendAddress()
            model.fromMap(dict["SendAddress"] as! [String: Any])
            self.sendAddress = model
        }
        if dict.keys.contains("SendMobile") {
            self.sendMobile = dict["SendMobile"] as! String
        }
        if dict.keys.contains("SendName") {
            self.sendName = dict["SendName"] as! String
        }
        if dict.keys.contains("SendPhone") {
            self.sendPhone = dict["SendPhone"] as! String
        }
    }
}

public class CreatePickUpWaybillShrinkRequest : Tea.TeaModel {
    public var appointGotEndTime: String?

    public var appointGotStartTime: String?

    public var bizType: Int32?

    public var consigneeAddressShrink: String?

    public var consigneeMobile: String?

    public var consigneeName: String?

    public var consigneePhone: String?

    public var cpCode: String?

    public var goodsInfosShrink: String?

    public var orderChannels: String?

    public var outerOrderCode: String?

    public var remark: String?

    public var sendAddressShrink: String?

    public var sendMobile: String?

    public var sendName: String?

    public var sendPhone: String?

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
        if self.appointGotEndTime != nil {
            map["AppointGotEndTime"] = self.appointGotEndTime!
        }
        if self.appointGotStartTime != nil {
            map["AppointGotStartTime"] = self.appointGotStartTime!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.consigneeAddressShrink != nil {
            map["ConsigneeAddress"] = self.consigneeAddressShrink!
        }
        if self.consigneeMobile != nil {
            map["ConsigneeMobile"] = self.consigneeMobile!
        }
        if self.consigneeName != nil {
            map["ConsigneeName"] = self.consigneeName!
        }
        if self.consigneePhone != nil {
            map["ConsigneePhone"] = self.consigneePhone!
        }
        if self.cpCode != nil {
            map["CpCode"] = self.cpCode!
        }
        if self.goodsInfosShrink != nil {
            map["GoodsInfos"] = self.goodsInfosShrink!
        }
        if self.orderChannels != nil {
            map["OrderChannels"] = self.orderChannels!
        }
        if self.outerOrderCode != nil {
            map["OuterOrderCode"] = self.outerOrderCode!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.sendAddressShrink != nil {
            map["SendAddress"] = self.sendAddressShrink!
        }
        if self.sendMobile != nil {
            map["SendMobile"] = self.sendMobile!
        }
        if self.sendName != nil {
            map["SendName"] = self.sendName!
        }
        if self.sendPhone != nil {
            map["SendPhone"] = self.sendPhone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppointGotEndTime") {
            self.appointGotEndTime = dict["AppointGotEndTime"] as! String
        }
        if dict.keys.contains("AppointGotStartTime") {
            self.appointGotStartTime = dict["AppointGotStartTime"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! Int32
        }
        if dict.keys.contains("ConsigneeAddress") {
            self.consigneeAddressShrink = dict["ConsigneeAddress"] as! String
        }
        if dict.keys.contains("ConsigneeMobile") {
            self.consigneeMobile = dict["ConsigneeMobile"] as! String
        }
        if dict.keys.contains("ConsigneeName") {
            self.consigneeName = dict["ConsigneeName"] as! String
        }
        if dict.keys.contains("ConsigneePhone") {
            self.consigneePhone = dict["ConsigneePhone"] as! String
        }
        if dict.keys.contains("CpCode") {
            self.cpCode = dict["CpCode"] as! String
        }
        if dict.keys.contains("GoodsInfos") {
            self.goodsInfosShrink = dict["GoodsInfos"] as! String
        }
        if dict.keys.contains("OrderChannels") {
            self.orderChannels = dict["OrderChannels"] as! String
        }
        if dict.keys.contains("OuterOrderCode") {
            self.outerOrderCode = dict["OuterOrderCode"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("SendAddress") {
            self.sendAddressShrink = dict["SendAddress"] as! String
        }
        if dict.keys.contains("SendMobile") {
            self.sendMobile = dict["SendMobile"] as! String
        }
        if dict.keys.contains("SendName") {
            self.sendName = dict["SendName"] as! String
        }
        if dict.keys.contains("SendPhone") {
            self.sendPhone = dict["SendPhone"] as! String
        }
    }
}

public class CreatePickUpWaybillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cpCode: String?

        public var errorCode: String?

        public var errorMsg: String?

        public var gotCode: String?

        public var mailNo: String?

        public var success: String?

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
            if self.cpCode != nil {
                map["CpCode"] = self.cpCode!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.gotCode != nil {
                map["GotCode"] = self.gotCode!
            }
            if self.mailNo != nil {
                map["MailNo"] = self.mailNo!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CpCode") {
                self.cpCode = dict["CpCode"] as! String
            }
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMsg") {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("GotCode") {
                self.gotCode = dict["GotCode"] as! String
            }
            if dict.keys.contains("MailNo") {
                self.mailNo = dict["MailNo"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! String
            }
        }
    }
    public var data: CreatePickUpWaybillResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") {
            var model = CreatePickUpWaybillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePickUpWaybillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePickUpWaybillResponseBody?

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
            var model = CreatePickUpWaybillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePickUpWaybillPreQueryRequest : Tea.TeaModel {
    public class ConsigneeInfo : Tea.TeaModel {
        public class AddressInfo : Tea.TeaModel {
            public var addressDetail: String?

            public var areaName: String?

            public var cityName: String?

            public var provinceName: String?

            public var townName: String?

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
                if self.addressDetail != nil {
                    map["AddressDetail"] = self.addressDetail!
                }
                if self.areaName != nil {
                    map["AreaName"] = self.areaName!
                }
                if self.cityName != nil {
                    map["CityName"] = self.cityName!
                }
                if self.provinceName != nil {
                    map["ProvinceName"] = self.provinceName!
                }
                if self.townName != nil {
                    map["TownName"] = self.townName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddressDetail") {
                    self.addressDetail = dict["AddressDetail"] as! String
                }
                if dict.keys.contains("AreaName") {
                    self.areaName = dict["AreaName"] as! String
                }
                if dict.keys.contains("CityName") {
                    self.cityName = dict["CityName"] as! String
                }
                if dict.keys.contains("ProvinceName") {
                    self.provinceName = dict["ProvinceName"] as! String
                }
                if dict.keys.contains("TownName") {
                    self.townName = dict["TownName"] as! String
                }
            }
        }
        public var addressInfo: CreatePickUpWaybillPreQueryRequest.ConsigneeInfo.AddressInfo?

        public var mobile: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.addressInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressInfo != nil {
                map["AddressInfo"] = self.addressInfo?.toMap()
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddressInfo") {
                var model = CreatePickUpWaybillPreQueryRequest.ConsigneeInfo.AddressInfo()
                model.fromMap(dict["AddressInfo"] as! [String: Any])
                self.addressInfo = model
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public class SenderInfo : Tea.TeaModel {
        public class AddressInfo : Tea.TeaModel {
            public var addressDetail: String?

            public var areaName: String?

            public var cityName: String?

            public var provinceName: String?

            public var townName: String?

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
                if self.addressDetail != nil {
                    map["AddressDetail"] = self.addressDetail!
                }
                if self.areaName != nil {
                    map["AreaName"] = self.areaName!
                }
                if self.cityName != nil {
                    map["CityName"] = self.cityName!
                }
                if self.provinceName != nil {
                    map["ProvinceName"] = self.provinceName!
                }
                if self.townName != nil {
                    map["TownName"] = self.townName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddressDetail") {
                    self.addressDetail = dict["AddressDetail"] as! String
                }
                if dict.keys.contains("AreaName") {
                    self.areaName = dict["AreaName"] as! String
                }
                if dict.keys.contains("CityName") {
                    self.cityName = dict["CityName"] as! String
                }
                if dict.keys.contains("ProvinceName") {
                    self.provinceName = dict["ProvinceName"] as! String
                }
                if dict.keys.contains("TownName") {
                    self.townName = dict["TownName"] as! String
                }
            }
        }
        public var addressInfo: CreatePickUpWaybillPreQueryRequest.SenderInfo.AddressInfo?

        public var mobile: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.addressInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressInfo != nil {
                map["AddressInfo"] = self.addressInfo?.toMap()
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddressInfo") {
                var model = CreatePickUpWaybillPreQueryRequest.SenderInfo.AddressInfo()
                model.fromMap(dict["AddressInfo"] as! [String: Any])
                self.addressInfo = model
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var consigneeInfo: CreatePickUpWaybillPreQueryRequest.ConsigneeInfo?

    public var cpCode: String?

    public var orderChannels: String?

    public var outerOrderCode: String?

    public var preWeight: String?

    public var senderInfo: CreatePickUpWaybillPreQueryRequest.SenderInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.consigneeInfo?.validate()
        try self.senderInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consigneeInfo != nil {
            map["ConsigneeInfo"] = self.consigneeInfo?.toMap()
        }
        if self.cpCode != nil {
            map["CpCode"] = self.cpCode!
        }
        if self.orderChannels != nil {
            map["OrderChannels"] = self.orderChannels!
        }
        if self.outerOrderCode != nil {
            map["OuterOrderCode"] = self.outerOrderCode!
        }
        if self.preWeight != nil {
            map["PreWeight"] = self.preWeight!
        }
        if self.senderInfo != nil {
            map["SenderInfo"] = self.senderInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsigneeInfo") {
            var model = CreatePickUpWaybillPreQueryRequest.ConsigneeInfo()
            model.fromMap(dict["ConsigneeInfo"] as! [String: Any])
            self.consigneeInfo = model
        }
        if dict.keys.contains("CpCode") {
            self.cpCode = dict["CpCode"] as! String
        }
        if dict.keys.contains("OrderChannels") {
            self.orderChannels = dict["OrderChannels"] as! String
        }
        if dict.keys.contains("OuterOrderCode") {
            self.outerOrderCode = dict["OuterOrderCode"] as! String
        }
        if dict.keys.contains("PreWeight") {
            self.preWeight = dict["PreWeight"] as! String
        }
        if dict.keys.contains("SenderInfo") {
            var model = CreatePickUpWaybillPreQueryRequest.SenderInfo()
            model.fromMap(dict["SenderInfo"] as! [String: Any])
            self.senderInfo = model
        }
    }
}

public class CreatePickUpWaybillPreQueryShrinkRequest : Tea.TeaModel {
    public var consigneeInfoShrink: String?

    public var cpCode: String?

    public var orderChannels: String?

    public var outerOrderCode: String?

    public var preWeight: String?

    public var senderInfoShrink: String?

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
        if self.consigneeInfoShrink != nil {
            map["ConsigneeInfo"] = self.consigneeInfoShrink!
        }
        if self.cpCode != nil {
            map["CpCode"] = self.cpCode!
        }
        if self.orderChannels != nil {
            map["OrderChannels"] = self.orderChannels!
        }
        if self.outerOrderCode != nil {
            map["OuterOrderCode"] = self.outerOrderCode!
        }
        if self.preWeight != nil {
            map["PreWeight"] = self.preWeight!
        }
        if self.senderInfoShrink != nil {
            map["SenderInfo"] = self.senderInfoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsigneeInfo") {
            self.consigneeInfoShrink = dict["ConsigneeInfo"] as! String
        }
        if dict.keys.contains("CpCode") {
            self.cpCode = dict["CpCode"] as! String
        }
        if dict.keys.contains("OrderChannels") {
            self.orderChannels = dict["OrderChannels"] as! String
        }
        if dict.keys.contains("OuterOrderCode") {
            self.outerOrderCode = dict["OuterOrderCode"] as! String
        }
        if dict.keys.contains("PreWeight") {
            self.preWeight = dict["PreWeight"] as! String
        }
        if dict.keys.contains("SenderInfo") {
            self.senderInfoShrink = dict["SenderInfo"] as! String
        }
    }
}

public class CreatePickUpWaybillPreQueryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CpTimeSelectList : Tea.TeaModel {
            public class AppointTimes : Tea.TeaModel {
                public class TimeList : Tea.TeaModel {
                    public var endTime: String?

                    public var selectDisableTip: String?

                    public var selectable: Bool?

                    public var startTime: String?

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
                        if self.endTime != nil {
                            map["EndTime"] = self.endTime!
                        }
                        if self.selectDisableTip != nil {
                            map["SelectDisableTip"] = self.selectDisableTip!
                        }
                        if self.selectable != nil {
                            map["Selectable"] = self.selectable!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EndTime") {
                            self.endTime = dict["EndTime"] as! String
                        }
                        if dict.keys.contains("SelectDisableTip") {
                            self.selectDisableTip = dict["SelectDisableTip"] as! String
                        }
                        if dict.keys.contains("Selectable") {
                            self.selectable = dict["Selectable"] as! Bool
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! String
                        }
                    }
                }
                public var date: String?

                public var dateSelectable: Bool?

                public var timeList: [CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.AppointTimes.TimeList]?

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
                    if self.date != nil {
                        map["Date"] = self.date!
                    }
                    if self.dateSelectable != nil {
                        map["DateSelectable"] = self.dateSelectable!
                    }
                    if self.timeList != nil {
                        var tmp : [Any] = []
                        for k in self.timeList! {
                            tmp.append(k.toMap())
                        }
                        map["TimeList"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Date") {
                        self.date = dict["Date"] as! String
                    }
                    if dict.keys.contains("DateSelectable") {
                        self.dateSelectable = dict["DateSelectable"] as! Bool
                    }
                    if dict.keys.contains("TimeList") {
                        var tmp : [CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.AppointTimes.TimeList] = []
                        for v in dict["TimeList"] as! [Any] {
                            var model = CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.AppointTimes.TimeList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.timeList = tmp
                    }
                }
            }
            public class RealTime : Tea.TeaModel {
                public var name: String?

                public var selectDisableTip: String?

                public var selectable: Bool?

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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.selectDisableTip != nil {
                        map["SelectDisableTip"] = self.selectDisableTip!
                    }
                    if self.selectable != nil {
                        map["Selectable"] = self.selectable!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("SelectDisableTip") {
                        self.selectDisableTip = dict["SelectDisableTip"] as! String
                    }
                    if dict.keys.contains("Selectable") {
                        self.selectable = dict["Selectable"] as! Bool
                    }
                }
            }
            public var appointTimes: [CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.AppointTimes]?

            public var prePrice: String?

            public var realTime: CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.RealTime?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.realTime?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appointTimes != nil {
                    var tmp : [Any] = []
                    for k in self.appointTimes! {
                        tmp.append(k.toMap())
                    }
                    map["AppointTimes"] = tmp
                }
                if self.prePrice != nil {
                    map["PrePrice"] = self.prePrice!
                }
                if self.realTime != nil {
                    map["RealTime"] = self.realTime?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppointTimes") {
                    var tmp : [CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.AppointTimes] = []
                    for v in dict["AppointTimes"] as! [Any] {
                        var model = CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.AppointTimes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.appointTimes = tmp
                }
                if dict.keys.contains("PrePrice") {
                    self.prePrice = dict["PrePrice"] as! String
                }
                if dict.keys.contains("RealTime") {
                    var model = CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.RealTime()
                    model.fromMap(dict["RealTime"] as! [String: Any])
                    self.realTime = model
                }
            }
        }
        public var code: String?

        public var cpTimeSelectList: [CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList]?

        public var errorCode: String?

        public var errorMsg: String?

        public var message: String?

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
                map["Code"] = self.code!
            }
            if self.cpTimeSelectList != nil {
                var tmp : [Any] = []
                for k in self.cpTimeSelectList! {
                    tmp.append(k.toMap())
                }
                map["CpTimeSelectList"] = tmp
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("CpTimeSelectList") {
                var tmp : [CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList] = []
                for v in dict["CpTimeSelectList"] as! [Any] {
                    var model = CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cpTimeSelectList = tmp
            }
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMsg") {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var data: CreatePickUpWaybillPreQueryResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") {
            var model = CreatePickUpWaybillPreQueryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePickUpWaybillPreQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePickUpWaybillPreQueryResponseBody?

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
            var model = CreatePickUpWaybillPreQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSmsSignRequest : Tea.TeaModel {
    public var calledNo: String?

    public var callerParentId: Int64?

    public var callingNo: String?

    public var customerPoolKey: String?

    public var ownerId: Int64?

    public var reqId: String?

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
        if self.calledNo != nil {
            map["CalledNo"] = self.calledNo!
        }
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.callingNo != nil {
            map["CallingNo"] = self.callingNo!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNo") {
            self.calledNo = dict["CalledNo"] as! String
        }
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CallingNo") {
            self.callingNo = dict["CallingNo"] as! String
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateSmsSignResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var calledNoSign: String?

    public var code: String?

    public var message: String?

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
        if self.calledNoSign != nil {
            map["CalledNoSign"] = self.calledNoSign!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("CalledNoSign") {
            self.calledNoSign = dict["CalledNoSign"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateSmsSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSmsSignResponseBody?

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
            var model = CreateSmsSignResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAxgGroupRequest : Tea.TeaModel {
    public var groupId: Int64?

    public var ownerId: Int64?

    public var poolKey: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteAxgGroupResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAxgGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAxgGroupResponseBody?

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
            var model = DeleteAxgGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSecretBlacklistRequest : Tea.TeaModel {
    public var blackNo: String?

    public var blackType: String?

    public var poolKey: String?

    public var remark: String?

    public var wayControl: String?

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
        if self.blackNo != nil {
            map["BlackNo"] = self.blackNo!
        }
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.wayControl != nil {
            map["WayControl"] = self.wayControl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackNo") {
            self.blackNo = dict["BlackNo"] as! String
        }
        if dict.keys.contains("BlackType") {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("WayControl") {
            self.wayControl = dict["WayControl"] as! String
        }
    }
}

public class DeleteSecretBlacklistResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSecretBlacklistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecretBlacklistResponseBody?

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
            var model = DeleteSecretBlacklistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSecretAsrDetailRequest : Tea.TeaModel {
    public var callId: String?

    public var callTime: String?

    public var poolKey: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.callTime != nil {
            map["CallTime"] = self.callTime!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("CallTime") {
            self.callTime = dict["CallTime"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
    }
}

public class GetSecretAsrDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Sentences : Tea.TeaModel {
            public var beginTime: Int64?

            public var channelId: Int32?

            public var emotionValue: String?

            public var endTime: Int64?

            public var silenceDuration: Int64?

            public var speechRate: Int32?

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
                if self.beginTime != nil {
                    map["BeginTime"] = self.beginTime!
                }
                if self.channelId != nil {
                    map["ChannelId"] = self.channelId!
                }
                if self.emotionValue != nil {
                    map["EmotionValue"] = self.emotionValue!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.silenceDuration != nil {
                    map["SilenceDuration"] = self.silenceDuration!
                }
                if self.speechRate != nil {
                    map["SpeechRate"] = self.speechRate!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginTime") {
                    self.beginTime = dict["BeginTime"] as! Int64
                }
                if dict.keys.contains("ChannelId") {
                    self.channelId = dict["ChannelId"] as! Int32
                }
                if dict.keys.contains("EmotionValue") {
                    self.emotionValue = dict["EmotionValue"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("SilenceDuration") {
                    self.silenceDuration = dict["SilenceDuration"] as! Int64
                }
                if dict.keys.contains("SpeechRate") {
                    self.speechRate = dict["SpeechRate"] as! Int32
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public var bizDuration: Int64?

        public var businessId: String?

        public var businessKey: String?

        public var code: String?

        public var msg: String?

        public var requestId: String?

        public var sentences: [GetSecretAsrDetailResponseBody.Data.Sentences]?

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
            if self.bizDuration != nil {
                map["BizDuration"] = self.bizDuration!
            }
            if self.businessId != nil {
                map["BusinessId"] = self.businessId!
            }
            if self.businessKey != nil {
                map["BusinessKey"] = self.businessKey!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.sentences != nil {
                var tmp : [Any] = []
                for k in self.sentences! {
                    tmp.append(k.toMap())
                }
                map["Sentences"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizDuration") {
                self.bizDuration = dict["BizDuration"] as! Int64
            }
            if dict.keys.contains("BusinessId") {
                self.businessId = dict["BusinessId"] as! String
            }
            if dict.keys.contains("BusinessKey") {
                self.businessKey = dict["BusinessKey"] as! String
            }
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Msg") {
                self.msg = dict["Msg"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("Sentences") {
                var tmp : [GetSecretAsrDetailResponseBody.Data.Sentences] = []
                for v in dict["Sentences"] as! [Any] {
                    var model = GetSecretAsrDetailResponseBody.Data.Sentences()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sentences = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetSecretAsrDetailResponseBody.Data?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetSecretAsrDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSecretAsrDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecretAsrDetailResponseBody?

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
            var model = GetSecretAsrDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTotalPublicUrlRequest : Tea.TeaModel {
    public var callId: String?

    public var callTime: String?

    public var checkSubs: Bool?

    public var ownerId: Int64?

    public var partnerKey: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.callTime != nil {
            map["CallTime"] = self.callTime!
        }
        if self.checkSubs != nil {
            map["CheckSubs"] = self.checkSubs!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.partnerKey != nil {
            map["PartnerKey"] = self.partnerKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("CallTime") {
            self.callTime = dict["CallTime"] as! String
        }
        if dict.keys.contains("CheckSubs") {
            self.checkSubs = dict["CheckSubs"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PartnerKey") {
            self.partnerKey = dict["PartnerKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetTotalPublicUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var phonePublicUrl: String?

        public var ringPublicUrl: String?

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
            if self.phonePublicUrl != nil {
                map["PhonePublicUrl"] = self.phonePublicUrl!
            }
            if self.ringPublicUrl != nil {
                map["RingPublicUrl"] = self.ringPublicUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PhonePublicUrl") {
                self.phonePublicUrl = dict["PhonePublicUrl"] as! String
            }
            if dict.keys.contains("RingPublicUrl") {
                self.ringPublicUrl = dict["RingPublicUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetTotalPublicUrlResponseBody.Data?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetTotalPublicUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTotalPublicUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTotalPublicUrlResponseBody?

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
            var model = GetTotalPublicUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetXConfigRequest : Tea.TeaModel {
    public var callerParentId: Int64?

    public var customerPoolKey: String?

    public var ownerId: Int64?

    public var reqId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var telX: String?

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
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TelX") {
            self.telX = dict["TelX"] as! String
        }
    }
}

public class GetXConfigResponseBody : Tea.TeaModel {
    public class SequenceCalls : Tea.TeaModel {
        public var sequenceCallNoPlayCode: String?

        public var sequenceCalledNo: String?

        public var sequenceCalledPlayCode: String?

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
            if self.sequenceCallNoPlayCode != nil {
                map["SequenceCallNoPlayCode"] = self.sequenceCallNoPlayCode!
            }
            if self.sequenceCalledNo != nil {
                map["SequenceCalledNo"] = self.sequenceCalledNo!
            }
            if self.sequenceCalledPlayCode != nil {
                map["SequenceCalledPlayCode"] = self.sequenceCalledPlayCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SequenceCallNoPlayCode") {
                self.sequenceCallNoPlayCode = dict["SequenceCallNoPlayCode"] as! String
            }
            if dict.keys.contains("SequenceCalledNo") {
                self.sequenceCalledNo = dict["SequenceCalledNo"] as! String
            }
            if dict.keys.contains("SequenceCalledPlayCode") {
                self.sequenceCalledPlayCode = dict["SequenceCalledPlayCode"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var callAbility: String?

    public var code: String?

    public var GNFlag: String?

    public var message: String?

    public var sequenceCalls: [GetXConfigResponseBody.SequenceCalls]?

    public var sequenceMode: String?

    public var smsAbility: String?

    public var smsSignMode: String?

    public var success: Bool?

    public var telX: String?

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
        if self.callAbility != nil {
            map["CallAbility"] = self.callAbility!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.GNFlag != nil {
            map["GNFlag"] = self.GNFlag!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.sequenceCalls != nil {
            var tmp : [Any] = []
            for k in self.sequenceCalls! {
                tmp.append(k.toMap())
            }
            map["SequenceCalls"] = tmp
        }
        if self.sequenceMode != nil {
            map["SequenceMode"] = self.sequenceMode!
        }
        if self.smsAbility != nil {
            map["SmsAbility"] = self.smsAbility!
        }
        if self.smsSignMode != nil {
            map["SmsSignMode"] = self.smsSignMode!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("CallAbility") {
            self.callAbility = dict["CallAbility"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GNFlag") {
            self.GNFlag = dict["GNFlag"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("SequenceCalls") {
            var tmp : [GetXConfigResponseBody.SequenceCalls] = []
            for v in dict["SequenceCalls"] as! [Any] {
                var model = GetXConfigResponseBody.SequenceCalls()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sequenceCalls = tmp
        }
        if dict.keys.contains("SequenceMode") {
            self.sequenceMode = dict["SequenceMode"] as! String
        }
        if dict.keys.contains("SmsAbility") {
            self.smsAbility = dict["SmsAbility"] as! String
        }
        if dict.keys.contains("SmsSignMode") {
            self.smsSignMode = dict["SmsSignMode"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TelX") {
            self.telX = dict["TelX"] as! String
        }
    }
}

public class GetXConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetXConfigResponseBody?

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
            var model = GetXConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetXDefaultConfigRequest : Tea.TeaModel {
    public var callerParentId: Int64?

    public var customerPoolKey: String?

    public var ownerId: Int64?

    public var reqId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var telX: String?

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
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TelX") {
            self.telX = dict["TelX"] as! String
        }
    }
}

public class GetXDefaultConfigResponseBody : Tea.TeaModel {
    public class ReachJson : Tea.TeaModel {
        public var callDir: String?

        public var callStatus: String?

        public var receiveDir: String?

        public var ruleId: String?

        public var ruleName: String?

        public var ruleType: String?

        public var tempId: String?

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
            if self.callDir != nil {
                map["CallDir"] = self.callDir!
            }
            if self.callStatus != nil {
                map["CallStatus"] = self.callStatus!
            }
            if self.receiveDir != nil {
                map["ReceiveDir"] = self.receiveDir!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.tempId != nil {
                map["TempId"] = self.tempId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallDir") {
                self.callDir = dict["CallDir"] as! String
            }
            if dict.keys.contains("CallStatus") {
                self.callStatus = dict["CallStatus"] as! String
            }
            if dict.keys.contains("ReceiveDir") {
                self.receiveDir = dict["ReceiveDir"] as! String
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("RuleType") {
                self.ruleType = dict["RuleType"] as! String
            }
            if dict.keys.contains("TempId") {
                self.tempId = dict["TempId"] as! String
            }
        }
    }
    public class SequenceCalls : Tea.TeaModel {
        public var sequenceCallNoPlayCode: String?

        public var sequenceCalledNo: String?

        public var sequenceCalledPlayCode: String?

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
            if self.sequenceCallNoPlayCode != nil {
                map["SequenceCallNoPlayCode"] = self.sequenceCallNoPlayCode!
            }
            if self.sequenceCalledNo != nil {
                map["SequenceCalledNo"] = self.sequenceCalledNo!
            }
            if self.sequenceCalledPlayCode != nil {
                map["SequenceCalledPlayCode"] = self.sequenceCalledPlayCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SequenceCallNoPlayCode") {
                self.sequenceCallNoPlayCode = dict["SequenceCallNoPlayCode"] as! String
            }
            if dict.keys.contains("SequenceCalledNo") {
                self.sequenceCalledNo = dict["SequenceCalledNo"] as! String
            }
            if dict.keys.contains("SequenceCalledPlayCode") {
                self.sequenceCalledPlayCode = dict["SequenceCalledPlayCode"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var callAbility: String?

    public var code: String?

    public var GNFlag: String?

    public var message: String?

    public var reachJson: [GetXDefaultConfigResponseBody.ReachJson]?

    public var sequenceCalls: [GetXDefaultConfigResponseBody.SequenceCalls]?

    public var sequenceEndTime: String?

    public var sequenceStartTime: String?

    public var smsAbility: String?

    public var smsSignMode: String?

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
        if self.callAbility != nil {
            map["CallAbility"] = self.callAbility!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.GNFlag != nil {
            map["GNFlag"] = self.GNFlag!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reachJson != nil {
            var tmp : [Any] = []
            for k in self.reachJson! {
                tmp.append(k.toMap())
            }
            map["ReachJson"] = tmp
        }
        if self.sequenceCalls != nil {
            var tmp : [Any] = []
            for k in self.sequenceCalls! {
                tmp.append(k.toMap())
            }
            map["SequenceCalls"] = tmp
        }
        if self.sequenceEndTime != nil {
            map["SequenceEndTime"] = self.sequenceEndTime!
        }
        if self.sequenceStartTime != nil {
            map["SequenceStartTime"] = self.sequenceStartTime!
        }
        if self.smsAbility != nil {
            map["SmsAbility"] = self.smsAbility!
        }
        if self.smsSignMode != nil {
            map["SmsSignMode"] = self.smsSignMode!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("CallAbility") {
            self.callAbility = dict["CallAbility"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GNFlag") {
            self.GNFlag = dict["GNFlag"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReachJson") {
            var tmp : [GetXDefaultConfigResponseBody.ReachJson] = []
            for v in dict["ReachJson"] as! [Any] {
                var model = GetXDefaultConfigResponseBody.ReachJson()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.reachJson = tmp
        }
        if dict.keys.contains("SequenceCalls") {
            var tmp : [GetXDefaultConfigResponseBody.SequenceCalls] = []
            for v in dict["SequenceCalls"] as! [Any] {
                var model = GetXDefaultConfigResponseBody.SequenceCalls()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sequenceCalls = tmp
        }
        if dict.keys.contains("SequenceEndTime") {
            self.sequenceEndTime = dict["SequenceEndTime"] as! String
        }
        if dict.keys.contains("SequenceStartTime") {
            self.sequenceStartTime = dict["SequenceStartTime"] as! String
        }
        if dict.keys.contains("SmsAbility") {
            self.smsAbility = dict["SmsAbility"] as! String
        }
        if dict.keys.contains("SmsSignMode") {
            self.smsSignMode = dict["SmsSignMode"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetXDefaultConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetXDefaultConfigResponseBody?

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
            var model = GetXDefaultConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListXTelephonesRequest : Tea.TeaModel {
    public var callerParentId: Int64?

    public var customerPoolKey: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var reqId: String?

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
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ListXTelephonesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authMsg: String?

        public var bindTime: String?

        public var buyTime: String?

        public var customerPoolKey: String?

        public var customerPoolName: String?

        public var releaseTime: String?

        public var smsStatus: String?

        public var telephone: String?

        public var telephoneStatus: String?

        public var unbindTime: String?

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
            if self.authMsg != nil {
                map["AuthMsg"] = self.authMsg!
            }
            if self.bindTime != nil {
                map["BindTime"] = self.bindTime!
            }
            if self.buyTime != nil {
                map["BuyTime"] = self.buyTime!
            }
            if self.customerPoolKey != nil {
                map["CustomerPoolKey"] = self.customerPoolKey!
            }
            if self.customerPoolName != nil {
                map["CustomerPoolName"] = self.customerPoolName!
            }
            if self.releaseTime != nil {
                map["ReleaseTime"] = self.releaseTime!
            }
            if self.smsStatus != nil {
                map["SmsStatus"] = self.smsStatus!
            }
            if self.telephone != nil {
                map["Telephone"] = self.telephone!
            }
            if self.telephoneStatus != nil {
                map["TelephoneStatus"] = self.telephoneStatus!
            }
            if self.unbindTime != nil {
                map["UnbindTime"] = self.unbindTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthMsg") {
                self.authMsg = dict["AuthMsg"] as! String
            }
            if dict.keys.contains("BindTime") {
                self.bindTime = dict["BindTime"] as! String
            }
            if dict.keys.contains("BuyTime") {
                self.buyTime = dict["BuyTime"] as! String
            }
            if dict.keys.contains("CustomerPoolKey") {
                self.customerPoolKey = dict["CustomerPoolKey"] as! String
            }
            if dict.keys.contains("CustomerPoolName") {
                self.customerPoolName = dict["CustomerPoolName"] as! String
            }
            if dict.keys.contains("ReleaseTime") {
                self.releaseTime = dict["ReleaseTime"] as! String
            }
            if dict.keys.contains("SmsStatus") {
                self.smsStatus = dict["SmsStatus"] as! String
            }
            if dict.keys.contains("Telephone") {
                self.telephone = dict["Telephone"] as! String
            }
            if dict.keys.contains("TelephoneStatus") {
                self.telephoneStatus = dict["TelephoneStatus"] as! String
            }
            if dict.keys.contains("UnbindTime") {
                self.unbindTime = dict["UnbindTime"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [ListXTelephonesResponseBody.Data]?

    public var message: String?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListXTelephonesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListXTelephonesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListXTelephonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListXTelephonesResponseBody?

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
            var model = ListXTelephonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LockSecretNoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class LockSecretNoResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class LockSecretNoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockSecretNoResponseBody?

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
            var model = LockSecretNoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OperateAxgGroupRequest : Tea.TeaModel {
    public var groupId: Int64?

    public var numbers: String?

    public var operateType: String?

    public var ownerId: Int64?

    public var poolKey: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! Int64
        }
        if dict.keys.contains("Numbers") {
            self.numbers = dict["Numbers"] as! String
        }
        if dict.keys.contains("OperateType") {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class OperateAxgGroupResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OperateAxgGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateAxgGroupResponseBody?

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
            var model = OperateAxgGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OperateBlackNoRequest : Tea.TeaModel {
    public var blackNo: String?

    public var operateType: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tips: String?

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
        if self.blackNo != nil {
            map["BlackNo"] = self.blackNo!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tips != nil {
            map["Tips"] = self.tips!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackNo") {
            self.blackNo = dict["BlackNo"] as! String
        }
        if dict.keys.contains("OperateType") {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tips") {
            self.tips = dict["Tips"] as! String
        }
    }
}

public class OperateBlackNoResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OperateBlackNoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateBlackNoResponseBody?

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
            var model = OperateBlackNoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPhoneNoAByTrackNoRequest : Tea.TeaModel {
    public var cabinetNo: String?

    public var ownerId: Int64?

    public var phoneNoX: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trackNo: String?

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
        if self.cabinetNo != nil {
            map["CabinetNo"] = self.cabinetNo!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoX != nil {
            map["PhoneNoX"] = self.phoneNoX!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.trackNo != nil {
            map["trackNo"] = self.trackNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CabinetNo") {
            self.cabinetNo = dict["CabinetNo"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoX") {
            self.phoneNoX = dict["PhoneNoX"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("trackNo") {
            self.trackNo = dict["trackNo"] as! String
        }
    }
}

public class QueryPhoneNoAByTrackNoResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var extension_: String?

        public var phoneNoA: String?

        public var phoneNoX: String?

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
            if self.extension_ != nil {
                map["Extension"] = self.extension_!
            }
            if self.phoneNoA != nil {
                map["PhoneNoA"] = self.phoneNoA!
            }
            if self.phoneNoX != nil {
                map["PhoneNoX"] = self.phoneNoX!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Extension") {
                self.extension_ = dict["Extension"] as! String
            }
            if dict.keys.contains("PhoneNoA") {
                self.phoneNoA = dict["PhoneNoA"] as! String
            }
            if dict.keys.contains("PhoneNoX") {
                self.phoneNoX = dict["PhoneNoX"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: [QueryPhoneNoAByTrackNoResponseBody.Module]?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.module != nil {
            var tmp : [Any] = []
            for k in self.module! {
                tmp.append(k.toMap())
            }
            map["Module"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Module") {
            var tmp : [QueryPhoneNoAByTrackNoResponseBody.Module] = []
            for v in dict["Module"] as! [Any] {
                var model = QueryPhoneNoAByTrackNoResponseBody.Module()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.module = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryPhoneNoAByTrackNoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPhoneNoAByTrackNoResponseBody?

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
            var model = QueryPhoneNoAByTrackNoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRecordFileDownloadUrlRequest : Tea.TeaModel {
    public var callId: String?

    public var callTime: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var productType: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.callTime != nil {
            map["CallTime"] = self.callTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("CallTime") {
            self.callTime = dict["CallTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryRecordFileDownloadUrlResponseBody : Tea.TeaModel {
    public var code: String?

    public var downloadUrl: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DownloadUrl") {
            self.downloadUrl = dict["DownloadUrl"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryRecordFileDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRecordFileDownloadUrlResponseBody?

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
            var model = QueryRecordFileDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySecretNoDetailRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class QuerySecretNoDetailResponseBody : Tea.TeaModel {
    public class SecretNoInfoDTO : Tea.TeaModel {
        public var certifyStatus: Int32?

        public var city: String?

        public var province: String?

        public var purchaseTime: String?

        public var secretStatus: Int64?

        public var vendor: Int64?

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
            if self.certifyStatus != nil {
                map["CertifyStatus"] = self.certifyStatus!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.purchaseTime != nil {
                map["PurchaseTime"] = self.purchaseTime!
            }
            if self.secretStatus != nil {
                map["SecretStatus"] = self.secretStatus!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertifyStatus") {
                self.certifyStatus = dict["CertifyStatus"] as! Int32
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("PurchaseTime") {
                self.purchaseTime = dict["PurchaseTime"] as! String
            }
            if dict.keys.contains("SecretStatus") {
                self.secretStatus = dict["SecretStatus"] as! Int64
            }
            if dict.keys.contains("Vendor") {
                self.vendor = dict["Vendor"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var secretNoInfoDTO: QuerySecretNoDetailResponseBody.SecretNoInfoDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretNoInfoDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretNoInfoDTO != nil {
            map["SecretNoInfoDTO"] = self.secretNoInfoDTO?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretNoInfoDTO") {
            var model = QuerySecretNoDetailResponseBody.SecretNoInfoDTO()
            model.fromMap(dict["SecretNoInfoDTO"] as! [String: Any])
            self.secretNoInfoDTO = model
        }
    }
}

public class QuerySecretNoDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySecretNoDetailResponseBody?

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
            var model = QuerySecretNoDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySecretNoRemainRequest : Tea.TeaModel {
    public var city: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public var specId: Int64?

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
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") {
            self.secretNo = dict["SecretNo"] as! String
        }
        if dict.keys.contains("SpecId") {
            self.specId = dict["SpecId"] as! Int64
        }
    }
}

public class QuerySecretNoRemainResponseBody : Tea.TeaModel {
    public class SecretRemainDTO : Tea.TeaModel {
        public class RemainDTOList : Tea.TeaModel {
            public class RemainDTO : Tea.TeaModel {
                public var amount: Int64?

                public var city: String?

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
                    if self.amount != nil {
                        map["Amount"] = self.amount!
                    }
                    if self.city != nil {
                        map["City"] = self.city!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Amount") {
                        self.amount = dict["Amount"] as! Int64
                    }
                    if dict.keys.contains("City") {
                        self.city = dict["City"] as! String
                    }
                }
            }
            public var remainDTO: [QuerySecretNoRemainResponseBody.SecretRemainDTO.RemainDTOList.RemainDTO]?

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
                if self.remainDTO != nil {
                    var tmp : [Any] = []
                    for k in self.remainDTO! {
                        tmp.append(k.toMap())
                    }
                    map["remainDTO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("remainDTO") {
                    var tmp : [QuerySecretNoRemainResponseBody.SecretRemainDTO.RemainDTOList.RemainDTO] = []
                    for v in dict["remainDTO"] as! [Any] {
                        var model = QuerySecretNoRemainResponseBody.SecretRemainDTO.RemainDTOList.RemainDTO()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.remainDTO = tmp
                }
            }
        }
        public var amount: Int64?

        public var city: String?

        public var remainDTOList: QuerySecretNoRemainResponseBody.SecretRemainDTO.RemainDTOList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.remainDTOList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.remainDTOList != nil {
                map["RemainDTOList"] = self.remainDTOList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! Int64
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("RemainDTOList") {
                var model = QuerySecretNoRemainResponseBody.SecretRemainDTO.RemainDTOList()
                model.fromMap(dict["RemainDTOList"] as! [String: Any])
                self.remainDTOList = model
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var secretRemainDTO: QuerySecretNoRemainResponseBody.SecretRemainDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretRemainDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretRemainDTO != nil {
            map["SecretRemainDTO"] = self.secretRemainDTO?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretRemainDTO") {
            var model = QuerySecretNoRemainResponseBody.SecretRemainDTO()
            model.fromMap(dict["SecretRemainDTO"] as! [String: Any])
            self.secretRemainDTO = model
        }
    }
}

public class QuerySecretNoRemainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySecretNoRemainResponseBody?

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
            var model = QuerySecretNoRemainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySoundRecordRequest : Tea.TeaModel {
    public var callId: String?

    public var callerParentId: Int64?

    public var customerPoolKey: String?

    public var ownerId: Int64?

    public var reqId: String?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QuerySoundRecordResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var fileUrl: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FileUrl") {
            self.fileUrl = dict["FileUrl"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySoundRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySoundRecordResponseBody?

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
            var model = QuerySoundRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySubsIdRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var phoneNoX: String?

    public var poolKey: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoX != nil {
            map["PhoneNoX"] = self.phoneNoX!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoX") {
            self.phoneNoX = dict["PhoneNoX"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QuerySubsIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var subsId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subsId != nil {
            map["SubsId"] = self.subsId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubsId") {
            self.subsId = dict["SubsId"] as! String
        }
    }
}

public class QuerySubsIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySubsIdResponseBody?

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
            var model = QuerySubsIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySubscriptionDetailRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var phoneNoX: String?

    public var poolKey: String?

    public var productType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subsId: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoX != nil {
            map["PhoneNoX"] = self.phoneNoX!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subsId != nil {
            map["SubsId"] = self.subsId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoX") {
            self.phoneNoX = dict["PhoneNoX"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SubsId") {
            self.subsId = dict["SubsId"] as! String
        }
    }
}

public class QuerySubscriptionDetailResponseBody : Tea.TeaModel {
    public class SecretBindDetailDTO : Tea.TeaModel {
        public var ASRModelId: String?

        public var ASRStatus: Bool?

        public var callRestrict: String?

        public var expireDate: String?

        public var extension_: String?

        public var gmtCreate: String?

        public var groupId: Int64?

        public var needRecord: Bool?

        public var phoneNoA: String?

        public var phoneNoB: String?

        public var phoneNoX: String?

        public var status: Int64?

        public var subsId: String?

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
            if self.ASRModelId != nil {
                map["ASRModelId"] = self.ASRModelId!
            }
            if self.ASRStatus != nil {
                map["ASRStatus"] = self.ASRStatus!
            }
            if self.callRestrict != nil {
                map["CallRestrict"] = self.callRestrict!
            }
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.extension_ != nil {
                map["Extension"] = self.extension_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.needRecord != nil {
                map["NeedRecord"] = self.needRecord!
            }
            if self.phoneNoA != nil {
                map["PhoneNoA"] = self.phoneNoA!
            }
            if self.phoneNoB != nil {
                map["PhoneNoB"] = self.phoneNoB!
            }
            if self.phoneNoX != nil {
                map["PhoneNoX"] = self.phoneNoX!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subsId != nil {
                map["SubsId"] = self.subsId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ASRModelId") {
                self.ASRModelId = dict["ASRModelId"] as! String
            }
            if dict.keys.contains("ASRStatus") {
                self.ASRStatus = dict["ASRStatus"] as! Bool
            }
            if dict.keys.contains("CallRestrict") {
                self.callRestrict = dict["CallRestrict"] as! String
            }
            if dict.keys.contains("ExpireDate") {
                self.expireDate = dict["ExpireDate"] as! String
            }
            if dict.keys.contains("Extension") {
                self.extension_ = dict["Extension"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! Int64
            }
            if dict.keys.contains("NeedRecord") {
                self.needRecord = dict["NeedRecord"] as! Bool
            }
            if dict.keys.contains("PhoneNoA") {
                self.phoneNoA = dict["PhoneNoA"] as! String
            }
            if dict.keys.contains("PhoneNoB") {
                self.phoneNoB = dict["PhoneNoB"] as! String
            }
            if dict.keys.contains("PhoneNoX") {
                self.phoneNoX = dict["PhoneNoX"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("SubsId") {
                self.subsId = dict["SubsId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var secretBindDetailDTO: QuerySubscriptionDetailResponseBody.SecretBindDetailDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretBindDetailDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretBindDetailDTO != nil {
            map["SecretBindDetailDTO"] = self.secretBindDetailDTO?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretBindDetailDTO") {
            var model = QuerySubscriptionDetailResponseBody.SecretBindDetailDTO()
            model.fromMap(dict["SecretBindDetailDTO"] as! [String: Any])
            self.secretBindDetailDTO = model
        }
    }
}

public class QuerySubscriptionDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySubscriptionDetailResponseBody?

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
            var model = QuerySubscriptionDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseSecretNoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class ReleaseSecretNoResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReleaseSecretNoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseSecretNoResponseBody?

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
            var model = ReleaseSecretNoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnBindAXBRequest : Tea.TeaModel {
    public var bindId: String?

    public var callerParentId: Int64?

    public var customerPoolKey: String?

    public var ownerId: Int64?

    public var reqId: String?

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
        if self.bindId != nil {
            map["BindId"] = self.bindId!
        }
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BindId") {
            self.bindId = dict["BindId"] as! String
        }
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UnBindAXBResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnBindAXBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnBindAXBResponseBody?

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
            var model = UnBindAXBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnBindXBRequest : Tea.TeaModel {
    public var authId: String?

    public var callerParentId: Int64?

    public var customerPoolKey: String?

    public var ownerId: Int64?

    public var reqId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var telX: String?

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
        if self.authId != nil {
            map["AuthId"] = self.authId!
        }
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.customerPoolKey != nil {
            map["CustomerPoolKey"] = self.customerPoolKey!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthId") {
            self.authId = dict["AuthId"] as! String
        }
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CustomerPoolKey") {
            self.customerPoolKey = dict["CustomerPoolKey"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TelX") {
            self.telX = dict["TelX"] as! String
        }
    }
}

public class UnBindXBResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnBindXBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnBindXBResponseBody?

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
            var model = UnBindXBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindSubscriptionRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var poolKey: String?

    public var productType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

    public var subsId: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        if self.subsId != nil {
            map["SubsId"] = self.subsId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") {
            self.secretNo = dict["SecretNo"] as! String
        }
        if dict.keys.contains("SubsId") {
            self.subsId = dict["SubsId"] as! String
        }
    }
}

public class UnbindSubscriptionResponseBody : Tea.TeaModel {
    public var chargeId: String?

    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeId != nil {
            map["ChargeId"] = self.chargeId!
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("ChargeId") {
            self.chargeId = dict["ChargeId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindSubscriptionResponseBody?

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
            var model = UnbindSubscriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnlockSecretNoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var secretNo: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.secretNo != nil {
            map["SecretNo"] = self.secretNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecretNo") {
            self.secretNo = dict["SecretNo"] as! String
        }
    }
}

public class UnlockSecretNoResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnlockSecretNoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockSecretNoResponseBody?

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
            var model = UnlockSecretNoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSubscriptionRequest : Tea.TeaModel {
    public var ASRModelId: String?

    public var ASRStatus: Bool?

    public var callDisplayType: Int32?

    public var callRestrict: String?

    public var expiration: String?

    public var groupId: String?

    public var isRecordingEnabled: Bool?

    public var operateType: String?

    public var outId: String?

    public var ownerId: Int64?

    public var phoneNoA: String?

    public var phoneNoB: String?

    public var phoneNoX: String?

    public var poolKey: String?

    public var productType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ringConfig: String?

    public var subsId: String?

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
        if self.ASRModelId != nil {
            map["ASRModelId"] = self.ASRModelId!
        }
        if self.ASRStatus != nil {
            map["ASRStatus"] = self.ASRStatus!
        }
        if self.callDisplayType != nil {
            map["CallDisplayType"] = self.callDisplayType!
        }
        if self.callRestrict != nil {
            map["CallRestrict"] = self.callRestrict!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.isRecordingEnabled != nil {
            map["IsRecordingEnabled"] = self.isRecordingEnabled!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
        }
        if self.phoneNoB != nil {
            map["PhoneNoB"] = self.phoneNoB!
        }
        if self.phoneNoX != nil {
            map["PhoneNoX"] = self.phoneNoX!
        }
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.ringConfig != nil {
            map["RingConfig"] = self.ringConfig!
        }
        if self.subsId != nil {
            map["SubsId"] = self.subsId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ASRModelId") {
            self.ASRModelId = dict["ASRModelId"] as! String
        }
        if dict.keys.contains("ASRStatus") {
            self.ASRStatus = dict["ASRStatus"] as! Bool
        }
        if dict.keys.contains("CallDisplayType") {
            self.callDisplayType = dict["CallDisplayType"] as! Int32
        }
        if dict.keys.contains("CallRestrict") {
            self.callRestrict = dict["CallRestrict"] as! String
        }
        if dict.keys.contains("Expiration") {
            self.expiration = dict["Expiration"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("IsRecordingEnabled") {
            self.isRecordingEnabled = dict["IsRecordingEnabled"] as! Bool
        }
        if dict.keys.contains("OperateType") {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNoA") {
            self.phoneNoA = dict["PhoneNoA"] as! String
        }
        if dict.keys.contains("PhoneNoB") {
            self.phoneNoB = dict["PhoneNoB"] as! String
        }
        if dict.keys.contains("PhoneNoX") {
            self.phoneNoX = dict["PhoneNoX"] as! String
        }
        if dict.keys.contains("PoolKey") {
            self.poolKey = dict["PoolKey"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RingConfig") {
            self.ringConfig = dict["RingConfig"] as! String
        }
        if dict.keys.contains("SubsId") {
            self.subsId = dict["SubsId"] as! String
        }
    }
}

public class UpdateSubscriptionResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSubscriptionResponseBody?

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
            var model = UpdateSubscriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
