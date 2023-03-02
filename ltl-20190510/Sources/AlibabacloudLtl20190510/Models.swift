import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApplyDataModelConfigInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var configuration: String?

    public var dataModelCode: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.configuration != nil {
            map["Configuration"] = self.configuration!
        }
        if self.dataModelCode != nil {
            map["DataModelCode"] = self.dataModelCode!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("Configuration") && dict["Configuration"] != nil {
            self.configuration = dict["Configuration"] as! String
        }
        if dict.keys.contains("DataModelCode") && dict["DataModelCode"] != nil {
            self.dataModelCode = dict["DataModelCode"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
    }
}

public class ApplyDataModelConfigInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class ApplyDataModelConfigInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyDataModelConfigInfoResponseBody?

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
            var model = ApplyDataModelConfigInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachDataRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var businessId: String?

    public var key: String?

    public var productKey: String?

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
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.businessId != nil {
            map["BusinessId"] = self.businessId!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BusinessId") && dict["BusinessId"] != nil {
            self.businessId = dict["BusinessId"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class AttachDataResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class AttachDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachDataResponseBody?

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
            var model = AttachDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachDataWithSignatureRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var businessId: String?

    public var iotAuthType: String?

    public var iotDataDigest: String?

    public var iotId: String?

    public var iotIdServiceProvider: String?

    public var iotIdSource: String?

    public var iotSignature: String?

    public var key: String?

    public var productKey: String?

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
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.businessId != nil {
            map["BusinessId"] = self.businessId!
        }
        if self.iotAuthType != nil {
            map["IotAuthType"] = self.iotAuthType!
        }
        if self.iotDataDigest != nil {
            map["IotDataDigest"] = self.iotDataDigest!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotIdServiceProvider != nil {
            map["IotIdServiceProvider"] = self.iotIdServiceProvider!
        }
        if self.iotIdSource != nil {
            map["IotIdSource"] = self.iotIdSource!
        }
        if self.iotSignature != nil {
            map["IotSignature"] = self.iotSignature!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BusinessId") && dict["BusinessId"] != nil {
            self.businessId = dict["BusinessId"] as! String
        }
        if dict.keys.contains("IotAuthType") && dict["IotAuthType"] != nil {
            self.iotAuthType = dict["IotAuthType"] as! String
        }
        if dict.keys.contains("IotDataDigest") && dict["IotDataDigest"] != nil {
            self.iotDataDigest = dict["IotDataDigest"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotIdServiceProvider") && dict["IotIdServiceProvider"] != nil {
            self.iotIdServiceProvider = dict["IotIdServiceProvider"] as! String
        }
        if dict.keys.contains("IotIdSource") && dict["IotIdSource"] != nil {
            self.iotIdSource = dict["IotIdSource"] as! String
        }
        if dict.keys.contains("IotSignature") && dict["IotSignature"] != nil {
            self.iotSignature = dict["IotSignature"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class AttachDataWithSignatureResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class AttachDataWithSignatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachDataWithSignatureResponseBody?

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
            var model = AttachDataWithSignatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AuthorizeDeviceRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var deviceGroupId: String?

    public var deviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
            self.deviceId = dict["DeviceId"] as! String
        }
    }
}

public class AuthorizeDeviceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class AuthorizeDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeDeviceResponseBody?

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
            var model = AuthorizeDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AuthorizeDeviceGroupRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var deviceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
    }
}

public class AuthorizeDeviceGroupResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class AuthorizeDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeDeviceGroupResponseBody?

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
            var model = AuthorizeDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUploadMPCoSPhaseDigestInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var phaseDataList: [String: Any]?

    public var phaseGroupId: String?

    public var phaseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.phaseDataList != nil {
            map["PhaseDataList"] = self.phaseDataList!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("PhaseDataList") && dict["PhaseDataList"] != nil {
            self.phaseDataList = dict["PhaseDataList"] as! [String: Any]
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
    }
}

public class BatchUploadMPCoSPhaseDigestInfoShrinkRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var phaseDataListShrink: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.phaseDataListShrink != nil {
            map["PhaseDataList"] = self.phaseDataListShrink!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("PhaseDataList") && dict["PhaseDataList"] != nil {
            self.phaseDataListShrink = dict["PhaseDataList"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
    }
}

public class BatchUploadMPCoSPhaseDigestInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class BatchUploadMPCoSPhaseDigestInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUploadMPCoSPhaseDigestInfoResponseBody?

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
            var model = BatchUploadMPCoSPhaseDigestInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUploadMPCoSPhaseDigestInfoByDeviceRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var iotAuthType: String?

    public var iotDataDigest: String?

    public var iotId: String?

    public var iotIdServiceProvider: String?

    public var iotIdSource: String?

    public var iotSignature: String?

    public var phaseDataList: [String: Any]?

    public var phaseGroupId: String?

    public var phaseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.iotAuthType != nil {
            map["IotAuthType"] = self.iotAuthType!
        }
        if self.iotDataDigest != nil {
            map["IotDataDigest"] = self.iotDataDigest!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotIdServiceProvider != nil {
            map["IotIdServiceProvider"] = self.iotIdServiceProvider!
        }
        if self.iotIdSource != nil {
            map["IotIdSource"] = self.iotIdSource!
        }
        if self.iotSignature != nil {
            map["IotSignature"] = self.iotSignature!
        }
        if self.phaseDataList != nil {
            map["PhaseDataList"] = self.phaseDataList!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("IotAuthType") && dict["IotAuthType"] != nil {
            self.iotAuthType = dict["IotAuthType"] as! String
        }
        if dict.keys.contains("IotDataDigest") && dict["IotDataDigest"] != nil {
            self.iotDataDigest = dict["IotDataDigest"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotIdServiceProvider") && dict["IotIdServiceProvider"] != nil {
            self.iotIdServiceProvider = dict["IotIdServiceProvider"] as! String
        }
        if dict.keys.contains("IotIdSource") && dict["IotIdSource"] != nil {
            self.iotIdSource = dict["IotIdSource"] as! String
        }
        if dict.keys.contains("IotSignature") && dict["IotSignature"] != nil {
            self.iotSignature = dict["IotSignature"] as! String
        }
        if dict.keys.contains("PhaseDataList") && dict["PhaseDataList"] != nil {
            self.phaseDataList = dict["PhaseDataList"] as! [String: Any]
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
    }
}

public class BatchUploadMPCoSPhaseDigestInfoByDeviceShrinkRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var iotAuthType: String?

    public var iotDataDigest: String?

    public var iotId: String?

    public var iotIdServiceProvider: String?

    public var iotIdSource: String?

    public var iotSignature: String?

    public var phaseDataListShrink: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.iotAuthType != nil {
            map["IotAuthType"] = self.iotAuthType!
        }
        if self.iotDataDigest != nil {
            map["IotDataDigest"] = self.iotDataDigest!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotIdServiceProvider != nil {
            map["IotIdServiceProvider"] = self.iotIdServiceProvider!
        }
        if self.iotIdSource != nil {
            map["IotIdSource"] = self.iotIdSource!
        }
        if self.iotSignature != nil {
            map["IotSignature"] = self.iotSignature!
        }
        if self.phaseDataListShrink != nil {
            map["PhaseDataList"] = self.phaseDataListShrink!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("IotAuthType") && dict["IotAuthType"] != nil {
            self.iotAuthType = dict["IotAuthType"] as! String
        }
        if dict.keys.contains("IotDataDigest") && dict["IotDataDigest"] != nil {
            self.iotDataDigest = dict["IotDataDigest"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotIdServiceProvider") && dict["IotIdServiceProvider"] != nil {
            self.iotIdServiceProvider = dict["IotIdServiceProvider"] as! String
        }
        if dict.keys.contains("IotIdSource") && dict["IotIdSource"] != nil {
            self.iotIdSource = dict["IotIdSource"] as! String
        }
        if dict.keys.contains("IotSignature") && dict["IotSignature"] != nil {
            self.iotSignature = dict["IotSignature"] as! String
        }
        if dict.keys.contains("PhaseDataList") && dict["PhaseDataList"] != nil {
            self.phaseDataListShrink = dict["PhaseDataList"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
    }
}

public class BatchUploadMPCoSPhaseDigestInfoByDeviceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class BatchUploadMPCoSPhaseDigestInfoByDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUploadMPCoSPhaseDigestInfoByDeviceResponseBody?

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
            var model = BatchUploadMPCoSPhaseDigestInfoByDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUploadMPCoSPhaseTextInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var phaseDataList: [String: Any]?

    public var phaseGroupId: String?

    public var phaseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.phaseDataList != nil {
            map["PhaseDataList"] = self.phaseDataList!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("PhaseDataList") && dict["PhaseDataList"] != nil {
            self.phaseDataList = dict["PhaseDataList"] as! [String: Any]
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
    }
}

public class BatchUploadMPCoSPhaseTextInfoShrinkRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var phaseDataListShrink: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.phaseDataListShrink != nil {
            map["PhaseDataList"] = self.phaseDataListShrink!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("PhaseDataList") && dict["PhaseDataList"] != nil {
            self.phaseDataListShrink = dict["PhaseDataList"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
    }
}

public class BatchUploadMPCoSPhaseTextInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class BatchUploadMPCoSPhaseTextInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUploadMPCoSPhaseTextInfoResponseBody?

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
            var model = BatchUploadMPCoSPhaseTextInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUploadMPCoSPhaseTextInfoByDeviceRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var iotAuthType: String?

    public var iotDataDigest: String?

    public var iotId: String?

    public var iotIdServiceProvider: String?

    public var iotIdSource: String?

    public var iotSignature: String?

    public var phaseDataList: [String: Any]?

    public var phaseGroupId: String?

    public var phaseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.iotAuthType != nil {
            map["IotAuthType"] = self.iotAuthType!
        }
        if self.iotDataDigest != nil {
            map["IotDataDigest"] = self.iotDataDigest!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotIdServiceProvider != nil {
            map["IotIdServiceProvider"] = self.iotIdServiceProvider!
        }
        if self.iotIdSource != nil {
            map["IotIdSource"] = self.iotIdSource!
        }
        if self.iotSignature != nil {
            map["IotSignature"] = self.iotSignature!
        }
        if self.phaseDataList != nil {
            map["PhaseDataList"] = self.phaseDataList!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("IotAuthType") && dict["IotAuthType"] != nil {
            self.iotAuthType = dict["IotAuthType"] as! String
        }
        if dict.keys.contains("IotDataDigest") && dict["IotDataDigest"] != nil {
            self.iotDataDigest = dict["IotDataDigest"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotIdServiceProvider") && dict["IotIdServiceProvider"] != nil {
            self.iotIdServiceProvider = dict["IotIdServiceProvider"] as! String
        }
        if dict.keys.contains("IotIdSource") && dict["IotIdSource"] != nil {
            self.iotIdSource = dict["IotIdSource"] as! String
        }
        if dict.keys.contains("IotSignature") && dict["IotSignature"] != nil {
            self.iotSignature = dict["IotSignature"] as! String
        }
        if dict.keys.contains("PhaseDataList") && dict["PhaseDataList"] != nil {
            self.phaseDataList = dict["PhaseDataList"] as! [String: Any]
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
    }
}

public class BatchUploadMPCoSPhaseTextInfoByDeviceShrinkRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var iotAuthType: String?

    public var iotDataDigest: String?

    public var iotId: String?

    public var iotIdServiceProvider: String?

    public var iotIdSource: String?

    public var iotSignature: String?

    public var phaseDataListShrink: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.iotAuthType != nil {
            map["IotAuthType"] = self.iotAuthType!
        }
        if self.iotDataDigest != nil {
            map["IotDataDigest"] = self.iotDataDigest!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotIdServiceProvider != nil {
            map["IotIdServiceProvider"] = self.iotIdServiceProvider!
        }
        if self.iotIdSource != nil {
            map["IotIdSource"] = self.iotIdSource!
        }
        if self.iotSignature != nil {
            map["IotSignature"] = self.iotSignature!
        }
        if self.phaseDataListShrink != nil {
            map["PhaseDataList"] = self.phaseDataListShrink!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("IotAuthType") && dict["IotAuthType"] != nil {
            self.iotAuthType = dict["IotAuthType"] as! String
        }
        if dict.keys.contains("IotDataDigest") && dict["IotDataDigest"] != nil {
            self.iotDataDigest = dict["IotDataDigest"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotIdServiceProvider") && dict["IotIdServiceProvider"] != nil {
            self.iotIdServiceProvider = dict["IotIdServiceProvider"] as! String
        }
        if dict.keys.contains("IotIdSource") && dict["IotIdSource"] != nil {
            self.iotIdSource = dict["IotIdSource"] as! String
        }
        if dict.keys.contains("IotSignature") && dict["IotSignature"] != nil {
            self.iotSignature = dict["IotSignature"] as! String
        }
        if dict.keys.contains("PhaseDataList") && dict["PhaseDataList"] != nil {
            self.phaseDataListShrink = dict["PhaseDataList"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
    }
}

public class BatchUploadMPCoSPhaseTextInfoByDeviceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class BatchUploadMPCoSPhaseTextInfoByDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUploadMPCoSPhaseTextInfoByDeviceResponseBody?

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
            var model = BatchUploadMPCoSPhaseTextInfoByDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMPCoSPhaseRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var name: String?

    public var phaseGroupId: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class CreateMPCoSPhaseResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class CreateMPCoSPhaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMPCoSPhaseResponseBody?

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
            var model = CreateMPCoSPhaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMPCoSPhaseGroupRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var name: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class CreateMPCoSPhaseGroupResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class CreateMPCoSPhaseGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMPCoSPhaseGroupResponseBody?

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
            var model = CreateMPCoSPhaseGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMemberRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var memberContact: String?

    public var memberName: String?

    public var memberPhone: String?

    public var memberUid: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.memberContact != nil {
            map["MemberContact"] = self.memberContact!
        }
        if self.memberName != nil {
            map["MemberName"] = self.memberName!
        }
        if self.memberPhone != nil {
            map["MemberPhone"] = self.memberPhone!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("MemberContact") && dict["MemberContact"] != nil {
            self.memberContact = dict["MemberContact"] as! String
        }
        if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
            self.memberName = dict["MemberName"] as! String
        }
        if dict.keys.contains("MemberPhone") && dict["MemberPhone"] != nil {
            self.memberPhone = dict["MemberPhone"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class CreateMemberResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class CreateMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemberResponseBody?

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
            var model = CreateMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCapacityInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
    }
}

public class DescribeCapacityInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var capacityQuota: Int64?

        public var countQuota: Int64?

        public var memberUsedCapacity: Int64?

        public var memberUsedCount: Int64?

        public var usedCapacity: Int64?

        public var usedCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacityQuota != nil {
                map["CapacityQuota"] = self.capacityQuota!
            }
            if self.countQuota != nil {
                map["CountQuota"] = self.countQuota!
            }
            if self.memberUsedCapacity != nil {
                map["MemberUsedCapacity"] = self.memberUsedCapacity!
            }
            if self.memberUsedCount != nil {
                map["MemberUsedCount"] = self.memberUsedCount!
            }
            if self.usedCapacity != nil {
                map["UsedCapacity"] = self.usedCapacity!
            }
            if self.usedCount != nil {
                map["UsedCount"] = self.usedCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CapacityQuota") && dict["CapacityQuota"] != nil {
                self.capacityQuota = dict["CapacityQuota"] as! Int64
            }
            if dict.keys.contains("CountQuota") && dict["CountQuota"] != nil {
                self.countQuota = dict["CountQuota"] as! Int64
            }
            if dict.keys.contains("MemberUsedCapacity") && dict["MemberUsedCapacity"] != nil {
                self.memberUsedCapacity = dict["MemberUsedCapacity"] as! Int64
            }
            if dict.keys.contains("MemberUsedCount") && dict["MemberUsedCount"] != nil {
                self.memberUsedCount = dict["MemberUsedCount"] as! Int64
            }
            if dict.keys.contains("UsedCapacity") && dict["UsedCapacity"] != nil {
                self.usedCapacity = dict["UsedCapacity"] as! Int64
            }
            if dict.keys.contains("UsedCount") && dict["UsedCount"] != nil {
                self.usedCount = dict["UsedCount"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCapacityInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeCapacityInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeCapacityInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCapacityInfoResponseBody?

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
            var model = DescribeCapacityInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMPCoSAuthorizedInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var memberId: String?

    public var phaseGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
            self.memberId = dict["MemberId"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
    }
}

public class DescribeMPCoSAuthorizedInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AuthorizedPhaseList : Tea.TeaModel {
            public var phaseId: String?

            public var phaseName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.phaseId != nil {
                    map["PhaseId"] = self.phaseId!
                }
                if self.phaseName != nil {
                    map["PhaseName"] = self.phaseName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
                    self.phaseId = dict["PhaseId"] as! String
                }
                if dict.keys.contains("PhaseName") && dict["PhaseName"] != nil {
                    self.phaseName = dict["PhaseName"] as! String
                }
            }
        }
        public class UnAuthorizedPhaseList : Tea.TeaModel {
            public var phaseId: String?

            public var phaseName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.phaseId != nil {
                    map["PhaseId"] = self.phaseId!
                }
                if self.phaseName != nil {
                    map["PhaseName"] = self.phaseName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
                    self.phaseId = dict["PhaseId"] as! String
                }
                if dict.keys.contains("PhaseName") && dict["PhaseName"] != nil {
                    self.phaseName = dict["PhaseName"] as! String
                }
            }
        }
        public var authorizedPhaseList: [DescribeMPCoSAuthorizedInfoResponseBody.Data.AuthorizedPhaseList]?

        public var unAuthorizedPhaseList: [DescribeMPCoSAuthorizedInfoResponseBody.Data.UnAuthorizedPhaseList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizedPhaseList != nil {
                var tmp : [Any] = []
                for k in self.authorizedPhaseList! {
                    tmp.append(k.toMap())
                }
                map["AuthorizedPhaseList"] = tmp
            }
            if self.unAuthorizedPhaseList != nil {
                var tmp : [Any] = []
                for k in self.unAuthorizedPhaseList! {
                    tmp.append(k.toMap())
                }
                map["UnAuthorizedPhaseList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizedPhaseList") && dict["AuthorizedPhaseList"] != nil {
                var tmp : [DescribeMPCoSAuthorizedInfoResponseBody.Data.AuthorizedPhaseList] = []
                for v in dict["AuthorizedPhaseList"] as! [Any] {
                    var model = DescribeMPCoSAuthorizedInfoResponseBody.Data.AuthorizedPhaseList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.authorizedPhaseList = tmp
            }
            if dict.keys.contains("UnAuthorizedPhaseList") && dict["UnAuthorizedPhaseList"] != nil {
                var tmp : [DescribeMPCoSAuthorizedInfoResponseBody.Data.UnAuthorizedPhaseList] = []
                for v in dict["UnAuthorizedPhaseList"] as! [Any] {
                    var model = DescribeMPCoSAuthorizedInfoResponseBody.Data.UnAuthorizedPhaseList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.unAuthorizedPhaseList = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeMPCoSAuthorizedInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeMPCoSAuthorizedInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeMPCoSAuthorizedInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMPCoSAuthorizedInfoResponseBody?

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
            var model = DescribeMPCoSAuthorizedInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMPCoSPhaseInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var dataKey: String?

    public var dataSeq: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.dataKey != nil {
            map["DataKey"] = self.dataKey!
        }
        if self.dataSeq != nil {
            map["DataSeq"] = self.dataSeq!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DataKey") && dict["DataKey"] != nil {
            self.dataKey = dict["DataKey"] as! String
        }
        if dict.keys.contains("DataSeq") && dict["DataSeq"] != nil {
            self.dataSeq = dict["DataSeq"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
    }
}

public class DescribeMPCoSPhaseInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RelatedDataList : Tea.TeaModel {
            public var relatedDataKey: String?

            public var relatedDataSeq: String?

            public var relatedPhaseDataHash: String?

            public var relatedPhaseId: String?

            public var relatedPhaseName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.relatedDataKey != nil {
                    map["RelatedDataKey"] = self.relatedDataKey!
                }
                if self.relatedDataSeq != nil {
                    map["RelatedDataSeq"] = self.relatedDataSeq!
                }
                if self.relatedPhaseDataHash != nil {
                    map["RelatedPhaseDataHash"] = self.relatedPhaseDataHash!
                }
                if self.relatedPhaseId != nil {
                    map["RelatedPhaseId"] = self.relatedPhaseId!
                }
                if self.relatedPhaseName != nil {
                    map["RelatedPhaseName"] = self.relatedPhaseName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RelatedDataKey") && dict["RelatedDataKey"] != nil {
                    self.relatedDataKey = dict["RelatedDataKey"] as! String
                }
                if dict.keys.contains("RelatedDataSeq") && dict["RelatedDataSeq"] != nil {
                    self.relatedDataSeq = dict["RelatedDataSeq"] as! String
                }
                if dict.keys.contains("RelatedPhaseDataHash") && dict["RelatedPhaseDataHash"] != nil {
                    self.relatedPhaseDataHash = dict["RelatedPhaseDataHash"] as! String
                }
                if dict.keys.contains("RelatedPhaseId") && dict["RelatedPhaseId"] != nil {
                    self.relatedPhaseId = dict["RelatedPhaseId"] as! String
                }
                if dict.keys.contains("RelatedPhaseName") && dict["RelatedPhaseName"] != nil {
                    self.relatedPhaseName = dict["RelatedPhaseName"] as! String
                }
            }
        }
        public var blockHash: String?

        public var blockNumber: Int64?

        public var dataHash: String?

        public var dataValue: String?

        public var iotId: String?

        public var previousHash: String?

        public var productKey: String?

        public var relatedDataList: [DescribeMPCoSPhaseInfoResponseBody.Data.RelatedDataList]?

        public var timestamp: Int64?

        public var transactionHash: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockHash != nil {
                map["BlockHash"] = self.blockHash!
            }
            if self.blockNumber != nil {
                map["BlockNumber"] = self.blockNumber!
            }
            if self.dataHash != nil {
                map["DataHash"] = self.dataHash!
            }
            if self.dataValue != nil {
                map["DataValue"] = self.dataValue!
            }
            if self.iotId != nil {
                map["IotId"] = self.iotId!
            }
            if self.previousHash != nil {
                map["PreviousHash"] = self.previousHash!
            }
            if self.productKey != nil {
                map["ProductKey"] = self.productKey!
            }
            if self.relatedDataList != nil {
                var tmp : [Any] = []
                for k in self.relatedDataList! {
                    tmp.append(k.toMap())
                }
                map["RelatedDataList"] = tmp
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.transactionHash != nil {
                map["TransactionHash"] = self.transactionHash!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlockHash") && dict["BlockHash"] != nil {
                self.blockHash = dict["BlockHash"] as! String
            }
            if dict.keys.contains("BlockNumber") && dict["BlockNumber"] != nil {
                self.blockNumber = dict["BlockNumber"] as! Int64
            }
            if dict.keys.contains("DataHash") && dict["DataHash"] != nil {
                self.dataHash = dict["DataHash"] as! String
            }
            if dict.keys.contains("DataValue") && dict["DataValue"] != nil {
                self.dataValue = dict["DataValue"] as! String
            }
            if dict.keys.contains("IotId") && dict["IotId"] != nil {
                self.iotId = dict["IotId"] as! String
            }
            if dict.keys.contains("PreviousHash") && dict["PreviousHash"] != nil {
                self.previousHash = dict["PreviousHash"] as! String
            }
            if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
                self.productKey = dict["ProductKey"] as! String
            }
            if dict.keys.contains("RelatedDataList") && dict["RelatedDataList"] != nil {
                var tmp : [DescribeMPCoSPhaseInfoResponseBody.Data.RelatedDataList] = []
                for v in dict["RelatedDataList"] as! [Any] {
                    var model = DescribeMPCoSPhaseInfoResponseBody.Data.RelatedDataList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relatedDataList = tmp
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
            if dict.keys.contains("TransactionHash") && dict["TransactionHash"] != nil {
                self.transactionHash = dict["TransactionHash"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeMPCoSPhaseInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeMPCoSPhaseInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeMPCoSPhaseInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMPCoSPhaseInfoResponseBody?

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
            var model = DescribeMPCoSPhaseInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMPCoSResourceInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
    }
}

public class DescribeMPCoSResourceInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PhaseQuotaInfoList : Tea.TeaModel {
            public var phaseGroupId: String?

            public var phaseGroupName: String?

            public var phaseQuota: Int64?

            public var usedPhase: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.phaseGroupId != nil {
                    map["PhaseGroupId"] = self.phaseGroupId!
                }
                if self.phaseGroupName != nil {
                    map["PhaseGroupName"] = self.phaseGroupName!
                }
                if self.phaseQuota != nil {
                    map["PhaseQuota"] = self.phaseQuota!
                }
                if self.usedPhase != nil {
                    map["UsedPhase"] = self.usedPhase!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
                    self.phaseGroupId = dict["PhaseGroupId"] as! String
                }
                if dict.keys.contains("PhaseGroupName") && dict["PhaseGroupName"] != nil {
                    self.phaseGroupName = dict["PhaseGroupName"] as! String
                }
                if dict.keys.contains("PhaseQuota") && dict["PhaseQuota"] != nil {
                    self.phaseQuota = dict["PhaseQuota"] as! Int64
                }
                if dict.keys.contains("UsedPhase") && dict["UsedPhase"] != nil {
                    self.usedPhase = dict["UsedPhase"] as! Int64
                }
            }
        }
        public var memberQuota: Int64?

        public var phaseGroupQuota: Int64?

        public var phaseQuotaInfoList: [DescribeMPCoSResourceInfoResponseBody.Data.PhaseQuotaInfoList]?

        public var usedMember: Int64?

        public var usedPhaseGroup: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberQuota != nil {
                map["MemberQuota"] = self.memberQuota!
            }
            if self.phaseGroupQuota != nil {
                map["PhaseGroupQuota"] = self.phaseGroupQuota!
            }
            if self.phaseQuotaInfoList != nil {
                var tmp : [Any] = []
                for k in self.phaseQuotaInfoList! {
                    tmp.append(k.toMap())
                }
                map["PhaseQuotaInfoList"] = tmp
            }
            if self.usedMember != nil {
                map["UsedMember"] = self.usedMember!
            }
            if self.usedPhaseGroup != nil {
                map["UsedPhaseGroup"] = self.usedPhaseGroup!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberQuota") && dict["MemberQuota"] != nil {
                self.memberQuota = dict["MemberQuota"] as! Int64
            }
            if dict.keys.contains("PhaseGroupQuota") && dict["PhaseGroupQuota"] != nil {
                self.phaseGroupQuota = dict["PhaseGroupQuota"] as! Int64
            }
            if dict.keys.contains("PhaseQuotaInfoList") && dict["PhaseQuotaInfoList"] != nil {
                var tmp : [DescribeMPCoSResourceInfoResponseBody.Data.PhaseQuotaInfoList] = []
                for v in dict["PhaseQuotaInfoList"] as! [Any] {
                    var model = DescribeMPCoSResourceInfoResponseBody.Data.PhaseQuotaInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.phaseQuotaInfoList = tmp
            }
            if dict.keys.contains("UsedMember") && dict["UsedMember"] != nil {
                self.usedMember = dict["UsedMember"] as! Int64
            }
            if dict.keys.contains("UsedPhaseGroup") && dict["UsedPhaseGroup"] != nil {
                self.usedPhaseGroup = dict["UsedPhaseGroup"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var data: DescribeMPCoSResourceInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeMPCoSResourceInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeMPCoSResourceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMPCoSResourceInfoResponseBody?

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
            var model = DescribeMPCoSResourceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMemberCapacityInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
    }
}

public class DescribeMemberCapacityInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var memberId: String?

        public var memberName: String?

        public var memberUid: String?

        public var usedCapacity: String?

        public var usedCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberId != nil {
                map["MemberId"] = self.memberId!
            }
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.memberUid != nil {
                map["MemberUid"] = self.memberUid!
            }
            if self.usedCapacity != nil {
                map["UsedCapacity"] = self.usedCapacity!
            }
            if self.usedCount != nil {
                map["UsedCount"] = self.usedCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                self.memberUid = dict["MemberUid"] as! String
            }
            if dict.keys.contains("UsedCapacity") && dict["UsedCapacity"] != nil {
                self.usedCapacity = dict["UsedCapacity"] as! String
            }
            if dict.keys.contains("UsedCount") && dict["UsedCount"] != nil {
                self.usedCount = dict["UsedCount"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeMemberCapacityInfoResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMemberCapacityInfoResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMemberCapacityInfoResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeMemberCapacityInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMemberCapacityInfoResponseBody?

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
            var model = DescribeMemberCapacityInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
    }
}

public class DescribeResourceInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authorizeType: String?

        public var effectiveTime: Int64?

        public var expiredTime: Int64?

        public var region: String?

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
            if self.authorizeType != nil {
                map["AuthorizeType"] = self.authorizeType!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizeType") && dict["AuthorizeType"] != nil {
                self.authorizeType = dict["AuthorizeType"] as! String
            }
            if dict.keys.contains("EffectiveTime") && dict["EffectiveTime"] != nil {
                self.effectiveTime = dict["EffectiveTime"] as! Int64
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeResourceInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeResourceInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeResourceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceInfoResponseBody?

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
            var model = DescribeResourceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBlockChainInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var businessId: String?

    public var key: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.businessId != nil {
            map["BusinessId"] = self.businessId!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BusinessId") && dict["BusinessId"] != nil {
            self.businessId = dict["BusinessId"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
    }
}

public class GetBlockChainInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class GetBlockChainInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBlockChainInfoResponseBody?

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
            var model = GetBlockChainInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var businessId: String?

    public var key: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.businessId != nil {
            map["BusinessId"] = self.businessId!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BusinessId") && dict["BusinessId"] != nil {
            self.businessId = dict["BusinessId"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
    }
}

public class GetDataResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class GetDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataResponseBody?

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
            var model = GetDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataModelConfigInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var dataModelCode: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.dataModelCode != nil {
            map["DataModelCode"] = self.dataModelCode!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("DataModelCode") && dict["DataModelCode"] != nil {
            self.dataModelCode = dict["DataModelCode"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
    }
}

public class GetDataModelConfigInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class GetDataModelConfigInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataModelConfigInfoResponseBody?

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
            var model = GetDataModelConfigInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHistoryDataCountRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var endTime: Int64?

    public var key: String?

    public var productKey: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetHistoryDataCountResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class GetHistoryDataCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHistoryDataCountResponseBody?

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
            var model = GetHistoryDataCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHistoryDataListRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var key: String?

    public var pageSize: Int32?

    public var productKey: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetHistoryDataListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var data: [[String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["Data"] = self.data!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") && dict["Data"] != nil {
                self.data = dict["Data"] as! [[String: Any]]
            }
        }
    }
    public var code: Int32?

    public var data: GetHistoryDataListResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetHistoryDataListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetHistoryDataListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHistoryDataListResponseBody?

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
            var model = GetHistoryDataListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDependentDataModelsRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var productKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
    }
}

public class ListDependentDataModelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataModelInfo : Tea.TeaModel {
            public var dataModelCode: String?

            public var dataModelName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataModelCode != nil {
                    map["DataModelCode"] = self.dataModelCode!
                }
                if self.dataModelName != nil {
                    map["DataModelName"] = self.dataModelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataModelCode") && dict["DataModelCode"] != nil {
                    self.dataModelCode = dict["DataModelCode"] as! String
                }
                if dict.keys.contains("DataModelName") && dict["DataModelName"] != nil {
                    self.dataModelName = dict["DataModelName"] as! String
                }
            }
        }
        public var dataModelInfo: [ListDependentDataModelsResponseBody.Data.DataModelInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModelInfo != nil {
                var tmp : [Any] = []
                for k in self.dataModelInfo! {
                    tmp.append(k.toMap())
                }
                map["DataModelInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModelInfo") && dict["DataModelInfo"] != nil {
                var tmp : [ListDependentDataModelsResponseBody.Data.DataModelInfo] = []
                for v in dict["DataModelInfo"] as! [Any] {
                    var model = ListDependentDataModelsResponseBody.Data.DataModelInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataModelInfo = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListDependentDataModelsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDependentDataModelsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListDependentDataModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDependentDataModelsResponseBody?

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
            var model = ListDependentDataModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeviceRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var deviceGroupId: String?

    public var iotId: String?

    public var num: Int32?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var deviceId: String?

            public var iotId: String?

            public var lastSaveTime: Int64?

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
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.lastSaveTime != nil {
                    map["LastSaveTime"] = self.lastSaveTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("LastSaveTime") && dict["LastSaveTime"] != nil {
                    self.lastSaveTime = dict["LastSaveTime"] as! Int64
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var num: Int32?

        public var pageData: [ListDeviceResponseBody.Data.PageData]?

        public var size: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListDeviceResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListDeviceResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: ListDeviceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDeviceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceResponseBody?

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
            var model = ListDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeviceGroupRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var num: Int32?

    public var productKey: String?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListDeviceGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var authorizeType: String?

            public var deviceGroupId: String?

            public var ownerName: String?

            public var ownerUid: String?

            public var productKey: String?

            public var remark: String?

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
                if self.authorizeType != nil {
                    map["AuthorizeType"] = self.authorizeType!
                }
                if self.deviceGroupId != nil {
                    map["DeviceGroupId"] = self.deviceGroupId!
                }
                if self.ownerName != nil {
                    map["OwnerName"] = self.ownerName!
                }
                if self.ownerUid != nil {
                    map["OwnerUid"] = self.ownerUid!
                }
                if self.productKey != nil {
                    map["ProductKey"] = self.productKey!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthorizeType") && dict["AuthorizeType"] != nil {
                    self.authorizeType = dict["AuthorizeType"] as! String
                }
                if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
                    self.deviceGroupId = dict["DeviceGroupId"] as! String
                }
                if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("OwnerUid") && dict["OwnerUid"] != nil {
                    self.ownerUid = dict["OwnerUid"] as! String
                }
                if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
                    self.productKey = dict["ProductKey"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var num: Int32?

        public var pageData: [ListDeviceGroupResponseBody.Data.PageData]?

        public var size: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListDeviceGroupResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListDeviceGroupResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: ListDeviceGroupResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDeviceGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceGroupResponseBody?

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
            var model = ListDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMPCoSPhaseRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var name: String?

    public var num: Int32?

    public var phaseGroupId: String?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListMPCoSPhaseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var accessPermission: Int32?

            public var name: String?

            public var phaseId: String?

            public var remark: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessPermission != nil {
                    map["AccessPermission"] = self.accessPermission!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.phaseId != nil {
                    map["PhaseId"] = self.phaseId!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessPermission") && dict["AccessPermission"] != nil {
                    self.accessPermission = dict["AccessPermission"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
                    self.phaseId = dict["PhaseId"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
            }
        }
        public var num: Int32?

        public var pageData: [ListMPCoSPhaseResponseBody.Data.PageData]?

        public var size: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListMPCoSPhaseResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListMPCoSPhaseResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: ListMPCoSPhaseResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListMPCoSPhaseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListMPCoSPhaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMPCoSPhaseResponseBody?

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
            var model = ListMPCoSPhaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMPCoSPhaseGroupRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var name: String?

    public var num: Int32?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListMPCoSPhaseGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var name: String?

            public var phaseGroupId: String?

            public var remark: String?

            public override init() {
                super.init()
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
                if self.phaseGroupId != nil {
                    map["PhaseGroupId"] = self.phaseGroupId!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
                    self.phaseGroupId = dict["PhaseGroupId"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
            }
        }
        public var num: Int32?

        public var pageData: [ListMPCoSPhaseGroupResponseBody.Data.PageData]?

        public var size: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListMPCoSPhaseGroupResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListMPCoSPhaseGroupResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: ListMPCoSPhaseGroupResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListMPCoSPhaseGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListMPCoSPhaseGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMPCoSPhaseGroupResponseBody?

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
            var model = ListMPCoSPhaseGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMPCoSPhaseHistoryRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var dataKey: String?

    public var endTime: Int64?

    public var num: Int32?

    public var phaseGroupId: String?

    public var phaseId: String?

    public var size: Int32?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.dataKey != nil {
            map["DataKey"] = self.dataKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DataKey") && dict["DataKey"] != nil {
            self.dataKey = dict["DataKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class ListMPCoSPhaseHistoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var blockHash: String?

            public var blockNumber: Int64?

            public var dataHash: String?

            public var dataSeq: String?

            public var dataValue: String?

            public var iotId: String?

            public var previousHash: String?

            public var productKey: String?

            public var timestamp: Int64?

            public var transactionHash: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockHash != nil {
                    map["BlockHash"] = self.blockHash!
                }
                if self.blockNumber != nil {
                    map["BlockNumber"] = self.blockNumber!
                }
                if self.dataHash != nil {
                    map["DataHash"] = self.dataHash!
                }
                if self.dataSeq != nil {
                    map["DataSeq"] = self.dataSeq!
                }
                if self.dataValue != nil {
                    map["DataValue"] = self.dataValue!
                }
                if self.iotId != nil {
                    map["IotId"] = self.iotId!
                }
                if self.previousHash != nil {
                    map["PreviousHash"] = self.previousHash!
                }
                if self.productKey != nil {
                    map["ProductKey"] = self.productKey!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.transactionHash != nil {
                    map["TransactionHash"] = self.transactionHash!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockHash") && dict["BlockHash"] != nil {
                    self.blockHash = dict["BlockHash"] as! String
                }
                if dict.keys.contains("BlockNumber") && dict["BlockNumber"] != nil {
                    self.blockNumber = dict["BlockNumber"] as! Int64
                }
                if dict.keys.contains("DataHash") && dict["DataHash"] != nil {
                    self.dataHash = dict["DataHash"] as! String
                }
                if dict.keys.contains("DataSeq") && dict["DataSeq"] != nil {
                    self.dataSeq = dict["DataSeq"] as! String
                }
                if dict.keys.contains("DataValue") && dict["DataValue"] != nil {
                    self.dataValue = dict["DataValue"] as! String
                }
                if dict.keys.contains("IotId") && dict["IotId"] != nil {
                    self.iotId = dict["IotId"] as! String
                }
                if dict.keys.contains("PreviousHash") && dict["PreviousHash"] != nil {
                    self.previousHash = dict["PreviousHash"] as! String
                }
                if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
                    self.productKey = dict["ProductKey"] as! String
                }
                if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
                if dict.keys.contains("TransactionHash") && dict["TransactionHash"] != nil {
                    self.transactionHash = dict["TransactionHash"] as! String
                }
            }
        }
        public var num: Int32?

        public var pageData: [ListMPCoSPhaseHistoryResponseBody.Data.PageData]?

        public var size: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListMPCoSPhaseHistoryResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListMPCoSPhaseHistoryResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: ListMPCoSPhaseHistoryResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListMPCoSPhaseHistoryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListMPCoSPhaseHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMPCoSPhaseHistoryResponseBody?

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
            var model = ListMPCoSPhaseHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMemberRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var memberUid: String?

    public var num: Int32?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListMemberResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var memberContact: String?

            public var memberId: String?

            public var memberName: String?

            public var memberPhone: String?

            public var memberUid: String?

            public var remark: String?

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
                if self.memberContact != nil {
                    map["MemberContact"] = self.memberContact!
                }
                if self.memberId != nil {
                    map["MemberId"] = self.memberId!
                }
                if self.memberName != nil {
                    map["MemberName"] = self.memberName!
                }
                if self.memberPhone != nil {
                    map["MemberPhone"] = self.memberPhone!
                }
                if self.memberUid != nil {
                    map["MemberUid"] = self.memberUid!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MemberContact") && dict["MemberContact"] != nil {
                    self.memberContact = dict["MemberContact"] as! String
                }
                if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                    self.memberId = dict["MemberId"] as! String
                }
                if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
                    self.memberName = dict["MemberName"] as! String
                }
                if dict.keys.contains("MemberPhone") && dict["MemberPhone"] != nil {
                    self.memberPhone = dict["MemberPhone"] as! String
                }
                if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                    self.memberUid = dict["MemberUid"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var num: Int32?

        public var pageData: [ListMemberResponseBody.Data.PageData]?

        public var size: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListMemberResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListMemberResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: ListMemberResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListMemberResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMemberResponseBody?

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
            var model = ListMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMultiPartyCollaborationChainRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var name: String?

    public var num: Int32?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListMultiPartyCollaborationChainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var bizChainId: String?

            public var name: String?

            public var remark: String?

            public var roleType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizChainId != nil {
                    map["BizChainId"] = self.bizChainId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.roleType != nil {
                    map["RoleType"] = self.roleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
                    self.bizChainId = dict["BizChainId"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
                    self.roleType = dict["RoleType"] as! String
                }
            }
        }
        public var num: Int32?

        public var pageData: [ListMultiPartyCollaborationChainResponseBody.Data.PageData]?

        public var size: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListMultiPartyCollaborationChainResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListMultiPartyCollaborationChainResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: ListMultiPartyCollaborationChainResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListMultiPartyCollaborationChainResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListMultiPartyCollaborationChainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultiPartyCollaborationChainResponseBody?

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
            var model = ListMultiPartyCollaborationChainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPSMemberDataTypeCodeRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var memberUid: String?

    public var num: Int32?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListPSMemberDataTypeCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var dataTypeCode: String?

            public var memberId: String?

            public var memberName: String?

            public var memberUid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataTypeCode != nil {
                    map["DataTypeCode"] = self.dataTypeCode!
                }
                if self.memberId != nil {
                    map["MemberId"] = self.memberId!
                }
                if self.memberName != nil {
                    map["MemberName"] = self.memberName!
                }
                if self.memberUid != nil {
                    map["MemberUid"] = self.memberUid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataTypeCode") && dict["DataTypeCode"] != nil {
                    self.dataTypeCode = dict["DataTypeCode"] as! String
                }
                if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                    self.memberId = dict["MemberId"] as! String
                }
                if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
                    self.memberName = dict["MemberName"] as! String
                }
                if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
                    self.memberUid = dict["MemberUid"] as! String
                }
            }
        }
        public var num: Int32?

        public var pageData: [ListPSMemberDataTypeCodeResponseBody.Data.PageData]?

        public var size: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListPSMemberDataTypeCodeResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListPSMemberDataTypeCodeResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: ListPSMemberDataTypeCodeResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListPSMemberDataTypeCodeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListPSMemberDataTypeCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPSMemberDataTypeCodeResponseBody?

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
            var model = ListPSMemberDataTypeCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProofChainRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var name: String?

    public var num: Int32?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListProofChainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public var bizChainCode: String?

            public var bizChainId: String?

            public var dataTypeCode: String?

            public var name: String?

            public var remark: String?

            public var roleType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizChainCode != nil {
                    map["BizChainCode"] = self.bizChainCode!
                }
                if self.bizChainId != nil {
                    map["BizChainId"] = self.bizChainId!
                }
                if self.dataTypeCode != nil {
                    map["DataTypeCode"] = self.dataTypeCode!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.roleType != nil {
                    map["RoleType"] = self.roleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizChainCode") && dict["BizChainCode"] != nil {
                    self.bizChainCode = dict["BizChainCode"] as! String
                }
                if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
                    self.bizChainId = dict["BizChainId"] as! String
                }
                if dict.keys.contains("DataTypeCode") && dict["DataTypeCode"] != nil {
                    self.dataTypeCode = dict["DataTypeCode"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
                    self.roleType = dict["RoleType"] as! String
                }
            }
        }
        public var num: Int32?

        public var pageData: [ListProofChainResponseBody.Data.PageData]?

        public var size: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.num != nil {
                map["Num"] = self.num!
            }
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Num") && dict["Num"] != nil {
                self.num = dict["Num"] as! Int32
            }
            if dict.keys.contains("PageData") && dict["PageData"] != nil {
                var tmp : [ListProofChainResponseBody.Data.PageData] = []
                for v in dict["PageData"] as! [Any] {
                    var model = ListProofChainResponseBody.Data.PageData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageData = tmp
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: ListProofChainResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListProofChainResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ListProofChainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProofChainResponseBody?

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
            var model = ListProofChainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LockMemberRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var memberId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
            self.memberId = dict["MemberId"] as! String
        }
    }
}

public class LockMemberResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class LockMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockMemberResponseBody?

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
            var model = LockMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyMPCoSPhaseRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var name: String?

    public var phaseId: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class ModifyMPCoSPhaseResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class ModifyMPCoSPhaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMPCoSPhaseResponseBody?

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
            var model = ModifyMPCoSPhaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyMPCoSPhaseGroupRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var name: String?

    public var phaseGroupId: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class ModifyMPCoSPhaseGroupResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class ModifyMPCoSPhaseGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMPCoSPhaseGroupResponseBody?

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
            var model = ModifyMPCoSPhaseGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyMemberRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var memberContact: String?

    public var memberId: String?

    public var memberName: String?

    public var memberPhone: String?

    public var memberUid: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.memberContact != nil {
            map["MemberContact"] = self.memberContact!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.memberName != nil {
            map["MemberName"] = self.memberName!
        }
        if self.memberPhone != nil {
            map["MemberPhone"] = self.memberPhone!
        }
        if self.memberUid != nil {
            map["MemberUid"] = self.memberUid!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("MemberContact") && dict["MemberContact"] != nil {
            self.memberContact = dict["MemberContact"] as! String
        }
        if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
            self.memberId = dict["MemberId"] as! String
        }
        if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
            self.memberName = dict["MemberName"] as! String
        }
        if dict.keys.contains("MemberPhone") && dict["MemberPhone"] != nil {
            self.memberPhone = dict["MemberPhone"] as! String
        }
        if dict.keys.contains("MemberUid") && dict["MemberUid"] != nil {
            self.memberUid = dict["MemberUid"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class ModifyMemberResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class ModifyMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMemberResponseBody?

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
            var model = ModifyMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterDeviceGroupRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var authorizeType: String?

    public var bizChainId: String?

    public var deviceGroupName: String?

    public var productKey: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.authorizeType != nil {
            map["AuthorizeType"] = self.authorizeType!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.deviceGroupName != nil {
            map["DeviceGroupName"] = self.deviceGroupName!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("AuthorizeType") && dict["AuthorizeType"] != nil {
            self.authorizeType = dict["AuthorizeType"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DeviceGroupName") && dict["DeviceGroupName"] != nil {
            self.deviceGroupName = dict["DeviceGroupName"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class RegisterDeviceGroupResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class RegisterDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterDeviceGroupResponseBody?

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
            var model = RegisterDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDataRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var key: String?

    public var productKey: String?

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
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class SetDataResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class SetDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDataResponseBody?

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
            var model = SetDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDataWithSignatureRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var iotAuthType: String?

    public var iotDataDigest: String?

    public var iotId: String?

    public var iotIdServiceProvider: String?

    public var iotIdSource: String?

    public var iotSignature: String?

    public var key: String?

    public var productKey: String?

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
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.iotAuthType != nil {
            map["IotAuthType"] = self.iotAuthType!
        }
        if self.iotDataDigest != nil {
            map["IotDataDigest"] = self.iotDataDigest!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotIdServiceProvider != nil {
            map["IotIdServiceProvider"] = self.iotIdServiceProvider!
        }
        if self.iotIdSource != nil {
            map["IotIdSource"] = self.iotIdSource!
        }
        if self.iotSignature != nil {
            map["IotSignature"] = self.iotSignature!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("IotAuthType") && dict["IotAuthType"] != nil {
            self.iotAuthType = dict["IotAuthType"] as! String
        }
        if dict.keys.contains("IotDataDigest") && dict["IotDataDigest"] != nil {
            self.iotDataDigest = dict["IotDataDigest"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotIdServiceProvider") && dict["IotIdServiceProvider"] != nil {
            self.iotIdServiceProvider = dict["IotIdServiceProvider"] as! String
        }
        if dict.keys.contains("IotIdSource") && dict["IotIdSource"] != nil {
            self.iotIdSource = dict["IotIdSource"] as! String
        }
        if dict.keys.contains("IotSignature") && dict["IotSignature"] != nil {
            self.iotSignature = dict["IotSignature"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("ProductKey") && dict["ProductKey"] != nil {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class SetDataWithSignatureResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class SetDataWithSignatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDataWithSignatureResponseBody?

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
            var model = SetDataWithSignatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnAuthorizeDeviceRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var deviceGroupId: String?

    public var deviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
            self.deviceId = dict["DeviceId"] as! String
        }
    }
}

public class UnAuthorizeDeviceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class UnAuthorizeDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnAuthorizeDeviceResponseBody?

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
            var model = UnAuthorizeDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnAuthorizeDeviceGroupRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var deviceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DeviceGroupId") && dict["DeviceGroupId"] != nil {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
    }
}

public class UnAuthorizeDeviceGroupResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class UnAuthorizeDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnAuthorizeDeviceGroupResponseBody?

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
            var model = UnAuthorizeDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnLockMemberRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var memberId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
            self.memberId = dict["MemberId"] as! String
        }
    }
}

public class UnLockMemberResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class UnLockMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnLockMemberResponseBody?

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
            var model = UnLockMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMPCoSAuthorizedInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var authorizedPhaseList: [String: Any]?

    public var bizChainId: String?

    public var memberId: String?

    public var phaseGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.authorizedPhaseList != nil {
            map["AuthorizedPhaseList"] = self.authorizedPhaseList!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("AuthorizedPhaseList") && dict["AuthorizedPhaseList"] != nil {
            self.authorizedPhaseList = dict["AuthorizedPhaseList"] as! [String: Any]
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
            self.memberId = dict["MemberId"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
    }
}

public class UpdateMPCoSAuthorizedInfoShrinkRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var authorizedPhaseListShrink: String?

    public var bizChainId: String?

    public var memberId: String?

    public var phaseGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.authorizedPhaseListShrink != nil {
            map["AuthorizedPhaseList"] = self.authorizedPhaseListShrink!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("AuthorizedPhaseList") && dict["AuthorizedPhaseList"] != nil {
            self.authorizedPhaseListShrink = dict["AuthorizedPhaseList"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
            self.memberId = dict["MemberId"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
    }
}

public class UpdateMPCoSAuthorizedInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class UpdateMPCoSAuthorizedInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMPCoSAuthorizedInfoResponseBody?

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
            var model = UpdateMPCoSAuthorizedInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadMPCoSPhaseDigestInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var dataKey: String?

    public var dataSeq: String?

    public var phaseData: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public var relatedDataList: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.dataKey != nil {
            map["DataKey"] = self.dataKey!
        }
        if self.dataSeq != nil {
            map["DataSeq"] = self.dataSeq!
        }
        if self.phaseData != nil {
            map["PhaseData"] = self.phaseData!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        if self.relatedDataList != nil {
            map["RelatedDataList"] = self.relatedDataList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DataKey") && dict["DataKey"] != nil {
            self.dataKey = dict["DataKey"] as! String
        }
        if dict.keys.contains("DataSeq") && dict["DataSeq"] != nil {
            self.dataSeq = dict["DataSeq"] as! String
        }
        if dict.keys.contains("PhaseData") && dict["PhaseData"] != nil {
            self.phaseData = dict["PhaseData"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
        if dict.keys.contains("RelatedDataList") && dict["RelatedDataList"] != nil {
            self.relatedDataList = dict["RelatedDataList"] as! [String: Any]
        }
    }
}

public class UploadMPCoSPhaseDigestInfoShrinkRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var dataKey: String?

    public var dataSeq: String?

    public var phaseData: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public var relatedDataListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.dataKey != nil {
            map["DataKey"] = self.dataKey!
        }
        if self.dataSeq != nil {
            map["DataSeq"] = self.dataSeq!
        }
        if self.phaseData != nil {
            map["PhaseData"] = self.phaseData!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        if self.relatedDataListShrink != nil {
            map["RelatedDataList"] = self.relatedDataListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DataKey") && dict["DataKey"] != nil {
            self.dataKey = dict["DataKey"] as! String
        }
        if dict.keys.contains("DataSeq") && dict["DataSeq"] != nil {
            self.dataSeq = dict["DataSeq"] as! String
        }
        if dict.keys.contains("PhaseData") && dict["PhaseData"] != nil {
            self.phaseData = dict["PhaseData"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
        if dict.keys.contains("RelatedDataList") && dict["RelatedDataList"] != nil {
            self.relatedDataListShrink = dict["RelatedDataList"] as! String
        }
    }
}

public class UploadMPCoSPhaseDigestInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class UploadMPCoSPhaseDigestInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadMPCoSPhaseDigestInfoResponseBody?

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
            var model = UploadMPCoSPhaseDigestInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadMPCoSPhaseDigestInfoByDeviceRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var dataKey: String?

    public var dataSeq: String?

    public var iotAuthType: String?

    public var iotDataDigest: String?

    public var iotId: String?

    public var iotIdServiceProvider: String?

    public var iotIdSource: String?

    public var iotSignature: String?

    public var phaseData: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public var relatedDataList: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.dataKey != nil {
            map["DataKey"] = self.dataKey!
        }
        if self.dataSeq != nil {
            map["DataSeq"] = self.dataSeq!
        }
        if self.iotAuthType != nil {
            map["IotAuthType"] = self.iotAuthType!
        }
        if self.iotDataDigest != nil {
            map["IotDataDigest"] = self.iotDataDigest!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotIdServiceProvider != nil {
            map["IotIdServiceProvider"] = self.iotIdServiceProvider!
        }
        if self.iotIdSource != nil {
            map["IotIdSource"] = self.iotIdSource!
        }
        if self.iotSignature != nil {
            map["IotSignature"] = self.iotSignature!
        }
        if self.phaseData != nil {
            map["PhaseData"] = self.phaseData!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        if self.relatedDataList != nil {
            map["RelatedDataList"] = self.relatedDataList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DataKey") && dict["DataKey"] != nil {
            self.dataKey = dict["DataKey"] as! String
        }
        if dict.keys.contains("DataSeq") && dict["DataSeq"] != nil {
            self.dataSeq = dict["DataSeq"] as! String
        }
        if dict.keys.contains("IotAuthType") && dict["IotAuthType"] != nil {
            self.iotAuthType = dict["IotAuthType"] as! String
        }
        if dict.keys.contains("IotDataDigest") && dict["IotDataDigest"] != nil {
            self.iotDataDigest = dict["IotDataDigest"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotIdServiceProvider") && dict["IotIdServiceProvider"] != nil {
            self.iotIdServiceProvider = dict["IotIdServiceProvider"] as! String
        }
        if dict.keys.contains("IotIdSource") && dict["IotIdSource"] != nil {
            self.iotIdSource = dict["IotIdSource"] as! String
        }
        if dict.keys.contains("IotSignature") && dict["IotSignature"] != nil {
            self.iotSignature = dict["IotSignature"] as! String
        }
        if dict.keys.contains("PhaseData") && dict["PhaseData"] != nil {
            self.phaseData = dict["PhaseData"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
        if dict.keys.contains("RelatedDataList") && dict["RelatedDataList"] != nil {
            self.relatedDataList = dict["RelatedDataList"] as! [String: Any]
        }
    }
}

public class UploadMPCoSPhaseDigestInfoByDeviceShrinkRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var dataKey: String?

    public var dataSeq: String?

    public var iotAuthType: String?

    public var iotDataDigest: String?

    public var iotId: String?

    public var iotIdServiceProvider: String?

    public var iotIdSource: String?

    public var iotSignature: String?

    public var phaseData: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public var relatedDataListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.dataKey != nil {
            map["DataKey"] = self.dataKey!
        }
        if self.dataSeq != nil {
            map["DataSeq"] = self.dataSeq!
        }
        if self.iotAuthType != nil {
            map["IotAuthType"] = self.iotAuthType!
        }
        if self.iotDataDigest != nil {
            map["IotDataDigest"] = self.iotDataDigest!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotIdServiceProvider != nil {
            map["IotIdServiceProvider"] = self.iotIdServiceProvider!
        }
        if self.iotIdSource != nil {
            map["IotIdSource"] = self.iotIdSource!
        }
        if self.iotSignature != nil {
            map["IotSignature"] = self.iotSignature!
        }
        if self.phaseData != nil {
            map["PhaseData"] = self.phaseData!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        if self.relatedDataListShrink != nil {
            map["RelatedDataList"] = self.relatedDataListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DataKey") && dict["DataKey"] != nil {
            self.dataKey = dict["DataKey"] as! String
        }
        if dict.keys.contains("DataSeq") && dict["DataSeq"] != nil {
            self.dataSeq = dict["DataSeq"] as! String
        }
        if dict.keys.contains("IotAuthType") && dict["IotAuthType"] != nil {
            self.iotAuthType = dict["IotAuthType"] as! String
        }
        if dict.keys.contains("IotDataDigest") && dict["IotDataDigest"] != nil {
            self.iotDataDigest = dict["IotDataDigest"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotIdServiceProvider") && dict["IotIdServiceProvider"] != nil {
            self.iotIdServiceProvider = dict["IotIdServiceProvider"] as! String
        }
        if dict.keys.contains("IotIdSource") && dict["IotIdSource"] != nil {
            self.iotIdSource = dict["IotIdSource"] as! String
        }
        if dict.keys.contains("IotSignature") && dict["IotSignature"] != nil {
            self.iotSignature = dict["IotSignature"] as! String
        }
        if dict.keys.contains("PhaseData") && dict["PhaseData"] != nil {
            self.phaseData = dict["PhaseData"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
        if dict.keys.contains("RelatedDataList") && dict["RelatedDataList"] != nil {
            self.relatedDataListShrink = dict["RelatedDataList"] as! String
        }
    }
}

public class UploadMPCoSPhaseDigestInfoByDeviceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class UploadMPCoSPhaseDigestInfoByDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadMPCoSPhaseDigestInfoByDeviceResponseBody?

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
            var model = UploadMPCoSPhaseDigestInfoByDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadMPCoSPhaseTextInfoRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var dataKey: String?

    public var dataSeq: String?

    public var phaseData: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public var relatedDataList: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.dataKey != nil {
            map["DataKey"] = self.dataKey!
        }
        if self.dataSeq != nil {
            map["DataSeq"] = self.dataSeq!
        }
        if self.phaseData != nil {
            map["PhaseData"] = self.phaseData!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        if self.relatedDataList != nil {
            map["RelatedDataList"] = self.relatedDataList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DataKey") && dict["DataKey"] != nil {
            self.dataKey = dict["DataKey"] as! String
        }
        if dict.keys.contains("DataSeq") && dict["DataSeq"] != nil {
            self.dataSeq = dict["DataSeq"] as! String
        }
        if dict.keys.contains("PhaseData") && dict["PhaseData"] != nil {
            self.phaseData = dict["PhaseData"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
        if dict.keys.contains("RelatedDataList") && dict["RelatedDataList"] != nil {
            self.relatedDataList = dict["RelatedDataList"] as! [String: Any]
        }
    }
}

public class UploadMPCoSPhaseTextInfoShrinkRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var dataKey: String?

    public var dataSeq: String?

    public var phaseData: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public var relatedDataListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.dataKey != nil {
            map["DataKey"] = self.dataKey!
        }
        if self.dataSeq != nil {
            map["DataSeq"] = self.dataSeq!
        }
        if self.phaseData != nil {
            map["PhaseData"] = self.phaseData!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        if self.relatedDataListShrink != nil {
            map["RelatedDataList"] = self.relatedDataListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DataKey") && dict["DataKey"] != nil {
            self.dataKey = dict["DataKey"] as! String
        }
        if dict.keys.contains("DataSeq") && dict["DataSeq"] != nil {
            self.dataSeq = dict["DataSeq"] as! String
        }
        if dict.keys.contains("PhaseData") && dict["PhaseData"] != nil {
            self.phaseData = dict["PhaseData"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
        if dict.keys.contains("RelatedDataList") && dict["RelatedDataList"] != nil {
            self.relatedDataListShrink = dict["RelatedDataList"] as! String
        }
    }
}

public class UploadMPCoSPhaseTextInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class UploadMPCoSPhaseTextInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadMPCoSPhaseTextInfoResponseBody?

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
            var model = UploadMPCoSPhaseTextInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadMPCoSPhaseTextInfoByDeviceRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var dataKey: String?

    public var dataSeq: String?

    public var iotAuthType: String?

    public var iotDataDigest: String?

    public var iotId: String?

    public var iotIdServiceProvider: String?

    public var iotIdSource: String?

    public var iotSignature: String?

    public var phaseData: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public var relatedDataList: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.dataKey != nil {
            map["DataKey"] = self.dataKey!
        }
        if self.dataSeq != nil {
            map["DataSeq"] = self.dataSeq!
        }
        if self.iotAuthType != nil {
            map["IotAuthType"] = self.iotAuthType!
        }
        if self.iotDataDigest != nil {
            map["IotDataDigest"] = self.iotDataDigest!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotIdServiceProvider != nil {
            map["IotIdServiceProvider"] = self.iotIdServiceProvider!
        }
        if self.iotIdSource != nil {
            map["IotIdSource"] = self.iotIdSource!
        }
        if self.iotSignature != nil {
            map["IotSignature"] = self.iotSignature!
        }
        if self.phaseData != nil {
            map["PhaseData"] = self.phaseData!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        if self.relatedDataList != nil {
            map["RelatedDataList"] = self.relatedDataList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DataKey") && dict["DataKey"] != nil {
            self.dataKey = dict["DataKey"] as! String
        }
        if dict.keys.contains("DataSeq") && dict["DataSeq"] != nil {
            self.dataSeq = dict["DataSeq"] as! String
        }
        if dict.keys.contains("IotAuthType") && dict["IotAuthType"] != nil {
            self.iotAuthType = dict["IotAuthType"] as! String
        }
        if dict.keys.contains("IotDataDigest") && dict["IotDataDigest"] != nil {
            self.iotDataDigest = dict["IotDataDigest"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotIdServiceProvider") && dict["IotIdServiceProvider"] != nil {
            self.iotIdServiceProvider = dict["IotIdServiceProvider"] as! String
        }
        if dict.keys.contains("IotIdSource") && dict["IotIdSource"] != nil {
            self.iotIdSource = dict["IotIdSource"] as! String
        }
        if dict.keys.contains("IotSignature") && dict["IotSignature"] != nil {
            self.iotSignature = dict["IotSignature"] as! String
        }
        if dict.keys.contains("PhaseData") && dict["PhaseData"] != nil {
            self.phaseData = dict["PhaseData"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
        if dict.keys.contains("RelatedDataList") && dict["RelatedDataList"] != nil {
            self.relatedDataList = dict["RelatedDataList"] as! [String: Any]
        }
    }
}

public class UploadMPCoSPhaseTextInfoByDeviceShrinkRequest : Tea.TeaModel {
    public var apiVersion: String?

    public var bizChainId: String?

    public var dataKey: String?

    public var dataSeq: String?

    public var iotAuthType: String?

    public var iotDataDigest: String?

    public var iotId: String?

    public var iotIdServiceProvider: String?

    public var iotIdSource: String?

    public var iotSignature: String?

    public var phaseData: String?

    public var phaseGroupId: String?

    public var phaseId: String?

    public var relatedDataListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.bizChainId != nil {
            map["BizChainId"] = self.bizChainId!
        }
        if self.dataKey != nil {
            map["DataKey"] = self.dataKey!
        }
        if self.dataSeq != nil {
            map["DataSeq"] = self.dataSeq!
        }
        if self.iotAuthType != nil {
            map["IotAuthType"] = self.iotAuthType!
        }
        if self.iotDataDigest != nil {
            map["IotDataDigest"] = self.iotDataDigest!
        }
        if self.iotId != nil {
            map["IotId"] = self.iotId!
        }
        if self.iotIdServiceProvider != nil {
            map["IotIdServiceProvider"] = self.iotIdServiceProvider!
        }
        if self.iotIdSource != nil {
            map["IotIdSource"] = self.iotIdSource!
        }
        if self.iotSignature != nil {
            map["IotSignature"] = self.iotSignature!
        }
        if self.phaseData != nil {
            map["PhaseData"] = self.phaseData!
        }
        if self.phaseGroupId != nil {
            map["PhaseGroupId"] = self.phaseGroupId!
        }
        if self.phaseId != nil {
            map["PhaseId"] = self.phaseId!
        }
        if self.relatedDataListShrink != nil {
            map["RelatedDataList"] = self.relatedDataListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("BizChainId") && dict["BizChainId"] != nil {
            self.bizChainId = dict["BizChainId"] as! String
        }
        if dict.keys.contains("DataKey") && dict["DataKey"] != nil {
            self.dataKey = dict["DataKey"] as! String
        }
        if dict.keys.contains("DataSeq") && dict["DataSeq"] != nil {
            self.dataSeq = dict["DataSeq"] as! String
        }
        if dict.keys.contains("IotAuthType") && dict["IotAuthType"] != nil {
            self.iotAuthType = dict["IotAuthType"] as! String
        }
        if dict.keys.contains("IotDataDigest") && dict["IotDataDigest"] != nil {
            self.iotDataDigest = dict["IotDataDigest"] as! String
        }
        if dict.keys.contains("IotId") && dict["IotId"] != nil {
            self.iotId = dict["IotId"] as! String
        }
        if dict.keys.contains("IotIdServiceProvider") && dict["IotIdServiceProvider"] != nil {
            self.iotIdServiceProvider = dict["IotIdServiceProvider"] as! String
        }
        if dict.keys.contains("IotIdSource") && dict["IotIdSource"] != nil {
            self.iotIdSource = dict["IotIdSource"] as! String
        }
        if dict.keys.contains("IotSignature") && dict["IotSignature"] != nil {
            self.iotSignature = dict["IotSignature"] as! String
        }
        if dict.keys.contains("PhaseData") && dict["PhaseData"] != nil {
            self.phaseData = dict["PhaseData"] as! String
        }
        if dict.keys.contains("PhaseGroupId") && dict["PhaseGroupId"] != nil {
            self.phaseGroupId = dict["PhaseGroupId"] as! String
        }
        if dict.keys.contains("PhaseId") && dict["PhaseId"] != nil {
            self.phaseId = dict["PhaseId"] as! String
        }
        if dict.keys.contains("RelatedDataList") && dict["RelatedDataList"] != nil {
            self.relatedDataListShrink = dict["RelatedDataList"] as! String
        }
    }
}

public class UploadMPCoSPhaseTextInfoByDeviceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class UploadMPCoSPhaseTextInfoByDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadMPCoSPhaseTextInfoByDeviceResponseBody?

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
            var model = UploadMPCoSPhaseTextInfoByDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
