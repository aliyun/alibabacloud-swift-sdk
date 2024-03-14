import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActivateAllInOneGatewayRequest : Tea.TeaModel {
    public var clientUUID: String?

    public var deviceNumber: String?

    public var gatewayId: String?

    public var model: String?

    public var securityToken: String?

    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientUUID != nil {
            map["ClientUUID"] = self.clientUUID!
        }
        if self.deviceNumber != nil {
            map["DeviceNumber"] = self.deviceNumber!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientUUID") && dict["ClientUUID"] != nil {
            self.clientUUID = dict["ClientUUID"] as! String
        }
        if dict.keys.contains("DeviceNumber") && dict["DeviceNumber"] != nil {
            self.deviceNumber = dict["DeviceNumber"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SerialNumber") && dict["SerialNumber"] != nil {
            self.serialNumber = dict["SerialNumber"] as! String
        }
    }
}

public class ActivateAllInOneGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var gatewayId: String?

    public var licenseContent: String?

    public var message: String?

    public var regionId: String?

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
            map["Code"] = self.code!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.licenseContent != nil {
            map["LicenseContent"] = self.licenseContent!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("LicenseContent") && dict["LicenseContent"] != nil {
            self.licenseContent = dict["LicenseContent"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ActivateAllInOneGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateAllInOneGatewayResponseBody?

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
            var model = ActivateAllInOneGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ActivateGatewayRequest : Tea.TeaModel {
    public var category: String?

    public var clientUUID: String?

    public var model: String?

    public var securityToken: String?

    public var serialNumber: String?

    public var token: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientUUID != nil {
            map["ClientUUID"] = self.clientUUID!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("ClientUUID") && dict["ClientUUID"] != nil {
            self.clientUUID = dict["ClientUUID"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SerialNumber") && dict["SerialNumber"] != nil {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class ActivateGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var gatewayId: String?

    public var message: String?

    public var regionId: String?

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
            map["Code"] = self.code!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ActivateGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateGatewayResponseBody?

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
            var model = ActivateGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddSharesToExpressSyncRequest : Tea.TeaModel {
    public var expressSyncId: String?

    public var gatewayShares: String?

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
        if self.expressSyncId != nil {
            map["ExpressSyncId"] = self.expressSyncId!
        }
        if self.gatewayShares != nil {
            map["GatewayShares"] = self.gatewayShares!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpressSyncId") && dict["ExpressSyncId"] != nil {
            self.expressSyncId = dict["ExpressSyncId"] as! String
        }
        if dict.keys.contains("GatewayShares") && dict["GatewayShares"] != nil {
            self.gatewayShares = dict["GatewayShares"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class AddSharesToExpressSyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var mnsFullSyncDelay: Int64?

    public var mnsInnerEndpoint: String?

    public var mnsPublicEndpoint: String?

    public var mnsQueues: String?

    public var mnsTopic: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.mnsFullSyncDelay != nil {
            map["MnsFullSyncDelay"] = self.mnsFullSyncDelay!
        }
        if self.mnsInnerEndpoint != nil {
            map["MnsInnerEndpoint"] = self.mnsInnerEndpoint!
        }
        if self.mnsPublicEndpoint != nil {
            map["MnsPublicEndpoint"] = self.mnsPublicEndpoint!
        }
        if self.mnsQueues != nil {
            map["MnsQueues"] = self.mnsQueues!
        }
        if self.mnsTopic != nil {
            map["MnsTopic"] = self.mnsTopic!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MnsFullSyncDelay") && dict["MnsFullSyncDelay"] != nil {
            self.mnsFullSyncDelay = dict["MnsFullSyncDelay"] as! Int64
        }
        if dict.keys.contains("MnsInnerEndpoint") && dict["MnsInnerEndpoint"] != nil {
            self.mnsInnerEndpoint = dict["MnsInnerEndpoint"] as! String
        }
        if dict.keys.contains("MnsPublicEndpoint") && dict["MnsPublicEndpoint"] != nil {
            self.mnsPublicEndpoint = dict["MnsPublicEndpoint"] as! String
        }
        if dict.keys.contains("MnsQueues") && dict["MnsQueues"] != nil {
            self.mnsQueues = dict["MnsQueues"] as! String
        }
        if dict.keys.contains("MnsTopic") && dict["MnsTopic"] != nil {
            self.mnsTopic = dict["MnsTopic"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class AddSharesToExpressSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSharesToExpressSyncResponseBody?

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
            var model = AddSharesToExpressSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddTagsToGatewayRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var securityToken: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class AddTagsToGatewayResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddTagsToGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTagsToGatewayResponseBody?

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
            var model = AddTagsToGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckActivationKeyRequest : Tea.TeaModel {
    public var cryptKey: String?

    public var cryptText: String?

    public var gatewayId: String?

    public var securityToken: String?

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
        if self.cryptKey != nil {
            map["CryptKey"] = self.cryptKey!
        }
        if self.cryptText != nil {
            map["CryptText"] = self.cryptText!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CryptKey") && dict["CryptKey"] != nil {
            self.cryptKey = dict["CryptKey"] as! String
        }
        if dict.keys.contains("CryptText") && dict["CryptText"] != nil {
            self.cryptText = dict["CryptText"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class CheckActivationKeyResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckActivationKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckActivationKeyResponseBody?

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
            var model = CheckActivationKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckBlockVolumeNameRequest : Tea.TeaModel {
    public var bucketEndpoint: String?

    public var bucketName: String?

    public var securityToken: String?

    public var volumeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketEndpoint != nil {
            map["BucketEndpoint"] = self.bucketEndpoint!
        }
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.volumeName != nil {
            map["VolumeName"] = self.volumeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketEndpoint") && dict["BucketEndpoint"] != nil {
            self.bucketEndpoint = dict["BucketEndpoint"] as! String
        }
        if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("VolumeName") && dict["VolumeName"] != nil {
            self.volumeName = dict["VolumeName"] as! String
        }
    }
}

public class CheckBlockVolumeNameResponseBody : Tea.TeaModel {
    public var code: String?

    public var isAlreadyExist: Bool?

    public var isRequireRecovery: String?

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
            map["Code"] = self.code!
        }
        if self.isAlreadyExist != nil {
            map["IsAlreadyExist"] = self.isAlreadyExist!
        }
        if self.isRequireRecovery != nil {
            map["IsRequireRecovery"] = self.isRequireRecovery!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsAlreadyExist") && dict["IsAlreadyExist"] != nil {
            self.isAlreadyExist = dict["IsAlreadyExist"] as! Bool
        }
        if dict.keys.contains("IsRequireRecovery") && dict["IsRequireRecovery"] != nil {
            self.isRequireRecovery = dict["IsRequireRecovery"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckBlockVolumeNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckBlockVolumeNameResponseBody?

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
            var model = CheckBlockVolumeNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckGatewayEssdSupportRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CheckGatewayEssdSupportResponseBody : Tea.TeaModel {
    public var code: String?

    public var isServiceAffect: Bool?

    public var isSupportEssd: Bool?

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
            map["Code"] = self.code!
        }
        if self.isServiceAffect != nil {
            map["IsServiceAffect"] = self.isServiceAffect!
        }
        if self.isSupportEssd != nil {
            map["IsSupportEssd"] = self.isSupportEssd!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsServiceAffect") && dict["IsServiceAffect"] != nil {
            self.isServiceAffect = dict["IsServiceAffect"] as! Bool
        }
        if dict.keys.contains("IsSupportEssd") && dict["IsSupportEssd"] != nil {
            self.isSupportEssd = dict["IsSupportEssd"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckGatewayEssdSupportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckGatewayEssdSupportResponseBody?

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
            var model = CheckGatewayEssdSupportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckMnsServiceRequest : Tea.TeaModel {
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CheckMnsServiceResponseBody : Tea.TeaModel {
    public var checkMessage: String?

    public var code: String?

    public var isEnabled: Bool?

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
        if self.checkMessage != nil {
            map["CheckMessage"] = self.checkMessage!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckMessage") && dict["CheckMessage"] != nil {
            self.checkMessage = dict["CheckMessage"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsEnabled") && dict["IsEnabled"] != nil {
            self.isEnabled = dict["IsEnabled"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckMnsServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckMnsServiceResponseBody?

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
            var model = CheckMnsServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckRoleRequest : Tea.TeaModel {
    public var roleType: String?

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
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
            self.roleType = dict["RoleType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CheckRoleResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckRoleResponseBody?

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
            var model = CheckRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckSlrRoleRequest : Tea.TeaModel {
    public var createIfNotExist: Bool?

    public var roleName: String?

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
        if self.createIfNotExist != nil {
            map["CreateIfNotExist"] = self.createIfNotExist!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateIfNotExist") && dict["CreateIfNotExist"] != nil {
            self.createIfNotExist = dict["CreateIfNotExist"] as! Bool
        }
        if dict.keys.contains("RoleName") && dict["RoleName"] != nil {
            self.roleName = dict["RoleName"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CheckSlrRoleResponseBody : Tea.TeaModel {
    public var code: String?

    public var exist: Bool?

    public var message: String?

    public var requestId: String?

    public var requireOldWayCheck: Bool?

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
        if self.exist != nil {
            map["Exist"] = self.exist!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requireOldWayCheck != nil {
            map["RequireOldWayCheck"] = self.requireOldWayCheck!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Exist") && dict["Exist"] != nil {
            self.exist = dict["Exist"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequireOldWayCheck") && dict["RequireOldWayCheck"] != nil {
            self.requireOldWayCheck = dict["RequireOldWayCheck"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckSlrRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckSlrRoleResponseBody?

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
            var model = CheckSlrRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckUpgradeVersionRequest : Tea.TeaModel {
    public var clientUUID: String?

    public var gatewayId: String?

    public var gatewayVersion: String?

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
        if self.clientUUID != nil {
            map["ClientUUID"] = self.clientUUID!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.gatewayVersion != nil {
            map["GatewayVersion"] = self.gatewayVersion!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientUUID") && dict["ClientUUID"] != nil {
            self.clientUUID = dict["ClientUUID"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("GatewayVersion") && dict["GatewayVersion"] != nil {
            self.gatewayVersion = dict["GatewayVersion"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CheckUpgradeVersionResponseBody : Tea.TeaModel {
    public class Patches : Tea.TeaModel {
        public class Patch : Tea.TeaModel {
            public var internalUrl: String?

            public var MD5: String?

            public var name: String?

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
                if self.internalUrl != nil {
                    map["InternalUrl"] = self.internalUrl!
                }
                if self.MD5 != nil {
                    map["MD5"] = self.MD5!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InternalUrl") && dict["InternalUrl"] != nil {
                    self.internalUrl = dict["InternalUrl"] as! String
                }
                if dict.keys.contains("MD5") && dict["MD5"] != nil {
                    self.MD5 = dict["MD5"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var patch: [CheckUpgradeVersionResponseBody.Patches.Patch]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.patch != nil {
                var tmp : [Any] = []
                for k in self.patch! {
                    tmp.append(k.toMap())
                }
                map["Patch"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Patch") && dict["Patch"] != nil {
                var tmp : [CheckUpgradeVersionResponseBody.Patches.Patch] = []
                for v in dict["Patch"] as! [Any] {
                    var model = CheckUpgradeVersionResponseBody.Patches.Patch()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.patch = tmp
            }
        }
    }
    public var code: String?

    public var latestVersion: String?

    public var message: String?

    public var option: String?

    public var patches: CheckUpgradeVersionResponseBody.Patches?

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
        try self.patches?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.latestVersion != nil {
            map["LatestVersion"] = self.latestVersion!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.patches != nil {
            map["Patches"] = self.patches?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LatestVersion") && dict["LatestVersion"] != nil {
            self.latestVersion = dict["LatestVersion"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Option") && dict["Option"] != nil {
            self.option = dict["Option"] as! String
        }
        if dict.keys.contains("Patches") && dict["Patches"] != nil {
            var model = CheckUpgradeVersionResponseBody.Patches()
            model.fromMap(dict["Patches"] as! [String: Any])
            self.patches = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckUpgradeVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUpgradeVersionResponseBody?

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
            var model = CheckUpgradeVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCacheRequest : Tea.TeaModel {
    public var category: String?

    public var gatewayId: String?

    public var securityToken: String?

    public var sizeInGB: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sizeInGB != nil {
            map["SizeInGB"] = self.sizeInGB!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SizeInGB") && dict["SizeInGB"] != nil {
            self.sizeInGB = dict["SizeInGB"] as! Int64
        }
    }
}

public class CreateCacheResponseBody : Tea.TeaModel {
    public var buyURL: String?

    public var cacheId: String?

    public var code: String?

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
        if self.buyURL != nil {
            map["BuyURL"] = self.buyURL!
        }
        if self.cacheId != nil {
            map["CacheId"] = self.cacheId!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyURL") && dict["BuyURL"] != nil {
            self.buyURL = dict["BuyURL"] as! String
        }
        if dict.keys.contains("CacheId") && dict["CacheId"] != nil {
            self.cacheId = dict["CacheId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCacheResponseBody?

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
            var model = CreateCacheResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateElasticGatewayPrivateZoneRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CreateElasticGatewayPrivateZoneResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateElasticGatewayPrivateZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateElasticGatewayPrivateZoneResponseBody?

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
            var model = CreateElasticGatewayPrivateZoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateExpressSyncRequest : Tea.TeaModel {
    public var bucketName: String?

    public var bucketPrefix: String?

    public var bucketRegion: String?

    public var description_: String?

    public var name: String?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.bucketPrefix != nil {
            map["BucketPrefix"] = self.bucketPrefix!
        }
        if self.bucketRegion != nil {
            map["BucketRegion"] = self.bucketRegion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("BucketPrefix") && dict["BucketPrefix"] != nil {
            self.bucketPrefix = dict["BucketPrefix"] as! String
        }
        if dict.keys.contains("BucketRegion") && dict["BucketRegion"] != nil {
            self.bucketRegion = dict["BucketRegion"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CreateExpressSyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var expressSyncId: String?

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
            map["Code"] = self.code!
        }
        if self.expressSyncId != nil {
            map["ExpressSyncId"] = self.expressSyncId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ExpressSyncId") && dict["ExpressSyncId"] != nil {
            self.expressSyncId = dict["ExpressSyncId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateExpressSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExpressSyncResponseBody?

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
            var model = CreateExpressSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayRequest : Tea.TeaModel {
    public var description_: String?

    public var gatewayClass: String?

    public var location: String?

    public var name: String?

    public var postPaid: Bool?

    public var publicNetworkBandwidth: Int32?

    public var releaseAfterExpiration: Bool?

    public var resourceRegionId: String?

    public var secondaryVSwitchId: String?

    public var securityToken: String?

    public var storageBundleId: String?

    public var type: String?

    public var untrustedEnvId: String?

    public var untrustedEnvInstanceType: String?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gatewayClass != nil {
            map["GatewayClass"] = self.gatewayClass!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.postPaid != nil {
            map["PostPaid"] = self.postPaid!
        }
        if self.publicNetworkBandwidth != nil {
            map["PublicNetworkBandwidth"] = self.publicNetworkBandwidth!
        }
        if self.releaseAfterExpiration != nil {
            map["ReleaseAfterExpiration"] = self.releaseAfterExpiration!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.secondaryVSwitchId != nil {
            map["SecondaryVSwitchId"] = self.secondaryVSwitchId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.untrustedEnvId != nil {
            map["UntrustedEnvId"] = self.untrustedEnvId!
        }
        if self.untrustedEnvInstanceType != nil {
            map["UntrustedEnvInstanceType"] = self.untrustedEnvInstanceType!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GatewayClass") && dict["GatewayClass"] != nil {
            self.gatewayClass = dict["GatewayClass"] as! String
        }
        if dict.keys.contains("Location") && dict["Location"] != nil {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PostPaid") && dict["PostPaid"] != nil {
            self.postPaid = dict["PostPaid"] as! Bool
        }
        if dict.keys.contains("PublicNetworkBandwidth") && dict["PublicNetworkBandwidth"] != nil {
            self.publicNetworkBandwidth = dict["PublicNetworkBandwidth"] as! Int32
        }
        if dict.keys.contains("ReleaseAfterExpiration") && dict["ReleaseAfterExpiration"] != nil {
            self.releaseAfterExpiration = dict["ReleaseAfterExpiration"] as! Bool
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
        }
        if dict.keys.contains("SecondaryVSwitchId") && dict["SecondaryVSwitchId"] != nil {
            self.secondaryVSwitchId = dict["SecondaryVSwitchId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UntrustedEnvId") && dict["UntrustedEnvId"] != nil {
            self.untrustedEnvId = dict["UntrustedEnvId"] as! String
        }
        if dict.keys.contains("UntrustedEnvInstanceType") && dict["UntrustedEnvInstanceType"] != nil {
            self.untrustedEnvInstanceType = dict["UntrustedEnvInstanceType"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
    }
}

public class CreateGatewayResponseBody : Tea.TeaModel {
    public var buyURL: String?

    public var code: String?

    public var gatewayId: String?

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
        if self.buyURL != nil {
            map["BuyURL"] = self.buyURL!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyURL") && dict["BuyURL"] != nil {
            self.buyURL = dict["BuyURL"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayResponseBody?

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
            var model = CreateGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayBlockVolumeRequest : Tea.TeaModel {
    public var cacheMode: String?

    public var chapEnabled: Bool?

    public var chapInPassword: String?

    public var chapInUser: String?

    public var chunkSize: Int32?

    public var gatewayId: String?

    public var localFilePath: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossBucketSsl: Bool?

    public var ossEndpoint: String?

    public var recovery: Bool?

    public var securityToken: String?

    public var size: Int64?

    public var volumeProtocol: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cacheMode != nil {
            map["CacheMode"] = self.cacheMode!
        }
        if self.chapEnabled != nil {
            map["ChapEnabled"] = self.chapEnabled!
        }
        if self.chapInPassword != nil {
            map["ChapInPassword"] = self.chapInPassword!
        }
        if self.chapInUser != nil {
            map["ChapInUser"] = self.chapInUser!
        }
        if self.chunkSize != nil {
            map["ChunkSize"] = self.chunkSize!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.localFilePath != nil {
            map["LocalFilePath"] = self.localFilePath!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossBucketSsl != nil {
            map["OssBucketSsl"] = self.ossBucketSsl!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.recovery != nil {
            map["Recovery"] = self.recovery!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.volumeProtocol != nil {
            map["VolumeProtocol"] = self.volumeProtocol!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheMode") && dict["CacheMode"] != nil {
            self.cacheMode = dict["CacheMode"] as! String
        }
        if dict.keys.contains("ChapEnabled") && dict["ChapEnabled"] != nil {
            self.chapEnabled = dict["ChapEnabled"] as! Bool
        }
        if dict.keys.contains("ChapInPassword") && dict["ChapInPassword"] != nil {
            self.chapInPassword = dict["ChapInPassword"] as! String
        }
        if dict.keys.contains("ChapInUser") && dict["ChapInUser"] != nil {
            self.chapInUser = dict["ChapInUser"] as! String
        }
        if dict.keys.contains("ChunkSize") && dict["ChunkSize"] != nil {
            self.chunkSize = dict["ChunkSize"] as! Int32
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("LocalFilePath") && dict["LocalFilePath"] != nil {
            self.localFilePath = dict["LocalFilePath"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucketName") && dict["OssBucketName"] != nil {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssBucketSsl") && dict["OssBucketSsl"] != nil {
            self.ossBucketSsl = dict["OssBucketSsl"] as! Bool
        }
        if dict.keys.contains("OssEndpoint") && dict["OssEndpoint"] != nil {
            self.ossEndpoint = dict["OssEndpoint"] as! String
        }
        if dict.keys.contains("Recovery") && dict["Recovery"] != nil {
            self.recovery = dict["Recovery"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int64
        }
        if dict.keys.contains("VolumeProtocol") && dict["VolumeProtocol"] != nil {
            self.volumeProtocol = dict["VolumeProtocol"] as! String
        }
    }
}

public class CreateGatewayBlockVolumeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateGatewayBlockVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayBlockVolumeResponseBody?

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
            var model = CreateGatewayBlockVolumeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayCacheDiskRequest : Tea.TeaModel {
    public var cacheDiskCategory: String?

    public var cacheDiskSizeInGB: Int64?

    public var gatewayId: String?

    public var performanceLevel: String?

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
        if self.cacheDiskCategory != nil {
            map["CacheDiskCategory"] = self.cacheDiskCategory!
        }
        if self.cacheDiskSizeInGB != nil {
            map["CacheDiskSizeInGB"] = self.cacheDiskSizeInGB!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.performanceLevel != nil {
            map["PerformanceLevel"] = self.performanceLevel!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheDiskCategory") && dict["CacheDiskCategory"] != nil {
            self.cacheDiskCategory = dict["CacheDiskCategory"] as! String
        }
        if dict.keys.contains("CacheDiskSizeInGB") && dict["CacheDiskSizeInGB"] != nil {
            self.cacheDiskSizeInGB = dict["CacheDiskSizeInGB"] as! Int64
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("PerformanceLevel") && dict["PerformanceLevel"] != nil {
            self.performanceLevel = dict["PerformanceLevel"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CreateGatewayCacheDiskResponseBody : Tea.TeaModel {
    public var buyURL: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyURL != nil {
            map["BuyURL"] = self.buyURL!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyURL") && dict["BuyURL"] != nil {
            self.buyURL = dict["BuyURL"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateGatewayCacheDiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayCacheDiskResponseBody?

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
            var model = CreateGatewayCacheDiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayFileShareRequest : Tea.TeaModel {
    public var accessBasedEnumeration: Bool?

    public var backendLimit: Int32?

    public var browsable: Bool?

    public var bypassCacheRead: Bool?

    public var cacheMode: String?

    public var clientSideCmk: String?

    public var clientSideEncryption: Bool?

    public var directIO: Bool?

    public var downloadLimit: Int32?

    public var fastReclaim: Bool?

    public var frontendLimit: Int32?

    public var gatewayId: String?

    public var ignoreDelete: Bool?

    public var inPlace: Bool?

    public var kmsRotatePeriod: Int64?

    public var lagPeriod: Int64?

    public var localFilePath: String?

    public var name: String?

    public var nfsV4Optimization: Bool?

    public var ossBucketName: String?

    public var ossBucketSsl: Bool?

    public var ossEndpoint: String?

    public var partialSyncPaths: String?

    public var pathPrefix: String?

    public var pollingInterval: Int32?

    public var readOnlyClientList: String?

    public var readOnlyUserList: String?

    public var readWriteClientList: String?

    public var readWriteUserList: String?

    public var remoteSync: Bool?

    public var remoteSyncDownload: Bool?

    public var securityToken: String?

    public var serverSideAlgorithm: String?

    public var serverSideCmk: String?

    public var serverSideEncryption: Bool?

    public var shareProtocol: String?

    public var squash: String?

    public var supportArchive: Bool?

    public var transferAcceleration: Bool?

    public var windowsAcl: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessBasedEnumeration != nil {
            map["AccessBasedEnumeration"] = self.accessBasedEnumeration!
        }
        if self.backendLimit != nil {
            map["BackendLimit"] = self.backendLimit!
        }
        if self.browsable != nil {
            map["Browsable"] = self.browsable!
        }
        if self.bypassCacheRead != nil {
            map["BypassCacheRead"] = self.bypassCacheRead!
        }
        if self.cacheMode != nil {
            map["CacheMode"] = self.cacheMode!
        }
        if self.clientSideCmk != nil {
            map["ClientSideCmk"] = self.clientSideCmk!
        }
        if self.clientSideEncryption != nil {
            map["ClientSideEncryption"] = self.clientSideEncryption!
        }
        if self.directIO != nil {
            map["DirectIO"] = self.directIO!
        }
        if self.downloadLimit != nil {
            map["DownloadLimit"] = self.downloadLimit!
        }
        if self.fastReclaim != nil {
            map["FastReclaim"] = self.fastReclaim!
        }
        if self.frontendLimit != nil {
            map["FrontendLimit"] = self.frontendLimit!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.ignoreDelete != nil {
            map["IgnoreDelete"] = self.ignoreDelete!
        }
        if self.inPlace != nil {
            map["InPlace"] = self.inPlace!
        }
        if self.kmsRotatePeriod != nil {
            map["KmsRotatePeriod"] = self.kmsRotatePeriod!
        }
        if self.lagPeriod != nil {
            map["LagPeriod"] = self.lagPeriod!
        }
        if self.localFilePath != nil {
            map["LocalFilePath"] = self.localFilePath!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nfsV4Optimization != nil {
            map["NfsV4Optimization"] = self.nfsV4Optimization!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossBucketSsl != nil {
            map["OssBucketSsl"] = self.ossBucketSsl!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.partialSyncPaths != nil {
            map["PartialSyncPaths"] = self.partialSyncPaths!
        }
        if self.pathPrefix != nil {
            map["PathPrefix"] = self.pathPrefix!
        }
        if self.pollingInterval != nil {
            map["PollingInterval"] = self.pollingInterval!
        }
        if self.readOnlyClientList != nil {
            map["ReadOnlyClientList"] = self.readOnlyClientList!
        }
        if self.readOnlyUserList != nil {
            map["ReadOnlyUserList"] = self.readOnlyUserList!
        }
        if self.readWriteClientList != nil {
            map["ReadWriteClientList"] = self.readWriteClientList!
        }
        if self.readWriteUserList != nil {
            map["ReadWriteUserList"] = self.readWriteUserList!
        }
        if self.remoteSync != nil {
            map["RemoteSync"] = self.remoteSync!
        }
        if self.remoteSyncDownload != nil {
            map["RemoteSyncDownload"] = self.remoteSyncDownload!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverSideAlgorithm != nil {
            map["ServerSideAlgorithm"] = self.serverSideAlgorithm!
        }
        if self.serverSideCmk != nil {
            map["ServerSideCmk"] = self.serverSideCmk!
        }
        if self.serverSideEncryption != nil {
            map["ServerSideEncryption"] = self.serverSideEncryption!
        }
        if self.shareProtocol != nil {
            map["ShareProtocol"] = self.shareProtocol!
        }
        if self.squash != nil {
            map["Squash"] = self.squash!
        }
        if self.supportArchive != nil {
            map["SupportArchive"] = self.supportArchive!
        }
        if self.transferAcceleration != nil {
            map["TransferAcceleration"] = self.transferAcceleration!
        }
        if self.windowsAcl != nil {
            map["WindowsAcl"] = self.windowsAcl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessBasedEnumeration") && dict["AccessBasedEnumeration"] != nil {
            self.accessBasedEnumeration = dict["AccessBasedEnumeration"] as! Bool
        }
        if dict.keys.contains("BackendLimit") && dict["BackendLimit"] != nil {
            self.backendLimit = dict["BackendLimit"] as! Int32
        }
        if dict.keys.contains("Browsable") && dict["Browsable"] != nil {
            self.browsable = dict["Browsable"] as! Bool
        }
        if dict.keys.contains("BypassCacheRead") && dict["BypassCacheRead"] != nil {
            self.bypassCacheRead = dict["BypassCacheRead"] as! Bool
        }
        if dict.keys.contains("CacheMode") && dict["CacheMode"] != nil {
            self.cacheMode = dict["CacheMode"] as! String
        }
        if dict.keys.contains("ClientSideCmk") && dict["ClientSideCmk"] != nil {
            self.clientSideCmk = dict["ClientSideCmk"] as! String
        }
        if dict.keys.contains("ClientSideEncryption") && dict["ClientSideEncryption"] != nil {
            self.clientSideEncryption = dict["ClientSideEncryption"] as! Bool
        }
        if dict.keys.contains("DirectIO") && dict["DirectIO"] != nil {
            self.directIO = dict["DirectIO"] as! Bool
        }
        if dict.keys.contains("DownloadLimit") && dict["DownloadLimit"] != nil {
            self.downloadLimit = dict["DownloadLimit"] as! Int32
        }
        if dict.keys.contains("FastReclaim") && dict["FastReclaim"] != nil {
            self.fastReclaim = dict["FastReclaim"] as! Bool
        }
        if dict.keys.contains("FrontendLimit") && dict["FrontendLimit"] != nil {
            self.frontendLimit = dict["FrontendLimit"] as! Int32
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IgnoreDelete") && dict["IgnoreDelete"] != nil {
            self.ignoreDelete = dict["IgnoreDelete"] as! Bool
        }
        if dict.keys.contains("InPlace") && dict["InPlace"] != nil {
            self.inPlace = dict["InPlace"] as! Bool
        }
        if dict.keys.contains("KmsRotatePeriod") && dict["KmsRotatePeriod"] != nil {
            self.kmsRotatePeriod = dict["KmsRotatePeriod"] as! Int64
        }
        if dict.keys.contains("LagPeriod") && dict["LagPeriod"] != nil {
            self.lagPeriod = dict["LagPeriod"] as! Int64
        }
        if dict.keys.contains("LocalFilePath") && dict["LocalFilePath"] != nil {
            self.localFilePath = dict["LocalFilePath"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NfsV4Optimization") && dict["NfsV4Optimization"] != nil {
            self.nfsV4Optimization = dict["NfsV4Optimization"] as! Bool
        }
        if dict.keys.contains("OssBucketName") && dict["OssBucketName"] != nil {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssBucketSsl") && dict["OssBucketSsl"] != nil {
            self.ossBucketSsl = dict["OssBucketSsl"] as! Bool
        }
        if dict.keys.contains("OssEndpoint") && dict["OssEndpoint"] != nil {
            self.ossEndpoint = dict["OssEndpoint"] as! String
        }
        if dict.keys.contains("PartialSyncPaths") && dict["PartialSyncPaths"] != nil {
            self.partialSyncPaths = dict["PartialSyncPaths"] as! String
        }
        if dict.keys.contains("PathPrefix") && dict["PathPrefix"] != nil {
            self.pathPrefix = dict["PathPrefix"] as! String
        }
        if dict.keys.contains("PollingInterval") && dict["PollingInterval"] != nil {
            self.pollingInterval = dict["PollingInterval"] as! Int32
        }
        if dict.keys.contains("ReadOnlyClientList") && dict["ReadOnlyClientList"] != nil {
            self.readOnlyClientList = dict["ReadOnlyClientList"] as! String
        }
        if dict.keys.contains("ReadOnlyUserList") && dict["ReadOnlyUserList"] != nil {
            self.readOnlyUserList = dict["ReadOnlyUserList"] as! String
        }
        if dict.keys.contains("ReadWriteClientList") && dict["ReadWriteClientList"] != nil {
            self.readWriteClientList = dict["ReadWriteClientList"] as! String
        }
        if dict.keys.contains("ReadWriteUserList") && dict["ReadWriteUserList"] != nil {
            self.readWriteUserList = dict["ReadWriteUserList"] as! String
        }
        if dict.keys.contains("RemoteSync") && dict["RemoteSync"] != nil {
            self.remoteSync = dict["RemoteSync"] as! Bool
        }
        if dict.keys.contains("RemoteSyncDownload") && dict["RemoteSyncDownload"] != nil {
            self.remoteSyncDownload = dict["RemoteSyncDownload"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerSideAlgorithm") && dict["ServerSideAlgorithm"] != nil {
            self.serverSideAlgorithm = dict["ServerSideAlgorithm"] as! String
        }
        if dict.keys.contains("ServerSideCmk") && dict["ServerSideCmk"] != nil {
            self.serverSideCmk = dict["ServerSideCmk"] as! String
        }
        if dict.keys.contains("ServerSideEncryption") && dict["ServerSideEncryption"] != nil {
            self.serverSideEncryption = dict["ServerSideEncryption"] as! Bool
        }
        if dict.keys.contains("ShareProtocol") && dict["ShareProtocol"] != nil {
            self.shareProtocol = dict["ShareProtocol"] as! String
        }
        if dict.keys.contains("Squash") && dict["Squash"] != nil {
            self.squash = dict["Squash"] as! String
        }
        if dict.keys.contains("SupportArchive") && dict["SupportArchive"] != nil {
            self.supportArchive = dict["SupportArchive"] as! Bool
        }
        if dict.keys.contains("TransferAcceleration") && dict["TransferAcceleration"] != nil {
            self.transferAcceleration = dict["TransferAcceleration"] as! Bool
        }
        if dict.keys.contains("WindowsAcl") && dict["WindowsAcl"] != nil {
            self.windowsAcl = dict["WindowsAcl"] as! Bool
        }
    }
}

public class CreateGatewayFileShareResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateGatewayFileShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayFileShareResponseBody?

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
            var model = CreateGatewayFileShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayLoggingRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var securityToken: String?

    public var slsLogstore: String?

    public var slsProject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.slsLogstore != nil {
            map["SlsLogstore"] = self.slsLogstore!
        }
        if self.slsProject != nil {
            map["SlsProject"] = self.slsProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SlsLogstore") && dict["SlsLogstore"] != nil {
            self.slsLogstore = dict["SlsLogstore"] as! String
        }
        if dict.keys.contains("SlsProject") && dict["SlsProject"] != nil {
            self.slsProject = dict["SlsProject"] as! String
        }
    }
}

public class CreateGatewayLoggingResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateGatewayLoggingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayLoggingResponseBody?

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
            var model = CreateGatewayLoggingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewaySMBUserRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var password: String?

    public var securityToken: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class CreateGatewaySMBUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateGatewaySMBUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewaySMBUserResponseBody?

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
            var model = CreateGatewaySMBUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateStorageBundleRequest : Tea.TeaModel {
    public var backendBucketRegionId: String?

    public var description_: String?

    public var name: String?

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
        if self.backendBucketRegionId != nil {
            map["BackendBucketRegionId"] = self.backendBucketRegionId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendBucketRegionId") && dict["BackendBucketRegionId"] != nil {
            self.backendBucketRegionId = dict["BackendBucketRegionId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CreateStorageBundleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var storageBundleId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateStorageBundleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStorageBundleResponseBody?

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
            var model = CreateStorageBundleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCSGClientsRequest : Tea.TeaModel {
    public var clientIds: [String]?

    public var clientRegionId: String?

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
        if self.clientIds != nil {
            map["ClientIds"] = self.clientIds!
        }
        if self.clientRegionId != nil {
            map["ClientRegionId"] = self.clientRegionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIds = dict["ClientIds"] as! [String]
        }
        if dict.keys.contains("ClientRegionId") && dict["ClientRegionId"] != nil {
            self.clientRegionId = dict["ClientRegionId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteCSGClientsShrinkRequest : Tea.TeaModel {
    public var clientIdsShrink: String?

    public var clientRegionId: String?

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
        if self.clientIdsShrink != nil {
            map["ClientIds"] = self.clientIdsShrink!
        }
        if self.clientRegionId != nil {
            map["ClientRegionId"] = self.clientRegionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIdsShrink = dict["ClientIds"] as! String
        }
        if dict.keys.contains("ClientRegionId") && dict["ClientRegionId"] != nil {
            self.clientRegionId = dict["ClientRegionId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteCSGClientsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteCSGClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCSGClientsResponseBody?

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
            var model = DeleteCSGClientsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteElasticGatewayPrivateZoneRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteElasticGatewayPrivateZoneResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteElasticGatewayPrivateZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteElasticGatewayPrivateZoneResponseBody?

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
            var model = DeleteElasticGatewayPrivateZoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteExpressSyncRequest : Tea.TeaModel {
    public var expressSyncId: String?

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
        if self.expressSyncId != nil {
            map["ExpressSyncId"] = self.expressSyncId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpressSyncId") && dict["ExpressSyncId"] != nil {
            self.expressSyncId = dict["ExpressSyncId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteExpressSyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteExpressSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExpressSyncResponseBody?

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
            var model = DeleteExpressSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var reasonDetail: String?

    public var reasonType: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.reasonDetail != nil {
            map["ReasonDetail"] = self.reasonDetail!
        }
        if self.reasonType != nil {
            map["ReasonType"] = self.reasonType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("ReasonDetail") && dict["ReasonDetail"] != nil {
            self.reasonDetail = dict["ReasonDetail"] as! String
        }
        if dict.keys.contains("ReasonType") && dict["ReasonType"] != nil {
            self.reasonType = dict["ReasonType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayResponseBody?

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
            var model = DeleteGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayBlockVolumesRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var indexId: String?

    public var isSourceDeletion: Bool?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.isSourceDeletion != nil {
            map["IsSourceDeletion"] = self.isSourceDeletion!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("IsSourceDeletion") && dict["IsSourceDeletion"] != nil {
            self.isSourceDeletion = dict["IsSourceDeletion"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteGatewayBlockVolumesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteGatewayBlockVolumesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayBlockVolumesResponseBody?

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
            var model = DeleteGatewayBlockVolumesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayCacheDiskRequest : Tea.TeaModel {
    public var cacheId: String?

    public var gatewayId: String?

    public var localFilePath: String?

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
        if self.cacheId != nil {
            map["CacheId"] = self.cacheId!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.localFilePath != nil {
            map["LocalFilePath"] = self.localFilePath!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheId") && dict["CacheId"] != nil {
            self.cacheId = dict["CacheId"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("LocalFilePath") && dict["LocalFilePath"] != nil {
            self.localFilePath = dict["LocalFilePath"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteGatewayCacheDiskResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteGatewayCacheDiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayCacheDiskResponseBody?

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
            var model = DeleteGatewayCacheDiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayFileSharesRequest : Tea.TeaModel {
    public var force: Bool?

    public var gatewayId: String?

    public var indexId: String?

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
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Force") && dict["Force"] != nil {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteGatewayFileSharesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteGatewayFileSharesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayFileSharesResponseBody?

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
            var model = DeleteGatewayFileSharesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayLoggingRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteGatewayLoggingResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteGatewayLoggingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayLoggingResponseBody?

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
            var model = DeleteGatewayLoggingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewaySMBUserRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var securityToken: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class DeleteGatewaySMBUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteGatewaySMBUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewaySMBUserResponseBody?

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
            var model = DeleteGatewaySMBUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteStorageBundleRequest : Tea.TeaModel {
    public var securityToken: String?

    public var storageBundleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
    }
}

public class DeleteStorageBundleResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteStorageBundleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStorageBundleResponseBody?

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
            var model = DeleteStorageBundleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployCSGClientsRequest : Tea.TeaModel {
    public var clientRegionId: String?

    public var ecsInstanceIds: [String]?

    public var securityToken: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientRegionId != nil {
            map["ClientRegionId"] = self.clientRegionId!
        }
        if self.ecsInstanceIds != nil {
            map["EcsInstanceIds"] = self.ecsInstanceIds!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientRegionId") && dict["ClientRegionId"] != nil {
            self.clientRegionId = dict["ClientRegionId"] as! String
        }
        if dict.keys.contains("EcsInstanceIds") && dict["EcsInstanceIds"] != nil {
            self.ecsInstanceIds = dict["EcsInstanceIds"] as! [String]
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class DeployCSGClientsShrinkRequest : Tea.TeaModel {
    public var clientRegionId: String?

    public var ecsInstanceIdsShrink: String?

    public var securityToken: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientRegionId != nil {
            map["ClientRegionId"] = self.clientRegionId!
        }
        if self.ecsInstanceIdsShrink != nil {
            map["EcsInstanceIds"] = self.ecsInstanceIdsShrink!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientRegionId") && dict["ClientRegionId"] != nil {
            self.clientRegionId = dict["ClientRegionId"] as! String
        }
        if dict.keys.contains("EcsInstanceIds") && dict["EcsInstanceIds"] != nil {
            self.ecsInstanceIdsShrink = dict["EcsInstanceIds"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class DeployCSGClientsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeployCSGClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployCSGClientsResponseBody?

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
            var model = DeployCSGClientsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployCacheDiskRequest : Tea.TeaModel {
    public var cacheConfig: String?

    public var diskCategory: String?

    public var gatewayId: String?

    public var securityToken: String?

    public var sizeInGB: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cacheConfig != nil {
            map["CacheConfig"] = self.cacheConfig!
        }
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sizeInGB != nil {
            map["SizeInGB"] = self.sizeInGB!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheConfig") && dict["CacheConfig"] != nil {
            self.cacheConfig = dict["CacheConfig"] as! String
        }
        if dict.keys.contains("DiskCategory") && dict["DiskCategory"] != nil {
            self.diskCategory = dict["DiskCategory"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SizeInGB") && dict["SizeInGB"] != nil {
            self.sizeInGB = dict["SizeInGB"] as! Int32
        }
    }
}

public class DeployCacheDiskResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeployCacheDiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployCacheDiskResponseBody?

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
            var model = DeployCacheDiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployGatewayRequest : Tea.TeaModel {
    public var gatewayClass: String?

    public var gatewayId: String?

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
        if self.gatewayClass != nil {
            map["GatewayClass"] = self.gatewayClass!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayClass") && dict["GatewayClass"] != nil {
            self.gatewayClass = dict["GatewayClass"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeployGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeployGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployGatewayResponseBody?

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
            var model = DeployGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountConfigRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeAccountConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSupportClientSideEncryption: Bool?

    public var isSupportElasticGatewayBeta: Bool?

    public var isSupportGatewayLogging: Bool?

    public var isSupportServerSideEncryption: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSupportClientSideEncryption != nil {
            map["IsSupportClientSideEncryption"] = self.isSupportClientSideEncryption!
        }
        if self.isSupportElasticGatewayBeta != nil {
            map["IsSupportElasticGatewayBeta"] = self.isSupportElasticGatewayBeta!
        }
        if self.isSupportGatewayLogging != nil {
            map["IsSupportGatewayLogging"] = self.isSupportGatewayLogging!
        }
        if self.isSupportServerSideEncryption != nil {
            map["IsSupportServerSideEncryption"] = self.isSupportServerSideEncryption!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSupportClientSideEncryption") && dict["IsSupportClientSideEncryption"] != nil {
            self.isSupportClientSideEncryption = dict["IsSupportClientSideEncryption"] as! Bool
        }
        if dict.keys.contains("IsSupportElasticGatewayBeta") && dict["IsSupportElasticGatewayBeta"] != nil {
            self.isSupportElasticGatewayBeta = dict["IsSupportElasticGatewayBeta"] as! Bool
        }
        if dict.keys.contains("IsSupportGatewayLogging") && dict["IsSupportGatewayLogging"] != nil {
            self.isSupportGatewayLogging = dict["IsSupportGatewayLogging"] as! Bool
        }
        if dict.keys.contains("IsSupportServerSideEncryption") && dict["IsSupportServerSideEncryption"] != nil {
            self.isSupportServerSideEncryption = dict["IsSupportServerSideEncryption"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAccountConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountConfigResponseBody?

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
            var model = DescribeAccountConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBlockVolumeSnapshotsRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var indexId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeBlockVolumeSnapshotsResponseBody : Tea.TeaModel {
    public class Snapshots : Tea.TeaModel {
        public class Snapshot : Tea.TeaModel {
            public var createTime: Int64?

            public var size: Int64?

            public var snapshotName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.snapshotName != nil {
                    map["SnapshotName"] = self.snapshotName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Size") && dict["Size"] != nil {
                    self.size = dict["Size"] as! Int64
                }
                if dict.keys.contains("SnapshotName") && dict["SnapshotName"] != nil {
                    self.snapshotName = dict["SnapshotName"] as! String
                }
            }
        }
        public var snapshot: [DescribeBlockVolumeSnapshotsResponseBody.Snapshots.Snapshot]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.snapshot != nil {
                var tmp : [Any] = []
                for k in self.snapshot! {
                    tmp.append(k.toMap())
                }
                map["Snapshot"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Snapshot") && dict["Snapshot"] != nil {
                var tmp : [DescribeBlockVolumeSnapshotsResponseBody.Snapshots.Snapshot] = []
                for v in dict["Snapshot"] as! [Any] {
                    var model = DescribeBlockVolumeSnapshotsResponseBody.Snapshots.Snapshot()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.snapshot = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var snapshots: DescribeBlockVolumeSnapshotsResponseBody.Snapshots?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.snapshots?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshots != nil {
            map["Snapshots"] = self.snapshots?.toMap()
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Snapshots") && dict["Snapshots"] != nil {
            var model = DescribeBlockVolumeSnapshotsResponseBody.Snapshots()
            model.fromMap(dict["Snapshots"] as! [String: Any])
            self.snapshots = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeBlockVolumeSnapshotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBlockVolumeSnapshotsResponseBody?

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
            var model = DescribeBlockVolumeSnapshotsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCSGClientTasksRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientRegionId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientRegionId != nil {
            map["ClientRegionId"] = self.clientRegionId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientRegionId") && dict["ClientRegionId"] != nil {
            self.clientRegionId = dict["ClientRegionId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeCSGClientTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var createdTime: Int64?

        public var messageKey: String?

        public var messageParams: String?

        public var name: String?

        public var progress: Int32?

        public var stateCode: String?

        public var taskId: String?

        public var updatedTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.messageKey != nil {
                map["MessageKey"] = self.messageKey!
            }
            if self.messageParams != nil {
                map["MessageParams"] = self.messageParams!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.stateCode != nil {
                map["StateCode"] = self.stateCode!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                self.createdTime = dict["CreatedTime"] as! Int64
            }
            if dict.keys.contains("MessageKey") && dict["MessageKey"] != nil {
                self.messageKey = dict["MessageKey"] as! String
            }
            if dict.keys.contains("MessageParams") && dict["MessageParams"] != nil {
                self.messageParams = dict["MessageParams"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! Int32
            }
            if dict.keys.contains("StateCode") && dict["StateCode"] != nil {
                self.stateCode = dict["StateCode"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                self.updatedTime = dict["UpdatedTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var tasks: [DescribeCSGClientTasksResponseBody.Tasks]?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
            var tmp : [DescribeCSGClientTasksResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = DescribeCSGClientTasksResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCSGClientTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCSGClientTasksResponseBody?

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
            var model = DescribeCSGClientTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCSGClientsRequest : Tea.TeaModel {
    public var clientRegionId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.clientRegionId != nil {
            map["ClientRegionId"] = self.clientRegionId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientRegionId") && dict["ClientRegionId"] != nil {
            self.clientRegionId = dict["ClientRegionId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeCSGClientsResponseBody : Tea.TeaModel {
    public class Clients : Tea.TeaModel {
        public var clientDeletionCommand: String?

        public var clientId: String?

        public var clientInstallationCommand: String?

        public var clientVersion: String?

        public var ecsInstanceId: String?

        public var hostInstanceId: String?

        public var lastHeartbeatTime: Int64?

        public var status: String?

        public var vpcId: String?

        public var workDirectory: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientDeletionCommand != nil {
                map["ClientDeletionCommand"] = self.clientDeletionCommand!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.clientInstallationCommand != nil {
                map["ClientInstallationCommand"] = self.clientInstallationCommand!
            }
            if self.clientVersion != nil {
                map["ClientVersion"] = self.clientVersion!
            }
            if self.ecsInstanceId != nil {
                map["EcsInstanceId"] = self.ecsInstanceId!
            }
            if self.hostInstanceId != nil {
                map["HostInstanceId"] = self.hostInstanceId!
            }
            if self.lastHeartbeatTime != nil {
                map["LastHeartbeatTime"] = self.lastHeartbeatTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.workDirectory != nil {
                map["WorkDirectory"] = self.workDirectory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientDeletionCommand") && dict["ClientDeletionCommand"] != nil {
                self.clientDeletionCommand = dict["ClientDeletionCommand"] as! String
            }
            if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("ClientInstallationCommand") && dict["ClientInstallationCommand"] != nil {
                self.clientInstallationCommand = dict["ClientInstallationCommand"] as! String
            }
            if dict.keys.contains("ClientVersion") && dict["ClientVersion"] != nil {
                self.clientVersion = dict["ClientVersion"] as! String
            }
            if dict.keys.contains("EcsInstanceId") && dict["EcsInstanceId"] != nil {
                self.ecsInstanceId = dict["EcsInstanceId"] as! String
            }
            if dict.keys.contains("HostInstanceId") && dict["HostInstanceId"] != nil {
                self.hostInstanceId = dict["HostInstanceId"] as! String
            }
            if dict.keys.contains("LastHeartbeatTime") && dict["LastHeartbeatTime"] != nil {
                self.lastHeartbeatTime = dict["LastHeartbeatTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("WorkDirectory") && dict["WorkDirectory"] != nil {
                self.workDirectory = dict["WorkDirectory"] as! String
            }
        }
    }
    public var clients: [DescribeCSGClientsResponseBody.Clients]?

    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clients != nil {
            var tmp : [Any] = []
            for k in self.clients! {
                tmp.append(k.toMap())
            }
            map["Clients"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("Clients") && dict["Clients"] != nil {
            var tmp : [DescribeCSGClientsResponseBody.Clients] = []
            for v in dict["Clients"] as! [Any] {
                var model = DescribeCSGClientsResponseBody.Clients()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clients = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCSGClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCSGClientsResponseBody?

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
            var model = DescribeCSGClientsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDashboardRequest : Tea.TeaModel {
    public var backendBucketRegionId: String?

    public var resourceGroupId: String?

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
        if self.backendBucketRegionId != nil {
            map["BackendBucketRegionId"] = self.backendBucketRegionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendBucketRegionId") && dict["BackendBucketRegionId"] != nil {
            self.backendBucketRegionId = dict["BackendBucketRegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeDashboardResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var overview: String?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.overview != nil {
            map["Overview"] = self.overview!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Overview") && dict["Overview"] != nil {
            self.overview = dict["Overview"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeDashboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDashboardResponseBody?

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
            var model = DescribeDashboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeExpireCachesRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeExpireCachesResponseBody : Tea.TeaModel {
    public var cacheFilePaths: String?

    public var code: String?

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
        if self.cacheFilePaths != nil {
            map["CacheFilePaths"] = self.cacheFilePaths!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheFilePaths") && dict["CacheFilePaths"] != nil {
            self.cacheFilePaths = dict["CacheFilePaths"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeExpireCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExpireCachesResponseBody?

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
            var model = DescribeExpireCachesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeExpressSyncSharesRequest : Tea.TeaModel {
    public var expressSyncIds: String?

    public var isExternal: Bool?

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
        if self.expressSyncIds != nil {
            map["ExpressSyncIds"] = self.expressSyncIds!
        }
        if self.isExternal != nil {
            map["IsExternal"] = self.isExternal!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpressSyncIds") && dict["ExpressSyncIds"] != nil {
            self.expressSyncIds = dict["ExpressSyncIds"] as! String
        }
        if dict.keys.contains("IsExternal") && dict["IsExternal"] != nil {
            self.isExternal = dict["IsExternal"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeExpressSyncSharesResponseBody : Tea.TeaModel {
    public class Shares : Tea.TeaModel {
        public class Share : Tea.TeaModel {
            public var expressSyncId: String?

            public var expressSyncState: String?

            public var gatewayId: String?

            public var gatewayName: String?

            public var gatewayRegion: String?

            public var mnsQueue: String?

            public var shareName: String?

            public var storageBundleId: String?

            public var syncProgress: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expressSyncId != nil {
                    map["ExpressSyncId"] = self.expressSyncId!
                }
                if self.expressSyncState != nil {
                    map["ExpressSyncState"] = self.expressSyncState!
                }
                if self.gatewayId != nil {
                    map["GatewayId"] = self.gatewayId!
                }
                if self.gatewayName != nil {
                    map["GatewayName"] = self.gatewayName!
                }
                if self.gatewayRegion != nil {
                    map["GatewayRegion"] = self.gatewayRegion!
                }
                if self.mnsQueue != nil {
                    map["MnsQueue"] = self.mnsQueue!
                }
                if self.shareName != nil {
                    map["ShareName"] = self.shareName!
                }
                if self.storageBundleId != nil {
                    map["StorageBundleId"] = self.storageBundleId!
                }
                if self.syncProgress != nil {
                    map["SyncProgress"] = self.syncProgress!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExpressSyncId") && dict["ExpressSyncId"] != nil {
                    self.expressSyncId = dict["ExpressSyncId"] as! String
                }
                if dict.keys.contains("ExpressSyncState") && dict["ExpressSyncState"] != nil {
                    self.expressSyncState = dict["ExpressSyncState"] as! String
                }
                if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
                    self.gatewayId = dict["GatewayId"] as! String
                }
                if dict.keys.contains("GatewayName") && dict["GatewayName"] != nil {
                    self.gatewayName = dict["GatewayName"] as! String
                }
                if dict.keys.contains("GatewayRegion") && dict["GatewayRegion"] != nil {
                    self.gatewayRegion = dict["GatewayRegion"] as! String
                }
                if dict.keys.contains("MnsQueue") && dict["MnsQueue"] != nil {
                    self.mnsQueue = dict["MnsQueue"] as! String
                }
                if dict.keys.contains("ShareName") && dict["ShareName"] != nil {
                    self.shareName = dict["ShareName"] as! String
                }
                if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
                    self.storageBundleId = dict["StorageBundleId"] as! String
                }
                if dict.keys.contains("SyncProgress") && dict["SyncProgress"] != nil {
                    self.syncProgress = dict["SyncProgress"] as! Int32
                }
            }
        }
        public var share: [DescribeExpressSyncSharesResponseBody.Shares.Share]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.share != nil {
                var tmp : [Any] = []
                for k in self.share! {
                    tmp.append(k.toMap())
                }
                map["Share"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Share") && dict["Share"] != nil {
                var tmp : [DescribeExpressSyncSharesResponseBody.Shares.Share] = []
                for v in dict["Share"] as! [Any] {
                    var model = DescribeExpressSyncSharesResponseBody.Shares.Share()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.share = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var shares: DescribeExpressSyncSharesResponseBody.Shares?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.shares?.validate()
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
        if self.shares != nil {
            map["Shares"] = self.shares?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Shares") && dict["Shares"] != nil {
            var model = DescribeExpressSyncSharesResponseBody.Shares()
            model.fromMap(dict["Shares"] as! [String: Any])
            self.shares = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeExpressSyncSharesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExpressSyncSharesResponseBody?

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
            var model = DescribeExpressSyncSharesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeExpressSyncsRequest : Tea.TeaModel {
    public var bucketName: String?

    public var bucketPrefix: String?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.bucketPrefix != nil {
            map["BucketPrefix"] = self.bucketPrefix!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("BucketPrefix") && dict["BucketPrefix"] != nil {
            self.bucketPrefix = dict["BucketPrefix"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeExpressSyncsResponseBody : Tea.TeaModel {
    public class ExpressSyncs : Tea.TeaModel {
        public class ExpressSync : Tea.TeaModel {
            public var bucketName: String?

            public var bucketPrefix: String?

            public var bucketRegion: String?

            public var description_: String?

            public var expressSyncId: String?

            public var mnsTopic: String?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketName != nil {
                    map["BucketName"] = self.bucketName!
                }
                if self.bucketPrefix != nil {
                    map["BucketPrefix"] = self.bucketPrefix!
                }
                if self.bucketRegion != nil {
                    map["BucketRegion"] = self.bucketRegion!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.expressSyncId != nil {
                    map["ExpressSyncId"] = self.expressSyncId!
                }
                if self.mnsTopic != nil {
                    map["MnsTopic"] = self.mnsTopic!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
                    self.bucketName = dict["BucketName"] as! String
                }
                if dict.keys.contains("BucketPrefix") && dict["BucketPrefix"] != nil {
                    self.bucketPrefix = dict["BucketPrefix"] as! String
                }
                if dict.keys.contains("BucketRegion") && dict["BucketRegion"] != nil {
                    self.bucketRegion = dict["BucketRegion"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ExpressSyncId") && dict["ExpressSyncId"] != nil {
                    self.expressSyncId = dict["ExpressSyncId"] as! String
                }
                if dict.keys.contains("MnsTopic") && dict["MnsTopic"] != nil {
                    self.mnsTopic = dict["MnsTopic"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var expressSync: [DescribeExpressSyncsResponseBody.ExpressSyncs.ExpressSync]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expressSync != nil {
                var tmp : [Any] = []
                for k in self.expressSync! {
                    tmp.append(k.toMap())
                }
                map["ExpressSync"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpressSync") && dict["ExpressSync"] != nil {
                var tmp : [DescribeExpressSyncsResponseBody.ExpressSyncs.ExpressSync] = []
                for v in dict["ExpressSync"] as! [Any] {
                    var model = DescribeExpressSyncsResponseBody.ExpressSyncs.ExpressSync()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.expressSync = tmp
            }
        }
    }
    public var code: String?

    public var expressSyncs: DescribeExpressSyncsResponseBody.ExpressSyncs?

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
        try self.expressSyncs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.expressSyncs != nil {
            map["ExpressSyncs"] = self.expressSyncs?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ExpressSyncs") && dict["ExpressSyncs"] != nil {
            var model = DescribeExpressSyncsResponseBody.ExpressSyncs()
            model.fromMap(dict["ExpressSyncs"] as! [String: Any])
            self.expressSyncs = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeExpressSyncsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExpressSyncsResponseBody?

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
            var model = DescribeExpressSyncsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayResponseBody : Tea.TeaModel {
    public class ElasticNodes : Tea.TeaModel {
        public var elasticNode: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elasticNode != nil {
                map["ElasticNode"] = self.elasticNode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ElasticNode") && dict["ElasticNode"] != nil {
                self.elasticNode = dict["ElasticNode"] as! [String]
            }
        }
    }
    public var activatedTime: Int64?

    public var buyURL: String?

    public var capacity: Int32?

    public var category: String?

    public var code: String?

    public var commonBuyInstanceId: String?

    public var createdTime: Int64?

    public var dataLoadInterval: Int32?

    public var dataLoadType: String?

    public var description_: String?

    public var ecsInstanceId: String?

    public var elasticGateway: Bool?

    public var elasticNodes: DescribeGatewayResponseBody.ElasticNodes?

    public var expireStatus: Int32?

    public var expiredTime: Int64?

    public var gatewayClass: String?

    public var gatewayId: String?

    public var gatewayRegionId: String?

    public var gatewayType: String?

    public var gatewayVersion: String?

    public var highAvailability: Bool?

    public var innerIp: String?

    public var innerIpv6Ip: String?

    public var ip: String?

    public var isPostPaid: Bool?

    public var isReleaseAfterExpiration: Bool?

    public var lastErrorKey: String?

    public var location: String?

    public var maxThroughput: Int32?

    public var message: String?

    public var name: String?

    public var publicNetworkBandwidth: Int32?

    public var renewURL: String?

    public var requestId: String?

    public var status: String?

    public var storageBundleId: String?

    public var success: Bool?

    public var taskId: String?

    public var type: String?

    public var untrustedEnvInstanceType: String?

    public var untrustedEnvOssEndpoint: String?

    public var vSwitchId: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.elasticNodes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activatedTime != nil {
            map["ActivatedTime"] = self.activatedTime!
        }
        if self.buyURL != nil {
            map["BuyURL"] = self.buyURL!
        }
        if self.capacity != nil {
            map["Capacity"] = self.capacity!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.commonBuyInstanceId != nil {
            map["CommonBuyInstanceId"] = self.commonBuyInstanceId!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.dataLoadInterval != nil {
            map["DataLoadInterval"] = self.dataLoadInterval!
        }
        if self.dataLoadType != nil {
            map["DataLoadType"] = self.dataLoadType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ecsInstanceId != nil {
            map["EcsInstanceId"] = self.ecsInstanceId!
        }
        if self.elasticGateway != nil {
            map["ElasticGateway"] = self.elasticGateway!
        }
        if self.elasticNodes != nil {
            map["ElasticNodes"] = self.elasticNodes?.toMap()
        }
        if self.expireStatus != nil {
            map["ExpireStatus"] = self.expireStatus!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.gatewayClass != nil {
            map["GatewayClass"] = self.gatewayClass!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.gatewayRegionId != nil {
            map["GatewayRegionId"] = self.gatewayRegionId!
        }
        if self.gatewayType != nil {
            map["GatewayType"] = self.gatewayType!
        }
        if self.gatewayVersion != nil {
            map["GatewayVersion"] = self.gatewayVersion!
        }
        if self.highAvailability != nil {
            map["HighAvailability"] = self.highAvailability!
        }
        if self.innerIp != nil {
            map["InnerIp"] = self.innerIp!
        }
        if self.innerIpv6Ip != nil {
            map["InnerIpv6Ip"] = self.innerIpv6Ip!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.isPostPaid != nil {
            map["IsPostPaid"] = self.isPostPaid!
        }
        if self.isReleaseAfterExpiration != nil {
            map["IsReleaseAfterExpiration"] = self.isReleaseAfterExpiration!
        }
        if self.lastErrorKey != nil {
            map["LastErrorKey"] = self.lastErrorKey!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.maxThroughput != nil {
            map["MaxThroughput"] = self.maxThroughput!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.publicNetworkBandwidth != nil {
            map["PublicNetworkBandwidth"] = self.publicNetworkBandwidth!
        }
        if self.renewURL != nil {
            map["RenewURL"] = self.renewURL!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.untrustedEnvInstanceType != nil {
            map["UntrustedEnvInstanceType"] = self.untrustedEnvInstanceType!
        }
        if self.untrustedEnvOssEndpoint != nil {
            map["UntrustedEnvOssEndpoint"] = self.untrustedEnvOssEndpoint!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivatedTime") && dict["ActivatedTime"] != nil {
            self.activatedTime = dict["ActivatedTime"] as! Int64
        }
        if dict.keys.contains("BuyURL") && dict["BuyURL"] != nil {
            self.buyURL = dict["BuyURL"] as! String
        }
        if dict.keys.contains("Capacity") && dict["Capacity"] != nil {
            self.capacity = dict["Capacity"] as! Int32
        }
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CommonBuyInstanceId") && dict["CommonBuyInstanceId"] != nil {
            self.commonBuyInstanceId = dict["CommonBuyInstanceId"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! Int64
        }
        if dict.keys.contains("DataLoadInterval") && dict["DataLoadInterval"] != nil {
            self.dataLoadInterval = dict["DataLoadInterval"] as! Int32
        }
        if dict.keys.contains("DataLoadType") && dict["DataLoadType"] != nil {
            self.dataLoadType = dict["DataLoadType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EcsInstanceId") && dict["EcsInstanceId"] != nil {
            self.ecsInstanceId = dict["EcsInstanceId"] as! String
        }
        if dict.keys.contains("ElasticGateway") && dict["ElasticGateway"] != nil {
            self.elasticGateway = dict["ElasticGateway"] as! Bool
        }
        if dict.keys.contains("ElasticNodes") && dict["ElasticNodes"] != nil {
            var model = DescribeGatewayResponseBody.ElasticNodes()
            model.fromMap(dict["ElasticNodes"] as! [String: Any])
            self.elasticNodes = model
        }
        if dict.keys.contains("ExpireStatus") && dict["ExpireStatus"] != nil {
            self.expireStatus = dict["ExpireStatus"] as! Int32
        }
        if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
            self.expiredTime = dict["ExpiredTime"] as! Int64
        }
        if dict.keys.contains("GatewayClass") && dict["GatewayClass"] != nil {
            self.gatewayClass = dict["GatewayClass"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("GatewayRegionId") && dict["GatewayRegionId"] != nil {
            self.gatewayRegionId = dict["GatewayRegionId"] as! String
        }
        if dict.keys.contains("GatewayType") && dict["GatewayType"] != nil {
            self.gatewayType = dict["GatewayType"] as! String
        }
        if dict.keys.contains("GatewayVersion") && dict["GatewayVersion"] != nil {
            self.gatewayVersion = dict["GatewayVersion"] as! String
        }
        if dict.keys.contains("HighAvailability") && dict["HighAvailability"] != nil {
            self.highAvailability = dict["HighAvailability"] as! Bool
        }
        if dict.keys.contains("InnerIp") && dict["InnerIp"] != nil {
            self.innerIp = dict["InnerIp"] as! String
        }
        if dict.keys.contains("InnerIpv6Ip") && dict["InnerIpv6Ip"] != nil {
            self.innerIpv6Ip = dict["InnerIpv6Ip"] as! String
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("IsPostPaid") && dict["IsPostPaid"] != nil {
            self.isPostPaid = dict["IsPostPaid"] as! Bool
        }
        if dict.keys.contains("IsReleaseAfterExpiration") && dict["IsReleaseAfterExpiration"] != nil {
            self.isReleaseAfterExpiration = dict["IsReleaseAfterExpiration"] as! Bool
        }
        if dict.keys.contains("LastErrorKey") && dict["LastErrorKey"] != nil {
            self.lastErrorKey = dict["LastErrorKey"] as! String
        }
        if dict.keys.contains("Location") && dict["Location"] != nil {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("MaxThroughput") && dict["MaxThroughput"] != nil {
            self.maxThroughput = dict["MaxThroughput"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PublicNetworkBandwidth") && dict["PublicNetworkBandwidth"] != nil {
            self.publicNetworkBandwidth = dict["PublicNetworkBandwidth"] as! Int32
        }
        if dict.keys.contains("RenewURL") && dict["RenewURL"] != nil {
            self.renewURL = dict["RenewURL"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UntrustedEnvInstanceType") && dict["UntrustedEnvInstanceType"] != nil {
            self.untrustedEnvInstanceType = dict["UntrustedEnvInstanceType"] as! String
        }
        if dict.keys.contains("UntrustedEnvOssEndpoint") && dict["UntrustedEnvOssEndpoint"] != nil {
            self.untrustedEnvOssEndpoint = dict["UntrustedEnvOssEndpoint"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class DescribeGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayResponseBody?

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
            var model = DescribeGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayADInfoRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayADInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var domainName: String?

    public var isEnabled: Bool?

    public var message: String?

    public var requestId: String?

    public var serverIp: String?

    public var success: Bool?

    public var username: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverIp != nil {
            map["ServerIp"] = self.serverIp!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("IsEnabled") && dict["IsEnabled"] != nil {
            self.isEnabled = dict["IsEnabled"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
            self.serverIp = dict["ServerIp"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class DescribeGatewayADInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayADInfoResponseBody?

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
            var model = DescribeGatewayADInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayActionsRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayActionsResponseBody : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public class Action : Tea.TeaModel {
            public var adLdap: String?

            public var cache: String?

            public var disk: String?

            public var gatewayId: String?

            public var monitor: String?

            public var self_: String?

            public var smbUser: String?

            public var target: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adLdap != nil {
                    map["AdLdap"] = self.adLdap!
                }
                if self.cache != nil {
                    map["Cache"] = self.cache!
                }
                if self.disk != nil {
                    map["Disk"] = self.disk!
                }
                if self.gatewayId != nil {
                    map["GatewayId"] = self.gatewayId!
                }
                if self.monitor != nil {
                    map["Monitor"] = self.monitor!
                }
                if self.self_ != nil {
                    map["Self"] = self.self_!
                }
                if self.smbUser != nil {
                    map["SmbUser"] = self.smbUser!
                }
                if self.target != nil {
                    map["Target"] = self.target!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdLdap") && dict["AdLdap"] != nil {
                    self.adLdap = dict["AdLdap"] as! String
                }
                if dict.keys.contains("Cache") && dict["Cache"] != nil {
                    self.cache = dict["Cache"] as! String
                }
                if dict.keys.contains("Disk") && dict["Disk"] != nil {
                    self.disk = dict["Disk"] as! String
                }
                if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
                    self.gatewayId = dict["GatewayId"] as! String
                }
                if dict.keys.contains("Monitor") && dict["Monitor"] != nil {
                    self.monitor = dict["Monitor"] as! String
                }
                if dict.keys.contains("Self") && dict["Self"] != nil {
                    self.self_ = dict["Self"] as! String
                }
                if dict.keys.contains("SmbUser") && dict["SmbUser"] != nil {
                    self.smbUser = dict["SmbUser"] as! String
                }
                if dict.keys.contains("Target") && dict["Target"] != nil {
                    self.target = dict["Target"] as! String
                }
            }
        }
        public var action: [DescribeGatewayActionsResponseBody.Actions.Action]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.action != nil {
                var tmp : [Any] = []
                for k in self.action! {
                    tmp.append(k.toMap())
                }
                map["Action"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") && dict["Action"] != nil {
                var tmp : [DescribeGatewayActionsResponseBody.Actions.Action] = []
                for v in dict["Action"] as! [Any] {
                    var model = DescribeGatewayActionsResponseBody.Actions.Action()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.action = tmp
            }
        }
    }
    public var actions: DescribeGatewayActionsResponseBody.Actions?

    public var code: String?

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
        try self.actions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            map["Actions"] = self.actions?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Actions") && dict["Actions"] != nil {
            var model = DescribeGatewayActionsResponseBody.Actions()
            model.fromMap(dict["Actions"] as! [String: Any])
            self.actions = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayActionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayActionsResponseBody?

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
            var model = DescribeGatewayActionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayAuthInfoRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayAuthInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var password: String?

    public var publicIp: String?

    public var requestId: String?

    public var success: Bool?

    public var username: String?

    public override init() {
        super.init()
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
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.publicIp != nil {
            map["PublicIp"] = self.publicIp!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PublicIp") && dict["PublicIp"] != nil {
            self.publicIp = dict["PublicIp"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class DescribeGatewayAuthInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayAuthInfoResponseBody?

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
            var model = DescribeGatewayAuthInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayAutoPlansRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayAutoPlansResponseBody : Tea.TeaModel {
    public class AutoPlans : Tea.TeaModel {
        public var detail: String?

        public var endTime: Int64?

        public var event: String?

        public var planId: String?

        public var startTime: Int64?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Event") && dict["Event"] != nil {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                self.planId = dict["PlanId"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var autoPlans: [DescribeGatewayAutoPlansResponseBody.AutoPlans]?

    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPlans != nil {
            var tmp : [Any] = []
            for k in self.autoPlans! {
                tmp.append(k.toMap())
            }
            map["AutoPlans"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("AutoPlans") && dict["AutoPlans"] != nil {
            var tmp : [DescribeGatewayAutoPlansResponseBody.AutoPlans] = []
            for v in dict["AutoPlans"] as! [Any] {
                var model = DescribeGatewayAutoPlansResponseBody.AutoPlans()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.autoPlans = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeGatewayAutoPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayAutoPlansResponseBody?

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
            var model = DescribeGatewayAutoPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayAutoUpgradeConfigurationRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayAutoUpgradeConfigurationResponseBody : Tea.TeaModel {
    public var autoUpgradeEndHour: Int32?

    public var autoUpgradeStartHour: Int32?

    public var code: String?

    public var isAutoUpgrade: Bool?

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
        if self.autoUpgradeEndHour != nil {
            map["AutoUpgradeEndHour"] = self.autoUpgradeEndHour!
        }
        if self.autoUpgradeStartHour != nil {
            map["AutoUpgradeStartHour"] = self.autoUpgradeStartHour!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isAutoUpgrade != nil {
            map["IsAutoUpgrade"] = self.isAutoUpgrade!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoUpgradeEndHour") && dict["AutoUpgradeEndHour"] != nil {
            self.autoUpgradeEndHour = dict["AutoUpgradeEndHour"] as! Int32
        }
        if dict.keys.contains("AutoUpgradeStartHour") && dict["AutoUpgradeStartHour"] != nil {
            self.autoUpgradeStartHour = dict["AutoUpgradeStartHour"] as! Int32
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsAutoUpgrade") && dict["IsAutoUpgrade"] != nil {
            self.isAutoUpgrade = dict["IsAutoUpgrade"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayAutoUpgradeConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayAutoUpgradeConfigurationResponseBody?

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
            var model = DescribeGatewayAutoUpgradeConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayBlockVolumesRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var indexId: String?

    public var refresh: Bool?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.refresh != nil {
            map["Refresh"] = self.refresh!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("Refresh") && dict["Refresh"] != nil {
            self.refresh = dict["Refresh"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayBlockVolumesResponseBody : Tea.TeaModel {
    public class BlockVolumes : Tea.TeaModel {
        public class BlockVolume : Tea.TeaModel {
            public var address: String?

            public var cacheMode: String?

            public var chapEnabled: Bool?

            public var chapInUser: String?

            public var chunkSize: Int32?

            public var diskId: String?

            public var diskType: String?

            public var enabled: Bool?

            public var indexId: String?

            public var localPath: String?

            public var lunId: Int32?

            public var name: String?

            public var ossBucketName: String?

            public var ossBucketSsl: Bool?

            public var ossEndpoint: String?

            public var port: Int32?

            public var protocol_: String?

            public var size: Int64?

            public var state: String?

            public var status: Int32?

            public var target: String?

            public var totalDownload: Int64?

            public var totalUpload: Int64?

            public var volumeState: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.cacheMode != nil {
                    map["CacheMode"] = self.cacheMode!
                }
                if self.chapEnabled != nil {
                    map["ChapEnabled"] = self.chapEnabled!
                }
                if self.chapInUser != nil {
                    map["ChapInUser"] = self.chapInUser!
                }
                if self.chunkSize != nil {
                    map["ChunkSize"] = self.chunkSize!
                }
                if self.diskId != nil {
                    map["DiskId"] = self.diskId!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.indexId != nil {
                    map["IndexId"] = self.indexId!
                }
                if self.localPath != nil {
                    map["LocalPath"] = self.localPath!
                }
                if self.lunId != nil {
                    map["LunId"] = self.lunId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ossBucketName != nil {
                    map["OssBucketName"] = self.ossBucketName!
                }
                if self.ossBucketSsl != nil {
                    map["OssBucketSsl"] = self.ossBucketSsl!
                }
                if self.ossEndpoint != nil {
                    map["OssEndpoint"] = self.ossEndpoint!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.target != nil {
                    map["Target"] = self.target!
                }
                if self.totalDownload != nil {
                    map["TotalDownload"] = self.totalDownload!
                }
                if self.totalUpload != nil {
                    map["TotalUpload"] = self.totalUpload!
                }
                if self.volumeState != nil {
                    map["VolumeState"] = self.volumeState!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") && dict["Address"] != nil {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("CacheMode") && dict["CacheMode"] != nil {
                    self.cacheMode = dict["CacheMode"] as! String
                }
                if dict.keys.contains("ChapEnabled") && dict["ChapEnabled"] != nil {
                    self.chapEnabled = dict["ChapEnabled"] as! Bool
                }
                if dict.keys.contains("ChapInUser") && dict["ChapInUser"] != nil {
                    self.chapInUser = dict["ChapInUser"] as! String
                }
                if dict.keys.contains("ChunkSize") && dict["ChunkSize"] != nil {
                    self.chunkSize = dict["ChunkSize"] as! Int32
                }
                if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
                    self.diskId = dict["DiskId"] as! String
                }
                if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
                    self.diskType = dict["DiskType"] as! String
                }
                if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
                    self.indexId = dict["IndexId"] as! String
                }
                if dict.keys.contains("LocalPath") && dict["LocalPath"] != nil {
                    self.localPath = dict["LocalPath"] as! String
                }
                if dict.keys.contains("LunId") && dict["LunId"] != nil {
                    self.lunId = dict["LunId"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OssBucketName") && dict["OssBucketName"] != nil {
                    self.ossBucketName = dict["OssBucketName"] as! String
                }
                if dict.keys.contains("OssBucketSsl") && dict["OssBucketSsl"] != nil {
                    self.ossBucketSsl = dict["OssBucketSsl"] as! Bool
                }
                if dict.keys.contains("OssEndpoint") && dict["OssEndpoint"] != nil {
                    self.ossEndpoint = dict["OssEndpoint"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("Size") && dict["Size"] != nil {
                    self.size = dict["Size"] as! Int64
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Target") && dict["Target"] != nil {
                    self.target = dict["Target"] as! String
                }
                if dict.keys.contains("TotalDownload") && dict["TotalDownload"] != nil {
                    self.totalDownload = dict["TotalDownload"] as! Int64
                }
                if dict.keys.contains("TotalUpload") && dict["TotalUpload"] != nil {
                    self.totalUpload = dict["TotalUpload"] as! Int64
                }
                if dict.keys.contains("VolumeState") && dict["VolumeState"] != nil {
                    self.volumeState = dict["VolumeState"] as! Int32
                }
            }
        }
        public var blockVolume: [DescribeGatewayBlockVolumesResponseBody.BlockVolumes.BlockVolume]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockVolume != nil {
                var tmp : [Any] = []
                for k in self.blockVolume! {
                    tmp.append(k.toMap())
                }
                map["BlockVolume"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlockVolume") && dict["BlockVolume"] != nil {
                var tmp : [DescribeGatewayBlockVolumesResponseBody.BlockVolumes.BlockVolume] = []
                for v in dict["BlockVolume"] as! [Any] {
                    var model = DescribeGatewayBlockVolumesResponseBody.BlockVolumes.BlockVolume()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.blockVolume = tmp
            }
        }
    }
    public var blockVolumes: DescribeGatewayBlockVolumesResponseBody.BlockVolumes?

    public var code: String?

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
        try self.blockVolumes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blockVolumes != nil {
            map["BlockVolumes"] = self.blockVolumes?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlockVolumes") && dict["BlockVolumes"] != nil {
            var model = DescribeGatewayBlockVolumesResponseBody.BlockVolumes()
            model.fromMap(dict["BlockVolumes"] as! [String: Any])
            self.blockVolumes = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayBlockVolumesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayBlockVolumesResponseBody?

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
            var model = DescribeGatewayBlockVolumesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayBucketCachesRequest : Tea.TeaModel {
    public var bucketName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayBucketCachesResponseBody : Tea.TeaModel {
    public class BucketCaches : Tea.TeaModel {
        public class BucketCache : Tea.TeaModel {
            public var bucketName: String?

            public var cacheMode: String?

            public var cacheStats: String?

            public var category: String?

            public var gatewayId: String?

            public var gatewayName: String?

            public var location: String?

            public var mountPoint: String?

            public var protocol_: String?

            public var regionId: String?

            public var shareName: String?

            public var type: String?

            public var vpcCidr: String?

            public var vpcId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketName != nil {
                    map["BucketName"] = self.bucketName!
                }
                if self.cacheMode != nil {
                    map["CacheMode"] = self.cacheMode!
                }
                if self.cacheStats != nil {
                    map["CacheStats"] = self.cacheStats!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.gatewayId != nil {
                    map["GatewayId"] = self.gatewayId!
                }
                if self.gatewayName != nil {
                    map["GatewayName"] = self.gatewayName!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.mountPoint != nil {
                    map["MountPoint"] = self.mountPoint!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.shareName != nil {
                    map["ShareName"] = self.shareName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.vpcCidr != nil {
                    map["VpcCidr"] = self.vpcCidr!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
                    self.bucketName = dict["BucketName"] as! String
                }
                if dict.keys.contains("CacheMode") && dict["CacheMode"] != nil {
                    self.cacheMode = dict["CacheMode"] as! String
                }
                if dict.keys.contains("CacheStats") && dict["CacheStats"] != nil {
                    self.cacheStats = dict["CacheStats"] as! String
                }
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
                    self.gatewayId = dict["GatewayId"] as! String
                }
                if dict.keys.contains("GatewayName") && dict["GatewayName"] != nil {
                    self.gatewayName = dict["GatewayName"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("MountPoint") && dict["MountPoint"] != nil {
                    self.mountPoint = dict["MountPoint"] as! String
                }
                if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ShareName") && dict["ShareName"] != nil {
                    self.shareName = dict["ShareName"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("VpcCidr") && dict["VpcCidr"] != nil {
                    self.vpcCidr = dict["VpcCidr"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var bucketCache: [DescribeGatewayBucketCachesResponseBody.BucketCaches.BucketCache]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketCache != nil {
                var tmp : [Any] = []
                for k in self.bucketCache! {
                    tmp.append(k.toMap())
                }
                map["BucketCache"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketCache") && dict["BucketCache"] != nil {
                var tmp : [DescribeGatewayBucketCachesResponseBody.BucketCaches.BucketCache] = []
                for v in dict["BucketCache"] as! [Any] {
                    var model = DescribeGatewayBucketCachesResponseBody.BucketCaches.BucketCache()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.bucketCache = tmp
            }
        }
    }
    public var bucketCaches: DescribeGatewayBucketCachesResponseBody.BucketCaches?

    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bucketCaches?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketCaches != nil {
            map["BucketCaches"] = self.bucketCaches?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("BucketCaches") && dict["BucketCaches"] != nil {
            var model = DescribeGatewayBucketCachesResponseBody.BucketCaches()
            model.fromMap(dict["BucketCaches"] as! [String: Any])
            self.bucketCaches = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeGatewayBucketCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayBucketCachesResponseBody?

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
            var model = DescribeGatewayBucketCachesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayCachesRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayCachesResponseBody : Tea.TeaModel {
    public class Caches : Tea.TeaModel {
        public class Cache : Tea.TeaModel {
            public var buyURL: String?

            public var cacheId: String?

            public var cacheType: String?

            public var expireStatus: Int32?

            public var expiredTime: Int64?

            public var iops: Int64?

            public var isDirectExpand: String?

            public var isNoPartition: Bool?

            public var isUsed: Bool?

            public var localFilePath: String?

            public var performanceLevel: String?

            public var renewURL: String?

            public var sizeInGB: Int64?

            public var subscriptionInstanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buyURL != nil {
                    map["BuyURL"] = self.buyURL!
                }
                if self.cacheId != nil {
                    map["CacheId"] = self.cacheId!
                }
                if self.cacheType != nil {
                    map["CacheType"] = self.cacheType!
                }
                if self.expireStatus != nil {
                    map["ExpireStatus"] = self.expireStatus!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.iops != nil {
                    map["Iops"] = self.iops!
                }
                if self.isDirectExpand != nil {
                    map["IsDirectExpand"] = self.isDirectExpand!
                }
                if self.isNoPartition != nil {
                    map["IsNoPartition"] = self.isNoPartition!
                }
                if self.isUsed != nil {
                    map["IsUsed"] = self.isUsed!
                }
                if self.localFilePath != nil {
                    map["LocalFilePath"] = self.localFilePath!
                }
                if self.performanceLevel != nil {
                    map["PerformanceLevel"] = self.performanceLevel!
                }
                if self.renewURL != nil {
                    map["RenewURL"] = self.renewURL!
                }
                if self.sizeInGB != nil {
                    map["SizeInGB"] = self.sizeInGB!
                }
                if self.subscriptionInstanceId != nil {
                    map["SubscriptionInstanceId"] = self.subscriptionInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuyURL") && dict["BuyURL"] != nil {
                    self.buyURL = dict["BuyURL"] as! String
                }
                if dict.keys.contains("CacheId") && dict["CacheId"] != nil {
                    self.cacheId = dict["CacheId"] as! String
                }
                if dict.keys.contains("CacheType") && dict["CacheType"] != nil {
                    self.cacheType = dict["CacheType"] as! String
                }
                if dict.keys.contains("ExpireStatus") && dict["ExpireStatus"] != nil {
                    self.expireStatus = dict["ExpireStatus"] as! Int32
                }
                if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                    self.expiredTime = dict["ExpiredTime"] as! Int64
                }
                if dict.keys.contains("Iops") && dict["Iops"] != nil {
                    self.iops = dict["Iops"] as! Int64
                }
                if dict.keys.contains("IsDirectExpand") && dict["IsDirectExpand"] != nil {
                    self.isDirectExpand = dict["IsDirectExpand"] as! String
                }
                if dict.keys.contains("IsNoPartition") && dict["IsNoPartition"] != nil {
                    self.isNoPartition = dict["IsNoPartition"] as! Bool
                }
                if dict.keys.contains("IsUsed") && dict["IsUsed"] != nil {
                    self.isUsed = dict["IsUsed"] as! Bool
                }
                if dict.keys.contains("LocalFilePath") && dict["LocalFilePath"] != nil {
                    self.localFilePath = dict["LocalFilePath"] as! String
                }
                if dict.keys.contains("PerformanceLevel") && dict["PerformanceLevel"] != nil {
                    self.performanceLevel = dict["PerformanceLevel"] as! String
                }
                if dict.keys.contains("RenewURL") && dict["RenewURL"] != nil {
                    self.renewURL = dict["RenewURL"] as! String
                }
                if dict.keys.contains("SizeInGB") && dict["SizeInGB"] != nil {
                    self.sizeInGB = dict["SizeInGB"] as! Int64
                }
                if dict.keys.contains("SubscriptionInstanceId") && dict["SubscriptionInstanceId"] != nil {
                    self.subscriptionInstanceId = dict["SubscriptionInstanceId"] as! String
                }
            }
        }
        public var cache: [DescribeGatewayCachesResponseBody.Caches.Cache]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cache != nil {
                var tmp : [Any] = []
                for k in self.cache! {
                    tmp.append(k.toMap())
                }
                map["Cache"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cache") && dict["Cache"] != nil {
                var tmp : [DescribeGatewayCachesResponseBody.Caches.Cache] = []
                for v in dict["Cache"] as! [Any] {
                    var model = DescribeGatewayCachesResponseBody.Caches.Cache()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cache = tmp
            }
        }
    }
    public var caches: DescribeGatewayCachesResponseBody.Caches?

    public var code: String?

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
        try self.caches?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caches != nil {
            map["Caches"] = self.caches?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caches") && dict["Caches"] != nil {
            var model = DescribeGatewayCachesResponseBody.Caches()
            model.fromMap(dict["Caches"] as! [String: Any])
            self.caches = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayCachesResponseBody?

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
            var model = DescribeGatewayCachesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayCapacityLimitRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var securityToken: String?

    public var sizeInGB: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sizeInGB != nil {
            map["SizeInGB"] = self.sizeInGB!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SizeInGB") && dict["SizeInGB"] != nil {
            self.sizeInGB = dict["SizeInGB"] as! Int64
        }
    }
}

public class DescribeGatewayCapacityLimitResponseBody : Tea.TeaModel {
    public var code: String?

    public var fileNumber: Int64?

    public var fileSystemSizeInTB: Int64?

    public var isMetadataSeparate: Bool?

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
            map["Code"] = self.code!
        }
        if self.fileNumber != nil {
            map["FileNumber"] = self.fileNumber!
        }
        if self.fileSystemSizeInTB != nil {
            map["FileSystemSizeInTB"] = self.fileSystemSizeInTB!
        }
        if self.isMetadataSeparate != nil {
            map["IsMetadataSeparate"] = self.isMetadataSeparate!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FileNumber") && dict["FileNumber"] != nil {
            self.fileNumber = dict["FileNumber"] as! Int64
        }
        if dict.keys.contains("FileSystemSizeInTB") && dict["FileSystemSizeInTB"] != nil {
            self.fileSystemSizeInTB = dict["FileSystemSizeInTB"] as! Int64
        }
        if dict.keys.contains("IsMetadataSeparate") && dict["IsMetadataSeparate"] != nil {
            self.isMetadataSeparate = dict["IsMetadataSeparate"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayCapacityLimitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayCapacityLimitResponseBody?

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
            var model = DescribeGatewayCapacityLimitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayCategoriesRequest : Tea.TeaModel {
    public var gatewayLocation: String?

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
        if self.gatewayLocation != nil {
            map["GatewayLocation"] = self.gatewayLocation!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayLocation") && dict["GatewayLocation"] != nil {
            self.gatewayLocation = dict["GatewayLocation"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayCategoriesResponseBody : Tea.TeaModel {
    public var categories: String?

    public var code: String?

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
        if self.categories != nil {
            map["Categories"] = self.categories!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Categories") && dict["Categories"] != nil {
            self.categories = dict["Categories"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayCategoriesResponseBody?

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
            var model = DescribeGatewayCategoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayClassesRequest : Tea.TeaModel {
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayClassesResponseBody : Tea.TeaModel {
    public var classes: String?

    public var code: String?

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
        if self.classes != nil {
            map["Classes"] = self.classes!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Classes") && dict["Classes"] != nil {
            self.classes = dict["Classes"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayClassesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayClassesResponseBody?

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
            var model = DescribeGatewayClassesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayCredentialRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayCredentialResponseBody : Tea.TeaModel {
    public var code: String?

    public var consolePassword: String?

    public var consoleUsername: String?

    public var ecsIp: String?

    public var ecsPassword: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var vSwitchId: String?

    public var vpcId: String?

    public override init() {
        super.init()
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
        if self.consolePassword != nil {
            map["ConsolePassword"] = self.consolePassword!
        }
        if self.consoleUsername != nil {
            map["ConsoleUsername"] = self.consoleUsername!
        }
        if self.ecsIp != nil {
            map["EcsIp"] = self.ecsIp!
        }
        if self.ecsPassword != nil {
            map["EcsPassword"] = self.ecsPassword!
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
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConsolePassword") && dict["ConsolePassword"] != nil {
            self.consolePassword = dict["ConsolePassword"] as! String
        }
        if dict.keys.contains("ConsoleUsername") && dict["ConsoleUsername"] != nil {
            self.consoleUsername = dict["ConsoleUsername"] as! String
        }
        if dict.keys.contains("EcsIp") && dict["EcsIp"] != nil {
            self.ecsIp = dict["EcsIp"] as! String
        }
        if dict.keys.contains("EcsPassword") && dict["EcsPassword"] != nil {
            self.ecsPassword = dict["EcsPassword"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class DescribeGatewayCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayCredentialResponseBody?

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
            var model = DescribeGatewayCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayDNSRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayDNSResponseBody : Tea.TeaModel {
    public var code: String?

    public var dnsServer: String?

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
            map["Code"] = self.code!
        }
        if self.dnsServer != nil {
            map["DnsServer"] = self.dnsServer!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DnsServer") && dict["DnsServer"] != nil {
            self.dnsServer = dict["DnsServer"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayDNSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayDNSResponseBody?

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
            var model = DescribeGatewayDNSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayFileSharesRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var indexId: String?

    public var refresh: Bool?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.refresh != nil {
            map["Refresh"] = self.refresh!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("Refresh") && dict["Refresh"] != nil {
            self.refresh = dict["Refresh"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayFileSharesResponseBody : Tea.TeaModel {
    public class FileShares : Tea.TeaModel {
        public class FileShare : Tea.TeaModel {
            public var accessBasedEnumeration: Bool?

            public var activeMessages: Int64?

            public var address: String?

            public var beLimit: Int32?

            public var browsable: Bool?

            public var bucketInfos: String?

            public var bucketsStub: Bool?

            public var bypassCacheRead: Bool?

            public var cacheMode: String?

            public var clientSideCmk: String?

            public var clientSideEncryption: Bool?

            public var directIO: Bool?

            public var diskId: String?

            public var diskType: String?

            public var downloadLimit: Int32?

            public var downloadQueue: Int64?

            public var downloadRate: Int64?

            public var enabled: Bool?

            public var expressSyncId: String?

            public var fastReclaim: Bool?

            public var feLimit: Int32?

            public var fileNumLimit: Int64?

            public var fsSizeLimit: Int64?

            public var highWatermark: Int32?

            public var ignoreDelete: Bool?

            public var inPlace: Bool?

            public var inRate: Int64?

            public var indexId: String?

            public var kmsRotatePeriod: String?

            public var lagPeriod: Int64?

            public var localPath: String?

            public var lowWatermark: Int32?

            public var mnsHealth: String?

            public var name: String?

            public var nfsV4Optimization: Bool?

            public var noPartition: Bool?

            public var obsoleteBuckets: String?

            public var ossBucketName: String?

            public var ossBucketSsl: Bool?

            public var ossEndpoint: String?

            public var ossHealth: String?

            public var ossUsed: Int64?

            public var outRate: Int64?

            public var partialSyncPaths: String?

            public var pathPrefix: String?

            public var pollingInterval: Int32?

            public var protocol_: String?

            public var remainingMetaSpace: Int64?

            public var remoteSync: Bool?

            public var remoteSyncDownload: Bool?

            public var roClientList: String?

            public var roUserList: String?

            public var rwClientList: String?

            public var rwUserList: String?

            public var serverSideAlgorithm: String?

            public var serverSideCmk: String?

            public var serverSideEncryption: Bool?

            public var size: Int64?

            public var squash: String?

            public var state: String?

            public var status: String?

            public var supportArchive: Bool?

            public var syncProgress: Int32?

            public var throttling: Bool?

            public var totalDownload: Int64?

            public var totalUpload: Int64?

            public var transferAcceleration: Bool?

            public var uploadQueue: Int64?

            public var used: Int64?

            public var windowsAcl: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessBasedEnumeration != nil {
                    map["AccessBasedEnumeration"] = self.accessBasedEnumeration!
                }
                if self.activeMessages != nil {
                    map["ActiveMessages"] = self.activeMessages!
                }
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.beLimit != nil {
                    map["BeLimit"] = self.beLimit!
                }
                if self.browsable != nil {
                    map["Browsable"] = self.browsable!
                }
                if self.bucketInfos != nil {
                    map["BucketInfos"] = self.bucketInfos!
                }
                if self.bucketsStub != nil {
                    map["BucketsStub"] = self.bucketsStub!
                }
                if self.bypassCacheRead != nil {
                    map["BypassCacheRead"] = self.bypassCacheRead!
                }
                if self.cacheMode != nil {
                    map["CacheMode"] = self.cacheMode!
                }
                if self.clientSideCmk != nil {
                    map["ClientSideCmk"] = self.clientSideCmk!
                }
                if self.clientSideEncryption != nil {
                    map["ClientSideEncryption"] = self.clientSideEncryption!
                }
                if self.directIO != nil {
                    map["DirectIO"] = self.directIO!
                }
                if self.diskId != nil {
                    map["DiskId"] = self.diskId!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.downloadLimit != nil {
                    map["DownloadLimit"] = self.downloadLimit!
                }
                if self.downloadQueue != nil {
                    map["DownloadQueue"] = self.downloadQueue!
                }
                if self.downloadRate != nil {
                    map["DownloadRate"] = self.downloadRate!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.expressSyncId != nil {
                    map["ExpressSyncId"] = self.expressSyncId!
                }
                if self.fastReclaim != nil {
                    map["FastReclaim"] = self.fastReclaim!
                }
                if self.feLimit != nil {
                    map["FeLimit"] = self.feLimit!
                }
                if self.fileNumLimit != nil {
                    map["FileNumLimit"] = self.fileNumLimit!
                }
                if self.fsSizeLimit != nil {
                    map["FsSizeLimit"] = self.fsSizeLimit!
                }
                if self.highWatermark != nil {
                    map["HighWatermark"] = self.highWatermark!
                }
                if self.ignoreDelete != nil {
                    map["IgnoreDelete"] = self.ignoreDelete!
                }
                if self.inPlace != nil {
                    map["InPlace"] = self.inPlace!
                }
                if self.inRate != nil {
                    map["InRate"] = self.inRate!
                }
                if self.indexId != nil {
                    map["IndexId"] = self.indexId!
                }
                if self.kmsRotatePeriod != nil {
                    map["KmsRotatePeriod"] = self.kmsRotatePeriod!
                }
                if self.lagPeriod != nil {
                    map["LagPeriod"] = self.lagPeriod!
                }
                if self.localPath != nil {
                    map["LocalPath"] = self.localPath!
                }
                if self.lowWatermark != nil {
                    map["LowWatermark"] = self.lowWatermark!
                }
                if self.mnsHealth != nil {
                    map["MnsHealth"] = self.mnsHealth!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nfsV4Optimization != nil {
                    map["NfsV4Optimization"] = self.nfsV4Optimization!
                }
                if self.noPartition != nil {
                    map["NoPartition"] = self.noPartition!
                }
                if self.obsoleteBuckets != nil {
                    map["ObsoleteBuckets"] = self.obsoleteBuckets!
                }
                if self.ossBucketName != nil {
                    map["OssBucketName"] = self.ossBucketName!
                }
                if self.ossBucketSsl != nil {
                    map["OssBucketSsl"] = self.ossBucketSsl!
                }
                if self.ossEndpoint != nil {
                    map["OssEndpoint"] = self.ossEndpoint!
                }
                if self.ossHealth != nil {
                    map["OssHealth"] = self.ossHealth!
                }
                if self.ossUsed != nil {
                    map["OssUsed"] = self.ossUsed!
                }
                if self.outRate != nil {
                    map["OutRate"] = self.outRate!
                }
                if self.partialSyncPaths != nil {
                    map["PartialSyncPaths"] = self.partialSyncPaths!
                }
                if self.pathPrefix != nil {
                    map["PathPrefix"] = self.pathPrefix!
                }
                if self.pollingInterval != nil {
                    map["PollingInterval"] = self.pollingInterval!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.remainingMetaSpace != nil {
                    map["RemainingMetaSpace"] = self.remainingMetaSpace!
                }
                if self.remoteSync != nil {
                    map["RemoteSync"] = self.remoteSync!
                }
                if self.remoteSyncDownload != nil {
                    map["RemoteSyncDownload"] = self.remoteSyncDownload!
                }
                if self.roClientList != nil {
                    map["RoClientList"] = self.roClientList!
                }
                if self.roUserList != nil {
                    map["RoUserList"] = self.roUserList!
                }
                if self.rwClientList != nil {
                    map["RwClientList"] = self.rwClientList!
                }
                if self.rwUserList != nil {
                    map["RwUserList"] = self.rwUserList!
                }
                if self.serverSideAlgorithm != nil {
                    map["ServerSideAlgorithm"] = self.serverSideAlgorithm!
                }
                if self.serverSideCmk != nil {
                    map["ServerSideCmk"] = self.serverSideCmk!
                }
                if self.serverSideEncryption != nil {
                    map["ServerSideEncryption"] = self.serverSideEncryption!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.squash != nil {
                    map["Squash"] = self.squash!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.supportArchive != nil {
                    map["SupportArchive"] = self.supportArchive!
                }
                if self.syncProgress != nil {
                    map["SyncProgress"] = self.syncProgress!
                }
                if self.throttling != nil {
                    map["Throttling"] = self.throttling!
                }
                if self.totalDownload != nil {
                    map["TotalDownload"] = self.totalDownload!
                }
                if self.totalUpload != nil {
                    map["TotalUpload"] = self.totalUpload!
                }
                if self.transferAcceleration != nil {
                    map["TransferAcceleration"] = self.transferAcceleration!
                }
                if self.uploadQueue != nil {
                    map["UploadQueue"] = self.uploadQueue!
                }
                if self.used != nil {
                    map["Used"] = self.used!
                }
                if self.windowsAcl != nil {
                    map["WindowsAcl"] = self.windowsAcl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessBasedEnumeration") && dict["AccessBasedEnumeration"] != nil {
                    self.accessBasedEnumeration = dict["AccessBasedEnumeration"] as! Bool
                }
                if dict.keys.contains("ActiveMessages") && dict["ActiveMessages"] != nil {
                    self.activeMessages = dict["ActiveMessages"] as! Int64
                }
                if dict.keys.contains("Address") && dict["Address"] != nil {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("BeLimit") && dict["BeLimit"] != nil {
                    self.beLimit = dict["BeLimit"] as! Int32
                }
                if dict.keys.contains("Browsable") && dict["Browsable"] != nil {
                    self.browsable = dict["Browsable"] as! Bool
                }
                if dict.keys.contains("BucketInfos") && dict["BucketInfos"] != nil {
                    self.bucketInfos = dict["BucketInfos"] as! String
                }
                if dict.keys.contains("BucketsStub") && dict["BucketsStub"] != nil {
                    self.bucketsStub = dict["BucketsStub"] as! Bool
                }
                if dict.keys.contains("BypassCacheRead") && dict["BypassCacheRead"] != nil {
                    self.bypassCacheRead = dict["BypassCacheRead"] as! Bool
                }
                if dict.keys.contains("CacheMode") && dict["CacheMode"] != nil {
                    self.cacheMode = dict["CacheMode"] as! String
                }
                if dict.keys.contains("ClientSideCmk") && dict["ClientSideCmk"] != nil {
                    self.clientSideCmk = dict["ClientSideCmk"] as! String
                }
                if dict.keys.contains("ClientSideEncryption") && dict["ClientSideEncryption"] != nil {
                    self.clientSideEncryption = dict["ClientSideEncryption"] as! Bool
                }
                if dict.keys.contains("DirectIO") && dict["DirectIO"] != nil {
                    self.directIO = dict["DirectIO"] as! Bool
                }
                if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
                    self.diskId = dict["DiskId"] as! String
                }
                if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
                    self.diskType = dict["DiskType"] as! String
                }
                if dict.keys.contains("DownloadLimit") && dict["DownloadLimit"] != nil {
                    self.downloadLimit = dict["DownloadLimit"] as! Int32
                }
                if dict.keys.contains("DownloadQueue") && dict["DownloadQueue"] != nil {
                    self.downloadQueue = dict["DownloadQueue"] as! Int64
                }
                if dict.keys.contains("DownloadRate") && dict["DownloadRate"] != nil {
                    self.downloadRate = dict["DownloadRate"] as! Int64
                }
                if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("ExpressSyncId") && dict["ExpressSyncId"] != nil {
                    self.expressSyncId = dict["ExpressSyncId"] as! String
                }
                if dict.keys.contains("FastReclaim") && dict["FastReclaim"] != nil {
                    self.fastReclaim = dict["FastReclaim"] as! Bool
                }
                if dict.keys.contains("FeLimit") && dict["FeLimit"] != nil {
                    self.feLimit = dict["FeLimit"] as! Int32
                }
                if dict.keys.contains("FileNumLimit") && dict["FileNumLimit"] != nil {
                    self.fileNumLimit = dict["FileNumLimit"] as! Int64
                }
                if dict.keys.contains("FsSizeLimit") && dict["FsSizeLimit"] != nil {
                    self.fsSizeLimit = dict["FsSizeLimit"] as! Int64
                }
                if dict.keys.contains("HighWatermark") && dict["HighWatermark"] != nil {
                    self.highWatermark = dict["HighWatermark"] as! Int32
                }
                if dict.keys.contains("IgnoreDelete") && dict["IgnoreDelete"] != nil {
                    self.ignoreDelete = dict["IgnoreDelete"] as! Bool
                }
                if dict.keys.contains("InPlace") && dict["InPlace"] != nil {
                    self.inPlace = dict["InPlace"] as! Bool
                }
                if dict.keys.contains("InRate") && dict["InRate"] != nil {
                    self.inRate = dict["InRate"] as! Int64
                }
                if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
                    self.indexId = dict["IndexId"] as! String
                }
                if dict.keys.contains("KmsRotatePeriod") && dict["KmsRotatePeriod"] != nil {
                    self.kmsRotatePeriod = dict["KmsRotatePeriod"] as! String
                }
                if dict.keys.contains("LagPeriod") && dict["LagPeriod"] != nil {
                    self.lagPeriod = dict["LagPeriod"] as! Int64
                }
                if dict.keys.contains("LocalPath") && dict["LocalPath"] != nil {
                    self.localPath = dict["LocalPath"] as! String
                }
                if dict.keys.contains("LowWatermark") && dict["LowWatermark"] != nil {
                    self.lowWatermark = dict["LowWatermark"] as! Int32
                }
                if dict.keys.contains("MnsHealth") && dict["MnsHealth"] != nil {
                    self.mnsHealth = dict["MnsHealth"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NfsV4Optimization") && dict["NfsV4Optimization"] != nil {
                    self.nfsV4Optimization = dict["NfsV4Optimization"] as! Bool
                }
                if dict.keys.contains("NoPartition") && dict["NoPartition"] != nil {
                    self.noPartition = dict["NoPartition"] as! Bool
                }
                if dict.keys.contains("ObsoleteBuckets") && dict["ObsoleteBuckets"] != nil {
                    self.obsoleteBuckets = dict["ObsoleteBuckets"] as! String
                }
                if dict.keys.contains("OssBucketName") && dict["OssBucketName"] != nil {
                    self.ossBucketName = dict["OssBucketName"] as! String
                }
                if dict.keys.contains("OssBucketSsl") && dict["OssBucketSsl"] != nil {
                    self.ossBucketSsl = dict["OssBucketSsl"] as! Bool
                }
                if dict.keys.contains("OssEndpoint") && dict["OssEndpoint"] != nil {
                    self.ossEndpoint = dict["OssEndpoint"] as! String
                }
                if dict.keys.contains("OssHealth") && dict["OssHealth"] != nil {
                    self.ossHealth = dict["OssHealth"] as! String
                }
                if dict.keys.contains("OssUsed") && dict["OssUsed"] != nil {
                    self.ossUsed = dict["OssUsed"] as! Int64
                }
                if dict.keys.contains("OutRate") && dict["OutRate"] != nil {
                    self.outRate = dict["OutRate"] as! Int64
                }
                if dict.keys.contains("PartialSyncPaths") && dict["PartialSyncPaths"] != nil {
                    self.partialSyncPaths = dict["PartialSyncPaths"] as! String
                }
                if dict.keys.contains("PathPrefix") && dict["PathPrefix"] != nil {
                    self.pathPrefix = dict["PathPrefix"] as! String
                }
                if dict.keys.contains("PollingInterval") && dict["PollingInterval"] != nil {
                    self.pollingInterval = dict["PollingInterval"] as! Int32
                }
                if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("RemainingMetaSpace") && dict["RemainingMetaSpace"] != nil {
                    self.remainingMetaSpace = dict["RemainingMetaSpace"] as! Int64
                }
                if dict.keys.contains("RemoteSync") && dict["RemoteSync"] != nil {
                    self.remoteSync = dict["RemoteSync"] as! Bool
                }
                if dict.keys.contains("RemoteSyncDownload") && dict["RemoteSyncDownload"] != nil {
                    self.remoteSyncDownload = dict["RemoteSyncDownload"] as! Bool
                }
                if dict.keys.contains("RoClientList") && dict["RoClientList"] != nil {
                    self.roClientList = dict["RoClientList"] as! String
                }
                if dict.keys.contains("RoUserList") && dict["RoUserList"] != nil {
                    self.roUserList = dict["RoUserList"] as! String
                }
                if dict.keys.contains("RwClientList") && dict["RwClientList"] != nil {
                    self.rwClientList = dict["RwClientList"] as! String
                }
                if dict.keys.contains("RwUserList") && dict["RwUserList"] != nil {
                    self.rwUserList = dict["RwUserList"] as! String
                }
                if dict.keys.contains("ServerSideAlgorithm") && dict["ServerSideAlgorithm"] != nil {
                    self.serverSideAlgorithm = dict["ServerSideAlgorithm"] as! String
                }
                if dict.keys.contains("ServerSideCmk") && dict["ServerSideCmk"] != nil {
                    self.serverSideCmk = dict["ServerSideCmk"] as! String
                }
                if dict.keys.contains("ServerSideEncryption") && dict["ServerSideEncryption"] != nil {
                    self.serverSideEncryption = dict["ServerSideEncryption"] as! Bool
                }
                if dict.keys.contains("Size") && dict["Size"] != nil {
                    self.size = dict["Size"] as! Int64
                }
                if dict.keys.contains("Squash") && dict["Squash"] != nil {
                    self.squash = dict["Squash"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SupportArchive") && dict["SupportArchive"] != nil {
                    self.supportArchive = dict["SupportArchive"] as! Bool
                }
                if dict.keys.contains("SyncProgress") && dict["SyncProgress"] != nil {
                    self.syncProgress = dict["SyncProgress"] as! Int32
                }
                if dict.keys.contains("Throttling") && dict["Throttling"] != nil {
                    self.throttling = dict["Throttling"] as! Bool
                }
                if dict.keys.contains("TotalDownload") && dict["TotalDownload"] != nil {
                    self.totalDownload = dict["TotalDownload"] as! Int64
                }
                if dict.keys.contains("TotalUpload") && dict["TotalUpload"] != nil {
                    self.totalUpload = dict["TotalUpload"] as! Int64
                }
                if dict.keys.contains("TransferAcceleration") && dict["TransferAcceleration"] != nil {
                    self.transferAcceleration = dict["TransferAcceleration"] as! Bool
                }
                if dict.keys.contains("UploadQueue") && dict["UploadQueue"] != nil {
                    self.uploadQueue = dict["UploadQueue"] as! Int64
                }
                if dict.keys.contains("Used") && dict["Used"] != nil {
                    self.used = dict["Used"] as! Int64
                }
                if dict.keys.contains("WindowsAcl") && dict["WindowsAcl"] != nil {
                    self.windowsAcl = dict["WindowsAcl"] as! Bool
                }
            }
        }
        public var fileShare: [DescribeGatewayFileSharesResponseBody.FileShares.FileShare]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileShare != nil {
                var tmp : [Any] = []
                for k in self.fileShare! {
                    tmp.append(k.toMap())
                }
                map["FileShare"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileShare") && dict["FileShare"] != nil {
                var tmp : [DescribeGatewayFileSharesResponseBody.FileShares.FileShare] = []
                for v in dict["FileShare"] as! [Any] {
                    var model = DescribeGatewayFileSharesResponseBody.FileShares.FileShare()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fileShare = tmp
            }
        }
    }
    public var code: String?

    public var fileShares: DescribeGatewayFileSharesResponseBody.FileShares?

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
        try self.fileShares?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.fileShares != nil {
            map["FileShares"] = self.fileShares?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FileShares") && dict["FileShares"] != nil {
            var model = DescribeGatewayFileSharesResponseBody.FileShares()
            model.fromMap(dict["FileShares"] as! [String: Any])
            self.fileShares = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayFileSharesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayFileSharesResponseBody?

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
            var model = DescribeGatewayFileSharesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayFileStatusRequest : Tea.TeaModel {
    public var filePath: String?

    public var gatewayId: String?

    public var indexId: String?

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
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilePath") && dict["FilePath"] != nil {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayFileStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayFileStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayFileStatusResponseBody?

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
            var model = DescribeGatewayFileStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayImagesRequest : Tea.TeaModel {
    public var securityToken: String?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeGatewayImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public class Image : Tea.TeaModel {
            public var description_: String?

            public var MD5: String?

            public var modifiedDate: String?

            public var name: String?

            public var size: Int64?

            public var title: String?

            public var type: String?

            public var url: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.MD5 != nil {
                    map["MD5"] = self.MD5!
                }
                if self.modifiedDate != nil {
                    map["ModifiedDate"] = self.modifiedDate!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("MD5") && dict["MD5"] != nil {
                    self.MD5 = dict["MD5"] as! String
                }
                if dict.keys.contains("ModifiedDate") && dict["ModifiedDate"] != nil {
                    self.modifiedDate = dict["ModifiedDate"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Size") && dict["Size"] != nil {
                    self.size = dict["Size"] as! Int64
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var image: [DescribeGatewayImagesResponseBody.Images.Image]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.image != nil {
                var tmp : [Any] = []
                for k in self.image! {
                    tmp.append(k.toMap())
                }
                map["Image"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Image") && dict["Image"] != nil {
                var tmp : [DescribeGatewayImagesResponseBody.Images.Image] = []
                for v in dict["Image"] as! [Any] {
                    var model = DescribeGatewayImagesResponseBody.Images.Image()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.image = tmp
            }
        }
    }
    public var code: String?

    public var images: DescribeGatewayImagesResponseBody.Images?

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
        try self.images?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.images != nil {
            map["Images"] = self.images?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Images") && dict["Images"] != nil {
            var model = DescribeGatewayImagesResponseBody.Images()
            model.fromMap(dict["Images"] as! [String: Any])
            self.images = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayImagesResponseBody?

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
            var model = DescribeGatewayImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayInfoRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayInfoResponseBody : Tea.TeaModel {
    public class GatewayInfos : Tea.TeaModel {
        public class GatewayInfo : Tea.TeaModel {
            public var info: String?

            public var time: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.info != nil {
                    map["Info"] = self.info!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Info") && dict["Info"] != nil {
                    self.info = dict["Info"] as! String
                }
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! Int64
                }
            }
        }
        public var gatewayInfo: [DescribeGatewayInfoResponseBody.GatewayInfos.GatewayInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayInfo != nil {
                var tmp : [Any] = []
                for k in self.gatewayInfo! {
                    tmp.append(k.toMap())
                }
                map["GatewayInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GatewayInfo") && dict["GatewayInfo"] != nil {
                var tmp : [DescribeGatewayInfoResponseBody.GatewayInfos.GatewayInfo] = []
                for v in dict["GatewayInfo"] as! [Any] {
                    var model = DescribeGatewayInfoResponseBody.GatewayInfos.GatewayInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.gatewayInfo = tmp
            }
        }
    }
    public var code: String?

    public var gatewayInfos: DescribeGatewayInfoResponseBody.GatewayInfos?

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
        try self.gatewayInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gatewayInfos != nil {
            map["GatewayInfos"] = self.gatewayInfos?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GatewayInfos") && dict["GatewayInfos"] != nil {
            var model = DescribeGatewayInfoResponseBody.GatewayInfos()
            model.fromMap(dict["GatewayInfos"] as! [String: Any])
            self.gatewayInfos = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayInfoResponseBody?

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
            var model = DescribeGatewayInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayLDAPInfoRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayLDAPInfoResponseBody : Tea.TeaModel {
    public var baseDN: String?

    public var code: String?

    public var isEnabled: Bool?

    public var isTls: Bool?

    public var message: String?

    public var requestId: String?

    public var rootDN: String?

    public var serverIp: String?

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
        if self.baseDN != nil {
            map["BaseDN"] = self.baseDN!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
        }
        if self.isTls != nil {
            map["IsTls"] = self.isTls!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootDN != nil {
            map["RootDN"] = self.rootDN!
        }
        if self.serverIp != nil {
            map["ServerIp"] = self.serverIp!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseDN") && dict["BaseDN"] != nil {
            self.baseDN = dict["BaseDN"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsEnabled") && dict["IsEnabled"] != nil {
            self.isEnabled = dict["IsEnabled"] as! Bool
        }
        if dict.keys.contains("IsTls") && dict["IsTls"] != nil {
            self.isTls = dict["IsTls"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RootDN") && dict["RootDN"] != nil {
            self.rootDN = dict["RootDN"] as! String
        }
        if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
            self.serverIp = dict["ServerIp"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayLDAPInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayLDAPInfoResponseBody?

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
            var model = DescribeGatewayLDAPInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayLocationsRequest : Tea.TeaModel {
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayLocationsResponseBody : Tea.TeaModel {
    public var code: String?

    public var locations: String?

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
            map["Code"] = self.code!
        }
        if self.locations != nil {
            map["Locations"] = self.locations!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Locations") && dict["Locations"] != nil {
            self.locations = dict["Locations"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayLocationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayLocationsResponseBody?

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
            var model = DescribeGatewayLocationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayLoggingRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayLoggingResponseBody : Tea.TeaModel {
    public var code: String?

    public var gatewayLoggingStatus: String?

    public var message: String?

    public var requestId: String?

    public var slsLogstore: String?

    public var slsProject: String?

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
        if self.gatewayLoggingStatus != nil {
            map["GatewayLoggingStatus"] = self.gatewayLoggingStatus!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slsLogstore != nil {
            map["SlsLogstore"] = self.slsLogstore!
        }
        if self.slsProject != nil {
            map["SlsProject"] = self.slsProject!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GatewayLoggingStatus") && dict["GatewayLoggingStatus"] != nil {
            self.gatewayLoggingStatus = dict["GatewayLoggingStatus"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlsLogstore") && dict["SlsLogstore"] != nil {
            self.slsLogstore = dict["SlsLogstore"] as! String
        }
        if dict.keys.contains("SlsProject") && dict["SlsProject"] != nil {
            self.slsProject = dict["SlsProject"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayLoggingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayLoggingResponseBody?

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
            var model = DescribeGatewayLoggingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayLogsRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var logFilePath: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.logFilePath != nil {
            map["LogFilePath"] = self.logFilePath!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("LogFilePath") && dict["LogFilePath"] != nil {
            self.logFilePath = dict["LogFilePath"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayLogsResponseBody : Tea.TeaModel {
    public var code: String?

    public var logFilePaths: String?

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
            map["Code"] = self.code!
        }
        if self.logFilePaths != nil {
            map["LogFilePaths"] = self.logFilePaths!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("LogFilePaths") && dict["LogFilePaths"] != nil {
            self.logFilePaths = dict["LogFilePaths"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayLogsResponseBody?

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
            var model = DescribeGatewayLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayModificationClassesRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayModificationClassesResponseBody : Tea.TeaModel {
    public class TargetGatewayClasses : Tea.TeaModel {
        public class TargetGatewayClass : Tea.TeaModel {
            public var gatewayClass: String?

            public var isAvailable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayClass != nil {
                    map["GatewayClass"] = self.gatewayClass!
                }
                if self.isAvailable != nil {
                    map["IsAvailable"] = self.isAvailable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GatewayClass") && dict["GatewayClass"] != nil {
                    self.gatewayClass = dict["GatewayClass"] as! String
                }
                if dict.keys.contains("IsAvailable") && dict["IsAvailable"] != nil {
                    self.isAvailable = dict["IsAvailable"] as! Bool
                }
            }
        }
        public var targetGatewayClass: [DescribeGatewayModificationClassesResponseBody.TargetGatewayClasses.TargetGatewayClass]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.targetGatewayClass != nil {
                var tmp : [Any] = []
                for k in self.targetGatewayClass! {
                    tmp.append(k.toMap())
                }
                map["TargetGatewayClass"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TargetGatewayClass") && dict["TargetGatewayClass"] != nil {
                var tmp : [DescribeGatewayModificationClassesResponseBody.TargetGatewayClasses.TargetGatewayClass] = []
                for v in dict["TargetGatewayClass"] as! [Any] {
                    var model = DescribeGatewayModificationClassesResponseBody.TargetGatewayClasses.TargetGatewayClass()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.targetGatewayClass = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var targetGatewayClasses: DescribeGatewayModificationClassesResponseBody.TargetGatewayClasses?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.targetGatewayClasses?.validate()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.targetGatewayClasses != nil {
            map["TargetGatewayClasses"] = self.targetGatewayClasses?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TargetGatewayClasses") && dict["TargetGatewayClasses"] != nil {
            var model = DescribeGatewayModificationClassesResponseBody.TargetGatewayClasses()
            model.fromMap(dict["TargetGatewayClasses"] as! [String: Any])
            self.targetGatewayClasses = model
        }
    }
}

public class DescribeGatewayModificationClassesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayModificationClassesResponseBody?

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
            var model = DescribeGatewayModificationClassesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayNFSClientsRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayNFSClientsResponseBody : Tea.TeaModel {
    public class ClientInfoList : Tea.TeaModel {
        public class ClientInfo : Tea.TeaModel {
            public var clientIpAddr: String?

            public var hasNFSv3: Bool?

            public var hasNFSv40: Bool?

            public var hasNFSv41: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clientIpAddr != nil {
                    map["ClientIpAddr"] = self.clientIpAddr!
                }
                if self.hasNFSv3 != nil {
                    map["HasNFSv3"] = self.hasNFSv3!
                }
                if self.hasNFSv40 != nil {
                    map["HasNFSv40"] = self.hasNFSv40!
                }
                if self.hasNFSv41 != nil {
                    map["HasNFSv41"] = self.hasNFSv41!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClientIpAddr") && dict["ClientIpAddr"] != nil {
                    self.clientIpAddr = dict["ClientIpAddr"] as! String
                }
                if dict.keys.contains("HasNFSv3") && dict["HasNFSv3"] != nil {
                    self.hasNFSv3 = dict["HasNFSv3"] as! Bool
                }
                if dict.keys.contains("HasNFSv40") && dict["HasNFSv40"] != nil {
                    self.hasNFSv40 = dict["HasNFSv40"] as! Bool
                }
                if dict.keys.contains("HasNFSv41") && dict["HasNFSv41"] != nil {
                    self.hasNFSv41 = dict["HasNFSv41"] as! Bool
                }
            }
        }
        public var clientInfo: [DescribeGatewayNFSClientsResponseBody.ClientInfoList.ClientInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientInfo != nil {
                var tmp : [Any] = []
                for k in self.clientInfo! {
                    tmp.append(k.toMap())
                }
                map["ClientInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientInfo") && dict["ClientInfo"] != nil {
                var tmp : [DescribeGatewayNFSClientsResponseBody.ClientInfoList.ClientInfo] = []
                for v in dict["ClientInfo"] as! [Any] {
                    var model = DescribeGatewayNFSClientsResponseBody.ClientInfoList.ClientInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.clientInfo = tmp
            }
        }
    }
    public var clientInfoList: DescribeGatewayNFSClientsResponseBody.ClientInfoList?

    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var version3Enabled: Bool?

    public var version40Enabled: Bool?

    public var version41Enabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clientInfoList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientInfoList != nil {
            map["ClientInfoList"] = self.clientInfoList?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.version3Enabled != nil {
            map["Version3Enabled"] = self.version3Enabled!
        }
        if self.version40Enabled != nil {
            map["Version40Enabled"] = self.version40Enabled!
        }
        if self.version41Enabled != nil {
            map["Version41Enabled"] = self.version41Enabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientInfoList") && dict["ClientInfoList"] != nil {
            var model = DescribeGatewayNFSClientsResponseBody.ClientInfoList()
            model.fromMap(dict["ClientInfoList"] as! [String: Any])
            self.clientInfoList = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Version3Enabled") && dict["Version3Enabled"] != nil {
            self.version3Enabled = dict["Version3Enabled"] as! Bool
        }
        if dict.keys.contains("Version40Enabled") && dict["Version40Enabled"] != nil {
            self.version40Enabled = dict["Version40Enabled"] as! Bool
        }
        if dict.keys.contains("Version41Enabled") && dict["Version41Enabled"] != nil {
            self.version41Enabled = dict["Version41Enabled"] as! Bool
        }
    }
}

public class DescribeGatewayNFSClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayNFSClientsResponseBody?

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
            var model = DescribeGatewayNFSClientsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewaySMBUsersRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewaySMBUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Username") && dict["Username"] != nil {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public var user: [DescribeGatewaySMBUsersResponseBody.Users.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("User") && dict["User"] != nil {
                var tmp : [DescribeGatewaySMBUsersResponseBody.Users.User] = []
                for v in dict["User"] as! [Any] {
                    var model = DescribeGatewaySMBUsersResponseBody.Users.User()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.user = tmp
            }
        }
    }
    public var activeDirectory: Bool?

    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var users: DescribeGatewaySMBUsersResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activeDirectory != nil {
            map["ActiveDirectory"] = self.activeDirectory!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActiveDirectory") && dict["ActiveDirectory"] != nil {
            self.activeDirectory = dict["ActiveDirectory"] as! Bool
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
            var model = DescribeGatewaySMBUsersResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
            self.users = model
        }
    }
}

public class DescribeGatewaySMBUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewaySMBUsersResponseBody?

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
            var model = DescribeGatewaySMBUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayStatisticsRequest : Tea.TeaModel {
    public var endTimestamp: Int64?

    public var gatewayCategory: String?

    public var gatewayLocation: String?

    public var securityToken: String?

    public var startTimestamp: Int64?

    public var targetAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.gatewayCategory != nil {
            map["GatewayCategory"] = self.gatewayCategory!
        }
        if self.gatewayLocation != nil {
            map["GatewayLocation"] = self.gatewayLocation!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        if self.targetAccountId != nil {
            map["TargetAccountId"] = self.targetAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! Int64
        }
        if dict.keys.contains("GatewayCategory") && dict["GatewayCategory"] != nil {
            self.gatewayCategory = dict["GatewayCategory"] as! String
        }
        if dict.keys.contains("GatewayLocation") && dict["GatewayLocation"] != nil {
            self.gatewayLocation = dict["GatewayLocation"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! Int64
        }
        if dict.keys.contains("TargetAccountId") && dict["TargetAccountId"] != nil {
            self.targetAccountId = dict["TargetAccountId"] as! String
        }
    }
}

public class DescribeGatewayStatisticsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayStatisticsResponseBody?

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
            var model = DescribeGatewayStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayStockRequest : Tea.TeaModel {
    public var gatewayRegionId: String?

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
        if self.gatewayRegionId != nil {
            map["GatewayRegionId"] = self.gatewayRegionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayRegionId") && dict["GatewayRegionId"] != nil {
            self.gatewayRegionId = dict["GatewayRegionId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayStockResponseBody : Tea.TeaModel {
    public class Stocks : Tea.TeaModel {
        public class Stock : Tea.TeaModel {
            public var stockInfo: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.stockInfo != nil {
                    map["StockInfo"] = self.stockInfo!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("StockInfo") && dict["StockInfo"] != nil {
                    self.stockInfo = dict["StockInfo"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var stock: [DescribeGatewayStockResponseBody.Stocks.Stock]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.stock != nil {
                var tmp : [Any] = []
                for k in self.stock! {
                    tmp.append(k.toMap())
                }
                map["Stock"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Stock") && dict["Stock"] != nil {
                var tmp : [DescribeGatewayStockResponseBody.Stocks.Stock] = []
                for v in dict["Stock"] as! [Any] {
                    var model = DescribeGatewayStockResponseBody.Stocks.Stock()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.stock = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var stocks: DescribeGatewayStockResponseBody.Stocks?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stocks?.validate()
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
        if self.stocks != nil {
            map["Stocks"] = self.stocks?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Stocks") && dict["Stocks"] != nil {
            var model = DescribeGatewayStockResponseBody.Stocks()
            model.fromMap(dict["Stocks"] as! [String: Any])
            self.stocks = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewayStockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayStockResponseBody?

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
            var model = DescribeGatewayStockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayTypesRequest : Tea.TeaModel {
    public var gatewayLocation: String?

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
        if self.gatewayLocation != nil {
            map["GatewayLocation"] = self.gatewayLocation!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayLocation") && dict["GatewayLocation"] != nil {
            self.gatewayLocation = dict["GatewayLocation"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewayTypesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var types: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Types") && dict["Types"] != nil {
            self.types = dict["Types"] as! String
        }
    }
}

public class DescribeGatewayTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayTypesResponseBody?

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
            var model = DescribeGatewayTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewaysRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var storageBundleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
    }
}

public class DescribeGatewaysResponseBody : Tea.TeaModel {
    public class Gateways : Tea.TeaModel {
        public class Gateway : Tea.TeaModel {
            public class ElasticNodes : Tea.TeaModel {
                public var elasticNode: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.elasticNode != nil {
                        map["ElasticNode"] = self.elasticNode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ElasticNode") && dict["ElasticNode"] != nil {
                        self.elasticNode = dict["ElasticNode"] as! [String]
                    }
                }
            }
            public var activatedTime: Int64?

            public var buyURL: String?

            public var capacity: Int32?

            public var category: String?

            public var commonBuyInstanceId: String?

            public var createdTime: Int64?

            public var dataLoadInterval: Int32?

            public var dataLoadType: String?

            public var description_: String?

            public var ecsInstanceId: String?

            public var elasticGateway: Bool?

            public var elasticNodes: DescribeGatewaysResponseBody.Gateways.Gateway.ElasticNodes?

            public var expireStatus: Int32?

            public var expiredTime: Int64?

            public var gatewayClass: String?

            public var gatewayId: String?

            public var gatewayRegionId: String?

            public var gatewayType: String?

            public var gatewayVersion: String?

            public var highAvailability: Bool?

            public var innerIp: String?

            public var innerIpv6Ip: String?

            public var ip: String?

            public var isPostPaid: Bool?

            public var isReleaseAfterExpiration: Bool?

            public var lastErrorKey: String?

            public var location: String?

            public var maxThroughput: Int32?

            public var name: String?

            public var publicNetworkBandwidth: Int32?

            public var renewURL: String?

            public var status: String?

            public var storageBundleId: String?

            public var taskId: String?

            public var type: String?

            public var untrustedEnvInstanceType: String?

            public var vSwitchId: String?

            public var vpcId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.elasticNodes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activatedTime != nil {
                    map["ActivatedTime"] = self.activatedTime!
                }
                if self.buyURL != nil {
                    map["BuyURL"] = self.buyURL!
                }
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.commonBuyInstanceId != nil {
                    map["CommonBuyInstanceId"] = self.commonBuyInstanceId!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.dataLoadInterval != nil {
                    map["DataLoadInterval"] = self.dataLoadInterval!
                }
                if self.dataLoadType != nil {
                    map["DataLoadType"] = self.dataLoadType!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ecsInstanceId != nil {
                    map["EcsInstanceId"] = self.ecsInstanceId!
                }
                if self.elasticGateway != nil {
                    map["ElasticGateway"] = self.elasticGateway!
                }
                if self.elasticNodes != nil {
                    map["ElasticNodes"] = self.elasticNodes?.toMap()
                }
                if self.expireStatus != nil {
                    map["ExpireStatus"] = self.expireStatus!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.gatewayClass != nil {
                    map["GatewayClass"] = self.gatewayClass!
                }
                if self.gatewayId != nil {
                    map["GatewayId"] = self.gatewayId!
                }
                if self.gatewayRegionId != nil {
                    map["GatewayRegionId"] = self.gatewayRegionId!
                }
                if self.gatewayType != nil {
                    map["GatewayType"] = self.gatewayType!
                }
                if self.gatewayVersion != nil {
                    map["GatewayVersion"] = self.gatewayVersion!
                }
                if self.highAvailability != nil {
                    map["HighAvailability"] = self.highAvailability!
                }
                if self.innerIp != nil {
                    map["InnerIp"] = self.innerIp!
                }
                if self.innerIpv6Ip != nil {
                    map["InnerIpv6Ip"] = self.innerIpv6Ip!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.isPostPaid != nil {
                    map["IsPostPaid"] = self.isPostPaid!
                }
                if self.isReleaseAfterExpiration != nil {
                    map["IsReleaseAfterExpiration"] = self.isReleaseAfterExpiration!
                }
                if self.lastErrorKey != nil {
                    map["LastErrorKey"] = self.lastErrorKey!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.maxThroughput != nil {
                    map["MaxThroughput"] = self.maxThroughput!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.publicNetworkBandwidth != nil {
                    map["PublicNetworkBandwidth"] = self.publicNetworkBandwidth!
                }
                if self.renewURL != nil {
                    map["RenewURL"] = self.renewURL!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageBundleId != nil {
                    map["StorageBundleId"] = self.storageBundleId!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.untrustedEnvInstanceType != nil {
                    map["UntrustedEnvInstanceType"] = self.untrustedEnvInstanceType!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActivatedTime") && dict["ActivatedTime"] != nil {
                    self.activatedTime = dict["ActivatedTime"] as! Int64
                }
                if dict.keys.contains("BuyURL") && dict["BuyURL"] != nil {
                    self.buyURL = dict["BuyURL"] as! String
                }
                if dict.keys.contains("Capacity") && dict["Capacity"] != nil {
                    self.capacity = dict["Capacity"] as! Int32
                }
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("CommonBuyInstanceId") && dict["CommonBuyInstanceId"] != nil {
                    self.commonBuyInstanceId = dict["CommonBuyInstanceId"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("DataLoadInterval") && dict["DataLoadInterval"] != nil {
                    self.dataLoadInterval = dict["DataLoadInterval"] as! Int32
                }
                if dict.keys.contains("DataLoadType") && dict["DataLoadType"] != nil {
                    self.dataLoadType = dict["DataLoadType"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EcsInstanceId") && dict["EcsInstanceId"] != nil {
                    self.ecsInstanceId = dict["EcsInstanceId"] as! String
                }
                if dict.keys.contains("ElasticGateway") && dict["ElasticGateway"] != nil {
                    self.elasticGateway = dict["ElasticGateway"] as! Bool
                }
                if dict.keys.contains("ElasticNodes") && dict["ElasticNodes"] != nil {
                    var model = DescribeGatewaysResponseBody.Gateways.Gateway.ElasticNodes()
                    model.fromMap(dict["ElasticNodes"] as! [String: Any])
                    self.elasticNodes = model
                }
                if dict.keys.contains("ExpireStatus") && dict["ExpireStatus"] != nil {
                    self.expireStatus = dict["ExpireStatus"] as! Int32
                }
                if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                    self.expiredTime = dict["ExpiredTime"] as! Int64
                }
                if dict.keys.contains("GatewayClass") && dict["GatewayClass"] != nil {
                    self.gatewayClass = dict["GatewayClass"] as! String
                }
                if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
                    self.gatewayId = dict["GatewayId"] as! String
                }
                if dict.keys.contains("GatewayRegionId") && dict["GatewayRegionId"] != nil {
                    self.gatewayRegionId = dict["GatewayRegionId"] as! String
                }
                if dict.keys.contains("GatewayType") && dict["GatewayType"] != nil {
                    self.gatewayType = dict["GatewayType"] as! String
                }
                if dict.keys.contains("GatewayVersion") && dict["GatewayVersion"] != nil {
                    self.gatewayVersion = dict["GatewayVersion"] as! String
                }
                if dict.keys.contains("HighAvailability") && dict["HighAvailability"] != nil {
                    self.highAvailability = dict["HighAvailability"] as! Bool
                }
                if dict.keys.contains("InnerIp") && dict["InnerIp"] != nil {
                    self.innerIp = dict["InnerIp"] as! String
                }
                if dict.keys.contains("InnerIpv6Ip") && dict["InnerIpv6Ip"] != nil {
                    self.innerIpv6Ip = dict["InnerIpv6Ip"] as! String
                }
                if dict.keys.contains("Ip") && dict["Ip"] != nil {
                    self.ip = dict["Ip"] as! String
                }
                if dict.keys.contains("IsPostPaid") && dict["IsPostPaid"] != nil {
                    self.isPostPaid = dict["IsPostPaid"] as! Bool
                }
                if dict.keys.contains("IsReleaseAfterExpiration") && dict["IsReleaseAfterExpiration"] != nil {
                    self.isReleaseAfterExpiration = dict["IsReleaseAfterExpiration"] as! Bool
                }
                if dict.keys.contains("LastErrorKey") && dict["LastErrorKey"] != nil {
                    self.lastErrorKey = dict["LastErrorKey"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("MaxThroughput") && dict["MaxThroughput"] != nil {
                    self.maxThroughput = dict["MaxThroughput"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PublicNetworkBandwidth") && dict["PublicNetworkBandwidth"] != nil {
                    self.publicNetworkBandwidth = dict["PublicNetworkBandwidth"] as! Int32
                }
                if dict.keys.contains("RenewURL") && dict["RenewURL"] != nil {
                    self.renewURL = dict["RenewURL"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
                    self.storageBundleId = dict["StorageBundleId"] as! String
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UntrustedEnvInstanceType") && dict["UntrustedEnvInstanceType"] != nil {
                    self.untrustedEnvInstanceType = dict["UntrustedEnvInstanceType"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var gateway: [DescribeGatewaysResponseBody.Gateways.Gateway]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gateway != nil {
                var tmp : [Any] = []
                for k in self.gateway! {
                    tmp.append(k.toMap())
                }
                map["Gateway"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Gateway") && dict["Gateway"] != nil {
                var tmp : [DescribeGatewaysResponseBody.Gateways.Gateway] = []
                for v in dict["Gateway"] as! [Any] {
                    var model = DescribeGatewaysResponseBody.Gateways.Gateway()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.gateway = tmp
            }
        }
    }
    public var code: String?

    public var gateways: DescribeGatewaysResponseBody.Gateways?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gateways?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gateways != nil {
            map["Gateways"] = self.gateways?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Gateways") && dict["Gateways"] != nil {
            var model = DescribeGatewaysResponseBody.Gateways()
            model.fromMap(dict["Gateways"] as! [String: Any])
            self.gateways = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeGatewaysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewaysResponseBody?

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
            var model = DescribeGatewaysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewaysForCmsRequest : Tea.TeaModel {
    public var gatewayRegionId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.gatewayRegionId != nil {
            map["GatewayRegionId"] = self.gatewayRegionId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayRegionId") && dict["GatewayRegionId"] != nil {
            self.gatewayRegionId = dict["GatewayRegionId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeGatewaysForCmsResponseBody : Tea.TeaModel {
    public class Gateways : Tea.TeaModel {
        public class Gateway : Tea.TeaModel {
            public var description_: String?

            public var gatewayId: String?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.gatewayId != nil {
                    map["GatewayId"] = self.gatewayId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
                    self.gatewayId = dict["GatewayId"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var gateway: [DescribeGatewaysForCmsResponseBody.Gateways.Gateway]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gateway != nil {
                var tmp : [Any] = []
                for k in self.gateway! {
                    tmp.append(k.toMap())
                }
                map["Gateway"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Gateway") && dict["Gateway"] != nil {
                var tmp : [DescribeGatewaysForCmsResponseBody.Gateways.Gateway] = []
                for v in dict["Gateway"] as! [Any] {
                    var model = DescribeGatewaysForCmsResponseBody.Gateways.Gateway()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.gateway = tmp
            }
        }
    }
    public var code: String?

    public var gateways: DescribeGatewaysForCmsResponseBody.Gateways?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gateways?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gateways != nil {
            map["Gateways"] = self.gateways?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Gateways") && dict["Gateways"] != nil {
            var model = DescribeGatewaysForCmsResponseBody.Gateways()
            model.fromMap(dict["Gateways"] as! [String: Any])
            self.gateways = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeGatewaysForCmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewaysForCmsResponseBody?

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
            var model = DescribeGatewaysForCmsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewaysTagsRequest : Tea.TeaModel {
    public var gatewayIds: String?

    public var securityToken: String?

    public var storageBundleId: String?

    public var tagCategory: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayIds != nil {
            map["GatewayIds"] = self.gatewayIds!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        if self.tagCategory != nil {
            map["TagCategory"] = self.tagCategory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayIds") && dict["GatewayIds"] != nil {
            self.gatewayIds = dict["GatewayIds"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
        if dict.keys.contains("TagCategory") && dict["TagCategory"] != nil {
            self.tagCategory = dict["TagCategory"] as! String
        }
    }
}

public class DescribeGatewaysTagsResponseBody : Tea.TeaModel {
    public class GatewayTags : Tea.TeaModel {
        public class GatewayTag : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
                    public var tagKey: String?

                    public var tagValue: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.tagKey != nil {
                            map["TagKey"] = self.tagKey!
                        }
                        if self.tagValue != nil {
                            map["TagValue"] = self.tagValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                            self.tagKey = dict["TagKey"] as! String
                        }
                        if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                            self.tagValue = dict["TagValue"] as! String
                        }
                    }
                }
                public var tag: [DescribeGatewaysTagsResponseBody.GatewayTags.GatewayTag.Tags.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [DescribeGatewaysTagsResponseBody.GatewayTags.GatewayTag.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeGatewaysTagsResponseBody.GatewayTags.GatewayTag.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var gatewayId: String?

            public var tags: DescribeGatewaysTagsResponseBody.GatewayTags.GatewayTag.Tags?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gatewayId != nil {
                    map["GatewayId"] = self.gatewayId!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
                    self.gatewayId = dict["GatewayId"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = DescribeGatewaysTagsResponseBody.GatewayTags.GatewayTag.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
            }
        }
        public var gatewayTag: [DescribeGatewaysTagsResponseBody.GatewayTags.GatewayTag]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayTag != nil {
                var tmp : [Any] = []
                for k in self.gatewayTag! {
                    tmp.append(k.toMap())
                }
                map["GatewayTag"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GatewayTag") && dict["GatewayTag"] != nil {
                var tmp : [DescribeGatewaysTagsResponseBody.GatewayTags.GatewayTag] = []
                for v in dict["GatewayTag"] as! [Any] {
                    var model = DescribeGatewaysTagsResponseBody.GatewayTags.GatewayTag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.gatewayTag = tmp
            }
        }
    }
    public var code: String?

    public var gatewayTags: DescribeGatewaysTagsResponseBody.GatewayTags?

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
        try self.gatewayTags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gatewayTags != nil {
            map["GatewayTags"] = self.gatewayTags?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GatewayTags") && dict["GatewayTags"] != nil {
            var model = DescribeGatewaysTagsResponseBody.GatewayTags()
            model.fromMap(dict["GatewayTags"] as! [String: Any])
            self.gatewayTags = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeGatewaysTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewaysTagsResponseBody?

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
            var model = DescribeGatewaysTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeKmsKeyRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var kmsKey: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.kmsKey != nil {
            map["KmsKey"] = self.kmsKey!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("KmsKey") && dict["KmsKey"] != nil {
            self.kmsKey = dict["KmsKey"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeKmsKeyResponseBody : Tea.TeaModel {
    public var code: String?

    public var isValid: Bool?

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
            map["Code"] = self.code!
        }
        if self.isValid != nil {
            map["IsValid"] = self.isValid!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsValid") && dict["IsValid"] != nil {
            self.isValid = dict["IsValid"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeKmsKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeKmsKeyResponseBody?

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
            var model = DescribeKmsKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMqttConfigRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeMqttConfigResponseBody : Tea.TeaModel {
    public var authType: String?

    public var brokerUrl: String?

    public var code: String?

    public var groupId: String?

    public var internalBrokerUrl: String?

    public var isEnabled: Bool?

    public var message: String?

    public var mqttInstanceId: String?

    public var password: String?

    public var publishTopic: String?

    public var requestId: String?

    public var subscribeTopic: String?

    public var success: Bool?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.brokerUrl != nil {
            map["BrokerUrl"] = self.brokerUrl!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.internalBrokerUrl != nil {
            map["InternalBrokerUrl"] = self.internalBrokerUrl!
        }
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.publishTopic != nil {
            map["PublishTopic"] = self.publishTopic!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subscribeTopic != nil {
            map["SubscribeTopic"] = self.subscribeTopic!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("BrokerUrl") && dict["BrokerUrl"] != nil {
            self.brokerUrl = dict["BrokerUrl"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InternalBrokerUrl") && dict["InternalBrokerUrl"] != nil {
            self.internalBrokerUrl = dict["InternalBrokerUrl"] as! String
        }
        if dict.keys.contains("IsEnabled") && dict["IsEnabled"] != nil {
            self.isEnabled = dict["IsEnabled"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PublishTopic") && dict["PublishTopic"] != nil {
            self.publishTopic = dict["PublishTopic"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubscribeTopic") && dict["SubscribeTopic"] != nil {
            self.subscribeTopic = dict["SubscribeTopic"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class DescribeMqttConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMqttConfigResponseBody?

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
            var model = DescribeMqttConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssBucketInfoRequest : Tea.TeaModel {
    public var bucketEndpoint: String?

    public var bucketName: String?

    public var gatewayId: String?

    public var securityToken: String?

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
        if self.bucketEndpoint != nil {
            map["BucketEndpoint"] = self.bucketEndpoint!
        }
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketEndpoint") && dict["BucketEndpoint"] != nil {
            self.bucketEndpoint = dict["BucketEndpoint"] as! String
        }
        if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeOssBucketInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var isArchive: Bool?

    public var isBackToResource: Bool?

    public var isColdArchive: Bool?

    public var isFresh: Bool?

    public var isSupportServerSideEncryption: Bool?

    public var isVersioning: Bool?

    public var message: String?

    public var pollingInterval: Int32?

    public var requestId: String?

    public var storageSize: Int64?

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
        if self.isArchive != nil {
            map["IsArchive"] = self.isArchive!
        }
        if self.isBackToResource != nil {
            map["IsBackToResource"] = self.isBackToResource!
        }
        if self.isColdArchive != nil {
            map["IsColdArchive"] = self.isColdArchive!
        }
        if self.isFresh != nil {
            map["IsFresh"] = self.isFresh!
        }
        if self.isSupportServerSideEncryption != nil {
            map["IsSupportServerSideEncryption"] = self.isSupportServerSideEncryption!
        }
        if self.isVersioning != nil {
            map["IsVersioning"] = self.isVersioning!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pollingInterval != nil {
            map["PollingInterval"] = self.pollingInterval!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storageSize != nil {
            map["StorageSize"] = self.storageSize!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsArchive") && dict["IsArchive"] != nil {
            self.isArchive = dict["IsArchive"] as! Bool
        }
        if dict.keys.contains("IsBackToResource") && dict["IsBackToResource"] != nil {
            self.isBackToResource = dict["IsBackToResource"] as! Bool
        }
        if dict.keys.contains("IsColdArchive") && dict["IsColdArchive"] != nil {
            self.isColdArchive = dict["IsColdArchive"] as! Bool
        }
        if dict.keys.contains("IsFresh") && dict["IsFresh"] != nil {
            self.isFresh = dict["IsFresh"] as! Bool
        }
        if dict.keys.contains("IsSupportServerSideEncryption") && dict["IsSupportServerSideEncryption"] != nil {
            self.isSupportServerSideEncryption = dict["IsSupportServerSideEncryption"] as! Bool
        }
        if dict.keys.contains("IsVersioning") && dict["IsVersioning"] != nil {
            self.isVersioning = dict["IsVersioning"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PollingInterval") && dict["PollingInterval"] != nil {
            self.pollingInterval = dict["PollingInterval"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StorageSize") && dict["StorageSize"] != nil {
            self.storageSize = dict["StorageSize"] as! Int64
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeOssBucketInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssBucketInfoResponseBody?

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
            var model = DescribeOssBucketInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssBucketsRequest : Tea.TeaModel {
    public var bucketEndpoint: String?

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
        if self.bucketEndpoint != nil {
            map["BucketEndpoint"] = self.bucketEndpoint!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketEndpoint") && dict["BucketEndpoint"] != nil {
            self.bucketEndpoint = dict["BucketEndpoint"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeOssBucketsResponseBody : Tea.TeaModel {
    public class Buckets : Tea.TeaModel {
        public class Bucket : Tea.TeaModel {
            public var name: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var bucket: [DescribeOssBucketsResponseBody.Buckets.Bucket]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucket != nil {
                var tmp : [Any] = []
                for k in self.bucket! {
                    tmp.append(k.toMap())
                }
                map["Bucket"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
                var tmp : [DescribeOssBucketsResponseBody.Buckets.Bucket] = []
                for v in dict["Bucket"] as! [Any] {
                    var model = DescribeOssBucketsResponseBody.Buckets.Bucket()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.bucket = tmp
            }
        }
    }
    public var buckets: DescribeOssBucketsResponseBody.Buckets?

    public var code: String?

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
        try self.buckets?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buckets != nil {
            map["Buckets"] = self.buckets?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
            var model = DescribeOssBucketsResponseBody.Buckets()
            model.fromMap(dict["Buckets"] as! [String: Any])
            self.buckets = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeOssBucketsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssBucketsResponseBody?

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
            var model = DescribeOssBucketsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePayAsYouGoPriceRequest : Tea.TeaModel {
    public var gatewayClass: String?

    public var regionId: String?

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
        if self.gatewayClass != nil {
            map["GatewayClass"] = self.gatewayClass!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayClass") && dict["GatewayClass"] != nil {
            self.gatewayClass = dict["GatewayClass"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribePayAsYouGoPriceResponseBody : Tea.TeaModel {
    public var cacheCloudEfficiencySizePrice: Double?

    public var cacheCloudSSDSizePrice: Double?

    public var cacheESSDPl1SizePrice: Double?

    public var code: String?

    public var currency: String?

    public var gatewayClassPrice: Double?

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
        if self.cacheCloudEfficiencySizePrice != nil {
            map["CacheCloudEfficiencySizePrice"] = self.cacheCloudEfficiencySizePrice!
        }
        if self.cacheCloudSSDSizePrice != nil {
            map["CacheCloudSSDSizePrice"] = self.cacheCloudSSDSizePrice!
        }
        if self.cacheESSDPl1SizePrice != nil {
            map["CacheESSDPl1SizePrice"] = self.cacheESSDPl1SizePrice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.gatewayClassPrice != nil {
            map["GatewayClassPrice"] = self.gatewayClassPrice!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheCloudEfficiencySizePrice") && dict["CacheCloudEfficiencySizePrice"] != nil {
            self.cacheCloudEfficiencySizePrice = dict["CacheCloudEfficiencySizePrice"] as! Double
        }
        if dict.keys.contains("CacheCloudSSDSizePrice") && dict["CacheCloudSSDSizePrice"] != nil {
            self.cacheCloudSSDSizePrice = dict["CacheCloudSSDSizePrice"] as! Double
        }
        if dict.keys.contains("CacheESSDPl1SizePrice") && dict["CacheESSDPl1SizePrice"] != nil {
            self.cacheESSDPl1SizePrice = dict["CacheESSDPl1SizePrice"] as! Double
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Currency") && dict["Currency"] != nil {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("GatewayClassPrice") && dict["GatewayClassPrice"] != nil {
            self.gatewayClassPrice = dict["GatewayClassPrice"] as! Double
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribePayAsYouGoPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePayAsYouGoPriceResponseBody?

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
            var model = DescribePayAsYouGoPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.region = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var regions: DescribeRegionsResponseBody.Regions?

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
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSharesBucketInfoForExpressSyncRequest : Tea.TeaModel {
    public var bucketName: String?

    public var bucketRegion: String?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.bucketRegion != nil {
            map["BucketRegion"] = self.bucketRegion!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("BucketRegion") && dict["BucketRegion"] != nil {
            self.bucketRegion = dict["BucketRegion"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeSharesBucketInfoForExpressSyncResponseBody : Tea.TeaModel {
    public class BucketInfos : Tea.TeaModel {
        public class BucketInfo : Tea.TeaModel {
            public var bucketName: String?

            public var bucketPrefix: String?

            public var bucketRegion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketName != nil {
                    map["BucketName"] = self.bucketName!
                }
                if self.bucketPrefix != nil {
                    map["BucketPrefix"] = self.bucketPrefix!
                }
                if self.bucketRegion != nil {
                    map["BucketRegion"] = self.bucketRegion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
                    self.bucketName = dict["BucketName"] as! String
                }
                if dict.keys.contains("BucketPrefix") && dict["BucketPrefix"] != nil {
                    self.bucketPrefix = dict["BucketPrefix"] as! String
                }
                if dict.keys.contains("BucketRegion") && dict["BucketRegion"] != nil {
                    self.bucketRegion = dict["BucketRegion"] as! String
                }
            }
        }
        public var bucketInfo: [DescribeSharesBucketInfoForExpressSyncResponseBody.BucketInfos.BucketInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketInfo != nil {
                var tmp : [Any] = []
                for k in self.bucketInfo! {
                    tmp.append(k.toMap())
                }
                map["BucketInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketInfo") && dict["BucketInfo"] != nil {
                var tmp : [DescribeSharesBucketInfoForExpressSyncResponseBody.BucketInfos.BucketInfo] = []
                for v in dict["BucketInfo"] as! [Any] {
                    var model = DescribeSharesBucketInfoForExpressSyncResponseBody.BucketInfos.BucketInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.bucketInfo = tmp
            }
        }
    }
    public var bucketInfos: DescribeSharesBucketInfoForExpressSyncResponseBody.BucketInfos?

    public var code: String?

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
        try self.bucketInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketInfos != nil {
            map["BucketInfos"] = self.bucketInfos?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketInfos") && dict["BucketInfos"] != nil {
            var model = DescribeSharesBucketInfoForExpressSyncResponseBody.BucketInfos()
            model.fromMap(dict["BucketInfos"] as! [String: Any])
            self.bucketInfos = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeSharesBucketInfoForExpressSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSharesBucketInfoForExpressSyncResponseBody?

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
            var model = DescribeSharesBucketInfoForExpressSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStorageBundleRequest : Tea.TeaModel {
    public var securityToken: String?

    public var storageBundleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
    }
}

public class DescribeStorageBundleResponseBody : Tea.TeaModel {
    public var backendBucketRegionId: String?

    public var code: String?

    public var createdTime: Int64?

    public var description_: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var storageBundleId: String?

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
        if self.backendBucketRegionId != nil {
            map["BackendBucketRegionId"] = self.backendBucketRegionId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendBucketRegionId") && dict["BackendBucketRegionId"] != nil {
            self.backendBucketRegionId = dict["BackendBucketRegionId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! Int64
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeStorageBundleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStorageBundleResponseBody?

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
            var model = DescribeStorageBundleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStorageBundlesRequest : Tea.TeaModel {
    public var backendBucketRegionId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.backendBucketRegionId != nil {
            map["BackendBucketRegionId"] = self.backendBucketRegionId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendBucketRegionId") && dict["BackendBucketRegionId"] != nil {
            self.backendBucketRegionId = dict["BackendBucketRegionId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeStorageBundlesResponseBody : Tea.TeaModel {
    public class StorageBundles : Tea.TeaModel {
        public class StorageBundle : Tea.TeaModel {
            public var backendBucketRegionId: String?

            public var createdTime: Int64?

            public var description_: String?

            public var name: String?

            public var storageBundleId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backendBucketRegionId != nil {
                    map["BackendBucketRegionId"] = self.backendBucketRegionId!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.storageBundleId != nil {
                    map["StorageBundleId"] = self.storageBundleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackendBucketRegionId") && dict["BackendBucketRegionId"] != nil {
                    self.backendBucketRegionId = dict["BackendBucketRegionId"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
                    self.storageBundleId = dict["StorageBundleId"] as! String
                }
            }
        }
        public var storageBundle: [DescribeStorageBundlesResponseBody.StorageBundles.StorageBundle]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.storageBundle != nil {
                var tmp : [Any] = []
                for k in self.storageBundle! {
                    tmp.append(k.toMap())
                }
                map["StorageBundle"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StorageBundle") && dict["StorageBundle"] != nil {
                var tmp : [DescribeStorageBundlesResponseBody.StorageBundles.StorageBundle] = []
                for v in dict["StorageBundle"] as! [Any] {
                    var model = DescribeStorageBundlesResponseBody.StorageBundles.StorageBundle()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.storageBundle = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var storageBundles: DescribeStorageBundlesResponseBody.StorageBundles?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.storageBundles?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storageBundles != nil {
            map["StorageBundles"] = self.storageBundles?.toMap()
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StorageBundles") && dict["StorageBundles"] != nil {
            var model = DescribeStorageBundlesResponseBody.StorageBundles()
            model.fromMap(dict["StorageBundles"] as! [String: Any])
            self.storageBundles = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeStorageBundlesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStorageBundlesResponseBody?

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
            var model = DescribeStorageBundlesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSubscriptionPriceRequest : Tea.TeaModel {
    public var cacheCloudEfficiencySize: Int64?

    public var cacheESSDPl1Size: Int64?

    public var cacheSSDSize: Int64?

    public var gatewayClass: String?

    public var periodQuantity: Int32?

    public var periodUnit: String?

    public var regionId: String?

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
        if self.cacheCloudEfficiencySize != nil {
            map["CacheCloudEfficiencySize"] = self.cacheCloudEfficiencySize!
        }
        if self.cacheESSDPl1Size != nil {
            map["CacheESSDPl1Size"] = self.cacheESSDPl1Size!
        }
        if self.cacheSSDSize != nil {
            map["CacheSSDSize"] = self.cacheSSDSize!
        }
        if self.gatewayClass != nil {
            map["GatewayClass"] = self.gatewayClass!
        }
        if self.periodQuantity != nil {
            map["PeriodQuantity"] = self.periodQuantity!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheCloudEfficiencySize") && dict["CacheCloudEfficiencySize"] != nil {
            self.cacheCloudEfficiencySize = dict["CacheCloudEfficiencySize"] as! Int64
        }
        if dict.keys.contains("CacheESSDPl1Size") && dict["CacheESSDPl1Size"] != nil {
            self.cacheESSDPl1Size = dict["CacheESSDPl1Size"] as! Int64
        }
        if dict.keys.contains("CacheSSDSize") && dict["CacheSSDSize"] != nil {
            self.cacheSSDSize = dict["CacheSSDSize"] as! Int64
        }
        if dict.keys.contains("GatewayClass") && dict["GatewayClass"] != nil {
            self.gatewayClass = dict["GatewayClass"] as! String
        }
        if dict.keys.contains("PeriodQuantity") && dict["PeriodQuantity"] != nil {
            self.periodQuantity = dict["PeriodQuantity"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeSubscriptionPriceResponseBody : Tea.TeaModel {
    public var code: String?

    public var currency: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tradePrice: Double?

    public override init() {
        super.init()
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
        if self.currency != nil {
            map["Currency"] = self.currency!
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
        if self.tradePrice != nil {
            map["TradePrice"] = self.tradePrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Currency") && dict["Currency"] != nil {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TradePrice") && dict["TradePrice"] != nil {
            self.tradePrice = dict["TradePrice"] as! Double
        }
    }
}

public class DescribeSubscriptionPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSubscriptionPriceResponseBody?

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
            var model = DescribeSubscriptionPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTasksRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var targetId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DescribeTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public class SimpleTask : Tea.TeaModel {
            public var createdTime: Int64?

            public var messageKey: String?

            public var name: String?

            public var progress: Int32?

            public var relatedResourceId: String?

            public var stateCode: String?

            public var taskId: String?

            public var updatedTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.messageKey != nil {
                    map["MessageKey"] = self.messageKey!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.relatedResourceId != nil {
                    map["RelatedResourceId"] = self.relatedResourceId!
                }
                if self.stateCode != nil {
                    map["StateCode"] = self.stateCode!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("MessageKey") && dict["MessageKey"] != nil {
                    self.messageKey = dict["MessageKey"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("RelatedResourceId") && dict["RelatedResourceId"] != nil {
                    self.relatedResourceId = dict["RelatedResourceId"] as! String
                }
                if dict.keys.contains("StateCode") && dict["StateCode"] != nil {
                    self.stateCode = dict["StateCode"] as! String
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                    self.updatedTime = dict["UpdatedTime"] as! Int64
                }
            }
        }
        public var simpleTask: [DescribeTasksResponseBody.Tasks.SimpleTask]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.simpleTask != nil {
                var tmp : [Any] = []
                for k in self.simpleTask! {
                    tmp.append(k.toMap())
                }
                map["SimpleTask"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SimpleTask") && dict["SimpleTask"] != nil {
                var tmp : [DescribeTasksResponseBody.Tasks.SimpleTask] = []
                for v in dict["SimpleTask"] as! [Any] {
                    var model = DescribeTasksResponseBody.Tasks.SimpleTask()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.simpleTask = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var tasks: DescribeTasksResponseBody.Tasks?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tasks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tasks != nil {
            map["Tasks"] = self.tasks?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
            var model = DescribeTasksResponseBody.Tasks()
            model.fromMap(dict["Tasks"] as! [String: Any])
            self.tasks = model
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTasksResponseBody?

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
            var model = DescribeTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserBusinessStatusRequest : Tea.TeaModel {
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeUserBusinessStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var isEnabled: Bool?

    public var isIndebted: Bool?

    public var isIndebtedOverdue: Bool?

    public var isRiskControl: Bool?

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
            map["Code"] = self.code!
        }
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
        }
        if self.isIndebted != nil {
            map["IsIndebted"] = self.isIndebted!
        }
        if self.isIndebtedOverdue != nil {
            map["IsIndebtedOverdue"] = self.isIndebtedOverdue!
        }
        if self.isRiskControl != nil {
            map["IsRiskControl"] = self.isRiskControl!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsEnabled") && dict["IsEnabled"] != nil {
            self.isEnabled = dict["IsEnabled"] as! Bool
        }
        if dict.keys.contains("IsIndebted") && dict["IsIndebted"] != nil {
            self.isIndebted = dict["IsIndebted"] as! Bool
        }
        if dict.keys.contains("IsIndebtedOverdue") && dict["IsIndebtedOverdue"] != nil {
            self.isIndebtedOverdue = dict["IsIndebtedOverdue"] as! Bool
        }
        if dict.keys.contains("IsRiskControl") && dict["IsRiskControl"] != nil {
            self.isRiskControl = dict["IsRiskControl"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeUserBusinessStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserBusinessStatusResponseBody?

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
            var model = DescribeUserBusinessStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVSwitchesRequest : Tea.TeaModel {
    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceRegionId: String?

    public var securityToken: String?

    public var storageBundleId: String?

    public var vSwitchId: String?

    public var vpcId: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class DescribeVSwitchesResponseBody : Tea.TeaModel {
    public class VSwitches : Tea.TeaModel {
        public class VSwitch : Tea.TeaModel {
            public var availableSelectionInfo: String?

            public var id: String?

            public var isDefault: Bool?

            public var name: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.availableSelectionInfo != nil {
                    map["AvailableSelectionInfo"] = self.availableSelectionInfo!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvailableSelectionInfo") && dict["AvailableSelectionInfo"] != nil {
                    self.availableSelectionInfo = dict["AvailableSelectionInfo"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                    self.isDefault = dict["IsDefault"] as! Bool
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var vSwitch: [DescribeVSwitchesResponseBody.VSwitches.VSwitch]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vSwitch != nil {
                var tmp : [Any] = []
                for k in self.vSwitch! {
                    tmp.append(k.toMap())
                }
                map["VSwitch"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VSwitch") && dict["VSwitch"] != nil {
                var tmp : [DescribeVSwitchesResponseBody.VSwitches.VSwitch] = []
                for v in dict["VSwitch"] as! [Any] {
                    var model = DescribeVSwitchesResponseBody.VSwitches.VSwitch()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vSwitch = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var vSwitches: DescribeVSwitchesResponseBody.VSwitches?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vSwitches?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vSwitches != nil {
            map["VSwitches"] = self.vSwitches?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
            var model = DescribeVSwitchesResponseBody.VSwitches()
            model.fromMap(dict["VSwitches"] as! [String: Any])
            self.vSwitches = model
        }
    }
}

public class DescribeVSwitchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVSwitchesResponseBody?

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
            var model = DescribeVSwitchesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVpcsRequest : Tea.TeaModel {
    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceRegionId: String?

    public var securityToken: String?

    public var storageBundleId: String?

    public var vpcId: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class DescribeVpcsResponseBody : Tea.TeaModel {
    public class Vpcs : Tea.TeaModel {
        public class Vpc : Tea.TeaModel {
            public var cidrBlock: String?

            public var id: String?

            public var isDefault: Bool?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidrBlock != nil {
                    map["CidrBlock"] = self.cidrBlock!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CidrBlock") && dict["CidrBlock"] != nil {
                    self.cidrBlock = dict["CidrBlock"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                    self.isDefault = dict["IsDefault"] as! Bool
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var vpc: [DescribeVpcsResponseBody.Vpcs.Vpc]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpc != nil {
                var tmp : [Any] = []
                for k in self.vpc! {
                    tmp.append(k.toMap())
                }
                map["Vpc"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Vpc") && dict["Vpc"] != nil {
                var tmp : [DescribeVpcsResponseBody.Vpcs.Vpc] = []
                for v in dict["Vpc"] as! [Any] {
                    var model = DescribeVpcsResponseBody.Vpcs.Vpc()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vpc = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var vpcs: DescribeVpcsResponseBody.Vpcs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vpcs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vpcs != nil {
            map["Vpcs"] = self.vpcs?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Vpcs") && dict["Vpcs"] != nil {
            var model = DescribeVpcsResponseBody.Vpcs()
            model.fromMap(dict["Vpcs"] as! [String: Any])
            self.vpcs = model
        }
    }
}

public class DescribeVpcsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcsResponseBody?

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
            var model = DescribeVpcsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeZonesRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public class Zone : Tea.TeaModel {
            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var zone: [DescribeZonesResponseBody.Zones.Zone]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.zone != nil {
                var tmp : [Any] = []
                for k in self.zone! {
                    tmp.append(k.toMap())
                }
                map["Zone"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Zone") && dict["Zone"] != nil {
                var tmp : [DescribeZonesResponseBody.Zones.Zone] = []
                for v in dict["Zone"] as! [Any] {
                    var model = DescribeZonesResponseBody.Zones.Zone()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zone = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var zones: DescribeZonesResponseBody.Zones?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.zones?.validate()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.zones != nil {
            map["Zones"] = self.zones?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Zones") && dict["Zones"] != nil {
            var model = DescribeZonesResponseBody.Zones()
            model.fromMap(dict["Zones"] as! [String: Any])
            self.zones = model
        }
    }
}

public class DescribeZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZonesResponseBody?

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
            var model = DescribeZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableGatewayLoggingRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DisableGatewayLoggingResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DisableGatewayLoggingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableGatewayLoggingResponseBody?

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
            var model = DisableGatewayLoggingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableGatewayNFSVersionRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var NFSVersion: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.NFSVersion != nil {
            map["NFSVersion"] = self.NFSVersion!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("NFSVersion") && dict["NFSVersion"] != nil {
            self.NFSVersion = dict["NFSVersion"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DisableGatewayNFSVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DisableGatewayNFSVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableGatewayNFSVersionResponseBody?

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
            var model = DisableGatewayNFSVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableGatewayIpv6Request : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class EnableGatewayIpv6ResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class EnableGatewayIpv6Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableGatewayIpv6ResponseBody?

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
            var model = EnableGatewayIpv6ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableGatewayLoggingRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class EnableGatewayLoggingResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class EnableGatewayLoggingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableGatewayLoggingResponseBody?

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
            var model = EnableGatewayLoggingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExpandCacheDiskRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var localFilePath: String?

    public var newSizeInGB: Int32?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.localFilePath != nil {
            map["LocalFilePath"] = self.localFilePath!
        }
        if self.newSizeInGB != nil {
            map["NewSizeInGB"] = self.newSizeInGB!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("LocalFilePath") && dict["LocalFilePath"] != nil {
            self.localFilePath = dict["LocalFilePath"] as! String
        }
        if dict.keys.contains("NewSizeInGB") && dict["NewSizeInGB"] != nil {
            self.newSizeInGB = dict["NewSizeInGB"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ExpandCacheDiskResponseBody : Tea.TeaModel {
    public var buyURL: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyURL != nil {
            map["BuyURL"] = self.buyURL!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyURL") && dict["BuyURL"] != nil {
            self.buyURL = dict["BuyURL"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ExpandCacheDiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExpandCacheDiskResponseBody?

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
            var model = ExpandCacheDiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExpandGatewayFileShareRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var indexId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
    }
}

public class ExpandGatewayFileShareResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ExpandGatewayFileShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExpandGatewayFileShareResponseBody?

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
            var model = ExpandGatewayFileShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExpandGatewayNetworkBandwidthRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var newNetworkBandwidth: Int32?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.newNetworkBandwidth != nil {
            map["NewNetworkBandwidth"] = self.newNetworkBandwidth!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("NewNetworkBandwidth") && dict["NewNetworkBandwidth"] != nil {
            self.newNetworkBandwidth = dict["NewNetworkBandwidth"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ExpandGatewayNetworkBandwidthResponseBody : Tea.TeaModel {
    public var buyURL: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyURL != nil {
            map["BuyURL"] = self.buyURL!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyURL") && dict["BuyURL"] != nil {
            self.buyURL = dict["BuyURL"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ExpandGatewayNetworkBandwidthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExpandGatewayNetworkBandwidthResponseBody?

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
            var model = ExpandGatewayNetworkBandwidthResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateGatewayTokenRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class GenerateGatewayTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class GenerateGatewayTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateGatewayTokenResponseBody?

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
            var model = GenerateGatewayTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateMqttTokenRequest : Tea.TeaModel {
    public var clientUUID: String?

    public var gatewayId: String?

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
        if self.clientUUID != nil {
            map["ClientUUID"] = self.clientUUID!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientUUID") && dict["ClientUUID"] != nil {
            self.clientUUID = dict["ClientUUID"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class GenerateMqttTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var mqttToken: String?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.mqttToken != nil {
            map["MqttToken"] = self.mqttToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MqttToken") && dict["MqttToken"] != nil {
            self.mqttToken = dict["MqttToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GenerateMqttTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateMqttTokenResponseBody?

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
            var model = GenerateMqttTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateStsTokenRequest : Tea.TeaModel {
    public var expireInSeconds: Int64?

    public var gatewayId: String?

    public var securityToken: String?

    public var tokenType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireInSeconds != nil {
            map["ExpireInSeconds"] = self.expireInSeconds!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tokenType != nil {
            map["TokenType"] = self.tokenType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireInSeconds") && dict["ExpireInSeconds"] != nil {
            self.expireInSeconds = dict["ExpireInSeconds"] as! Int64
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("TokenType") && dict["TokenType"] != nil {
            self.tokenType = dict["TokenType"] as! String
        }
    }
}

public class GenerateStsTokenResponseBody : Tea.TeaModel {
    public var accessKeyId: String?

    public var accessKeySecret: String?

    public var code: String?

    public var environment: String?

    public var expiration: String?

    public var message: String?

    public var requestId: String?

    public var securityToken: String?

    public var success: Bool?

    public var supportBundleTarget: String?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.supportBundleTarget != nil {
            map["SupportBundleTarget"] = self.supportBundleTarget!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
            self.accessKeyId = dict["AccessKeyId"] as! String
        }
        if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
            self.accessKeySecret = dict["AccessKeySecret"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Environment") && dict["Environment"] != nil {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
            self.expiration = dict["Expiration"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("SupportBundleTarget") && dict["SupportBundleTarget"] != nil {
            self.supportBundleTarget = dict["SupportBundleTarget"] as! String
        }
    }
}

public class GenerateStsTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateStsTokenResponseBody?

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
            var model = GenerateStsTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class HandleGatewayAutoPlanRequest : Tea.TeaModel {
    public var cancel: Bool?

    public var delayHours: Int32?

    public var gatewayId: String?

    public var planId: String?

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
        if self.cancel != nil {
            map["Cancel"] = self.cancel!
        }
        if self.delayHours != nil {
            map["DelayHours"] = self.delayHours!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cancel") && dict["Cancel"] != nil {
            self.cancel = dict["Cancel"] as! Bool
        }
        if dict.keys.contains("DelayHours") && dict["DelayHours"] != nil {
            self.delayHours = dict["DelayHours"] as! Int32
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class HandleGatewayAutoPlanResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class HandleGatewayAutoPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HandleGatewayAutoPlanResponseBody?

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
            var model = HandleGatewayAutoPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceRegionId: String?

    public var resourceType: String?

    public var securityToken: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public class TagResource : Tea.TeaModel {
            public var resourceId: String?

            public var resourceType: String?

            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") && dict["TagResource"] != nil {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in dict["TagResource"] as! [Any] {
                    var model = ListTagResourcesResponseBody.TagResources.TagResource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            map["TagResources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
            self.tagResources = model
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

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
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyGatewayRequest : Tea.TeaModel {
    public var description_: String?

    public var gatewayId: String?

    public var name: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ModifyGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var gatewayId: String?

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
            map["Code"] = self.code!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyGatewayResponseBody?

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
            var model = ModifyGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyGatewayBlockVolumeRequest : Tea.TeaModel {
    public var cacheConfig: String?

    public var gatewayId: String?

    public var indexId: String?

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
        if self.cacheConfig != nil {
            map["CacheConfig"] = self.cacheConfig!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheConfig") && dict["CacheConfig"] != nil {
            self.cacheConfig = dict["CacheConfig"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ModifyGatewayBlockVolumeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ModifyGatewayBlockVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyGatewayBlockVolumeResponseBody?

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
            var model = ModifyGatewayBlockVolumeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyGatewayClassRequest : Tea.TeaModel {
    public var gatewayClass: String?

    public var gatewayId: String?

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
        if self.gatewayClass != nil {
            map["GatewayClass"] = self.gatewayClass!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayClass") && dict["GatewayClass"] != nil {
            self.gatewayClass = dict["GatewayClass"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ModifyGatewayClassResponseBody : Tea.TeaModel {
    public var buyURL: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyURL != nil {
            map["BuyURL"] = self.buyURL!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyURL") && dict["BuyURL"] != nil {
            self.buyURL = dict["BuyURL"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ModifyGatewayClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyGatewayClassResponseBody?

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
            var model = ModifyGatewayClassResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyGatewayFileShareRequest : Tea.TeaModel {
    public var cacheConfig: String?

    public var gatewayId: String?

    public var indexId: String?

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
        if self.cacheConfig != nil {
            map["CacheConfig"] = self.cacheConfig!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheConfig") && dict["CacheConfig"] != nil {
            self.cacheConfig = dict["CacheConfig"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ModifyGatewayFileShareResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ModifyGatewayFileShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyGatewayFileShareResponseBody?

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
            var model = ModifyGatewayFileShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyGatewayFileShareWatermarkRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var indexId: String?

    public var securityToken: String?

    public var watermark: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.watermark != nil {
            map["Watermark"] = self.watermark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Watermark") && dict["Watermark"] != nil {
            self.watermark = dict["Watermark"] as! Int32
        }
    }
}

public class ModifyGatewayFileShareWatermarkResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ModifyGatewayFileShareWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyGatewayFileShareWatermarkResponseBody?

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
            var model = ModifyGatewayFileShareWatermarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyStorageBundleRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var securityToken: String?

    public var storageBundleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
    }
}

public class ModifyStorageBundleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var storageBundleId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyStorageBundleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyStorageBundleResponseBody?

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
            var model = ModifyStorageBundleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenSgwServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenSgwServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenSgwServiceResponseBody?

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
            var model = OpenSgwServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OperateGatewayRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var operateAction: String?

    public var params: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.operateAction != nil {
            map["OperateAction"] = self.operateAction!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("OperateAction") && dict["OperateAction"] != nil {
            self.operateAction = dict["OperateAction"] as! String
        }
        if dict.keys.contains("Params") && dict["Params"] != nil {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class OperateGatewayResponseBody : Tea.TeaModel {
    public var buyURL: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyURL != nil {
            map["BuyURL"] = self.buyURL!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyURL") && dict["BuyURL"] != nil {
            self.buyURL = dict["BuyURL"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class OperateGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateGatewayResponseBody?

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
            var model = OperateGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseServiceRequest : Tea.TeaModel {
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ReleaseServiceResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReleaseServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseServiceResponseBody?

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
            var model = ReleaseServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveSharesFromExpressSyncRequest : Tea.TeaModel {
    public var expressSyncId: String?

    public var gatewayShares: String?

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
        if self.expressSyncId != nil {
            map["ExpressSyncId"] = self.expressSyncId!
        }
        if self.gatewayShares != nil {
            map["GatewayShares"] = self.gatewayShares!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpressSyncId") && dict["ExpressSyncId"] != nil {
            self.expressSyncId = dict["ExpressSyncId"] as! String
        }
        if dict.keys.contains("GatewayShares") && dict["GatewayShares"] != nil {
            self.gatewayShares = dict["GatewayShares"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class RemoveSharesFromExpressSyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class RemoveSharesFromExpressSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveSharesFromExpressSyncResponseBody?

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
            var model = RemoveSharesFromExpressSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveTagsFromGatewayRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var securityToken: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class RemoveTagsFromGatewayResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RemoveTagsFromGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveTagsFromGatewayResponseBody?

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
            var model = RemoveTagsFromGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportBlockVolumesRequest : Tea.TeaModel {
    public var clientUUID: String?

    public var gatewayId: String?

    public var info: String?

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
        if self.clientUUID != nil {
            map["ClientUUID"] = self.clientUUID!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.info != nil {
            map["Info"] = self.info!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientUUID") && dict["ClientUUID"] != nil {
            self.clientUUID = dict["ClientUUID"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Info") && dict["Info"] != nil {
            self.info = dict["Info"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ReportBlockVolumesResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReportBlockVolumesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportBlockVolumesResponseBody?

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
            var model = ReportBlockVolumesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportFileSharesRequest : Tea.TeaModel {
    public var clientUUID: String?

    public var gatewayId: String?

    public var info: String?

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
        if self.clientUUID != nil {
            map["ClientUUID"] = self.clientUUID!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.info != nil {
            map["Info"] = self.info!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientUUID") && dict["ClientUUID"] != nil {
            self.clientUUID = dict["ClientUUID"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Info") && dict["Info"] != nil {
            self.info = dict["Info"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ReportFileSharesResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReportFileSharesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportFileSharesResponseBody?

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
            var model = ReportFileSharesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportGatewayInfoRequest : Tea.TeaModel {
    public var clientUUID: String?

    public var gatewayId: String?

    public var gatewayStatus: String?

    public var info: String?

    public var securityToken: String?

    public var time: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientUUID != nil {
            map["ClientUUID"] = self.clientUUID!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.gatewayStatus != nil {
            map["GatewayStatus"] = self.gatewayStatus!
        }
        if self.info != nil {
            map["Info"] = self.info!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientUUID") && dict["ClientUUID"] != nil {
            self.clientUUID = dict["ClientUUID"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("GatewayStatus") && dict["GatewayStatus"] != nil {
            self.gatewayStatus = dict["GatewayStatus"] as! String
        }
        if dict.keys.contains("Info") && dict["Info"] != nil {
            self.info = dict["Info"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Time") && dict["Time"] != nil {
            self.time = dict["Time"] as! Int64
        }
    }
}

public class ReportGatewayInfoResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReportGatewayInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportGatewayInfoResponseBody?

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
            var model = ReportGatewayInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportGatewayUsageRequest : Tea.TeaModel {
    public var clientUUID: String?

    public var gatewayId: String?

    public var securityToken: String?

    public var usage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientUUID != nil {
            map["ClientUUID"] = self.clientUUID!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.usage != nil {
            map["Usage"] = self.usage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientUUID") && dict["ClientUUID"] != nil {
            self.clientUUID = dict["ClientUUID"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Usage") && dict["Usage"] != nil {
            self.usage = dict["Usage"] as! String
        }
    }
}

public class ReportGatewayUsageResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReportGatewayUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportGatewayUsageResponseBody?

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
            var model = ReportGatewayUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetGatewayPasswordRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var password: String?

    public var securityToken: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class ResetGatewayPasswordResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ResetGatewayPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetGatewayPasswordResponseBody?

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
            var model = ResetGatewayPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestartFileSharesRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var securityToken: String?

    public var shareProtocol: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.shareProtocol != nil {
            map["ShareProtocol"] = self.shareProtocol!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ShareProtocol") && dict["ShareProtocol"] != nil {
            self.shareProtocol = dict["ShareProtocol"] as! String
        }
    }
}

public class RestartFileSharesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class RestartFileSharesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartFileSharesResponseBody?

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
            var model = RestartFileSharesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetGatewayADInfoRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var isEnabled: Bool?

    public var password: String?

    public var securityToken: String?

    public var serverIp: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverIp != nil {
            map["ServerIp"] = self.serverIp!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IsEnabled") && dict["IsEnabled"] != nil {
            self.isEnabled = dict["IsEnabled"] as! Bool
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
            self.serverIp = dict["ServerIp"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class SetGatewayADInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class SetGatewayADInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetGatewayADInfoResponseBody?

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
            var model = SetGatewayADInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetGatewayAutoUpgradeConfigurationRequest : Tea.TeaModel {
    public var autoUpgradeEndHour: Int32?

    public var autoUpgradeStartHour: Int32?

    public var gatewayId: String?

    public var isAutoUpgrade: Bool?

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
        if self.autoUpgradeEndHour != nil {
            map["AutoUpgradeEndHour"] = self.autoUpgradeEndHour!
        }
        if self.autoUpgradeStartHour != nil {
            map["AutoUpgradeStartHour"] = self.autoUpgradeStartHour!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.isAutoUpgrade != nil {
            map["IsAutoUpgrade"] = self.isAutoUpgrade!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoUpgradeEndHour") && dict["AutoUpgradeEndHour"] != nil {
            self.autoUpgradeEndHour = dict["AutoUpgradeEndHour"] as! Int32
        }
        if dict.keys.contains("AutoUpgradeStartHour") && dict["AutoUpgradeStartHour"] != nil {
            self.autoUpgradeStartHour = dict["AutoUpgradeStartHour"] as! Int32
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IsAutoUpgrade") && dict["IsAutoUpgrade"] != nil {
            self.isAutoUpgrade = dict["IsAutoUpgrade"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SetGatewayAutoUpgradeConfigurationResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetGatewayAutoUpgradeConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetGatewayAutoUpgradeConfigurationResponseBody?

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
            var model = SetGatewayAutoUpgradeConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetGatewayDNSRequest : Tea.TeaModel {
    public var dnsServer: String?

    public var gatewayId: String?

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
        if self.dnsServer != nil {
            map["DnsServer"] = self.dnsServer!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsServer") && dict["DnsServer"] != nil {
            self.dnsServer = dict["DnsServer"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SetGatewayDNSResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class SetGatewayDNSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetGatewayDNSResponseBody?

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
            var model = SetGatewayDNSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetGatewayLDAPInfoRequest : Tea.TeaModel {
    public var baseDN: String?

    public var gatewayId: String?

    public var isEnabled: Bool?

    public var isTls: Bool?

    public var password: String?

    public var rootDN: String?

    public var securityToken: String?

    public var serverIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseDN != nil {
            map["BaseDN"] = self.baseDN!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
        }
        if self.isTls != nil {
            map["IsTls"] = self.isTls!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.rootDN != nil {
            map["RootDN"] = self.rootDN!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverIp != nil {
            map["ServerIp"] = self.serverIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseDN") && dict["BaseDN"] != nil {
            self.baseDN = dict["BaseDN"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IsEnabled") && dict["IsEnabled"] != nil {
            self.isEnabled = dict["IsEnabled"] as! Bool
        }
        if dict.keys.contains("IsTls") && dict["IsTls"] != nil {
            self.isTls = dict["IsTls"] as! Bool
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RootDN") && dict["RootDN"] != nil {
            self.rootDN = dict["RootDN"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
            self.serverIp = dict["ServerIp"] as! String
        }
    }
}

public class SetGatewayLDAPInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class SetGatewayLDAPInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetGatewayLDAPInfoResponseBody?

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
            var model = SetGatewayLDAPInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SwitchCSGClientsReverseSyncConfigurationRequest : Tea.TeaModel {
    public var clientIds: [String]?

    public var clientRegionId: String?

    public var isReverseSync: Bool?

    public var reverseSyncInternalSecond: Int32?

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
        if self.clientIds != nil {
            map["ClientIds"] = self.clientIds!
        }
        if self.clientRegionId != nil {
            map["ClientRegionId"] = self.clientRegionId!
        }
        if self.isReverseSync != nil {
            map["IsReverseSync"] = self.isReverseSync!
        }
        if self.reverseSyncInternalSecond != nil {
            map["ReverseSyncInternalSecond"] = self.reverseSyncInternalSecond!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIds = dict["ClientIds"] as! [String]
        }
        if dict.keys.contains("ClientRegionId") && dict["ClientRegionId"] != nil {
            self.clientRegionId = dict["ClientRegionId"] as! String
        }
        if dict.keys.contains("IsReverseSync") && dict["IsReverseSync"] != nil {
            self.isReverseSync = dict["IsReverseSync"] as! Bool
        }
        if dict.keys.contains("ReverseSyncInternalSecond") && dict["ReverseSyncInternalSecond"] != nil {
            self.reverseSyncInternalSecond = dict["ReverseSyncInternalSecond"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SwitchCSGClientsReverseSyncConfigurationShrinkRequest : Tea.TeaModel {
    public var clientIdsShrink: String?

    public var clientRegionId: String?

    public var isReverseSync: Bool?

    public var reverseSyncInternalSecond: Int32?

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
        if self.clientIdsShrink != nil {
            map["ClientIds"] = self.clientIdsShrink!
        }
        if self.clientRegionId != nil {
            map["ClientRegionId"] = self.clientRegionId!
        }
        if self.isReverseSync != nil {
            map["IsReverseSync"] = self.isReverseSync!
        }
        if self.reverseSyncInternalSecond != nil {
            map["ReverseSyncInternalSecond"] = self.reverseSyncInternalSecond!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIdsShrink = dict["ClientIds"] as! String
        }
        if dict.keys.contains("ClientRegionId") && dict["ClientRegionId"] != nil {
            self.clientRegionId = dict["ClientRegionId"] as! String
        }
        if dict.keys.contains("IsReverseSync") && dict["IsReverseSync"] != nil {
            self.isReverseSync = dict["IsReverseSync"] as! Bool
        }
        if dict.keys.contains("ReverseSyncInternalSecond") && dict["ReverseSyncInternalSecond"] != nil {
            self.reverseSyncInternalSecond = dict["ReverseSyncInternalSecond"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SwitchCSGClientsReverseSyncConfigurationResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class SwitchCSGClientsReverseSyncConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchCSGClientsReverseSyncConfigurationResponseBody?

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
            var model = SwitchCSGClientsReverseSyncConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SwitchGatewayExpirationPolicyRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SwitchGatewayExpirationPolicyResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SwitchGatewayExpirationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchGatewayExpirationPolicyResponseBody?

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
            var model = SwitchGatewayExpirationPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SwitchToSubscriptionRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SwitchToSubscriptionResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var subscriptionURL: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subscriptionURL != nil {
            map["SubscriptionURL"] = self.subscriptionURL!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubscriptionURL") && dict["SubscriptionURL"] != nil {
            self.subscriptionURL = dict["SubscriptionURL"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SwitchToSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchToSubscriptionResponseBody?

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
            var model = SwitchToSubscriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var regionId: String?

    public var resourceId: [String]?

    public var resourceRegionId: String?

    public var resourceType: String?

    public var securityToken: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TriggerGatewayRemoteSyncRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var indexId: String?

    public var path: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class TriggerGatewayRemoteSyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class TriggerGatewayRemoteSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerGatewayRemoteSyncResponseBody?

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
            var model = TriggerGatewayRemoteSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceRegionId: String?

    public var resourceType: String?

    public var securityToken: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

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
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGatewayBlockVolumeRequest : Tea.TeaModel {
    public var chapEnabled: Bool?

    public var chapInPassword: String?

    public var chapInUser: String?

    public var gatewayId: String?

    public var indexId: String?

    public var securityToken: String?

    public var size: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chapEnabled != nil {
            map["ChapEnabled"] = self.chapEnabled!
        }
        if self.chapInPassword != nil {
            map["ChapInPassword"] = self.chapInPassword!
        }
        if self.chapInUser != nil {
            map["ChapInUser"] = self.chapInUser!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChapEnabled") && dict["ChapEnabled"] != nil {
            self.chapEnabled = dict["ChapEnabled"] as! Bool
        }
        if dict.keys.contains("ChapInPassword") && dict["ChapInPassword"] != nil {
            self.chapInPassword = dict["ChapInPassword"] as! String
        }
        if dict.keys.contains("ChapInUser") && dict["ChapInUser"] != nil {
            self.chapInUser = dict["ChapInUser"] as! String
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int64
        }
    }
}

public class UpdateGatewayBlockVolumeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UpdateGatewayBlockVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayBlockVolumeResponseBody?

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
            var model = UpdateGatewayBlockVolumeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGatewayFileShareRequest : Tea.TeaModel {
    public var accessBasedEnumeration: Bool?

    public var backendLimit: Int32?

    public var browsable: Bool?

    public var bypassCacheRead: Bool?

    public var cacheMode: String?

    public var clientSideCmk: String?

    public var clientSideEncryption: Bool?

    public var directIO: Bool?

    public var downloadLimit: Int32?

    public var fastReclaim: Bool?

    public var frontendLimit: Int32?

    public var gatewayId: String?

    public var ignoreDelete: Bool?

    public var inPlace: Bool?

    public var indexId: String?

    public var kmsRotatePeriod: Int64?

    public var lagPeriod: Int64?

    public var name: String?

    public var nfsV4Optimization: Bool?

    public var pollingInterval: Int32?

    public var readOnlyClientList: String?

    public var readOnlyUserList: String?

    public var readWriteClientList: String?

    public var readWriteUserList: String?

    public var remoteSync: Bool?

    public var remoteSyncDownload: Bool?

    public var securityToken: String?

    public var serverSideCmk: String?

    public var serverSideEncryption: Bool?

    public var squash: String?

    public var transferAcceleration: Bool?

    public var windowsAcl: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessBasedEnumeration != nil {
            map["AccessBasedEnumeration"] = self.accessBasedEnumeration!
        }
        if self.backendLimit != nil {
            map["BackendLimit"] = self.backendLimit!
        }
        if self.browsable != nil {
            map["Browsable"] = self.browsable!
        }
        if self.bypassCacheRead != nil {
            map["BypassCacheRead"] = self.bypassCacheRead!
        }
        if self.cacheMode != nil {
            map["CacheMode"] = self.cacheMode!
        }
        if self.clientSideCmk != nil {
            map["ClientSideCmk"] = self.clientSideCmk!
        }
        if self.clientSideEncryption != nil {
            map["ClientSideEncryption"] = self.clientSideEncryption!
        }
        if self.directIO != nil {
            map["DirectIO"] = self.directIO!
        }
        if self.downloadLimit != nil {
            map["DownloadLimit"] = self.downloadLimit!
        }
        if self.fastReclaim != nil {
            map["FastReclaim"] = self.fastReclaim!
        }
        if self.frontendLimit != nil {
            map["FrontendLimit"] = self.frontendLimit!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.ignoreDelete != nil {
            map["IgnoreDelete"] = self.ignoreDelete!
        }
        if self.inPlace != nil {
            map["InPlace"] = self.inPlace!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.kmsRotatePeriod != nil {
            map["KmsRotatePeriod"] = self.kmsRotatePeriod!
        }
        if self.lagPeriod != nil {
            map["LagPeriod"] = self.lagPeriod!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nfsV4Optimization != nil {
            map["NfsV4Optimization"] = self.nfsV4Optimization!
        }
        if self.pollingInterval != nil {
            map["PollingInterval"] = self.pollingInterval!
        }
        if self.readOnlyClientList != nil {
            map["ReadOnlyClientList"] = self.readOnlyClientList!
        }
        if self.readOnlyUserList != nil {
            map["ReadOnlyUserList"] = self.readOnlyUserList!
        }
        if self.readWriteClientList != nil {
            map["ReadWriteClientList"] = self.readWriteClientList!
        }
        if self.readWriteUserList != nil {
            map["ReadWriteUserList"] = self.readWriteUserList!
        }
        if self.remoteSync != nil {
            map["RemoteSync"] = self.remoteSync!
        }
        if self.remoteSyncDownload != nil {
            map["RemoteSyncDownload"] = self.remoteSyncDownload!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverSideCmk != nil {
            map["ServerSideCmk"] = self.serverSideCmk!
        }
        if self.serverSideEncryption != nil {
            map["ServerSideEncryption"] = self.serverSideEncryption!
        }
        if self.squash != nil {
            map["Squash"] = self.squash!
        }
        if self.transferAcceleration != nil {
            map["TransferAcceleration"] = self.transferAcceleration!
        }
        if self.windowsAcl != nil {
            map["WindowsAcl"] = self.windowsAcl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessBasedEnumeration") && dict["AccessBasedEnumeration"] != nil {
            self.accessBasedEnumeration = dict["AccessBasedEnumeration"] as! Bool
        }
        if dict.keys.contains("BackendLimit") && dict["BackendLimit"] != nil {
            self.backendLimit = dict["BackendLimit"] as! Int32
        }
        if dict.keys.contains("Browsable") && dict["Browsable"] != nil {
            self.browsable = dict["Browsable"] as! Bool
        }
        if dict.keys.contains("BypassCacheRead") && dict["BypassCacheRead"] != nil {
            self.bypassCacheRead = dict["BypassCacheRead"] as! Bool
        }
        if dict.keys.contains("CacheMode") && dict["CacheMode"] != nil {
            self.cacheMode = dict["CacheMode"] as! String
        }
        if dict.keys.contains("ClientSideCmk") && dict["ClientSideCmk"] != nil {
            self.clientSideCmk = dict["ClientSideCmk"] as! String
        }
        if dict.keys.contains("ClientSideEncryption") && dict["ClientSideEncryption"] != nil {
            self.clientSideEncryption = dict["ClientSideEncryption"] as! Bool
        }
        if dict.keys.contains("DirectIO") && dict["DirectIO"] != nil {
            self.directIO = dict["DirectIO"] as! Bool
        }
        if dict.keys.contains("DownloadLimit") && dict["DownloadLimit"] != nil {
            self.downloadLimit = dict["DownloadLimit"] as! Int32
        }
        if dict.keys.contains("FastReclaim") && dict["FastReclaim"] != nil {
            self.fastReclaim = dict["FastReclaim"] as! Bool
        }
        if dict.keys.contains("FrontendLimit") && dict["FrontendLimit"] != nil {
            self.frontendLimit = dict["FrontendLimit"] as! Int32
        }
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IgnoreDelete") && dict["IgnoreDelete"] != nil {
            self.ignoreDelete = dict["IgnoreDelete"] as! Bool
        }
        if dict.keys.contains("InPlace") && dict["InPlace"] != nil {
            self.inPlace = dict["InPlace"] as! Bool
        }
        if dict.keys.contains("IndexId") && dict["IndexId"] != nil {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("KmsRotatePeriod") && dict["KmsRotatePeriod"] != nil {
            self.kmsRotatePeriod = dict["KmsRotatePeriod"] as! Int64
        }
        if dict.keys.contains("LagPeriod") && dict["LagPeriod"] != nil {
            self.lagPeriod = dict["LagPeriod"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NfsV4Optimization") && dict["NfsV4Optimization"] != nil {
            self.nfsV4Optimization = dict["NfsV4Optimization"] as! Bool
        }
        if dict.keys.contains("PollingInterval") && dict["PollingInterval"] != nil {
            self.pollingInterval = dict["PollingInterval"] as! Int32
        }
        if dict.keys.contains("ReadOnlyClientList") && dict["ReadOnlyClientList"] != nil {
            self.readOnlyClientList = dict["ReadOnlyClientList"] as! String
        }
        if dict.keys.contains("ReadOnlyUserList") && dict["ReadOnlyUserList"] != nil {
            self.readOnlyUserList = dict["ReadOnlyUserList"] as! String
        }
        if dict.keys.contains("ReadWriteClientList") && dict["ReadWriteClientList"] != nil {
            self.readWriteClientList = dict["ReadWriteClientList"] as! String
        }
        if dict.keys.contains("ReadWriteUserList") && dict["ReadWriteUserList"] != nil {
            self.readWriteUserList = dict["ReadWriteUserList"] as! String
        }
        if dict.keys.contains("RemoteSync") && dict["RemoteSync"] != nil {
            self.remoteSync = dict["RemoteSync"] as! Bool
        }
        if dict.keys.contains("RemoteSyncDownload") && dict["RemoteSyncDownload"] != nil {
            self.remoteSyncDownload = dict["RemoteSyncDownload"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerSideCmk") && dict["ServerSideCmk"] != nil {
            self.serverSideCmk = dict["ServerSideCmk"] as! String
        }
        if dict.keys.contains("ServerSideEncryption") && dict["ServerSideEncryption"] != nil {
            self.serverSideEncryption = dict["ServerSideEncryption"] as! Bool
        }
        if dict.keys.contains("Squash") && dict["Squash"] != nil {
            self.squash = dict["Squash"] as! String
        }
        if dict.keys.contains("TransferAcceleration") && dict["TransferAcceleration"] != nil {
            self.transferAcceleration = dict["TransferAcceleration"] as! Bool
        }
        if dict.keys.contains("WindowsAcl") && dict["WindowsAcl"] != nil {
            self.windowsAcl = dict["WindowsAcl"] as! Bool
        }
    }
}

public class UpdateGatewayFileShareResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UpdateGatewayFileShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayFileShareResponseBody?

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
            var model = UpdateGatewayFileShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeGatewayRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class UpgradeGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UpgradeGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeGatewayResponseBody?

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
            var model = UpgradeGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadCSGClientLogRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientRegionId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientRegionId != nil {
            map["ClientRegionId"] = self.clientRegionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientRegionId") && dict["ClientRegionId"] != nil {
            self.clientRegionId = dict["ClientRegionId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class UploadCSGClientLogResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UploadCSGClientLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadCSGClientLogResponseBody?

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
            var model = UploadCSGClientLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadGatewayLogRequest : Tea.TeaModel {
    public var gatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
            self.gatewayId = dict["GatewayId"] as! String
        }
    }
}

public class UploadGatewayLogResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UploadGatewayLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadGatewayLogResponseBody?

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
            var model = UploadGatewayLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ValidateExpressSyncConfigRequest : Tea.TeaModel {
    public var bucketName: String?

    public var bucketPrefix: String?

    public var bucketRegion: String?

    public var name: String?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.bucketPrefix != nil {
            map["BucketPrefix"] = self.bucketPrefix!
        }
        if self.bucketRegion != nil {
            map["BucketRegion"] = self.bucketRegion!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("BucketPrefix") && dict["BucketPrefix"] != nil {
            self.bucketPrefix = dict["BucketPrefix"] as! String
        }
        if dict.keys.contains("BucketRegion") && dict["BucketRegion"] != nil {
            self.bucketRegion = dict["BucketRegion"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ValidateExpressSyncConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var isValid: Bool?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var validateMessage: String?

    public override init() {
        super.init()
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
        if self.isValid != nil {
            map["IsValid"] = self.isValid!
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
        if self.validateMessage != nil {
            map["ValidateMessage"] = self.validateMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsValid") && dict["IsValid"] != nil {
            self.isValid = dict["IsValid"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("ValidateMessage") && dict["ValidateMessage"] != nil {
            self.validateMessage = dict["ValidateMessage"] as! String
        }
    }
}

public class ValidateExpressSyncConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateExpressSyncConfigResponseBody?

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
            var model = ValidateExpressSyncConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ValidateGatewayNameRequest : Tea.TeaModel {
    public var name: String?

    public var storageBundleId: String?

    public override init() {
        super.init()
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
        if self.storageBundleId != nil {
            map["StorageBundleId"] = self.storageBundleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("StorageBundleId") && dict["StorageBundleId"] != nil {
            self.storageBundleId = dict["StorageBundleId"] as! String
        }
    }
}

public class ValidateGatewayNameResponseBody : Tea.TeaModel {
    public var code: String?

    public var isValid: Bool?

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
            map["Code"] = self.code!
        }
        if self.isValid != nil {
            map["IsValid"] = self.isValid!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsValid") && dict["IsValid"] != nil {
            self.isValid = dict["IsValid"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ValidateGatewayNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateGatewayNameResponseBody?

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
            var model = ValidateGatewayNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
