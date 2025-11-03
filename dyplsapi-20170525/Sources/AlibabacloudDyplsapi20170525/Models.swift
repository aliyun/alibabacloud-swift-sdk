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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoX"] as? String {
            self.phoneNoX = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubsId"] as? String {
            self.subsId = value
        }
        if let value = dict["trackNo"] as? String {
            self.trackNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddAxnTrackNoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlackNo"] as? String {
            self.blackNo = value
        }
        if let value = dict["BlackType"] as? String {
            self.blackType = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["WayControl"] as? String {
            self.wayControl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddSecretBlacklistResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthId"] as? String {
            self.authId = value
        }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["Expiration"] as? Int64 {
            self.expiration = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class BindAXBCallResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bindId: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindId"] as? String {
                self.bindId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: BindAXBCallResponseBody.Data?

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
        try self.data?.validate()
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
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BindAXBCallResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindAXBCallResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ASRModelId"] as? String {
            self.ASRModelId = value
        }
        if let value = dict["ASRStatus"] as? Bool {
            self.ASRStatus = value
        }
        if let value = dict["CallDisplayType"] as? Int32 {
            self.callDisplayType = value
        }
        if let value = dict["CallRestrict"] as? String {
            self.callRestrict = value
        }
        if let value = dict["CallTimeout"] as? Int32 {
            self.callTimeout = value
        }
        if let value = dict["DtmfConfig"] as? String {
            self.dtmfConfig = value
        }
        if let value = dict["ExpectCity"] as? String {
            self.expectCity = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["IsRecordingEnabled"] as? Bool {
            self.isRecordingEnabled = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OutOrderId"] as? String {
            self.outOrderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoA"] as? String {
            self.phoneNoA = value
        }
        if let value = dict["PhoneNoB"] as? String {
            self.phoneNoB = value
        }
        if let value = dict["PhoneNoX"] as? String {
            self.phoneNoX = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RingConfig"] as? String {
            self.ringConfig = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extension"] as? String {
                self.extension_ = value
            }
            if let value = dict["SecretNo"] as? String {
                self.secretNo = value
            }
            if let value = dict["SubsId"] as? String {
                self.subsId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretBindDTO"] as? [String: Any?] {
            var model = BindAxbResponseBody.SecretBindDTO()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindAxbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindAxb700Request : Tea.TeaModel {
    public var asrModelId: String?

    public var audio: String?

    public var callRestrict: String?

    public var callTimeout: Int64?

    public var dtmfConfig: String?

    public var expiration: String?

    public var industrialId: String?

    public var needAsr: Bool?

    public var needRecord: Bool?

    public var orderId: String?

    public var outId: String?

    public var outOrderId: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var recType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var telA: String?

    public var telB: String?

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
        if self.asrModelId != nil {
            map["AsrModelId"] = self.asrModelId!
        }
        if self.audio != nil {
            map["Audio"] = self.audio!
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
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.industrialId != nil {
            map["IndustrialId"] = self.industrialId!
        }
        if self.needAsr != nil {
            map["NeedAsr"] = self.needAsr!
        }
        if self.needRecord != nil {
            map["NeedRecord"] = self.needRecord!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.recType != nil {
            map["RecType"] = self.recType!
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
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AsrModelId"] as? String {
            self.asrModelId = value
        }
        if let value = dict["Audio"] as? String {
            self.audio = value
        }
        if let value = dict["CallRestrict"] as? String {
            self.callRestrict = value
        }
        if let value = dict["CallTimeout"] as? Int64 {
            self.callTimeout = value
        }
        if let value = dict["DtmfConfig"] as? String {
            self.dtmfConfig = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["IndustrialId"] as? String {
            self.industrialId = value
        }
        if let value = dict["NeedAsr"] as? Bool {
            self.needAsr = value
        }
        if let value = dict["NeedRecord"] as? Bool {
            self.needRecord = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OutOrderId"] as? String {
            self.outOrderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["RecType"] as? String {
            self.recType = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
    }
}

public class BindAxb700ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var secretNo: String?

        public var subsId: Int64?

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
            if self.subsId != nil {
                map["SubsId"] = self.subsId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecretNo"] as? String {
                self.secretNo = value
            }
            if let value = dict["SubsId"] as? Int64 {
                self.subsId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: BindAxb700ResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BindAxb700ResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class BindAxb700Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAxb700ResponseBody?

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
            var model = BindAxb700ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindAxbFixedLineRequest : Tea.TeaModel {
    public class Extra : Tea.TeaModel {
        public var callrecording: String?

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
            if self.callrecording != nil {
                map["Callrecording"] = self.callrecording!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Callrecording"] as? String {
                self.callrecording = value
            }
        }
    }
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var areacode: String?

    public var bindType: String?

    public var expiration: String?

    public var extra: BindAxbFixedLineRequest.Extra?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var telB: String?

    public var telX: String?

    public var ts: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extra?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.areacode != nil {
            map["Areacode"] = self.areacode!
        }
        if self.bindType != nil {
            map["BindType"] = self.bindType!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extra != nil {
            map["Extra"] = self.extra?.toMap()
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Areacode"] as? String {
            self.areacode = value
        }
        if let value = dict["BindType"] as? String {
            self.bindType = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extra"] as? [String: Any?] {
            var model = BindAxbFixedLineRequest.Extra()
            model.fromMap(value)
            self.extra = model
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class BindAxbFixedLineShrinkRequest : Tea.TeaModel {
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var areacode: String?

    public var bindType: String?

    public var expiration: String?

    public var extraShrink: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var telB: String?

    public var telX: String?

    public var ts: String?

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
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.areacode != nil {
            map["Areacode"] = self.areacode!
        }
        if self.bindType != nil {
            map["BindType"] = self.bindType!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extraShrink != nil {
            map["Extra"] = self.extraShrink!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Areacode"] as? String {
            self.areacode = value
        }
        if let value = dict["BindType"] as? String {
            self.bindType = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extra"] as? String {
            self.extraShrink = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class BindAxbFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var subid: String?

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
            if self.subid != nil {
                map["Subid"] = self.subid!
            }
            if self.telX != nil {
                map["TelX"] = self.telX!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Subid"] as? String {
                self.subid = value
            }
            if let value = dict["TelX"] as? String {
                self.telX = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: BindAxbFixedLineResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BindAxbFixedLineResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class BindAxbFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAxbFixedLineResponseBody?

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
            var model = BindAxbFixedLineResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ASRModelId"] as? String {
            self.ASRModelId = value
        }
        if let value = dict["ASRStatus"] as? Bool {
            self.ASRStatus = value
        }
        if let value = dict["CallDisplayType"] as? Int32 {
            self.callDisplayType = value
        }
        if let value = dict["CallRestrict"] as? String {
            self.callRestrict = value
        }
        if let value = dict["ExpectCity"] as? String {
            self.expectCity = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["IsRecordingEnabled"] as? Bool {
            self.isRecordingEnabled = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OutOrderId"] as? String {
            self.outOrderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoA"] as? String {
            self.phoneNoA = value
        }
        if let value = dict["PhoneNoB"] as? String {
            self.phoneNoB = value
        }
        if let value = dict["PhoneNoX"] as? String {
            self.phoneNoX = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RingConfig"] as? String {
            self.ringConfig = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extension"] as? String {
                self.extension_ = value
            }
            if let value = dict["SecretNo"] as? String {
                self.secretNo = value
            }
            if let value = dict["SubsId"] as? String {
                self.subsId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretBindDTO"] as? [String: Any?] {
            var model = BindAxgResponseBody.SecretBindDTO()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindAxgResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ASRModelId"] as? String {
            self.ASRModelId = value
        }
        if let value = dict["ASRStatus"] as? Bool {
            self.ASRStatus = value
        }
        if let value = dict["CallDisplayType"] as? Int32 {
            self.callDisplayType = value
        }
        if let value = dict["CallRestrict"] as? String {
            self.callRestrict = value
        }
        if let value = dict["CallTimeout"] as? Int32 {
            self.callTimeout = value
        }
        if let value = dict["ExpectCity"] as? String {
            self.expectCity = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["IsRecordingEnabled"] as? Bool {
            self.isRecordingEnabled = value
        }
        if let value = dict["NoType"] as? String {
            self.noType = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OutOrderId"] as? String {
            self.outOrderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoA"] as? String {
            self.phoneNoA = value
        }
        if let value = dict["PhoneNoB"] as? String {
            self.phoneNoB = value
        }
        if let value = dict["PhoneNoX"] as? String {
            self.phoneNoX = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RingConfig"] as? String {
            self.ringConfig = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extension"] as? String {
                self.extension_ = value
            }
            if let value = dict["SecretNo"] as? String {
                self.secretNo = value
            }
            if let value = dict["SubsId"] as? String {
                self.subsId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretBindDTO"] as? [String: Any?] {
            var model = BindAxnResponseBody.SecretBindDTO()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindAxnResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ASRModelId"] as? String {
            self.ASRModelId = value
        }
        if let value = dict["ASRStatus"] as? Bool {
            self.ASRStatus = value
        }
        if let value = dict["CallDisplayType"] as? Int32 {
            self.callDisplayType = value
        }
        if let value = dict["CallRestrict"] as? String {
            self.callRestrict = value
        }
        if let value = dict["ExpectCity"] as? String {
            self.expectCity = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["Extension"] as? String {
            self.extension_ = value
        }
        if let value = dict["IsRecordingEnabled"] as? Bool {
            self.isRecordingEnabled = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OutOrderId"] as? String {
            self.outOrderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoA"] as? String {
            self.phoneNoA = value
        }
        if let value = dict["PhoneNoB"] as? String {
            self.phoneNoB = value
        }
        if let value = dict["PhoneNoX"] as? String {
            self.phoneNoX = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RingConfig"] as? String {
            self.ringConfig = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extension"] as? String {
                self.extension_ = value
            }
            if let value = dict["SecretNo"] as? String {
                self.secretNo = value
            }
            if let value = dict["SubsId"] as? String {
                self.subsId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretBindDTO"] as? [String: Any?] {
            var model = BindAxnExtensionResponseBody.SecretBindDTO()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindAxnExtensionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindAxnExtensionFixedLineRequest : Tea.TeaModel {
    public class Extraaxx : Tea.TeaModel {
        public var callback: String?

        public var callrecording: String?

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
            if self.callback != nil {
                map["Callback"] = self.callback!
            }
            if self.callrecording != nil {
                map["Callrecording"] = self.callrecording!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Callback"] as? String {
                self.callback = value
            }
            if let value = dict["Callrecording"] as? String {
                self.callrecording = value
            }
        }
    }
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var areacode: String?

    public var bindType: String?

    public var expiration: String?

    public var extraaxx: BindAxnExtensionFixedLineRequest.Extraaxx?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var telX: String?

    public var telXext: String?

    public var ts: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extraaxx?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.areacode != nil {
            map["Areacode"] = self.areacode!
        }
        if self.bindType != nil {
            map["BindType"] = self.bindType!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extraaxx != nil {
            map["Extraaxx"] = self.extraaxx?.toMap()
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        if self.telXext != nil {
            map["TelXext"] = self.telXext!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Areacode"] as? String {
            self.areacode = value
        }
        if let value = dict["BindType"] as? String {
            self.bindType = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extraaxx"] as? [String: Any?] {
            var model = BindAxnExtensionFixedLineRequest.Extraaxx()
            model.fromMap(value)
            self.extraaxx = model
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
        if let value = dict["TelXext"] as? String {
            self.telXext = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class BindAxnExtensionFixedLineShrinkRequest : Tea.TeaModel {
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var areacode: String?

    public var bindType: String?

    public var expiration: String?

    public var extraaxxShrink: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var telX: String?

    public var telXext: String?

    public var ts: String?

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
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.areacode != nil {
            map["Areacode"] = self.areacode!
        }
        if self.bindType != nil {
            map["BindType"] = self.bindType!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extraaxxShrink != nil {
            map["Extraaxx"] = self.extraaxxShrink!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        if self.telXext != nil {
            map["TelXext"] = self.telXext!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Areacode"] as? String {
            self.areacode = value
        }
        if let value = dict["BindType"] as? String {
            self.bindType = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extraaxx"] as? String {
            self.extraaxxShrink = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
        if let value = dict["TelXext"] as? String {
            self.telXext = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class BindAxnExtensionFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var subid: String?

        public var telX: String?

        public var telXext: String?

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
            if self.subid != nil {
                map["Subid"] = self.subid!
            }
            if self.telX != nil {
                map["TelX"] = self.telX!
            }
            if self.telXext != nil {
                map["TelXext"] = self.telXext!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Subid"] as? String {
                self.subid = value
            }
            if let value = dict["TelX"] as? String {
                self.telX = value
            }
            if let value = dict["TelXext"] as? String {
                self.telXext = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: BindAxnExtensionFixedLineResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BindAxnExtensionFixedLineResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class BindAxnExtensionFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAxnExtensionFixedLineResponseBody?

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
            var model = BindAxnExtensionFixedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindAxnFixedLineRequest : Tea.TeaModel {
    public class Extra : Tea.TeaModel {
        public var callback: String?

        public var callrecording: String?

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
            if self.callback != nil {
                map["Callback"] = self.callback!
            }
            if self.callrecording != nil {
                map["Callrecording"] = self.callrecording!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Callback"] as? String {
                self.callback = value
            }
            if let value = dict["Callrecording"] as? String {
                self.callrecording = value
            }
        }
    }
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var areacode: String?

    public var bindType: String?

    public var expiration: String?

    public var extra: BindAxnFixedLineRequest.Extra?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var telB: String?

    public var telX: String?

    public var ts: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extra?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.areacode != nil {
            map["Areacode"] = self.areacode!
        }
        if self.bindType != nil {
            map["BindType"] = self.bindType!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extra != nil {
            map["Extra"] = self.extra?.toMap()
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Areacode"] as? String {
            self.areacode = value
        }
        if let value = dict["BindType"] as? String {
            self.bindType = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extra"] as? [String: Any?] {
            var model = BindAxnFixedLineRequest.Extra()
            model.fromMap(value)
            self.extra = model
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class BindAxnFixedLineShrinkRequest : Tea.TeaModel {
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var areacode: String?

    public var bindType: String?

    public var expiration: String?

    public var extraShrink: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var telB: String?

    public var telX: String?

    public var ts: String?

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
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.areacode != nil {
            map["Areacode"] = self.areacode!
        }
        if self.bindType != nil {
            map["BindType"] = self.bindType!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extraShrink != nil {
            map["Extra"] = self.extraShrink!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Areacode"] as? String {
            self.areacode = value
        }
        if let value = dict["BindType"] as? String {
            self.bindType = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extra"] as? String {
            self.extraShrink = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class BindAxnFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var subid: String?

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
            if self.subid != nil {
                map["Subid"] = self.subid!
            }
            if self.telX != nil {
                map["TelX"] = self.telX!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Subid"] as? String {
                self.subid = value
            }
            if let value = dict["TelX"] as? String {
                self.telX = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: BindAxnFixedLineResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BindAxnFixedLineResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class BindAxnFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAxnFixedLineResponseBody?

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
            var model = BindAxnFixedLineResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ASRModelId"] as? String {
                self.ASRModelId = value
            }
            if let value = dict["ASRStatus"] as? Bool {
                self.ASRStatus = value
            }
            if let value = dict["CallDisplayType"] as? Int32 {
                self.callDisplayType = value
            }
            if let value = dict["CallRestrict"] as? String {
                self.callRestrict = value
            }
            if let value = dict["ExpectCity"] as? String {
                self.expectCity = value
            }
            if let value = dict["Expiration"] as? String {
                self.expiration = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["IsRecordingEnabled"] as? Bool {
                self.isRecordingEnabled = value
            }
            if let value = dict["OutId"] as? String {
                self.outId = value
            }
            if let value = dict["OutOrderId"] as? String {
                self.outOrderId = value
            }
            if let value = dict["PhoneNoA"] as? String {
                self.phoneNoA = value
            }
            if let value = dict["PhoneNoB"] as? String {
                self.phoneNoB = value
            }
            if let value = dict["PhoneNoX"] as? String {
                self.phoneNoX = value
            }
            if let value = dict["RingConfig"] as? String {
                self.ringConfig = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AxgBindList"] as? [Any?] {
            var tmp : [BindBatchAxgRequest.AxgBindList] = []
            for v in value {
                if v != nil {
                    var model = BindBatchAxgRequest.AxgBindList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.axgBindList = tmp
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AxgBindList"] as? String {
            self.axgBindListShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Extension"] as? String {
                    self.extension_ = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["PhoneNoA"] as? String {
                    self.phoneNoA = value
                }
                if let value = dict["SecretNo"] as? String {
                    self.secretNo = value
                }
                if let value = dict["SubsId"] as? String {
                    self.subsId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecretBind"] as? [Any?] {
                var tmp : [BindBatchAxgResponseBody.SecretBindList.SecretBind] = []
                for v in value {
                    if v != nil {
                        var model = BindBatchAxgResponseBody.SecretBindList.SecretBind()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretBindList"] as? [String: Any?] {
            var model = BindBatchAxgResponseBody.SecretBindList()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindBatchAxgResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindGxb700Request : Tea.TeaModel {
    public var asrModelId: String?

    public var audio: String?

    public var callRestrict: String?

    public var callTimeout: Int64?

    public var defaultA: String?

    public var dtmfConfig: String?

    public var expiration: String?

    public var groupId: String?

    public var industrialId: String?

    public var needAsr: Bool?

    public var needRecord: Bool?

    public var orderId: String?

    public var outId: String?

    public var outOrderId: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var recType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var telB: String?

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
        if self.asrModelId != nil {
            map["AsrModelId"] = self.asrModelId!
        }
        if self.audio != nil {
            map["Audio"] = self.audio!
        }
        if self.callRestrict != nil {
            map["CallRestrict"] = self.callRestrict!
        }
        if self.callTimeout != nil {
            map["CallTimeout"] = self.callTimeout!
        }
        if self.defaultA != nil {
            map["DefaultA"] = self.defaultA!
        }
        if self.dtmfConfig != nil {
            map["DtmfConfig"] = self.dtmfConfig!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.industrialId != nil {
            map["IndustrialId"] = self.industrialId!
        }
        if self.needAsr != nil {
            map["NeedAsr"] = self.needAsr!
        }
        if self.needRecord != nil {
            map["NeedRecord"] = self.needRecord!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if self.poolKey != nil {
            map["PoolKey"] = self.poolKey!
        }
        if self.recType != nil {
            map["RecType"] = self.recType!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AsrModelId"] as? String {
            self.asrModelId = value
        }
        if let value = dict["Audio"] as? String {
            self.audio = value
        }
        if let value = dict["CallRestrict"] as? String {
            self.callRestrict = value
        }
        if let value = dict["CallTimeout"] as? Int64 {
            self.callTimeout = value
        }
        if let value = dict["DefaultA"] as? String {
            self.defaultA = value
        }
        if let value = dict["DtmfConfig"] as? String {
            self.dtmfConfig = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["IndustrialId"] as? String {
            self.industrialId = value
        }
        if let value = dict["NeedAsr"] as? Bool {
            self.needAsr = value
        }
        if let value = dict["NeedRecord"] as? Bool {
            self.needRecord = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OutOrderId"] as? String {
            self.outOrderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["RecType"] as? String {
            self.recType = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
    }
}

public class BindGxb700ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var secretNo: String?

        public var subsId: Int64?

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
            if self.subsId != nil {
                map["SubsId"] = self.subsId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecretNo"] as? String {
                self.secretNo = value
            }
            if let value = dict["SubsId"] as? Int64 {
                self.subsId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: BindGxb700ResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BindGxb700ResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class BindGxb700Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindGxb700ResponseBody?

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
            var model = BindGxb700ResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class BindXBResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authId: String?

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
            if self.telX != nil {
                map["TelX"] = self.telX!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthId"] as? String {
                self.authId = value
            }
            if let value = dict["TelX"] as? String {
                self.telX = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: BindXBResponseBody.Data?

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
        try self.data?.validate()
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
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BindXBResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindXBResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["DisplayPool"] as? Bool {
            self.displayPool = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecretNo"] as? String {
            self.secretNo = value
        }
        if let value = dict["SpecId"] as? Int64 {
            self.specId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecretNo"] as? String {
                self.secretNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretBuyInfoDTO"] as? [String: Any?] {
            var model = BuySecretNoResponseBody.SecretBuyInfoDTO()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BuySecretNoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CancelDesc"] as? String {
            self.cancelDesc = value
        }
        if let value = dict["OuterOrderCode"] as? String {
            self.outerOrderCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CancelPickUpWaybillResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelPickUpWaybillResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SequenceCallNoPlayCode"] as? String {
                self.sequenceCallNoPlayCode = value
            }
            if let value = dict["SequenceCalledNo"] as? String {
                self.sequenceCalledNo = value
            }
            if let value = dict["SequenceCalledPlayCode"] as? String {
                self.sequenceCalledPlayCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallAbility"] as? String {
            self.callAbility = value
        }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["GNFlag"] as? String {
            self.GNFlag = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SequenceCalls"] as? [Any?] {
            var tmp : [ConfigXRequest.SequenceCalls] = []
            for v in value {
                if v != nil {
                    var model = ConfigXRequest.SequenceCalls()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sequenceCalls = tmp
        }
        if let value = dict["SequenceMode"] as? String {
            self.sequenceMode = value
        }
        if let value = dict["SmsAbility"] as? String {
            self.smsAbility = value
        }
        if let value = dict["SmsSignMode"] as? String {
            self.smsSignMode = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallAbility"] as? String {
            self.callAbility = value
        }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["GNFlag"] as? String {
            self.GNFlag = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SequenceCalls"] as? String {
            self.sequenceCallsShrink = value
        }
        if let value = dict["SequenceMode"] as? String {
            self.sequenceMode = value
        }
        if let value = dict["SmsAbility"] as? String {
            self.smsAbility = value
        }
        if let value = dict["SmsSignMode"] as? String {
            self.smsSignMode = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
    }
}

public class ConfigXResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ConfigXResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ConfigXResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConfigXResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Numbers"] as? String {
            self.numbers = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAxgGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFixedNoAReportRequest : Tea.TeaModel {
    public var ANoWhiteGroupId: Int64?

    public var custName: String?

    public var custPhoneNo: String?

    public var custType: Int64?

    public var documentNumber: String?

    public var documentType: Int64?

    public var fixedLineWorkId: String?

    public var fixedNoA: String?

    public var idCardAlivePhoto: String?

    public var idCardBackPhoto: String?

    public var idCardFrontPhoto: String?

    public var ownerId: Int64?

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
        if self.ANoWhiteGroupId != nil {
            map["ANoWhiteGroupId"] = self.ANoWhiteGroupId!
        }
        if self.custName != nil {
            map["CustName"] = self.custName!
        }
        if self.custPhoneNo != nil {
            map["CustPhoneNo"] = self.custPhoneNo!
        }
        if self.custType != nil {
            map["CustType"] = self.custType!
        }
        if self.documentNumber != nil {
            map["DocumentNumber"] = self.documentNumber!
        }
        if self.documentType != nil {
            map["DocumentType"] = self.documentType!
        }
        if self.fixedLineWorkId != nil {
            map["FixedLineWorkId"] = self.fixedLineWorkId!
        }
        if self.fixedNoA != nil {
            map["FixedNoA"] = self.fixedNoA!
        }
        if self.idCardAlivePhoto != nil {
            map["IdCardAlivePhoto"] = self.idCardAlivePhoto!
        }
        if self.idCardBackPhoto != nil {
            map["IdCardBackPhoto"] = self.idCardBackPhoto!
        }
        if self.idCardFrontPhoto != nil {
            map["IdCardFrontPhoto"] = self.idCardFrontPhoto!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ANoWhiteGroupId"] as? Int64 {
            self.ANoWhiteGroupId = value
        }
        if let value = dict["CustName"] as? String {
            self.custName = value
        }
        if let value = dict["CustPhoneNo"] as? String {
            self.custPhoneNo = value
        }
        if let value = dict["CustType"] as? Int64 {
            self.custType = value
        }
        if let value = dict["DocumentNumber"] as? String {
            self.documentNumber = value
        }
        if let value = dict["DocumentType"] as? Int64 {
            self.documentType = value
        }
        if let value = dict["FixedLineWorkId"] as? String {
            self.fixedLineWorkId = value
        }
        if let value = dict["FixedNoA"] as? String {
            self.fixedNoA = value
        }
        if let value = dict["IdCardAlivePhoto"] as? String {
            self.idCardAlivePhoto = value
        }
        if let value = dict["IdCardBackPhoto"] as? String {
            self.idCardBackPhoto = value
        }
        if let value = dict["IdCardFrontPhoto"] as? String {
            self.idCardFrontPhoto = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateFixedNoAReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createResult: Bool?

        public var failType: Int64?

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
            if self.createResult != nil {
                map["CreateResult"] = self.createResult!
            }
            if self.failType != nil {
                map["FailType"] = self.failType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateResult"] as? Bool {
                self.createResult = value
            }
            if let value = dict["FailType"] as? Int64 {
                self.failType = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CreateFixedNoAReportResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateFixedNoAReportResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreateFixedNoAReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFixedNoAReportResponseBody?

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
            var model = CreateFixedNoAReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePhoneNoAReportRequest : Tea.TeaModel {
    public var ANoWhiteGroupId: Int64?

    public var custName: String?

    public var documentNumber: String?

    public var documentType: Int64?

    public var idCardAlivePhoto: String?

    public var idCardBackPhoto: String?

    public var idCardFrontPhoto: String?

    public var ownerId: Int64?

    public var phoneNoA: String?

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
        if self.ANoWhiteGroupId != nil {
            map["ANoWhiteGroupId"] = self.ANoWhiteGroupId!
        }
        if self.custName != nil {
            map["CustName"] = self.custName!
        }
        if self.documentNumber != nil {
            map["DocumentNumber"] = self.documentNumber!
        }
        if self.documentType != nil {
            map["DocumentType"] = self.documentType!
        }
        if self.idCardAlivePhoto != nil {
            map["IdCardAlivePhoto"] = self.idCardAlivePhoto!
        }
        if self.idCardBackPhoto != nil {
            map["IdCardBackPhoto"] = self.idCardBackPhoto!
        }
        if self.idCardFrontPhoto != nil {
            map["IdCardFrontPhoto"] = self.idCardFrontPhoto!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ANoWhiteGroupId"] as? Int64 {
            self.ANoWhiteGroupId = value
        }
        if let value = dict["CustName"] as? String {
            self.custName = value
        }
        if let value = dict["DocumentNumber"] as? String {
            self.documentNumber = value
        }
        if let value = dict["DocumentType"] as? Int64 {
            self.documentType = value
        }
        if let value = dict["IdCardAlivePhoto"] as? String {
            self.idCardAlivePhoto = value
        }
        if let value = dict["IdCardBackPhoto"] as? String {
            self.idCardBackPhoto = value
        }
        if let value = dict["IdCardFrontPhoto"] as? String {
            self.idCardFrontPhoto = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoA"] as? String {
            self.phoneNoA = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreatePhoneNoAReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createResult: Bool?

        public var failType: Int64?

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
            if self.createResult != nil {
                map["CreateResult"] = self.createResult!
            }
            if self.failType != nil {
                map["FailType"] = self.failType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateResult"] as? Bool {
                self.createResult = value
            }
            if let value = dict["FailType"] as? Int64 {
                self.failType = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CreatePhoneNoAReportResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreatePhoneNoAReportResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreatePhoneNoAReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePhoneNoAReportResponseBody?

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
            var model = CreatePhoneNoAReportResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressDetail"] as? String {
                self.addressDetail = value
            }
            if let value = dict["AreaName"] as? String {
                self.areaName = value
            }
            if let value = dict["CityName"] as? String {
                self.cityName = value
            }
            if let value = dict["ProvinceName"] as? String {
                self.provinceName = value
            }
            if let value = dict["TownName"] as? String {
                self.townName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Quantity"] as? String {
                self.quantity = value
            }
            if let value = dict["Weight"] as? String {
                self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressDetail"] as? String {
                self.addressDetail = value
            }
            if let value = dict["AreaName"] as? String {
                self.areaName = value
            }
            if let value = dict["CityName"] as? String {
                self.cityName = value
            }
            if let value = dict["ProvinceName"] as? String {
                self.provinceName = value
            }
            if let value = dict["TownName"] as? String {
                self.townName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppointGotEndTime"] as? String {
            self.appointGotEndTime = value
        }
        if let value = dict["AppointGotStartTime"] as? String {
            self.appointGotStartTime = value
        }
        if let value = dict["BizType"] as? Int32 {
            self.bizType = value
        }
        if let value = dict["ConsigneeAddress"] as? [String: Any?] {
            var model = CreatePickUpWaybillRequest.ConsigneeAddress()
            model.fromMap(value)
            self.consigneeAddress = model
        }
        if let value = dict["ConsigneeMobile"] as? String {
            self.consigneeMobile = value
        }
        if let value = dict["ConsigneeName"] as? String {
            self.consigneeName = value
        }
        if let value = dict["ConsigneePhone"] as? String {
            self.consigneePhone = value
        }
        if let value = dict["CpCode"] as? String {
            self.cpCode = value
        }
        if let value = dict["GoodsInfos"] as? [Any?] {
            var tmp : [CreatePickUpWaybillRequest.GoodsInfos] = []
            for v in value {
                if v != nil {
                    var model = CreatePickUpWaybillRequest.GoodsInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.goodsInfos = tmp
        }
        if let value = dict["OrderChannels"] as? String {
            self.orderChannels = value
        }
        if let value = dict["OuterOrderCode"] as? String {
            self.outerOrderCode = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SendAddress"] as? [String: Any?] {
            var model = CreatePickUpWaybillRequest.SendAddress()
            model.fromMap(value)
            self.sendAddress = model
        }
        if let value = dict["SendMobile"] as? String {
            self.sendMobile = value
        }
        if let value = dict["SendName"] as? String {
            self.sendName = value
        }
        if let value = dict["SendPhone"] as? String {
            self.sendPhone = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppointGotEndTime"] as? String {
            self.appointGotEndTime = value
        }
        if let value = dict["AppointGotStartTime"] as? String {
            self.appointGotStartTime = value
        }
        if let value = dict["BizType"] as? Int32 {
            self.bizType = value
        }
        if let value = dict["ConsigneeAddress"] as? String {
            self.consigneeAddressShrink = value
        }
        if let value = dict["ConsigneeMobile"] as? String {
            self.consigneeMobile = value
        }
        if let value = dict["ConsigneeName"] as? String {
            self.consigneeName = value
        }
        if let value = dict["ConsigneePhone"] as? String {
            self.consigneePhone = value
        }
        if let value = dict["CpCode"] as? String {
            self.cpCode = value
        }
        if let value = dict["GoodsInfos"] as? String {
            self.goodsInfosShrink = value
        }
        if let value = dict["OrderChannels"] as? String {
            self.orderChannels = value
        }
        if let value = dict["OuterOrderCode"] as? String {
            self.outerOrderCode = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SendAddress"] as? String {
            self.sendAddressShrink = value
        }
        if let value = dict["SendMobile"] as? String {
            self.sendMobile = value
        }
        if let value = dict["SendName"] as? String {
            self.sendName = value
        }
        if let value = dict["SendPhone"] as? String {
            self.sendPhone = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CpCode"] as? String {
                self.cpCode = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["GotCode"] as? String {
                self.gotCode = value
            }
            if let value = dict["MailNo"] as? String {
                self.mailNo = value
            }
            if let value = dict["Success"] as? String {
                self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreatePickUpWaybillResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePickUpWaybillResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AddressDetail"] as? String {
                    self.addressDetail = value
                }
                if let value = dict["AreaName"] as? String {
                    self.areaName = value
                }
                if let value = dict["CityName"] as? String {
                    self.cityName = value
                }
                if let value = dict["ProvinceName"] as? String {
                    self.provinceName = value
                }
                if let value = dict["TownName"] as? String {
                    self.townName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressInfo"] as? [String: Any?] {
                var model = CreatePickUpWaybillPreQueryRequest.ConsigneeInfo.AddressInfo()
                model.fromMap(value)
                self.addressInfo = model
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AddressDetail"] as? String {
                    self.addressDetail = value
                }
                if let value = dict["AreaName"] as? String {
                    self.areaName = value
                }
                if let value = dict["CityName"] as? String {
                    self.cityName = value
                }
                if let value = dict["ProvinceName"] as? String {
                    self.provinceName = value
                }
                if let value = dict["TownName"] as? String {
                    self.townName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressInfo"] as? [String: Any?] {
                var model = CreatePickUpWaybillPreQueryRequest.SenderInfo.AddressInfo()
                model.fromMap(value)
                self.addressInfo = model
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsigneeInfo"] as? [String: Any?] {
            var model = CreatePickUpWaybillPreQueryRequest.ConsigneeInfo()
            model.fromMap(value)
            self.consigneeInfo = model
        }
        if let value = dict["CpCode"] as? String {
            self.cpCode = value
        }
        if let value = dict["OrderChannels"] as? String {
            self.orderChannels = value
        }
        if let value = dict["OuterOrderCode"] as? String {
            self.outerOrderCode = value
        }
        if let value = dict["PreWeight"] as? String {
            self.preWeight = value
        }
        if let value = dict["SenderInfo"] as? [String: Any?] {
            var model = CreatePickUpWaybillPreQueryRequest.SenderInfo()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsigneeInfo"] as? String {
            self.consigneeInfoShrink = value
        }
        if let value = dict["CpCode"] as? String {
            self.cpCode = value
        }
        if let value = dict["OrderChannels"] as? String {
            self.orderChannels = value
        }
        if let value = dict["OuterOrderCode"] as? String {
            self.outerOrderCode = value
        }
        if let value = dict["PreWeight"] as? String {
            self.preWeight = value
        }
        if let value = dict["SenderInfo"] as? String {
            self.senderInfoShrink = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["EndTime"] as? String {
                            self.endTime = value
                        }
                        if let value = dict["SelectDisableTip"] as? String {
                            self.selectDisableTip = value
                        }
                        if let value = dict["Selectable"] as? Bool {
                            self.selectable = value
                        }
                        if let value = dict["StartTime"] as? String {
                            self.startTime = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Date"] as? String {
                        self.date = value
                    }
                    if let value = dict["DateSelectable"] as? Bool {
                        self.dateSelectable = value
                    }
                    if let value = dict["TimeList"] as? [Any?] {
                        var tmp : [CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.AppointTimes.TimeList] = []
                        for v in value {
                            if v != nil {
                                var model = CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.AppointTimes.TimeList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["SelectDisableTip"] as? String {
                        self.selectDisableTip = value
                    }
                    if let value = dict["Selectable"] as? Bool {
                        self.selectable = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppointTimes"] as? [Any?] {
                    var tmp : [CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.AppointTimes] = []
                    for v in value {
                        if v != nil {
                            var model = CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.AppointTimes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.appointTimes = tmp
                }
                if let value = dict["PrePrice"] as? String {
                    self.prePrice = value
                }
                if let value = dict["RealTime"] as? [String: Any?] {
                    var model = CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList.RealTime()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["CpTimeSelectList"] as? [Any?] {
                var tmp : [CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList] = []
                for v in value {
                    if v != nil {
                        var model = CreatePickUpWaybillPreQueryResponseBody.Data.CpTimeSelectList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cpTimeSelectList = tmp
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreatePickUpWaybillPreQueryResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePickUpWaybillPreQueryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalledNo"] as? String {
            self.calledNo = value
        }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CallingNo"] as? String {
            self.callingNo = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateSmsSignResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var calledNoSign: String?

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
            if self.calledNoSign != nil {
                map["CalledNoSign"] = self.calledNoSign!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CalledNoSign"] as? String {
                self.calledNoSign = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CreateSmsSignResponseBody.Data?

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
        try self.data?.validate()
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
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateSmsSignResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSmsSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAxbBindFixedLineRequest : Tea.TeaModel {
    public var appId: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var ts: String?

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
            map["AppId"] = self.appId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class DeleteAxbBindFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: DeleteAxbBindFixedLineResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteAxbBindFixedLineResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DeleteAxbBindFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAxbBindFixedLineResponseBody?

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
            var model = DeleteAxbBindFixedLineResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAxgGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAxnBindFixedLineRequest : Tea.TeaModel {
    public var appId: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var ts: String?

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
            map["AppId"] = self.appId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class DeleteAxnBindFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: DeleteAxnBindFixedLineResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteAxnBindFixedLineResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DeleteAxnBindFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAxnBindFixedLineResponseBody?

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
            var model = DeleteAxnBindFixedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAxnExtensionBindFixedLineRequest : Tea.TeaModel {
    public var appId: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var ts: String?

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
            map["AppId"] = self.appId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class DeleteAxnExtensionBindFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: DeleteAxnExtensionBindFixedLineResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteAxnExtensionBindFixedLineResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DeleteAxnExtensionBindFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAxnExtensionBindFixedLineResponseBody?

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
            var model = DeleteAxnExtensionBindFixedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSecretAPhoneNoToCustRequest : Tea.TeaModel {
    public var ANoWhiteGroupId: Int64?

    public var ownerId: Int64?

    public var phoneNoA: String?

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
        if self.ANoWhiteGroupId != nil {
            map["ANoWhiteGroupId"] = self.ANoWhiteGroupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
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
        if let value = dict["ANoWhiteGroupId"] as? Int64 {
            self.ANoWhiteGroupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoA"] as? String {
            self.phoneNoA = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteSecretAPhoneNoToCustResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class DeleteSecretAPhoneNoToCustResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecretAPhoneNoToCustResponseBody?

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
            var model = DeleteSecretAPhoneNoToCustResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlackNo"] as? String {
            self.blackNo = value
        }
        if let value = dict["BlackType"] as? String {
            self.blackType = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["WayControl"] as? String {
            self.wayControl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSecretBlacklistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDyplsOSSInfoForUploadFileRequest : Tea.TeaModel {
    public var bizType: String?

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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetDyplsOSSInfoForUploadFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var expireTime: String?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public var startPath: String?

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
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            if self.startPath != nil {
                map["StartPath"] = self.startPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
            if let value = dict["StartPath"] as? String {
                self.startPath = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetDyplsOSSInfoForUploadFileResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDyplsOSSInfoForUploadFileResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetDyplsOSSInfoForUploadFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDyplsOSSInfoForUploadFileResponseBody?

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
            var model = GetDyplsOSSInfoForUploadFileResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CallTime"] as? String {
            self.callTime = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BeginTime"] as? Int64 {
                    self.beginTime = value
                }
                if let value = dict["ChannelId"] as? Int32 {
                    self.channelId = value
                }
                if let value = dict["EmotionValue"] as? String {
                    self.emotionValue = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["SilenceDuration"] as? Int64 {
                    self.silenceDuration = value
                }
                if let value = dict["SpeechRate"] as? Int32 {
                    self.speechRate = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizDuration"] as? Int64 {
                self.bizDuration = value
            }
            if let value = dict["BusinessId"] as? String {
                self.businessId = value
            }
            if let value = dict["BusinessKey"] as? String {
                self.businessKey = value
            }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Msg"] as? String {
                self.msg = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["Sentences"] as? [Any?] {
                var tmp : [GetSecretAsrDetailResponseBody.Data.Sentences] = []
                for v in value {
                    if v != nil {
                        var model = GetSecretAsrDetailResponseBody.Data.Sentences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sentences = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetSecretAsrDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSecretAsrDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CallTime"] as? String {
            self.callTime = value
        }
        if let value = dict["CheckSubs"] as? Bool {
            self.checkSubs = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PartnerKey"] as? String {
            self.partnerKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PhonePublicUrl"] as? String {
                self.phonePublicUrl = value
            }
            if let value = dict["RingPublicUrl"] as? String {
                self.ringPublicUrl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTotalPublicUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTotalPublicUrlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
    }
}

public class GetXConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ReachJsons : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CallDir"] as? String {
                    self.callDir = value
                }
                if let value = dict["CallStatus"] as? String {
                    self.callStatus = value
                }
                if let value = dict["ReceiveDir"] as? String {
                    self.receiveDir = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["RuleType"] as? String {
                    self.ruleType = value
                }
                if let value = dict["TempId"] as? String {
                    self.tempId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SequenceCallNoPlayCode"] as? String {
                    self.sequenceCallNoPlayCode = value
                }
                if let value = dict["SequenceCalledNo"] as? String {
                    self.sequenceCalledNo = value
                }
                if let value = dict["SequenceCalledPlayCode"] as? String {
                    self.sequenceCalledPlayCode = value
                }
            }
        }
        public var callAbility: String?

        public var GNFlag: String?

        public var reachJsons: [GetXConfigResponseBody.Data.ReachJsons]?

        public var sequenceCalls: [GetXConfigResponseBody.Data.SequenceCalls]?

        public var sequenceEndTime: String?

        public var sequenceStartTime: String?

        public var smsAbility: String?

        public var smsSignMode: String?

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
            if self.GNFlag != nil {
                map["GNFlag"] = self.GNFlag!
            }
            if self.reachJsons != nil {
                var tmp : [Any] = []
                for k in self.reachJsons! {
                    tmp.append(k.toMap())
                }
                map["ReachJsons"] = tmp
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallAbility"] as? String {
                self.callAbility = value
            }
            if let value = dict["GNFlag"] as? String {
                self.GNFlag = value
            }
            if let value = dict["ReachJsons"] as? [Any?] {
                var tmp : [GetXConfigResponseBody.Data.ReachJsons] = []
                for v in value {
                    if v != nil {
                        var model = GetXConfigResponseBody.Data.ReachJsons()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.reachJsons = tmp
            }
            if let value = dict["SequenceCalls"] as? [Any?] {
                var tmp : [GetXConfigResponseBody.Data.SequenceCalls] = []
                for v in value {
                    if v != nil {
                        var model = GetXConfigResponseBody.Data.SequenceCalls()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sequenceCalls = tmp
            }
            if let value = dict["SequenceEndTime"] as? String {
                self.sequenceEndTime = value
            }
            if let value = dict["SequenceStartTime"] as? String {
                self.sequenceStartTime = value
            }
            if let value = dict["SmsAbility"] as? String {
                self.smsAbility = value
            }
            if let value = dict["SmsSignMode"] as? String {
                self.smsSignMode = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetXConfigResponseBody.Data?

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
        try self.data?.validate()
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
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetXConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetXConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
    }
}

public class GetXDefaultConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CallDir"] as? String {
                    self.callDir = value
                }
                if let value = dict["CallStatus"] as? String {
                    self.callStatus = value
                }
                if let value = dict["ReceiveDir"] as? String {
                    self.receiveDir = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["RuleType"] as? String {
                    self.ruleType = value
                }
                if let value = dict["TempId"] as? String {
                    self.tempId = value
                }
            }
        }
        public class SequenceCall : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SequenceCallNoPlayCode"] as? String {
                    self.sequenceCallNoPlayCode = value
                }
                if let value = dict["SequenceCalledNo"] as? String {
                    self.sequenceCalledNo = value
                }
                if let value = dict["SequenceCalledPlayCode"] as? String {
                    self.sequenceCalledPlayCode = value
                }
            }
        }
        public var callAbility: String?

        public var GNFlag: String?

        public var reachJson: [GetXDefaultConfigResponseBody.Data.ReachJson]?

        public var sequenceCall: [GetXDefaultConfigResponseBody.Data.SequenceCall]?

        public var sequenceEndTime: String?

        public var sequenceStartTime: String?

        public var smsAbility: String?

        public var smsSignMode: String?

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
            if self.GNFlag != nil {
                map["GNFlag"] = self.GNFlag!
            }
            if self.reachJson != nil {
                var tmp : [Any] = []
                for k in self.reachJson! {
                    tmp.append(k.toMap())
                }
                map["ReachJson"] = tmp
            }
            if self.sequenceCall != nil {
                var tmp : [Any] = []
                for k in self.sequenceCall! {
                    tmp.append(k.toMap())
                }
                map["SequenceCall"] = tmp
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallAbility"] as? String {
                self.callAbility = value
            }
            if let value = dict["GNFlag"] as? String {
                self.GNFlag = value
            }
            if let value = dict["ReachJson"] as? [Any?] {
                var tmp : [GetXDefaultConfigResponseBody.Data.ReachJson] = []
                for v in value {
                    if v != nil {
                        var model = GetXDefaultConfigResponseBody.Data.ReachJson()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.reachJson = tmp
            }
            if let value = dict["SequenceCall"] as? [Any?] {
                var tmp : [GetXDefaultConfigResponseBody.Data.SequenceCall] = []
                for v in value {
                    if v != nil {
                        var model = GetXDefaultConfigResponseBody.Data.SequenceCall()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sequenceCall = tmp
            }
            if let value = dict["SequenceEndTime"] as? String {
                self.sequenceEndTime = value
            }
            if let value = dict["SequenceStartTime"] as? String {
                self.sequenceStartTime = value
            }
            if let value = dict["SmsAbility"] as? String {
                self.smsAbility = value
            }
            if let value = dict["SmsSignMode"] as? String {
                self.smsSignMode = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetXDefaultConfigResponseBody.Data?

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
        try self.data?.validate()
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
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetXDefaultConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetXDefaultConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListXTelephonesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthMsg"] as? String {
                    self.authMsg = value
                }
                if let value = dict["BindTime"] as? String {
                    self.bindTime = value
                }
                if let value = dict["BuyTime"] as? String {
                    self.buyTime = value
                }
                if let value = dict["CustomerPoolKey"] as? String {
                    self.customerPoolKey = value
                }
                if let value = dict["CustomerPoolName"] as? String {
                    self.customerPoolName = value
                }
                if let value = dict["ReleaseTime"] as? String {
                    self.releaseTime = value
                }
                if let value = dict["SmsStatus"] as? String {
                    self.smsStatus = value
                }
                if let value = dict["Telephone"] as? String {
                    self.telephone = value
                }
                if let value = dict["TelephoneStatus"] as? String {
                    self.telephoneStatus = value
                }
                if let value = dict["UnbindTime"] as? String {
                    self.unbindTime = value
                }
            }
        }
        public var list: [ListXTelephonesResponseBody.Data.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var total: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListXTelephonesResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListXTelephonesResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListXTelephonesResponseBody.Data?

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
        try self.data?.validate()
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
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListXTelephonesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListXTelephonesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecretNo"] as? String {
            self.secretNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = LockSecretNoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["Numbers"] as? String {
            self.numbers = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OperateAxgGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlackNo"] as? String {
            self.blackNo = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tips"] as? String {
            self.tips = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OperateBlackNoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAxbBindFixedLineRequest : Tea.TeaModel {
    public var appId: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var phone: String?

    public var queryType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var telX: String?

    public var ts: String?

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
            map["AppId"] = self.appId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class QueryAxbBindFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Extra : Tea.TeaModel {
            public var callrecording: String?

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
                if self.callrecording != nil {
                    map["Callrecording"] = self.callrecording!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Callrecording"] as? String {
                    self.callrecording = value
                }
            }
        }
        public var anucode: String?

        public var anucodecalled: String?

        public var areacode: String?

        public var expiration: String?

        public var extra: QueryAxbBindFixedLineResponseBody.Data.Extra?

        public var remark: String?

        public var subid: String?

        public var subts: String?

        public var TAnucodeConnect: String?

        public var telA: String?

        public var telB: String?

        public var telX: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extra?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anucode != nil {
                map["Anucode"] = self.anucode!
            }
            if self.anucodecalled != nil {
                map["Anucodecalled"] = self.anucodecalled!
            }
            if self.areacode != nil {
                map["Areacode"] = self.areacode!
            }
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.extra != nil {
                map["Extra"] = self.extra?.toMap()
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.subid != nil {
                map["Subid"] = self.subid!
            }
            if self.subts != nil {
                map["Subts"] = self.subts!
            }
            if self.TAnucodeConnect != nil {
                map["TAnucodeConnect"] = self.TAnucodeConnect!
            }
            if self.telA != nil {
                map["TelA"] = self.telA!
            }
            if self.telB != nil {
                map["TelB"] = self.telB!
            }
            if self.telX != nil {
                map["TelX"] = self.telX!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Anucode"] as? String {
                self.anucode = value
            }
            if let value = dict["Anucodecalled"] as? String {
                self.anucodecalled = value
            }
            if let value = dict["Areacode"] as? String {
                self.areacode = value
            }
            if let value = dict["Expiration"] as? String {
                self.expiration = value
            }
            if let value = dict["Extra"] as? [String: Any?] {
                var model = QueryAxbBindFixedLineResponseBody.Data.Extra()
                model.fromMap(value)
                self.extra = model
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Subid"] as? String {
                self.subid = value
            }
            if let value = dict["Subts"] as? String {
                self.subts = value
            }
            if let value = dict["TAnucodeConnect"] as? String {
                self.TAnucodeConnect = value
            }
            if let value = dict["TelA"] as? String {
                self.telA = value
            }
            if let value = dict["TelB"] as? String {
                self.telB = value
            }
            if let value = dict["TelX"] as? String {
                self.telX = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QueryAxbBindFixedLineResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryAxbBindFixedLineResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QueryAxbBindFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAxbBindFixedLineResponseBody?

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
            var model = QueryAxbBindFixedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAxnBindFixedLineRequest : Tea.TeaModel {
    public var appId: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var phone: String?

    public var queryType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var telX: String?

    public var ts: String?

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
            map["AppId"] = self.appId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class QueryAxnBindFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Extra : Tea.TeaModel {
            public var callback: String?

            public var callrecording: String?

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
                if self.callback != nil {
                    map["Callback"] = self.callback!
                }
                if self.callrecording != nil {
                    map["Callrecording"] = self.callrecording!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Callback"] as? String {
                    self.callback = value
                }
                if let value = dict["Callrecording"] as? String {
                    self.callrecording = value
                }
            }
        }
        public var anucode: String?

        public var anucodecalled: String?

        public var areacode: String?

        public var expiration: String?

        public var extra: QueryAxnBindFixedLineResponseBody.Data.Extra?

        public var remark: String?

        public var subid: String?

        public var subts: String?

        public var TAnucodeConnect: String?

        public var telA: String?

        public var telB: String?

        public var telX: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extra?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anucode != nil {
                map["Anucode"] = self.anucode!
            }
            if self.anucodecalled != nil {
                map["Anucodecalled"] = self.anucodecalled!
            }
            if self.areacode != nil {
                map["Areacode"] = self.areacode!
            }
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.extra != nil {
                map["Extra"] = self.extra?.toMap()
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.subid != nil {
                map["Subid"] = self.subid!
            }
            if self.subts != nil {
                map["Subts"] = self.subts!
            }
            if self.TAnucodeConnect != nil {
                map["TAnucodeConnect"] = self.TAnucodeConnect!
            }
            if self.telA != nil {
                map["TelA"] = self.telA!
            }
            if self.telB != nil {
                map["TelB"] = self.telB!
            }
            if self.telX != nil {
                map["TelX"] = self.telX!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Anucode"] as? String {
                self.anucode = value
            }
            if let value = dict["Anucodecalled"] as? String {
                self.anucodecalled = value
            }
            if let value = dict["Areacode"] as? String {
                self.areacode = value
            }
            if let value = dict["Expiration"] as? String {
                self.expiration = value
            }
            if let value = dict["Extra"] as? [String: Any?] {
                var model = QueryAxnBindFixedLineResponseBody.Data.Extra()
                model.fromMap(value)
                self.extra = model
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Subid"] as? String {
                self.subid = value
            }
            if let value = dict["Subts"] as? String {
                self.subts = value
            }
            if let value = dict["TAnucodeConnect"] as? String {
                self.TAnucodeConnect = value
            }
            if let value = dict["TelA"] as? String {
                self.telA = value
            }
            if let value = dict["TelB"] as? String {
                self.telB = value
            }
            if let value = dict["TelX"] as? String {
                self.telX = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [QueryAxnBindFixedLineResponseBody.Data]?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryAxnBindFixedLineResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryAxnBindFixedLineResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class QueryAxnBindFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAxnBindFixedLineResponseBody?

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
            var model = QueryAxnBindFixedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAxnExtensionBindFixedLineRequest : Tea.TeaModel {
    public var appId: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var queryType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var telA: String?

    public var ts: String?

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
            map["AppId"] = self.appId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class QueryAxnExtensionBindFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Extraaxx : Tea.TeaModel {
            public var callback: String?

            public var callrecording: String?

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
                if self.callback != nil {
                    map["Callback"] = self.callback!
                }
                if self.callrecording != nil {
                    map["Callrecording"] = self.callrecording!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Callback"] as? String {
                    self.callback = value
                }
                if let value = dict["Callrecording"] as? String {
                    self.callrecording = value
                }
            }
        }
        public var anucode: String?

        public var anucodecalled: String?

        public var areacode: String?

        public var expiration: String?

        public var extraaxx: QueryAxnExtensionBindFixedLineResponseBody.Data.Extraaxx?

        public var remark: String?

        public var subid: String?

        public var subts: String?

        public var TAnucodeConnect: String?

        public var telA: String?

        public var telX: String?

        public var telXext: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extraaxx?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anucode != nil {
                map["Anucode"] = self.anucode!
            }
            if self.anucodecalled != nil {
                map["Anucodecalled"] = self.anucodecalled!
            }
            if self.areacode != nil {
                map["Areacode"] = self.areacode!
            }
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.extraaxx != nil {
                map["Extraaxx"] = self.extraaxx?.toMap()
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.subid != nil {
                map["Subid"] = self.subid!
            }
            if self.subts != nil {
                map["Subts"] = self.subts!
            }
            if self.TAnucodeConnect != nil {
                map["TAnucodeConnect"] = self.TAnucodeConnect!
            }
            if self.telA != nil {
                map["TelA"] = self.telA!
            }
            if self.telX != nil {
                map["TelX"] = self.telX!
            }
            if self.telXext != nil {
                map["TelXext"] = self.telXext!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Anucode"] as? String {
                self.anucode = value
            }
            if let value = dict["Anucodecalled"] as? String {
                self.anucodecalled = value
            }
            if let value = dict["Areacode"] as? String {
                self.areacode = value
            }
            if let value = dict["Expiration"] as? String {
                self.expiration = value
            }
            if let value = dict["Extraaxx"] as? [String: Any?] {
                var model = QueryAxnExtensionBindFixedLineResponseBody.Data.Extraaxx()
                model.fromMap(value)
                self.extraaxx = model
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Subid"] as? String {
                self.subid = value
            }
            if let value = dict["Subts"] as? String {
                self.subts = value
            }
            if let value = dict["TAnucodeConnect"] as? String {
                self.TAnucodeConnect = value
            }
            if let value = dict["TelA"] as? String {
                self.telA = value
            }
            if let value = dict["TelX"] as? String {
                self.telX = value
            }
            if let value = dict["TelXext"] as? String {
                self.telXext = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [QueryAxnExtensionBindFixedLineResponseBody.Data]?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryAxnExtensionBindFixedLineResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryAxnExtensionBindFixedLineResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class QueryAxnExtensionBindFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAxnExtensionBindFixedLineResponseBody?

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
            var model = QueryAxnExtensionBindFixedLineResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CabinetNo"] as? String {
            self.cabinetNo = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoX"] as? String {
            self.phoneNoX = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["trackNo"] as? String {
            self.trackNo = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extension"] as? String {
                self.extension_ = value
            }
            if let value = dict["PhoneNoA"] as? String {
                self.phoneNoA = value
            }
            if let value = dict["PhoneNoX"] as? String {
                self.phoneNoX = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Module"] as? [Any?] {
            var tmp : [QueryPhoneNoAByTrackNoResponseBody.Module] = []
            for v in value {
                if v != nil {
                    var model = QueryPhoneNoAByTrackNoResponseBody.Module()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.module = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryPhoneNoAByTrackNoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CallTime"] as? String {
            self.callTime = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DownloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRecordFileDownloadUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySecretAPhoneNoToCustRequest : Tea.TeaModel {
    public var ANoWhiteGroupId: Int64?

    public var ownerId: Int64?

    public var phoneNoA: String?

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
        if self.ANoWhiteGroupId != nil {
            map["ANoWhiteGroupId"] = self.ANoWhiteGroupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNoA != nil {
            map["PhoneNoA"] = self.phoneNoA!
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
        if let value = dict["ANoWhiteGroupId"] as? Int64 {
            self.ANoWhiteGroupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoA"] as? String {
            self.phoneNoA = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QuerySecretAPhoneNoToCustResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ANoWhiteGroupId: String?

        public var custPhoneNo: String?

        public var noType: String?

        public var phoneNoA: String?

        public var remark: String?

        public var reportResult: String?

        public var reportStatus: String?

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
            if self.ANoWhiteGroupId != nil {
                map["ANoWhiteGroupId"] = self.ANoWhiteGroupId!
            }
            if self.custPhoneNo != nil {
                map["CustPhoneNo"] = self.custPhoneNo!
            }
            if self.noType != nil {
                map["NoType"] = self.noType!
            }
            if self.phoneNoA != nil {
                map["PhoneNoA"] = self.phoneNoA!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.reportResult != nil {
                map["ReportResult"] = self.reportResult!
            }
            if self.reportStatus != nil {
                map["ReportStatus"] = self.reportStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ANoWhiteGroupId"] as? String {
                self.ANoWhiteGroupId = value
            }
            if let value = dict["CustPhoneNo"] as? String {
                self.custPhoneNo = value
            }
            if let value = dict["NoType"] as? String {
                self.noType = value
            }
            if let value = dict["PhoneNoA"] as? String {
                self.phoneNoA = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["ReportResult"] as? String {
                self.reportResult = value
            }
            if let value = dict["ReportStatus"] as? String {
                self.reportStatus = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QuerySecretAPhoneNoToCustResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QuerySecretAPhoneNoToCustResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QuerySecretAPhoneNoToCustResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySecretAPhoneNoToCustResponseBody?

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
            var model = QuerySecretAPhoneNoToCustResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecretNo"] as? String {
            self.secretNo = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertifyStatus"] as? Int32 {
                self.certifyStatus = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
            if let value = dict["PurchaseTime"] as? String {
                self.purchaseTime = value
            }
            if let value = dict["SecretStatus"] as? Int64 {
                self.secretStatus = value
            }
            if let value = dict["Vendor"] as? Int64 {
                self.vendor = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretNoInfoDTO"] as? [String: Any?] {
            var model = QuerySecretNoDetailResponseBody.SecretNoInfoDTO()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySecretNoDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecretNo"] as? String {
            self.secretNo = value
        }
        if let value = dict["SpecId"] as? Int64 {
            self.specId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Amount"] as? Int64 {
                        self.amount = value
                    }
                    if let value = dict["City"] as? String {
                        self.city = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["remainDTO"] as? [Any?] {
                    var tmp : [QuerySecretNoRemainResponseBody.SecretRemainDTO.RemainDTOList.RemainDTO] = []
                    for v in value {
                        if v != nil {
                            var model = QuerySecretNoRemainResponseBody.SecretRemainDTO.RemainDTOList.RemainDTO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? Int64 {
                self.amount = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["RemainDTOList"] as? [String: Any?] {
                var model = QuerySecretNoRemainResponseBody.SecretRemainDTO.RemainDTOList()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretRemainDTO"] as? [String: Any?] {
            var model = QuerySecretNoRemainResponseBody.SecretRemainDTO()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySecretNoRemainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QuerySoundRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileUrl: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileUrl"] as? String {
                self.fileUrl = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QuerySoundRecordResponseBody.Data?

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
        try self.data?.validate()
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
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QuerySoundRecordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySoundRecordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoX"] as? String {
            self.phoneNoX = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SubsId"] as? String {
            self.subsId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySubsIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoX"] as? String {
            self.phoneNoX = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubsId"] as? String {
            self.subsId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ASRModelId"] as? String {
                self.ASRModelId = value
            }
            if let value = dict["ASRStatus"] as? Bool {
                self.ASRStatus = value
            }
            if let value = dict["CallRestrict"] as? String {
                self.callRestrict = value
            }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
            if let value = dict["Extension"] as? String {
                self.extension_ = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GroupId"] as? Int64 {
                self.groupId = value
            }
            if let value = dict["NeedRecord"] as? Bool {
                self.needRecord = value
            }
            if let value = dict["PhoneNoA"] as? String {
                self.phoneNoA = value
            }
            if let value = dict["PhoneNoB"] as? String {
                self.phoneNoB = value
            }
            if let value = dict["PhoneNoX"] as? String {
                self.phoneNoX = value
            }
            if let value = dict["Status"] as? Int64 {
                self.status = value
            }
            if let value = dict["SubsId"] as? String {
                self.subsId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretBindDetailDTO"] as? [String: Any?] {
            var model = QuerySubscriptionDetailResponseBody.SecretBindDetailDTO()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySubscriptionDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecretNo"] as? String {
            self.secretNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleaseSecretNoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindId"] as? String {
            self.bindId = value
        }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UnBindAXBResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: UnBindAXBResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UnBindAXBResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnBindAXBResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthId"] as? String {
            self.authId = value
        }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CustomerPoolKey"] as? String {
            self.customerPoolKey = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
    }
}

public class UnBindXBResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: UnBindXBResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UnBindXBResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnBindXBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindSubs700Request : Tea.TeaModel {
    public var industrialId: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subsId: Int64?

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
        if self.industrialId != nil {
            map["IndustrialId"] = self.industrialId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if self.subsId != nil {
            map["SubsId"] = self.subsId!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IndustrialId"] as? String {
            self.industrialId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubsId"] as? Int64 {
            self.subsId = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
    }
}

public class UnbindSubs700ResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
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

public class UnbindSubs700Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindSubs700ResponseBody?

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
            var model = UnbindSubs700ResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecretNo"] as? String {
            self.secretNo = value
        }
        if let value = dict["SubsId"] as? String {
            self.subsId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChargeId"] as? String {
            self.chargeId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindSubscriptionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecretNo"] as? String {
            self.secretNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnlockSecretNoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAxbBindFixedLineRequest : Tea.TeaModel {
    public class Extra : Tea.TeaModel {
        public var callrecording: String?

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
            if self.callrecording != nil {
                map["Callrecording"] = self.callrecording!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Callrecording"] as? String {
                self.callrecording = value
            }
        }
    }
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var expiration: String?

    public var extra: UpdateAxbBindFixedLineRequest.Extra?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var telB: String?

    public var ts: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extra?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extra != nil {
            map["Extra"] = self.extra?.toMap()
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extra"] as? [String: Any?] {
            var model = UpdateAxbBindFixedLineRequest.Extra()
            model.fromMap(value)
            self.extra = model
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class UpdateAxbBindFixedLineShrinkRequest : Tea.TeaModel {
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var expiration: String?

    public var extraShrink: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var telB: String?

    public var ts: String?

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
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extraShrink != nil {
            map["Extra"] = self.extraShrink!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extra"] as? String {
            self.extraShrink = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class UpdateAxbBindFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: UpdateAxbBindFixedLineResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateAxbBindFixedLineResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateAxbBindFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAxbBindFixedLineResponseBody?

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
            var model = UpdateAxbBindFixedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAxnBindFixedLineRequest : Tea.TeaModel {
    public class Extra : Tea.TeaModel {
        public var callback: String?

        public var callrecording: String?

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
            if self.callback != nil {
                map["Callback"] = self.callback!
            }
            if self.callrecording != nil {
                map["Callrecording"] = self.callrecording!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Callback"] as? String {
                self.callback = value
            }
            if let value = dict["Callrecording"] as? String {
                self.callrecording = value
            }
        }
    }
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var expiration: String?

    public var extra: UpdateAxnBindFixedLineRequest.Extra?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var telB: String?

    public var ts: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extra?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extra != nil {
            map["Extra"] = self.extra?.toMap()
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extra"] as? [String: Any?] {
            var model = UpdateAxnBindFixedLineRequest.Extra()
            model.fromMap(value)
            self.extra = model
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class UpdateAxnBindFixedLineShrinkRequest : Tea.TeaModel {
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var expiration: String?

    public var extraShrink: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var telB: String?

    public var ts: String?

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
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extraShrink != nil {
            map["Extra"] = self.extraShrink!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extra"] as? String {
            self.extraShrink = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class UpdateAxnBindFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: UpdateAxnBindFixedLineResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateAxnBindFixedLineResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateAxnBindFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAxnBindFixedLineResponseBody?

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
            var model = UpdateAxnBindFixedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAxnExtensionBindFixedLineRequest : Tea.TeaModel {
    public class Extraaxx : Tea.TeaModel {
        public var callback: String?

        public var callrecording: String?

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
            if self.callback != nil {
                map["Callback"] = self.callback!
            }
            if self.callrecording != nil {
                map["Callrecording"] = self.callrecording!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Callback"] as? String {
                self.callback = value
            }
            if let value = dict["Callrecording"] as? String {
                self.callrecording = value
            }
        }
    }
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var expiration: String?

    public var extraaxx: UpdateAxnExtensionBindFixedLineRequest.Extraaxx?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var ts: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extraaxx?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extraaxx != nil {
            map["Extraaxx"] = self.extraaxx?.toMap()
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extraaxx"] as? [String: Any?] {
            var model = UpdateAxnExtensionBindFixedLineRequest.Extraaxx()
            model.fromMap(value)
            self.extraaxx = model
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class UpdateAxnExtensionBindFixedLineShrinkRequest : Tea.TeaModel {
    public var anucode: String?

    public var anucodecalled: String?

    public var appId: String?

    public var expiration: String?

    public var extraaxxShrink: String?

    public var orderId: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subId: String?

    public var subts: String?

    public var TAnucodeConnect: String?

    public var telA: String?

    public var ts: String?

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
        if self.anucode != nil {
            map["Anucode"] = self.anucode!
        }
        if self.anucodecalled != nil {
            map["Anucodecalled"] = self.anucodecalled!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.extraaxxShrink != nil {
            map["Extraaxx"] = self.extraaxxShrink!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.subId != nil {
            map["SubId"] = self.subId!
        }
        if self.subts != nil {
            map["Subts"] = self.subts!
        }
        if self.TAnucodeConnect != nil {
            map["TAnucodeConnect"] = self.TAnucodeConnect!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.ts != nil {
            map["Ts"] = self.ts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Anucode"] as? String {
            self.anucode = value
        }
        if let value = dict["Anucodecalled"] as? String {
            self.anucodecalled = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["Extraaxx"] as? String {
            self.extraaxxShrink = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubId"] as? String {
            self.subId = value
        }
        if let value = dict["Subts"] as? String {
            self.subts = value
        }
        if let value = dict["TAnucodeConnect"] as? String {
            self.TAnucodeConnect = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["Ts"] as? String {
            self.ts = value
        }
    }
}

public class UpdateAxnExtensionBindFixedLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: UpdateAxnExtensionBindFixedLineResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateAxnExtensionBindFixedLineResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateAxnExtensionBindFixedLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAxnExtensionBindFixedLineResponseBody?

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
            var model = UpdateAxnExtensionBindFixedLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSubs700Request : Tea.TeaModel {
    public var asrModelId: String?

    public var audio: String?

    public var callRestrict: String?

    public var defaultA: String?

    public var expiration: String?

    public var groupId: String?

    public var industrialId: String?

    public var needAsr: Bool?

    public var needRecord: Bool?

    public var operateType: String?

    public var orderId: String?

    public var outId: String?

    public var ownerId: Int64?

    public var poolKey: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subsId: Int64?

    public var telA: String?

    public var telB: String?

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
        if self.asrModelId != nil {
            map["AsrModelId"] = self.asrModelId!
        }
        if self.audio != nil {
            map["Audio"] = self.audio!
        }
        if self.callRestrict != nil {
            map["CallRestrict"] = self.callRestrict!
        }
        if self.defaultA != nil {
            map["DefaultA"] = self.defaultA!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.industrialId != nil {
            map["IndustrialId"] = self.industrialId!
        }
        if self.needAsr != nil {
            map["NeedAsr"] = self.needAsr!
        }
        if self.needRecord != nil {
            map["NeedRecord"] = self.needRecord!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
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
        if self.subsId != nil {
            map["SubsId"] = self.subsId!
        }
        if self.telA != nil {
            map["TelA"] = self.telA!
        }
        if self.telB != nil {
            map["TelB"] = self.telB!
        }
        if self.telX != nil {
            map["TelX"] = self.telX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AsrModelId"] as? String {
            self.asrModelId = value
        }
        if let value = dict["Audio"] as? String {
            self.audio = value
        }
        if let value = dict["CallRestrict"] as? String {
            self.callRestrict = value
        }
        if let value = dict["DefaultA"] as? String {
            self.defaultA = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["IndustrialId"] as? String {
            self.industrialId = value
        }
        if let value = dict["NeedAsr"] as? Bool {
            self.needAsr = value
        }
        if let value = dict["NeedRecord"] as? Bool {
            self.needRecord = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SubsId"] as? Int64 {
            self.subsId = value
        }
        if let value = dict["TelA"] as? String {
            self.telA = value
        }
        if let value = dict["TelB"] as? String {
            self.telB = value
        }
        if let value = dict["TelX"] as? String {
            self.telX = value
        }
    }
}

public class UpdateSubs700ResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
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

public class UpdateSubs700Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSubs700ResponseBody?

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
            var model = UpdateSubs700ResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ASRModelId"] as? String {
            self.ASRModelId = value
        }
        if let value = dict["ASRStatus"] as? Bool {
            self.ASRStatus = value
        }
        if let value = dict["CallDisplayType"] as? Int32 {
            self.callDisplayType = value
        }
        if let value = dict["CallRestrict"] as? String {
            self.callRestrict = value
        }
        if let value = dict["Expiration"] as? String {
            self.expiration = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["IsRecordingEnabled"] as? Bool {
            self.isRecordingEnabled = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNoA"] as? String {
            self.phoneNoA = value
        }
        if let value = dict["PhoneNoB"] as? String {
            self.phoneNoB = value
        }
        if let value = dict["PhoneNoX"] as? String {
            self.phoneNoX = value
        }
        if let value = dict["PoolKey"] as? String {
            self.poolKey = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RingConfig"] as? String {
            self.ringConfig = value
        }
        if let value = dict["SubsId"] as? String {
            self.subsId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
