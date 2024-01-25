import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActivateApDeviceRequest : Tea.TeaModel {
    public var apMac: String?

    public var extraParams: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApMac") && dict["ApMac"] != nil {
            self.apMac = dict["ApMac"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class ActivateApDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ActivateApDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateApDeviceResponseBody?

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
            var model = ActivateApDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddApDeviceRequest : Tea.TeaModel {
    public var apMac: String?

    public var clientToken: String?

    public var extraParams: String?

    public var remark: String?

    public var serialNumber: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApMac") && dict["ApMac"] != nil {
            self.apMac = dict["ApMac"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("SerialNumber") && dict["SerialNumber"] != nil {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class AddApDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddApDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddApDeviceResponseBody?

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
            var model = AddApDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddCompanyTemplateRequest : Tea.TeaModel {
    public var deviceType: String?

    public var eslSize: String?

    public var extraParams: String?

    public var groupId: String?

    public var ifDefault: Bool?

    public var ifMember: Bool?

    public var ifOutOfInventory: Bool?

    public var ifPromotion: Bool?

    public var ifSourceCode: Bool?

    public var layout: Int32?

    public var scene: String?

    public var templateName: String?

    public var templateSceneId: String?

    public var templateType: String?

    public var templateVersion: String?

    public var vendor: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.eslSize != nil {
            map["EslSize"] = self.eslSize!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ifDefault != nil {
            map["IfDefault"] = self.ifDefault!
        }
        if self.ifMember != nil {
            map["IfMember"] = self.ifMember!
        }
        if self.ifOutOfInventory != nil {
            map["IfOutOfInventory"] = self.ifOutOfInventory!
        }
        if self.ifPromotion != nil {
            map["IfPromotion"] = self.ifPromotion!
        }
        if self.ifSourceCode != nil {
            map["IfSourceCode"] = self.ifSourceCode!
        }
        if self.layout != nil {
            map["Layout"] = self.layout!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateSceneId != nil {
            map["TemplateSceneId"] = self.templateSceneId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("EslSize") && dict["EslSize"] != nil {
            self.eslSize = dict["EslSize"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("IfDefault") && dict["IfDefault"] != nil {
            self.ifDefault = dict["IfDefault"] as! Bool
        }
        if dict.keys.contains("IfMember") && dict["IfMember"] != nil {
            self.ifMember = dict["IfMember"] as! Bool
        }
        if dict.keys.contains("IfOutOfInventory") && dict["IfOutOfInventory"] != nil {
            self.ifOutOfInventory = dict["IfOutOfInventory"] as! Bool
        }
        if dict.keys.contains("IfPromotion") && dict["IfPromotion"] != nil {
            self.ifPromotion = dict["IfPromotion"] as! Bool
        }
        if dict.keys.contains("IfSourceCode") && dict["IfSourceCode"] != nil {
            self.ifSourceCode = dict["IfSourceCode"] as! Bool
        }
        if dict.keys.contains("Layout") && dict["Layout"] != nil {
            self.layout = dict["Layout"] as! Int32
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateSceneId") && dict["TemplateSceneId"] != nil {
            self.templateSceneId = dict["TemplateSceneId"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
        if dict.keys.contains("Vendor") && dict["Vendor"] != nil {
            self.vendor = dict["Vendor"] as! String
        }
    }
}

public class AddCompanyTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddCompanyTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCompanyTemplateResponseBody?

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
            var model = AddCompanyTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUserRequest : Tea.TeaModel {
    public var clientToken: String?

    public var extraParams: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class AddUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserResponseBody?

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
            var model = AddUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyCompanyTemplateVersionToStoresRequest : Tea.TeaModel {
    public var stores: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.stores != nil {
            map["Stores"] = self.stores!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Stores") && dict["Stores"] != nil {
            self.stores = dict["Stores"] as! String
        }
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class ApplyCompanyTemplateVersionToStoresResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ApplyCompanyTemplateVersionToStoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyCompanyTemplateVersionToStoresResponseBody?

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
            var model = ApplyCompanyTemplateVersionToStoresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssignUserRequest : Tea.TeaModel {
    public var extraParams: String?

    public var stores: String?

    public var userId: String?

    public var userType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.stores != nil {
            map["Stores"] = self.stores!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("Stores") && dict["Stores"] != nil {
            self.stores = dict["Stores"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserType") && dict["UserType"] != nil {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class AssignUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AssignUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssignUserResponseBody?

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
            var model = AssignUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchInsertItemsRequest : Tea.TeaModel {
    public class ItemInfo : Tea.TeaModel {
        public var actionPrice: Int32?

        public var beClearance: Bool?

        public var beMember: Bool?

        public var bePromotion: Bool?

        public var beSourceCode: Bool?

        public var brandName: String?

        public var categoryName: String?

        public var customizeFeatureA: String?

        public var customizeFeatureB: String?

        public var customizeFeatureC: String?

        public var customizeFeatureD: String?

        public var customizeFeatureE: String?

        public var customizeFeatureF: String?

        public var customizeFeatureG: String?

        public var customizeFeatureH: String?

        public var customizeFeatureI: String?

        public var customizeFeatureJ: String?

        public var customizeFeatureK: String?

        public var customizeFeatureL: String?

        public var customizeFeatureM: String?

        public var customizeFeatureN: String?

        public var customizeFeatureO: String?

        public var customizeFeatureP: String?

        public var customizeFeatureQ: String?

        public var customizeFeatureR: String?

        public var customizeFeatureS: String?

        public var customizeFeatureT: String?

        public var customizeFeatureU: String?

        public var customizeFeatureV: String?

        public var customizeFeatureW: String?

        public var customizeFeatureX: String?

        public var customizeFeatureY: String?

        public var customizeFeatureZ: String?

        public var energyEfficiency: String?

        public var forestFirstId: String?

        public var forestSecondId: String?

        public var inventoryStatus: String?

        public var itemBarCode: String?

        public var itemId: String?

        public var itemInfoIndex: Int32?

        public var itemPicUrl: String?

        public var itemQrCode: String?

        public var itemShortTitle: String?

        public var itemTitle: String?

        public var manufacturer: String?

        public var material: String?

        public var memberPrice: Int32?

        public var modelNumber: String?

        public var originalPrice: Int32?

        public var priceUnit: String?

        public var productionPlace: String?

        public var promotionEnd: String?

        public var promotionReason: String?

        public var promotionStart: String?

        public var promotionText: String?

        public var rank: String?

        public var saleSpec: String?

        public var salesPrice: Int32?

        public var skuId: String?

        public var sourceCode: String?

        public var suggestPrice: Int32?

        public var supplierName: String?

        public var taxFee: String?

        public var templateSceneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionPrice != nil {
                map["ActionPrice"] = self.actionPrice!
            }
            if self.beClearance != nil {
                map["BeClearance"] = self.beClearance!
            }
            if self.beMember != nil {
                map["BeMember"] = self.beMember!
            }
            if self.bePromotion != nil {
                map["BePromotion"] = self.bePromotion!
            }
            if self.beSourceCode != nil {
                map["BeSourceCode"] = self.beSourceCode!
            }
            if self.brandName != nil {
                map["BrandName"] = self.brandName!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.customizeFeatureA != nil {
                map["CustomizeFeatureA"] = self.customizeFeatureA!
            }
            if self.customizeFeatureB != nil {
                map["CustomizeFeatureB"] = self.customizeFeatureB!
            }
            if self.customizeFeatureC != nil {
                map["CustomizeFeatureC"] = self.customizeFeatureC!
            }
            if self.customizeFeatureD != nil {
                map["CustomizeFeatureD"] = self.customizeFeatureD!
            }
            if self.customizeFeatureE != nil {
                map["CustomizeFeatureE"] = self.customizeFeatureE!
            }
            if self.customizeFeatureF != nil {
                map["CustomizeFeatureF"] = self.customizeFeatureF!
            }
            if self.customizeFeatureG != nil {
                map["CustomizeFeatureG"] = self.customizeFeatureG!
            }
            if self.customizeFeatureH != nil {
                map["CustomizeFeatureH"] = self.customizeFeatureH!
            }
            if self.customizeFeatureI != nil {
                map["CustomizeFeatureI"] = self.customizeFeatureI!
            }
            if self.customizeFeatureJ != nil {
                map["CustomizeFeatureJ"] = self.customizeFeatureJ!
            }
            if self.customizeFeatureK != nil {
                map["CustomizeFeatureK"] = self.customizeFeatureK!
            }
            if self.customizeFeatureL != nil {
                map["CustomizeFeatureL"] = self.customizeFeatureL!
            }
            if self.customizeFeatureM != nil {
                map["CustomizeFeatureM"] = self.customizeFeatureM!
            }
            if self.customizeFeatureN != nil {
                map["CustomizeFeatureN"] = self.customizeFeatureN!
            }
            if self.customizeFeatureO != nil {
                map["CustomizeFeatureO"] = self.customizeFeatureO!
            }
            if self.customizeFeatureP != nil {
                map["CustomizeFeatureP"] = self.customizeFeatureP!
            }
            if self.customizeFeatureQ != nil {
                map["CustomizeFeatureQ"] = self.customizeFeatureQ!
            }
            if self.customizeFeatureR != nil {
                map["CustomizeFeatureR"] = self.customizeFeatureR!
            }
            if self.customizeFeatureS != nil {
                map["CustomizeFeatureS"] = self.customizeFeatureS!
            }
            if self.customizeFeatureT != nil {
                map["CustomizeFeatureT"] = self.customizeFeatureT!
            }
            if self.customizeFeatureU != nil {
                map["CustomizeFeatureU"] = self.customizeFeatureU!
            }
            if self.customizeFeatureV != nil {
                map["CustomizeFeatureV"] = self.customizeFeatureV!
            }
            if self.customizeFeatureW != nil {
                map["CustomizeFeatureW"] = self.customizeFeatureW!
            }
            if self.customizeFeatureX != nil {
                map["CustomizeFeatureX"] = self.customizeFeatureX!
            }
            if self.customizeFeatureY != nil {
                map["CustomizeFeatureY"] = self.customizeFeatureY!
            }
            if self.customizeFeatureZ != nil {
                map["CustomizeFeatureZ"] = self.customizeFeatureZ!
            }
            if self.energyEfficiency != nil {
                map["EnergyEfficiency"] = self.energyEfficiency!
            }
            if self.forestFirstId != nil {
                map["ForestFirstId"] = self.forestFirstId!
            }
            if self.forestSecondId != nil {
                map["ForestSecondId"] = self.forestSecondId!
            }
            if self.inventoryStatus != nil {
                map["InventoryStatus"] = self.inventoryStatus!
            }
            if self.itemBarCode != nil {
                map["ItemBarCode"] = self.itemBarCode!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemInfoIndex != nil {
                map["ItemInfoIndex"] = self.itemInfoIndex!
            }
            if self.itemPicUrl != nil {
                map["ItemPicUrl"] = self.itemPicUrl!
            }
            if self.itemQrCode != nil {
                map["ItemQrCode"] = self.itemQrCode!
            }
            if self.itemShortTitle != nil {
                map["ItemShortTitle"] = self.itemShortTitle!
            }
            if self.itemTitle != nil {
                map["ItemTitle"] = self.itemTitle!
            }
            if self.manufacturer != nil {
                map["Manufacturer"] = self.manufacturer!
            }
            if self.material != nil {
                map["Material"] = self.material!
            }
            if self.memberPrice != nil {
                map["MemberPrice"] = self.memberPrice!
            }
            if self.modelNumber != nil {
                map["ModelNumber"] = self.modelNumber!
            }
            if self.originalPrice != nil {
                map["OriginalPrice"] = self.originalPrice!
            }
            if self.priceUnit != nil {
                map["PriceUnit"] = self.priceUnit!
            }
            if self.productionPlace != nil {
                map["ProductionPlace"] = self.productionPlace!
            }
            if self.promotionEnd != nil {
                map["PromotionEnd"] = self.promotionEnd!
            }
            if self.promotionReason != nil {
                map["PromotionReason"] = self.promotionReason!
            }
            if self.promotionStart != nil {
                map["PromotionStart"] = self.promotionStart!
            }
            if self.promotionText != nil {
                map["PromotionText"] = self.promotionText!
            }
            if self.rank != nil {
                map["Rank"] = self.rank!
            }
            if self.saleSpec != nil {
                map["SaleSpec"] = self.saleSpec!
            }
            if self.salesPrice != nil {
                map["SalesPrice"] = self.salesPrice!
            }
            if self.skuId != nil {
                map["SkuId"] = self.skuId!
            }
            if self.sourceCode != nil {
                map["SourceCode"] = self.sourceCode!
            }
            if self.suggestPrice != nil {
                map["SuggestPrice"] = self.suggestPrice!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.taxFee != nil {
                map["TaxFee"] = self.taxFee!
            }
            if self.templateSceneId != nil {
                map["TemplateSceneId"] = self.templateSceneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionPrice") && dict["ActionPrice"] != nil {
                self.actionPrice = dict["ActionPrice"] as! Int32
            }
            if dict.keys.contains("BeClearance") && dict["BeClearance"] != nil {
                self.beClearance = dict["BeClearance"] as! Bool
            }
            if dict.keys.contains("BeMember") && dict["BeMember"] != nil {
                self.beMember = dict["BeMember"] as! Bool
            }
            if dict.keys.contains("BePromotion") && dict["BePromotion"] != nil {
                self.bePromotion = dict["BePromotion"] as! Bool
            }
            if dict.keys.contains("BeSourceCode") && dict["BeSourceCode"] != nil {
                self.beSourceCode = dict["BeSourceCode"] as! Bool
            }
            if dict.keys.contains("BrandName") && dict["BrandName"] != nil {
                self.brandName = dict["BrandName"] as! String
            }
            if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("CustomizeFeatureA") && dict["CustomizeFeatureA"] != nil {
                self.customizeFeatureA = dict["CustomizeFeatureA"] as! String
            }
            if dict.keys.contains("CustomizeFeatureB") && dict["CustomizeFeatureB"] != nil {
                self.customizeFeatureB = dict["CustomizeFeatureB"] as! String
            }
            if dict.keys.contains("CustomizeFeatureC") && dict["CustomizeFeatureC"] != nil {
                self.customizeFeatureC = dict["CustomizeFeatureC"] as! String
            }
            if dict.keys.contains("CustomizeFeatureD") && dict["CustomizeFeatureD"] != nil {
                self.customizeFeatureD = dict["CustomizeFeatureD"] as! String
            }
            if dict.keys.contains("CustomizeFeatureE") && dict["CustomizeFeatureE"] != nil {
                self.customizeFeatureE = dict["CustomizeFeatureE"] as! String
            }
            if dict.keys.contains("CustomizeFeatureF") && dict["CustomizeFeatureF"] != nil {
                self.customizeFeatureF = dict["CustomizeFeatureF"] as! String
            }
            if dict.keys.contains("CustomizeFeatureG") && dict["CustomizeFeatureG"] != nil {
                self.customizeFeatureG = dict["CustomizeFeatureG"] as! String
            }
            if dict.keys.contains("CustomizeFeatureH") && dict["CustomizeFeatureH"] != nil {
                self.customizeFeatureH = dict["CustomizeFeatureH"] as! String
            }
            if dict.keys.contains("CustomizeFeatureI") && dict["CustomizeFeatureI"] != nil {
                self.customizeFeatureI = dict["CustomizeFeatureI"] as! String
            }
            if dict.keys.contains("CustomizeFeatureJ") && dict["CustomizeFeatureJ"] != nil {
                self.customizeFeatureJ = dict["CustomizeFeatureJ"] as! String
            }
            if dict.keys.contains("CustomizeFeatureK") && dict["CustomizeFeatureK"] != nil {
                self.customizeFeatureK = dict["CustomizeFeatureK"] as! String
            }
            if dict.keys.contains("CustomizeFeatureL") && dict["CustomizeFeatureL"] != nil {
                self.customizeFeatureL = dict["CustomizeFeatureL"] as! String
            }
            if dict.keys.contains("CustomizeFeatureM") && dict["CustomizeFeatureM"] != nil {
                self.customizeFeatureM = dict["CustomizeFeatureM"] as! String
            }
            if dict.keys.contains("CustomizeFeatureN") && dict["CustomizeFeatureN"] != nil {
                self.customizeFeatureN = dict["CustomizeFeatureN"] as! String
            }
            if dict.keys.contains("CustomizeFeatureO") && dict["CustomizeFeatureO"] != nil {
                self.customizeFeatureO = dict["CustomizeFeatureO"] as! String
            }
            if dict.keys.contains("CustomizeFeatureP") && dict["CustomizeFeatureP"] != nil {
                self.customizeFeatureP = dict["CustomizeFeatureP"] as! String
            }
            if dict.keys.contains("CustomizeFeatureQ") && dict["CustomizeFeatureQ"] != nil {
                self.customizeFeatureQ = dict["CustomizeFeatureQ"] as! String
            }
            if dict.keys.contains("CustomizeFeatureR") && dict["CustomizeFeatureR"] != nil {
                self.customizeFeatureR = dict["CustomizeFeatureR"] as! String
            }
            if dict.keys.contains("CustomizeFeatureS") && dict["CustomizeFeatureS"] != nil {
                self.customizeFeatureS = dict["CustomizeFeatureS"] as! String
            }
            if dict.keys.contains("CustomizeFeatureT") && dict["CustomizeFeatureT"] != nil {
                self.customizeFeatureT = dict["CustomizeFeatureT"] as! String
            }
            if dict.keys.contains("CustomizeFeatureU") && dict["CustomizeFeatureU"] != nil {
                self.customizeFeatureU = dict["CustomizeFeatureU"] as! String
            }
            if dict.keys.contains("CustomizeFeatureV") && dict["CustomizeFeatureV"] != nil {
                self.customizeFeatureV = dict["CustomizeFeatureV"] as! String
            }
            if dict.keys.contains("CustomizeFeatureW") && dict["CustomizeFeatureW"] != nil {
                self.customizeFeatureW = dict["CustomizeFeatureW"] as! String
            }
            if dict.keys.contains("CustomizeFeatureX") && dict["CustomizeFeatureX"] != nil {
                self.customizeFeatureX = dict["CustomizeFeatureX"] as! String
            }
            if dict.keys.contains("CustomizeFeatureY") && dict["CustomizeFeatureY"] != nil {
                self.customizeFeatureY = dict["CustomizeFeatureY"] as! String
            }
            if dict.keys.contains("CustomizeFeatureZ") && dict["CustomizeFeatureZ"] != nil {
                self.customizeFeatureZ = dict["CustomizeFeatureZ"] as! String
            }
            if dict.keys.contains("EnergyEfficiency") && dict["EnergyEfficiency"] != nil {
                self.energyEfficiency = dict["EnergyEfficiency"] as! String
            }
            if dict.keys.contains("ForestFirstId") && dict["ForestFirstId"] != nil {
                self.forestFirstId = dict["ForestFirstId"] as! String
            }
            if dict.keys.contains("ForestSecondId") && dict["ForestSecondId"] != nil {
                self.forestSecondId = dict["ForestSecondId"] as! String
            }
            if dict.keys.contains("InventoryStatus") && dict["InventoryStatus"] != nil {
                self.inventoryStatus = dict["InventoryStatus"] as! String
            }
            if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
                self.itemBarCode = dict["ItemBarCode"] as! String
            }
            if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
                self.itemId = dict["ItemId"] as! String
            }
            if dict.keys.contains("ItemInfoIndex") && dict["ItemInfoIndex"] != nil {
                self.itemInfoIndex = dict["ItemInfoIndex"] as! Int32
            }
            if dict.keys.contains("ItemPicUrl") && dict["ItemPicUrl"] != nil {
                self.itemPicUrl = dict["ItemPicUrl"] as! String
            }
            if dict.keys.contains("ItemQrCode") && dict["ItemQrCode"] != nil {
                self.itemQrCode = dict["ItemQrCode"] as! String
            }
            if dict.keys.contains("ItemShortTitle") && dict["ItemShortTitle"] != nil {
                self.itemShortTitle = dict["ItemShortTitle"] as! String
            }
            if dict.keys.contains("ItemTitle") && dict["ItemTitle"] != nil {
                self.itemTitle = dict["ItemTitle"] as! String
            }
            if dict.keys.contains("Manufacturer") && dict["Manufacturer"] != nil {
                self.manufacturer = dict["Manufacturer"] as! String
            }
            if dict.keys.contains("Material") && dict["Material"] != nil {
                self.material = dict["Material"] as! String
            }
            if dict.keys.contains("MemberPrice") && dict["MemberPrice"] != nil {
                self.memberPrice = dict["MemberPrice"] as! Int32
            }
            if dict.keys.contains("ModelNumber") && dict["ModelNumber"] != nil {
                self.modelNumber = dict["ModelNumber"] as! String
            }
            if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                self.originalPrice = dict["OriginalPrice"] as! Int32
            }
            if dict.keys.contains("PriceUnit") && dict["PriceUnit"] != nil {
                self.priceUnit = dict["PriceUnit"] as! String
            }
            if dict.keys.contains("ProductionPlace") && dict["ProductionPlace"] != nil {
                self.productionPlace = dict["ProductionPlace"] as! String
            }
            if dict.keys.contains("PromotionEnd") && dict["PromotionEnd"] != nil {
                self.promotionEnd = dict["PromotionEnd"] as! String
            }
            if dict.keys.contains("PromotionReason") && dict["PromotionReason"] != nil {
                self.promotionReason = dict["PromotionReason"] as! String
            }
            if dict.keys.contains("PromotionStart") && dict["PromotionStart"] != nil {
                self.promotionStart = dict["PromotionStart"] as! String
            }
            if dict.keys.contains("PromotionText") && dict["PromotionText"] != nil {
                self.promotionText = dict["PromotionText"] as! String
            }
            if dict.keys.contains("Rank") && dict["Rank"] != nil {
                self.rank = dict["Rank"] as! String
            }
            if dict.keys.contains("SaleSpec") && dict["SaleSpec"] != nil {
                self.saleSpec = dict["SaleSpec"] as! String
            }
            if dict.keys.contains("SalesPrice") && dict["SalesPrice"] != nil {
                self.salesPrice = dict["SalesPrice"] as! Int32
            }
            if dict.keys.contains("SkuId") && dict["SkuId"] != nil {
                self.skuId = dict["SkuId"] as! String
            }
            if dict.keys.contains("SourceCode") && dict["SourceCode"] != nil {
                self.sourceCode = dict["SourceCode"] as! String
            }
            if dict.keys.contains("SuggestPrice") && dict["SuggestPrice"] != nil {
                self.suggestPrice = dict["SuggestPrice"] as! Int32
            }
            if dict.keys.contains("SupplierName") && dict["SupplierName"] != nil {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("TaxFee") && dict["TaxFee"] != nil {
                self.taxFee = dict["TaxFee"] as! String
            }
            if dict.keys.contains("TemplateSceneId") && dict["TemplateSceneId"] != nil {
                self.templateSceneId = dict["TemplateSceneId"] as! String
            }
        }
    }
    public var extraParams: String?

    public var itemInfo: [BatchInsertItemsRequest.ItemInfo]?

    public var storeId: String?

    public var syncByItemId: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.itemInfo != nil {
            var tmp : [Any] = []
            for k in self.itemInfo! {
                tmp.append(k.toMap())
            }
            map["ItemInfo"] = tmp
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.syncByItemId != nil {
            map["SyncByItemId"] = self.syncByItemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("ItemInfo") && dict["ItemInfo"] != nil {
            var tmp : [BatchInsertItemsRequest.ItemInfo] = []
            for v in dict["ItemInfo"] as! [Any] {
                var model = BatchInsertItemsRequest.ItemInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.itemInfo = tmp
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("SyncByItemId") && dict["SyncByItemId"] != nil {
            self.syncByItemId = dict["SyncByItemId"] as! Bool
        }
    }
}

public class BatchInsertItemsResponseBody : Tea.TeaModel {
    public class BatchResults : Tea.TeaModel {
        public var errorCode: String?

        public var index: Int32?

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
            if self.index != nil {
                map["Index"] = self.index!
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
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var batchResults: [BatchInsertItemsResponseBody.BatchResults]?

    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.batchResults != nil {
            var tmp : [Any] = []
            for k in self.batchResults! {
                tmp.append(k.toMap())
            }
            map["BatchResults"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchResults") && dict["BatchResults"] != nil {
            var tmp : [BatchInsertItemsResponseBody.BatchResults] = []
            for v in dict["BatchResults"] as! [Any] {
                var model = BatchInsertItemsResponseBody.BatchResults()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.batchResults = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BatchInsertItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchInsertItemsResponseBody?

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
            var model = BatchInsertItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindEslDeviceRequest : Tea.TeaModel {
    public var column: String?

    public var containerId: String?

    public var containerName: String?

    public var eslBarCode: String?

    public var extraParams: String?

    public var itemBarCode: String?

    public var layer: Int32?

    public var layoutId: String?

    public var layoutName: String?

    public var shelf: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.column != nil {
            map["Column"] = self.column!
        }
        if self.containerId != nil {
            map["ContainerId"] = self.containerId!
        }
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.layer != nil {
            map["Layer"] = self.layer!
        }
        if self.layoutId != nil {
            map["LayoutId"] = self.layoutId!
        }
        if self.layoutName != nil {
            map["LayoutName"] = self.layoutName!
        }
        if self.shelf != nil {
            map["Shelf"] = self.shelf!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Column") && dict["Column"] != nil {
            self.column = dict["Column"] as! String
        }
        if dict.keys.contains("ContainerId") && dict["ContainerId"] != nil {
            self.containerId = dict["ContainerId"] as! String
        }
        if dict.keys.contains("ContainerName") && dict["ContainerName"] != nil {
            self.containerName = dict["ContainerName"] as! String
        }
        if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("Layer") && dict["Layer"] != nil {
            self.layer = dict["Layer"] as! Int32
        }
        if dict.keys.contains("LayoutId") && dict["LayoutId"] != nil {
            self.layoutId = dict["LayoutId"] as! String
        }
        if dict.keys.contains("LayoutName") && dict["LayoutName"] != nil {
            self.layoutName = dict["LayoutName"] as! String
        }
        if dict.keys.contains("Shelf") && dict["Shelf"] != nil {
            self.shelf = dict["Shelf"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class BindEslDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BindEslDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindEslDeviceResponseBody?

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
            var model = BindEslDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateStoreRequest : Tea.TeaModel {
    public var autoUnbindDays: Int32?

    public var autoUnbindOfflineEsl: Bool?

    public var barCodeEncode: Int32?

    public var clientToken: String?

    public var extraParams: String?

    public var parentId: String?

    public var phone: String?

    public var storeName: String?

    public var timeZone: String?

    public var userStoreCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoUnbindDays != nil {
            map["AutoUnbindDays"] = self.autoUnbindDays!
        }
        if self.autoUnbindOfflineEsl != nil {
            map["AutoUnbindOfflineEsl"] = self.autoUnbindOfflineEsl!
        }
        if self.barCodeEncode != nil {
            map["BarCodeEncode"] = self.barCodeEncode!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.storeName != nil {
            map["StoreName"] = self.storeName!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.userStoreCode != nil {
            map["UserStoreCode"] = self.userStoreCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoUnbindDays") && dict["AutoUnbindDays"] != nil {
            self.autoUnbindDays = dict["AutoUnbindDays"] as! Int32
        }
        if dict.keys.contains("AutoUnbindOfflineEsl") && dict["AutoUnbindOfflineEsl"] != nil {
            self.autoUnbindOfflineEsl = dict["AutoUnbindOfflineEsl"] as! Bool
        }
        if dict.keys.contains("BarCodeEncode") && dict["BarCodeEncode"] != nil {
            self.barCodeEncode = dict["BarCodeEncode"] as! Int32
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("Phone") && dict["Phone"] != nil {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("StoreName") && dict["StoreName"] != nil {
            self.storeName = dict["StoreName"] as! String
        }
        if dict.keys.contains("TimeZone") && dict["TimeZone"] != nil {
            self.timeZone = dict["TimeZone"] as! String
        }
        if dict.keys.contains("UserStoreCode") && dict["UserStoreCode"] != nil {
            self.userStoreCode = dict["UserStoreCode"] as! String
        }
    }
}

public class CreateStoreResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var requestId: String?

    public var storeId: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStoreResponseBody?

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
            var model = CreateStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApDeviceRequest : Tea.TeaModel {
    public var apMac: String?

    public var extraParams: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApMac") && dict["ApMac"] != nil {
            self.apMac = dict["ApMac"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DeleteApDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteApDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApDeviceResponseBody?

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
            var model = DeleteApDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCompanyTemplateRequest : Tea.TeaModel {
    public var extraParams: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class DeleteCompanyTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteCompanyTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCompanyTemplateResponseBody?

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
            var model = DeleteCompanyTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteItemRequest : Tea.TeaModel {
    public var itemBarCode: String?

    public var storeId: String?

    public var unbindEslDevice: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.unbindEslDevice != nil {
            map["UnbindEslDevice"] = self.unbindEslDevice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("UnbindEslDevice") && dict["UnbindEslDevice"] != nil {
            self.unbindEslDevice = dict["UnbindEslDevice"] as! Bool
        }
    }
}

public class DeleteItemResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteItemResponseBody?

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
            var model = DeleteItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteStoreRequest : Tea.TeaModel {
    public var extraParams: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DeleteStoreResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStoreResponseBody?

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
            var model = DeleteStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var extraParams: String?

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
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserResponseBody?

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
            var model = DeleteUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApDevicesRequest : Tea.TeaModel {
    public var apMac: String?

    public var beActivate: Bool?

    public var extraParams: String?

    public var model: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: Bool?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.beActivate != nil {
            map["BeActivate"] = self.beActivate!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApMac") && dict["ApMac"] != nil {
            self.apMac = dict["ApMac"] as! String
        }
        if dict.keys.contains("BeActivate") && dict["BeActivate"] != nil {
            self.beActivate = dict["BeActivate"] as! Bool
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DescribeApDevicesResponseBody : Tea.TeaModel {
    public class ApDevices : Tea.TeaModel {
        public var beActivate: Bool?

        public var mac: String?

        public var model: String?

        public var remark: String?

        public var status: Bool?

        public var storeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beActivate != nil {
                map["BeActivate"] = self.beActivate!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storeId != nil {
                map["StoreId"] = self.storeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeActivate") && dict["BeActivate"] != nil {
                self.beActivate = dict["BeActivate"] as! Bool
            }
            if dict.keys.contains("Mac") && dict["Mac"] != nil {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Model") && dict["Model"] != nil {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("Remark") && dict["Remark"] != nil {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Bool
            }
            if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
                self.storeId = dict["StoreId"] as! String
            }
        }
    }
    public var apDevices: [DescribeApDevicesResponseBody.ApDevices]?

    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.apDevices != nil {
            var tmp : [Any] = []
            for k in self.apDevices! {
                tmp.append(k.toMap())
            }
            map["ApDevices"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if dict.keys.contains("ApDevices") && dict["ApDevices"] != nil {
            var tmp : [DescribeApDevicesResponseBody.ApDevices] = []
            for v in dict["ApDevices"] as! [Any] {
                var model = DescribeApDevicesResponseBody.ApDevices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.apDevices = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
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

public class DescribeApDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApDevicesResponseBody?

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
            var model = DescribeApDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAvailableEslModelsRequest : Tea.TeaModel {
    public var modelId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAvailableEslModelsResponseBody : Tea.TeaModel {
    public class EslModels : Tea.TeaModel {
        public var deviceType: String?

        public var eslSize: String?

        public var modelId: String?

        public var name: String?

        public var screenHeight: Int32?

        public var screenWidth: Int32?

        public var vendor: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.eslSize != nil {
                map["EslSize"] = self.eslSize!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.screenHeight != nil {
                map["ScreenHeight"] = self.screenHeight!
            }
            if self.screenWidth != nil {
                map["ScreenWidth"] = self.screenWidth!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("EslSize") && dict["EslSize"] != nil {
                self.eslSize = dict["EslSize"] as! String
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ScreenHeight") && dict["ScreenHeight"] != nil {
                self.screenHeight = dict["ScreenHeight"] as! Int32
            }
            if dict.keys.contains("ScreenWidth") && dict["ScreenWidth"] != nil {
                self.screenWidth = dict["ScreenWidth"] as! Int32
            }
            if dict.keys.contains("Vendor") && dict["Vendor"] != nil {
                self.vendor = dict["Vendor"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var eslModels: [DescribeAvailableEslModelsResponseBody.EslModels]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.eslModels != nil {
            var tmp : [Any] = []
            for k in self.eslModels! {
                tmp.append(k.toMap())
            }
            map["EslModels"] = tmp
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("EslModels") && dict["EslModels"] != nil {
            var tmp : [DescribeAvailableEslModelsResponseBody.EslModels] = []
            for v in dict["EslModels"] as! [Any] {
                var model = DescribeAvailableEslModelsResponseBody.EslModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eslModels = tmp
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

public class DescribeAvailableEslModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableEslModelsResponseBody?

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
            var model = DescribeAvailableEslModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBindersRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var extraParams: String?

    public var itemBarCode: String?

    public var itemTitle: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.itemTitle != nil {
            map["ItemTitle"] = self.itemTitle!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("ItemTitle") && dict["ItemTitle"] != nil {
            self.itemTitle = dict["ItemTitle"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DescribeBindersResponseBody : Tea.TeaModel {
    public class EslItemBindInfos : Tea.TeaModel {
        public var actionPrice: String?

        public var bePromotion: Bool?

        public var bindId: String?

        public var containerName: String?

        public var eslBarCode: String?

        public var eslConnectAp: String?

        public var eslModel: String?

        public var eslPic: String?

        public var eslStatus: String?

        public var gmtModified: String?

        public var itemBarCode: String?

        public var itemId: String?

        public var itemShortTitle: String?

        public var itemTitle: String?

        public var originalPrice: String?

        public var priceUnit: String?

        public var promotionEnd: String?

        public var promotionStart: String?

        public var promotionText: String?

        public var skuId: String?

        public var storeId: String?

        public var templateId: String?

        public var templateSceneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionPrice != nil {
                map["ActionPrice"] = self.actionPrice!
            }
            if self.bePromotion != nil {
                map["BePromotion"] = self.bePromotion!
            }
            if self.bindId != nil {
                map["BindId"] = self.bindId!
            }
            if self.containerName != nil {
                map["ContainerName"] = self.containerName!
            }
            if self.eslBarCode != nil {
                map["EslBarCode"] = self.eslBarCode!
            }
            if self.eslConnectAp != nil {
                map["EslConnectAp"] = self.eslConnectAp!
            }
            if self.eslModel != nil {
                map["EslModel"] = self.eslModel!
            }
            if self.eslPic != nil {
                map["EslPic"] = self.eslPic!
            }
            if self.eslStatus != nil {
                map["EslStatus"] = self.eslStatus!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.itemBarCode != nil {
                map["ItemBarCode"] = self.itemBarCode!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemShortTitle != nil {
                map["ItemShortTitle"] = self.itemShortTitle!
            }
            if self.itemTitle != nil {
                map["ItemTitle"] = self.itemTitle!
            }
            if self.originalPrice != nil {
                map["OriginalPrice"] = self.originalPrice!
            }
            if self.priceUnit != nil {
                map["PriceUnit"] = self.priceUnit!
            }
            if self.promotionEnd != nil {
                map["PromotionEnd"] = self.promotionEnd!
            }
            if self.promotionStart != nil {
                map["PromotionStart"] = self.promotionStart!
            }
            if self.promotionText != nil {
                map["PromotionText"] = self.promotionText!
            }
            if self.skuId != nil {
                map["SkuId"] = self.skuId!
            }
            if self.storeId != nil {
                map["StoreId"] = self.storeId!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateSceneId != nil {
                map["TemplateSceneId"] = self.templateSceneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionPrice") && dict["ActionPrice"] != nil {
                self.actionPrice = dict["ActionPrice"] as! String
            }
            if dict.keys.contains("BePromotion") && dict["BePromotion"] != nil {
                self.bePromotion = dict["BePromotion"] as! Bool
            }
            if dict.keys.contains("BindId") && dict["BindId"] != nil {
                self.bindId = dict["BindId"] as! String
            }
            if dict.keys.contains("ContainerName") && dict["ContainerName"] != nil {
                self.containerName = dict["ContainerName"] as! String
            }
            if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
                self.eslBarCode = dict["EslBarCode"] as! String
            }
            if dict.keys.contains("EslConnectAp") && dict["EslConnectAp"] != nil {
                self.eslConnectAp = dict["EslConnectAp"] as! String
            }
            if dict.keys.contains("EslModel") && dict["EslModel"] != nil {
                self.eslModel = dict["EslModel"] as! String
            }
            if dict.keys.contains("EslPic") && dict["EslPic"] != nil {
                self.eslPic = dict["EslPic"] as! String
            }
            if dict.keys.contains("EslStatus") && dict["EslStatus"] != nil {
                self.eslStatus = dict["EslStatus"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
                self.itemBarCode = dict["ItemBarCode"] as! String
            }
            if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
                self.itemId = dict["ItemId"] as! String
            }
            if dict.keys.contains("ItemShortTitle") && dict["ItemShortTitle"] != nil {
                self.itemShortTitle = dict["ItemShortTitle"] as! String
            }
            if dict.keys.contains("ItemTitle") && dict["ItemTitle"] != nil {
                self.itemTitle = dict["ItemTitle"] as! String
            }
            if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                self.originalPrice = dict["OriginalPrice"] as! String
            }
            if dict.keys.contains("PriceUnit") && dict["PriceUnit"] != nil {
                self.priceUnit = dict["PriceUnit"] as! String
            }
            if dict.keys.contains("PromotionEnd") && dict["PromotionEnd"] != nil {
                self.promotionEnd = dict["PromotionEnd"] as! String
            }
            if dict.keys.contains("PromotionStart") && dict["PromotionStart"] != nil {
                self.promotionStart = dict["PromotionStart"] as! String
            }
            if dict.keys.contains("PromotionText") && dict["PromotionText"] != nil {
                self.promotionText = dict["PromotionText"] as! String
            }
            if dict.keys.contains("SkuId") && dict["SkuId"] != nil {
                self.skuId = dict["SkuId"] as! String
            }
            if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
                self.storeId = dict["StoreId"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateSceneId") && dict["TemplateSceneId"] != nil {
                self.templateSceneId = dict["TemplateSceneId"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var eslItemBindInfos: [DescribeBindersResponseBody.EslItemBindInfos]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.eslItemBindInfos != nil {
            var tmp : [Any] = []
            for k in self.eslItemBindInfos! {
                tmp.append(k.toMap())
            }
            map["EslItemBindInfos"] = tmp
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("EslItemBindInfos") && dict["EslItemBindInfos"] != nil {
            var tmp : [DescribeBindersResponseBody.EslItemBindInfos] = []
            for v in dict["EslItemBindInfos"] as! [Any] {
                var model = DescribeBindersResponseBody.EslItemBindInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eslItemBindInfos = tmp
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

public class DescribeBindersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBindersResponseBody?

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
            var model = DescribeBindersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCompanyTemplateVersionsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeCompanyTemplateVersionsResponseBody : Tea.TeaModel {
    public class Versions : Tea.TeaModel {
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
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var versions: [DescribeCompanyTemplateVersionsResponseBody.Versions]?

    public override init() {
        super.init()
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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.versions != nil {
            var tmp : [Any] = []
            for k in self.versions! {
                tmp.append(k.toMap())
            }
            map["Versions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
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
        if dict.keys.contains("Versions") && dict["Versions"] != nil {
            var tmp : [DescribeCompanyTemplateVersionsResponseBody.Versions] = []
            for v in dict["Versions"] as! [Any] {
                var model = DescribeCompanyTemplateVersionsResponseBody.Versions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.versions = tmp
        }
    }
}

public class DescribeCompanyTemplateVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCompanyTemplateVersionsResponseBody?

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
            var model = DescribeCompanyTemplateVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEslDeviceRequest : Tea.TeaModel {
    public var fromDate: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var storeId: String?

    public var toDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromDate != nil {
            map["FromDate"] = self.fromDate!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.toDate != nil {
            map["ToDate"] = self.toDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FromDate") && dict["FromDate"] != nil {
            self.fromDate = dict["FromDate"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("ToDate") && dict["ToDate"] != nil {
            self.toDate = dict["ToDate"] as! String
        }
    }
}

public class DescribeEslDeviceResponseBody : Tea.TeaModel {
    public class EslDetails : Tea.TeaModel {
        public var eslBarCode: String?

        public var itemBarCode: Int64?

        public var itemId: Int64?

        public var itemShortTitle: String?

        public var lastUpdateTime: String?

        public var status: String?

        public var storeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eslBarCode != nil {
                map["EslBarCode"] = self.eslBarCode!
            }
            if self.itemBarCode != nil {
                map["ItemBarCode"] = self.itemBarCode!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemShortTitle != nil {
                map["ItemShortTitle"] = self.itemShortTitle!
            }
            if self.lastUpdateTime != nil {
                map["LastUpdateTime"] = self.lastUpdateTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storeId != nil {
                map["StoreId"] = self.storeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
                self.eslBarCode = dict["EslBarCode"] as! String
            }
            if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
                self.itemBarCode = dict["ItemBarCode"] as! Int64
            }
            if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
                self.itemId = dict["ItemId"] as! Int64
            }
            if dict.keys.contains("ItemShortTitle") && dict["ItemShortTitle"] != nil {
                self.itemShortTitle = dict["ItemShortTitle"] as! String
            }
            if dict.keys.contains("LastUpdateTime") && dict["LastUpdateTime"] != nil {
                self.lastUpdateTime = dict["LastUpdateTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
                self.storeId = dict["StoreId"] as! String
            }
        }
    }
    public var eslDetails: [DescribeEslDeviceResponseBody.EslDetails]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

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
        if self.eslDetails != nil {
            var tmp : [Any] = []
            for k in self.eslDetails! {
                tmp.append(k.toMap())
            }
            map["EslDetails"] = tmp
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
        if dict.keys.contains("EslDetails") && dict["EslDetails"] != nil {
            var tmp : [DescribeEslDeviceResponseBody.EslDetails] = []
            for v in dict["EslDetails"] as! [Any] {
                var model = DescribeEslDeviceResponseBody.EslDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eslDetails = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeEslDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEslDeviceResponseBody?

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
            var model = DescribeEslDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEslDevicesRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var eslStatus: String?

    public var extraParams: String?

    public var fromBatteryLevel: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var storeId: String?

    public var toBatteryLevel: Int32?

    public var type: String?

    public var typeEncode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.eslStatus != nil {
            map["EslStatus"] = self.eslStatus!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.fromBatteryLevel != nil {
            map["FromBatteryLevel"] = self.fromBatteryLevel!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.toBatteryLevel != nil {
            map["ToBatteryLevel"] = self.toBatteryLevel!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.typeEncode != nil {
            map["TypeEncode"] = self.typeEncode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("EslStatus") && dict["EslStatus"] != nil {
            self.eslStatus = dict["EslStatus"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("FromBatteryLevel") && dict["FromBatteryLevel"] != nil {
            self.fromBatteryLevel = dict["FromBatteryLevel"] as! Int32
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("ToBatteryLevel") && dict["ToBatteryLevel"] != nil {
            self.toBatteryLevel = dict["ToBatteryLevel"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("TypeEncode") && dict["TypeEncode"] != nil {
            self.typeEncode = dict["TypeEncode"] as! String
        }
    }
}

public class DescribeEslDevicesResponseBody : Tea.TeaModel {
    public class EslDevices : Tea.TeaModel {
        public var batteryLevel: Int32?

        public var eslBarCode: String?

        public var eslSignal: Int32?

        public var eslStatus: String?

        public var lastCommunicateTime: String?

        public var layoutId: String?

        public var layoutName: String?

        public var mac: String?

        public var model: String?

        public var screenHeight: Int32?

        public var screenWidth: Int32?

        public var storeId: String?

        public var type: String?

        public var typeEncode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batteryLevel != nil {
                map["BatteryLevel"] = self.batteryLevel!
            }
            if self.eslBarCode != nil {
                map["EslBarCode"] = self.eslBarCode!
            }
            if self.eslSignal != nil {
                map["EslSignal"] = self.eslSignal!
            }
            if self.eslStatus != nil {
                map["EslStatus"] = self.eslStatus!
            }
            if self.lastCommunicateTime != nil {
                map["LastCommunicateTime"] = self.lastCommunicateTime!
            }
            if self.layoutId != nil {
                map["LayoutId"] = self.layoutId!
            }
            if self.layoutName != nil {
                map["LayoutName"] = self.layoutName!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.screenHeight != nil {
                map["ScreenHeight"] = self.screenHeight!
            }
            if self.screenWidth != nil {
                map["ScreenWidth"] = self.screenWidth!
            }
            if self.storeId != nil {
                map["StoreId"] = self.storeId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.typeEncode != nil {
                map["TypeEncode"] = self.typeEncode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BatteryLevel") && dict["BatteryLevel"] != nil {
                self.batteryLevel = dict["BatteryLevel"] as! Int32
            }
            if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
                self.eslBarCode = dict["EslBarCode"] as! String
            }
            if dict.keys.contains("EslSignal") && dict["EslSignal"] != nil {
                self.eslSignal = dict["EslSignal"] as! Int32
            }
            if dict.keys.contains("EslStatus") && dict["EslStatus"] != nil {
                self.eslStatus = dict["EslStatus"] as! String
            }
            if dict.keys.contains("LastCommunicateTime") && dict["LastCommunicateTime"] != nil {
                self.lastCommunicateTime = dict["LastCommunicateTime"] as! String
            }
            if dict.keys.contains("LayoutId") && dict["LayoutId"] != nil {
                self.layoutId = dict["LayoutId"] as! String
            }
            if dict.keys.contains("LayoutName") && dict["LayoutName"] != nil {
                self.layoutName = dict["LayoutName"] as! String
            }
            if dict.keys.contains("Mac") && dict["Mac"] != nil {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Model") && dict["Model"] != nil {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("ScreenHeight") && dict["ScreenHeight"] != nil {
                self.screenHeight = dict["ScreenHeight"] as! Int32
            }
            if dict.keys.contains("ScreenWidth") && dict["ScreenWidth"] != nil {
                self.screenWidth = dict["ScreenWidth"] as! Int32
            }
            if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
                self.storeId = dict["StoreId"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("TypeEncode") && dict["TypeEncode"] != nil {
                self.typeEncode = dict["TypeEncode"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var eslDevices: [DescribeEslDevicesResponseBody.EslDevices]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.eslDevices != nil {
            var tmp : [Any] = []
            for k in self.eslDevices! {
                tmp.append(k.toMap())
            }
            map["EslDevices"] = tmp
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("EslDevices") && dict["EslDevices"] != nil {
            var tmp : [DescribeEslDevicesResponseBody.EslDevices] = []
            for v in dict["EslDevices"] as! [Any] {
                var model = DescribeEslDevicesResponseBody.EslDevices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eslDevices = tmp
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

public class DescribeEslDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEslDevicesResponseBody?

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
            var model = DescribeEslDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEslModelByTemplateVersionRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var templateVersion: String?

    public override init() {
        super.init()
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
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
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
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class DescribeEslModelByTemplateVersionResponseBody : Tea.TeaModel {
    public class EslModels : Tea.TeaModel {
        public var deviceType: String?

        public var eslPhysicalSize: String?

        public var eslSize: String?

        public var image: String?

        public var modelId: String?

        public var name: String?

        public var screenHeight: Int32?

        public var screenWidth: Int32?

        public var vendor: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.eslPhysicalSize != nil {
                map["EslPhysicalSize"] = self.eslPhysicalSize!
            }
            if self.eslSize != nil {
                map["EslSize"] = self.eslSize!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.screenHeight != nil {
                map["ScreenHeight"] = self.screenHeight!
            }
            if self.screenWidth != nil {
                map["ScreenWidth"] = self.screenWidth!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("EslPhysicalSize") && dict["EslPhysicalSize"] != nil {
                self.eslPhysicalSize = dict["EslPhysicalSize"] as! String
            }
            if dict.keys.contains("EslSize") && dict["EslSize"] != nil {
                self.eslSize = dict["EslSize"] as! String
            }
            if dict.keys.contains("Image") && dict["Image"] != nil {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ScreenHeight") && dict["ScreenHeight"] != nil {
                self.screenHeight = dict["ScreenHeight"] as! Int32
            }
            if dict.keys.contains("ScreenWidth") && dict["ScreenWidth"] != nil {
                self.screenWidth = dict["ScreenWidth"] as! Int32
            }
            if dict.keys.contains("Vendor") && dict["Vendor"] != nil {
                self.vendor = dict["Vendor"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var eslModels: [DescribeEslModelByTemplateVersionResponseBody.EslModels]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.eslModels != nil {
            var tmp : [Any] = []
            for k in self.eslModels! {
                tmp.append(k.toMap())
            }
            map["EslModels"] = tmp
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("EslModels") && dict["EslModels"] != nil {
            var tmp : [DescribeEslModelByTemplateVersionResponseBody.EslModels] = []
            for v in dict["EslModels"] as! [Any] {
                var model = DescribeEslModelByTemplateVersionResponseBody.EslModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eslModels = tmp
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

public class DescribeEslModelByTemplateVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEslModelByTemplateVersionResponseBody?

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
            var model = DescribeEslModelByTemplateVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeItemsRequest : Tea.TeaModel {
    public var bePromotion: Bool?

    public var extraParams: String?

    public var itemBarCode: String?

    public var itemId: String?

    public var itemTitle: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var skuId: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bePromotion != nil {
            map["BePromotion"] = self.bePromotion!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        if self.itemTitle != nil {
            map["ItemTitle"] = self.itemTitle!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.skuId != nil {
            map["SkuId"] = self.skuId!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BePromotion") && dict["BePromotion"] != nil {
            self.bePromotion = dict["BePromotion"] as! Bool
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
            self.itemId = dict["ItemId"] as! String
        }
        if dict.keys.contains("ItemTitle") && dict["ItemTitle"] != nil {
            self.itemTitle = dict["ItemTitle"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SkuId") && dict["SkuId"] != nil {
            self.skuId = dict["SkuId"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DescribeItemsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var actionPrice: Int32?

        public var beClearance: Bool?

        public var beMember: Bool?

        public var bePromotion: Bool?

        public var beSourceCode: Bool?

        public var brandName: String?

        public var categoryName: String?

        public var customizeFeatureA: String?

        public var customizeFeatureB: String?

        public var customizeFeatureC: String?

        public var customizeFeatureD: String?

        public var customizeFeatureE: String?

        public var customizeFeatureF: String?

        public var customizeFeatureG: String?

        public var customizeFeatureH: String?

        public var customizeFeatureI: String?

        public var customizeFeatureJ: String?

        public var customizeFeatureK: String?

        public var customizeFeatureL: String?

        public var customizeFeatureM: String?

        public var customizeFeatureN: String?

        public var customizeFeatureO: String?

        public var customizeFeatureP: String?

        public var customizeFeatureQ: String?

        public var customizeFeatureR: String?

        public var customizeFeatureS: String?

        public var customizeFeatureT: String?

        public var customizeFeatureU: String?

        public var customizeFeatureV: String?

        public var customizeFeatureW: String?

        public var customizeFeatureX: String?

        public var customizeFeatureY: String?

        public var customizeFeatureZ: String?

        public var energyEfficiency: String?

        public var forestFirstId: String?

        public var forestSecondId: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var inventoryStatus: String?

        public var itemBarCode: String?

        public var itemId: String?

        public var itemInfoIndex: Int32?

        public var itemPicUrl: String?

        public var itemQrCode: String?

        public var itemShortTitle: String?

        public var itemTitle: String?

        public var manufacturer: String?

        public var material: String?

        public var memberPrice: Int32?

        public var modelNumber: String?

        public var originalPrice: Int32?

        public var priceUnit: String?

        public var productionPlace: String?

        public var promotionEnd: String?

        public var promotionReason: String?

        public var promotionStart: String?

        public var promotionText: String?

        public var rank: String?

        public var saleSpec: String?

        public var salesPrice: Int32?

        public var skuId: String?

        public var sourceCode: String?

        public var suggestPrice: Int32?

        public var supplierName: String?

        public var taxFee: String?

        public var templateSceneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionPrice != nil {
                map["ActionPrice"] = self.actionPrice!
            }
            if self.beClearance != nil {
                map["BeClearance"] = self.beClearance!
            }
            if self.beMember != nil {
                map["BeMember"] = self.beMember!
            }
            if self.bePromotion != nil {
                map["BePromotion"] = self.bePromotion!
            }
            if self.beSourceCode != nil {
                map["BeSourceCode"] = self.beSourceCode!
            }
            if self.brandName != nil {
                map["BrandName"] = self.brandName!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.customizeFeatureA != nil {
                map["CustomizeFeatureA"] = self.customizeFeatureA!
            }
            if self.customizeFeatureB != nil {
                map["CustomizeFeatureB"] = self.customizeFeatureB!
            }
            if self.customizeFeatureC != nil {
                map["CustomizeFeatureC"] = self.customizeFeatureC!
            }
            if self.customizeFeatureD != nil {
                map["CustomizeFeatureD"] = self.customizeFeatureD!
            }
            if self.customizeFeatureE != nil {
                map["CustomizeFeatureE"] = self.customizeFeatureE!
            }
            if self.customizeFeatureF != nil {
                map["CustomizeFeatureF"] = self.customizeFeatureF!
            }
            if self.customizeFeatureG != nil {
                map["CustomizeFeatureG"] = self.customizeFeatureG!
            }
            if self.customizeFeatureH != nil {
                map["CustomizeFeatureH"] = self.customizeFeatureH!
            }
            if self.customizeFeatureI != nil {
                map["CustomizeFeatureI"] = self.customizeFeatureI!
            }
            if self.customizeFeatureJ != nil {
                map["CustomizeFeatureJ"] = self.customizeFeatureJ!
            }
            if self.customizeFeatureK != nil {
                map["CustomizeFeatureK"] = self.customizeFeatureK!
            }
            if self.customizeFeatureL != nil {
                map["CustomizeFeatureL"] = self.customizeFeatureL!
            }
            if self.customizeFeatureM != nil {
                map["CustomizeFeatureM"] = self.customizeFeatureM!
            }
            if self.customizeFeatureN != nil {
                map["CustomizeFeatureN"] = self.customizeFeatureN!
            }
            if self.customizeFeatureO != nil {
                map["CustomizeFeatureO"] = self.customizeFeatureO!
            }
            if self.customizeFeatureP != nil {
                map["CustomizeFeatureP"] = self.customizeFeatureP!
            }
            if self.customizeFeatureQ != nil {
                map["CustomizeFeatureQ"] = self.customizeFeatureQ!
            }
            if self.customizeFeatureR != nil {
                map["CustomizeFeatureR"] = self.customizeFeatureR!
            }
            if self.customizeFeatureS != nil {
                map["CustomizeFeatureS"] = self.customizeFeatureS!
            }
            if self.customizeFeatureT != nil {
                map["CustomizeFeatureT"] = self.customizeFeatureT!
            }
            if self.customizeFeatureU != nil {
                map["CustomizeFeatureU"] = self.customizeFeatureU!
            }
            if self.customizeFeatureV != nil {
                map["CustomizeFeatureV"] = self.customizeFeatureV!
            }
            if self.customizeFeatureW != nil {
                map["CustomizeFeatureW"] = self.customizeFeatureW!
            }
            if self.customizeFeatureX != nil {
                map["CustomizeFeatureX"] = self.customizeFeatureX!
            }
            if self.customizeFeatureY != nil {
                map["CustomizeFeatureY"] = self.customizeFeatureY!
            }
            if self.customizeFeatureZ != nil {
                map["CustomizeFeatureZ"] = self.customizeFeatureZ!
            }
            if self.energyEfficiency != nil {
                map["EnergyEfficiency"] = self.energyEfficiency!
            }
            if self.forestFirstId != nil {
                map["ForestFirstId"] = self.forestFirstId!
            }
            if self.forestSecondId != nil {
                map["ForestSecondId"] = self.forestSecondId!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.inventoryStatus != nil {
                map["InventoryStatus"] = self.inventoryStatus!
            }
            if self.itemBarCode != nil {
                map["ItemBarCode"] = self.itemBarCode!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemInfoIndex != nil {
                map["ItemInfoIndex"] = self.itemInfoIndex!
            }
            if self.itemPicUrl != nil {
                map["ItemPicUrl"] = self.itemPicUrl!
            }
            if self.itemQrCode != nil {
                map["ItemQrCode"] = self.itemQrCode!
            }
            if self.itemShortTitle != nil {
                map["ItemShortTitle"] = self.itemShortTitle!
            }
            if self.itemTitle != nil {
                map["ItemTitle"] = self.itemTitle!
            }
            if self.manufacturer != nil {
                map["Manufacturer"] = self.manufacturer!
            }
            if self.material != nil {
                map["Material"] = self.material!
            }
            if self.memberPrice != nil {
                map["MemberPrice"] = self.memberPrice!
            }
            if self.modelNumber != nil {
                map["ModelNumber"] = self.modelNumber!
            }
            if self.originalPrice != nil {
                map["OriginalPrice"] = self.originalPrice!
            }
            if self.priceUnit != nil {
                map["PriceUnit"] = self.priceUnit!
            }
            if self.productionPlace != nil {
                map["ProductionPlace"] = self.productionPlace!
            }
            if self.promotionEnd != nil {
                map["PromotionEnd"] = self.promotionEnd!
            }
            if self.promotionReason != nil {
                map["PromotionReason"] = self.promotionReason!
            }
            if self.promotionStart != nil {
                map["PromotionStart"] = self.promotionStart!
            }
            if self.promotionText != nil {
                map["PromotionText"] = self.promotionText!
            }
            if self.rank != nil {
                map["Rank"] = self.rank!
            }
            if self.saleSpec != nil {
                map["SaleSpec"] = self.saleSpec!
            }
            if self.salesPrice != nil {
                map["SalesPrice"] = self.salesPrice!
            }
            if self.skuId != nil {
                map["SkuId"] = self.skuId!
            }
            if self.sourceCode != nil {
                map["SourceCode"] = self.sourceCode!
            }
            if self.suggestPrice != nil {
                map["SuggestPrice"] = self.suggestPrice!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.taxFee != nil {
                map["TaxFee"] = self.taxFee!
            }
            if self.templateSceneId != nil {
                map["TemplateSceneId"] = self.templateSceneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionPrice") && dict["ActionPrice"] != nil {
                self.actionPrice = dict["ActionPrice"] as! Int32
            }
            if dict.keys.contains("BeClearance") && dict["BeClearance"] != nil {
                self.beClearance = dict["BeClearance"] as! Bool
            }
            if dict.keys.contains("BeMember") && dict["BeMember"] != nil {
                self.beMember = dict["BeMember"] as! Bool
            }
            if dict.keys.contains("BePromotion") && dict["BePromotion"] != nil {
                self.bePromotion = dict["BePromotion"] as! Bool
            }
            if dict.keys.contains("BeSourceCode") && dict["BeSourceCode"] != nil {
                self.beSourceCode = dict["BeSourceCode"] as! Bool
            }
            if dict.keys.contains("BrandName") && dict["BrandName"] != nil {
                self.brandName = dict["BrandName"] as! String
            }
            if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("CustomizeFeatureA") && dict["CustomizeFeatureA"] != nil {
                self.customizeFeatureA = dict["CustomizeFeatureA"] as! String
            }
            if dict.keys.contains("CustomizeFeatureB") && dict["CustomizeFeatureB"] != nil {
                self.customizeFeatureB = dict["CustomizeFeatureB"] as! String
            }
            if dict.keys.contains("CustomizeFeatureC") && dict["CustomizeFeatureC"] != nil {
                self.customizeFeatureC = dict["CustomizeFeatureC"] as! String
            }
            if dict.keys.contains("CustomizeFeatureD") && dict["CustomizeFeatureD"] != nil {
                self.customizeFeatureD = dict["CustomizeFeatureD"] as! String
            }
            if dict.keys.contains("CustomizeFeatureE") && dict["CustomizeFeatureE"] != nil {
                self.customizeFeatureE = dict["CustomizeFeatureE"] as! String
            }
            if dict.keys.contains("CustomizeFeatureF") && dict["CustomizeFeatureF"] != nil {
                self.customizeFeatureF = dict["CustomizeFeatureF"] as! String
            }
            if dict.keys.contains("CustomizeFeatureG") && dict["CustomizeFeatureG"] != nil {
                self.customizeFeatureG = dict["CustomizeFeatureG"] as! String
            }
            if dict.keys.contains("CustomizeFeatureH") && dict["CustomizeFeatureH"] != nil {
                self.customizeFeatureH = dict["CustomizeFeatureH"] as! String
            }
            if dict.keys.contains("CustomizeFeatureI") && dict["CustomizeFeatureI"] != nil {
                self.customizeFeatureI = dict["CustomizeFeatureI"] as! String
            }
            if dict.keys.contains("CustomizeFeatureJ") && dict["CustomizeFeatureJ"] != nil {
                self.customizeFeatureJ = dict["CustomizeFeatureJ"] as! String
            }
            if dict.keys.contains("CustomizeFeatureK") && dict["CustomizeFeatureK"] != nil {
                self.customizeFeatureK = dict["CustomizeFeatureK"] as! String
            }
            if dict.keys.contains("CustomizeFeatureL") && dict["CustomizeFeatureL"] != nil {
                self.customizeFeatureL = dict["CustomizeFeatureL"] as! String
            }
            if dict.keys.contains("CustomizeFeatureM") && dict["CustomizeFeatureM"] != nil {
                self.customizeFeatureM = dict["CustomizeFeatureM"] as! String
            }
            if dict.keys.contains("CustomizeFeatureN") && dict["CustomizeFeatureN"] != nil {
                self.customizeFeatureN = dict["CustomizeFeatureN"] as! String
            }
            if dict.keys.contains("CustomizeFeatureO") && dict["CustomizeFeatureO"] != nil {
                self.customizeFeatureO = dict["CustomizeFeatureO"] as! String
            }
            if dict.keys.contains("CustomizeFeatureP") && dict["CustomizeFeatureP"] != nil {
                self.customizeFeatureP = dict["CustomizeFeatureP"] as! String
            }
            if dict.keys.contains("CustomizeFeatureQ") && dict["CustomizeFeatureQ"] != nil {
                self.customizeFeatureQ = dict["CustomizeFeatureQ"] as! String
            }
            if dict.keys.contains("CustomizeFeatureR") && dict["CustomizeFeatureR"] != nil {
                self.customizeFeatureR = dict["CustomizeFeatureR"] as! String
            }
            if dict.keys.contains("CustomizeFeatureS") && dict["CustomizeFeatureS"] != nil {
                self.customizeFeatureS = dict["CustomizeFeatureS"] as! String
            }
            if dict.keys.contains("CustomizeFeatureT") && dict["CustomizeFeatureT"] != nil {
                self.customizeFeatureT = dict["CustomizeFeatureT"] as! String
            }
            if dict.keys.contains("CustomizeFeatureU") && dict["CustomizeFeatureU"] != nil {
                self.customizeFeatureU = dict["CustomizeFeatureU"] as! String
            }
            if dict.keys.contains("CustomizeFeatureV") && dict["CustomizeFeatureV"] != nil {
                self.customizeFeatureV = dict["CustomizeFeatureV"] as! String
            }
            if dict.keys.contains("CustomizeFeatureW") && dict["CustomizeFeatureW"] != nil {
                self.customizeFeatureW = dict["CustomizeFeatureW"] as! String
            }
            if dict.keys.contains("CustomizeFeatureX") && dict["CustomizeFeatureX"] != nil {
                self.customizeFeatureX = dict["CustomizeFeatureX"] as! String
            }
            if dict.keys.contains("CustomizeFeatureY") && dict["CustomizeFeatureY"] != nil {
                self.customizeFeatureY = dict["CustomizeFeatureY"] as! String
            }
            if dict.keys.contains("CustomizeFeatureZ") && dict["CustomizeFeatureZ"] != nil {
                self.customizeFeatureZ = dict["CustomizeFeatureZ"] as! String
            }
            if dict.keys.contains("EnergyEfficiency") && dict["EnergyEfficiency"] != nil {
                self.energyEfficiency = dict["EnergyEfficiency"] as! String
            }
            if dict.keys.contains("ForestFirstId") && dict["ForestFirstId"] != nil {
                self.forestFirstId = dict["ForestFirstId"] as! String
            }
            if dict.keys.contains("ForestSecondId") && dict["ForestSecondId"] != nil {
                self.forestSecondId = dict["ForestSecondId"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("InventoryStatus") && dict["InventoryStatus"] != nil {
                self.inventoryStatus = dict["InventoryStatus"] as! String
            }
            if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
                self.itemBarCode = dict["ItemBarCode"] as! String
            }
            if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
                self.itemId = dict["ItemId"] as! String
            }
            if dict.keys.contains("ItemInfoIndex") && dict["ItemInfoIndex"] != nil {
                self.itemInfoIndex = dict["ItemInfoIndex"] as! Int32
            }
            if dict.keys.contains("ItemPicUrl") && dict["ItemPicUrl"] != nil {
                self.itemPicUrl = dict["ItemPicUrl"] as! String
            }
            if dict.keys.contains("ItemQrCode") && dict["ItemQrCode"] != nil {
                self.itemQrCode = dict["ItemQrCode"] as! String
            }
            if dict.keys.contains("ItemShortTitle") && dict["ItemShortTitle"] != nil {
                self.itemShortTitle = dict["ItemShortTitle"] as! String
            }
            if dict.keys.contains("ItemTitle") && dict["ItemTitle"] != nil {
                self.itemTitle = dict["ItemTitle"] as! String
            }
            if dict.keys.contains("Manufacturer") && dict["Manufacturer"] != nil {
                self.manufacturer = dict["Manufacturer"] as! String
            }
            if dict.keys.contains("Material") && dict["Material"] != nil {
                self.material = dict["Material"] as! String
            }
            if dict.keys.contains("MemberPrice") && dict["MemberPrice"] != nil {
                self.memberPrice = dict["MemberPrice"] as! Int32
            }
            if dict.keys.contains("ModelNumber") && dict["ModelNumber"] != nil {
                self.modelNumber = dict["ModelNumber"] as! String
            }
            if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                self.originalPrice = dict["OriginalPrice"] as! Int32
            }
            if dict.keys.contains("PriceUnit") && dict["PriceUnit"] != nil {
                self.priceUnit = dict["PriceUnit"] as! String
            }
            if dict.keys.contains("ProductionPlace") && dict["ProductionPlace"] != nil {
                self.productionPlace = dict["ProductionPlace"] as! String
            }
            if dict.keys.contains("PromotionEnd") && dict["PromotionEnd"] != nil {
                self.promotionEnd = dict["PromotionEnd"] as! String
            }
            if dict.keys.contains("PromotionReason") && dict["PromotionReason"] != nil {
                self.promotionReason = dict["PromotionReason"] as! String
            }
            if dict.keys.contains("PromotionStart") && dict["PromotionStart"] != nil {
                self.promotionStart = dict["PromotionStart"] as! String
            }
            if dict.keys.contains("PromotionText") && dict["PromotionText"] != nil {
                self.promotionText = dict["PromotionText"] as! String
            }
            if dict.keys.contains("Rank") && dict["Rank"] != nil {
                self.rank = dict["Rank"] as! String
            }
            if dict.keys.contains("SaleSpec") && dict["SaleSpec"] != nil {
                self.saleSpec = dict["SaleSpec"] as! String
            }
            if dict.keys.contains("SalesPrice") && dict["SalesPrice"] != nil {
                self.salesPrice = dict["SalesPrice"] as! Int32
            }
            if dict.keys.contains("SkuId") && dict["SkuId"] != nil {
                self.skuId = dict["SkuId"] as! String
            }
            if dict.keys.contains("SourceCode") && dict["SourceCode"] != nil {
                self.sourceCode = dict["SourceCode"] as! String
            }
            if dict.keys.contains("SuggestPrice") && dict["SuggestPrice"] != nil {
                self.suggestPrice = dict["SuggestPrice"] as! Int32
            }
            if dict.keys.contains("SupplierName") && dict["SupplierName"] != nil {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("TaxFee") && dict["TaxFee"] != nil {
                self.taxFee = dict["TaxFee"] as! String
            }
            if dict.keys.contains("TemplateSceneId") && dict["TemplateSceneId"] != nil {
                self.templateSceneId = dict["TemplateSceneId"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var items: [DescribeItemsResponseBody.Items]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var templateSceneId: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.templateSceneId != nil {
            map["TemplateSceneId"] = self.templateSceneId!
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeItemsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeItemsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
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
        if dict.keys.contains("TemplateSceneId") && dict["TemplateSceneId"] != nil {
            self.templateSceneId = dict["TemplateSceneId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeItemsResponseBody?

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
            var model = DescribeItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStoreByTemplateVersionRequest : Tea.TeaModel {
    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class DescribeStoreByTemplateVersionResponseBody : Tea.TeaModel {
    public class Stores : Tea.TeaModel {
        public var gmtModified: String?

        public var level: String?

        public var parentId: String?

        public var phone: String?

        public var storeId: String?

        public var storeName: String?

        public var templateVersion: String?

        public var timeZone: String?

        public var userStoreCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.storeId != nil {
                map["StoreId"] = self.storeId!
            }
            if self.storeName != nil {
                map["StoreName"] = self.storeName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.timeZone != nil {
                map["TimeZone"] = self.timeZone!
            }
            if self.userStoreCode != nil {
                map["UserStoreCode"] = self.userStoreCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("Phone") && dict["Phone"] != nil {
                self.phone = dict["Phone"] as! String
            }
            if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
                self.storeId = dict["StoreId"] as! String
            }
            if dict.keys.contains("StoreName") && dict["StoreName"] != nil {
                self.storeName = dict["StoreName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("TimeZone") && dict["TimeZone"] != nil {
                self.timeZone = dict["TimeZone"] as! String
            }
            if dict.keys.contains("UserStoreCode") && dict["UserStoreCode"] != nil {
                self.userStoreCode = dict["UserStoreCode"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var requestId: String?

    public var stores: [DescribeStoreByTemplateVersionResponseBody.Stores]?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.stores != nil {
            var tmp : [Any] = []
            for k in self.stores! {
                tmp.append(k.toMap())
            }
            map["Stores"] = tmp
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Stores") && dict["Stores"] != nil {
            var tmp : [DescribeStoreByTemplateVersionResponseBody.Stores] = []
            for v in dict["Stores"] as! [Any] {
                var model = DescribeStoreByTemplateVersionResponseBody.Stores()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stores = tmp
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeStoreByTemplateVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStoreByTemplateVersionResponseBody?

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
            var model = DescribeStoreByTemplateVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStoreConfigRequest : Tea.TeaModel {
    public var extraParams: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DescribeStoreConfigResponseBody : Tea.TeaModel {
    public class StoreConfigInfo : Tea.TeaModel {
        public class SubscribeContents : Tea.TeaModel {
            public var atAll: Bool?

            public var atMobileList: String?

            public var category: String?

            public var enable: Bool?

            public var threshold: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.atAll != nil {
                    map["AtAll"] = self.atAll!
                }
                if self.atMobileList != nil {
                    map["AtMobileList"] = self.atMobileList!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                if self.threshold != nil {
                    map["Threshold"] = self.threshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AtAll") && dict["AtAll"] != nil {
                    self.atAll = dict["AtAll"] as! Bool
                }
                if dict.keys.contains("AtMobileList") && dict["AtMobileList"] != nil {
                    self.atMobileList = dict["AtMobileList"] as! String
                }
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Enable") && dict["Enable"] != nil {
                    self.enable = dict["Enable"] as! Bool
                }
                if dict.keys.contains("Threshold") && dict["Threshold"] != nil {
                    self.threshold = dict["Threshold"] as! String
                }
            }
        }
        public var enableNotification: Bool?

        public var notificationSilentTimes: String?

        public var notificationWebHook: String?

        public var storeId: String?

        public var subscribeContents: [DescribeStoreConfigResponseBody.StoreConfigInfo.SubscribeContents]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableNotification != nil {
                map["EnableNotification"] = self.enableNotification!
            }
            if self.notificationSilentTimes != nil {
                map["NotificationSilentTimes"] = self.notificationSilentTimes!
            }
            if self.notificationWebHook != nil {
                map["NotificationWebHook"] = self.notificationWebHook!
            }
            if self.storeId != nil {
                map["StoreId"] = self.storeId!
            }
            if self.subscribeContents != nil {
                var tmp : [Any] = []
                for k in self.subscribeContents! {
                    tmp.append(k.toMap())
                }
                map["SubscribeContents"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableNotification") && dict["EnableNotification"] != nil {
                self.enableNotification = dict["EnableNotification"] as! Bool
            }
            if dict.keys.contains("NotificationSilentTimes") && dict["NotificationSilentTimes"] != nil {
                self.notificationSilentTimes = dict["NotificationSilentTimes"] as! String
            }
            if dict.keys.contains("NotificationWebHook") && dict["NotificationWebHook"] != nil {
                self.notificationWebHook = dict["NotificationWebHook"] as! String
            }
            if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
                self.storeId = dict["StoreId"] as! String
            }
            if dict.keys.contains("SubscribeContents") && dict["SubscribeContents"] != nil {
                var tmp : [DescribeStoreConfigResponseBody.StoreConfigInfo.SubscribeContents] = []
                for v in dict["SubscribeContents"] as! [Any] {
                    var model = DescribeStoreConfigResponseBody.StoreConfigInfo.SubscribeContents()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subscribeContents = tmp
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var requestId: String?

    public var storeConfigInfo: DescribeStoreConfigResponseBody.StoreConfigInfo?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.storeConfigInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.storeConfigInfo != nil {
            map["StoreConfigInfo"] = self.storeConfigInfo?.toMap()
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("StoreConfigInfo") && dict["StoreConfigInfo"] != nil {
            var model = DescribeStoreConfigResponseBody.StoreConfigInfo()
            model.fromMap(dict["StoreConfigInfo"] as! [String: Any])
            self.storeConfigInfo = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeStoreConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStoreConfigResponseBody?

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
            var model = DescribeStoreConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStoresRequest : Tea.TeaModel {
    public var extraParams: String?

    public var fromDate: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var storeId: String?

    public var storeName: String?

    public var templateVersion: String?

    public var toDate: String?

    public var userStoreCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.fromDate != nil {
            map["FromDate"] = self.fromDate!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.storeName != nil {
            map["StoreName"] = self.storeName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        if self.toDate != nil {
            map["ToDate"] = self.toDate!
        }
        if self.userStoreCode != nil {
            map["UserStoreCode"] = self.userStoreCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("FromDate") && dict["FromDate"] != nil {
            self.fromDate = dict["FromDate"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("StoreName") && dict["StoreName"] != nil {
            self.storeName = dict["StoreName"] as! String
        }
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
        if dict.keys.contains("ToDate") && dict["ToDate"] != nil {
            self.toDate = dict["ToDate"] as! String
        }
        if dict.keys.contains("UserStoreCode") && dict["UserStoreCode"] != nil {
            self.userStoreCode = dict["UserStoreCode"] as! String
        }
    }
}

public class DescribeStoresResponseBody : Tea.TeaModel {
    public class Stores : Tea.TeaModel {
        public var autoUnbindDays: Int32?

        public var autoUnbindOfflineEsl: Bool?

        public var barCodeEncode: Int32?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var level: String?

        public var parentId: String?

        public var phone: String?

        public var storeId: String?

        public var storeName: String?

        public var templateVersion: String?

        public var timeZone: String?

        public var userStoreCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoUnbindDays != nil {
                map["AutoUnbindDays"] = self.autoUnbindDays!
            }
            if self.autoUnbindOfflineEsl != nil {
                map["AutoUnbindOfflineEsl"] = self.autoUnbindOfflineEsl!
            }
            if self.barCodeEncode != nil {
                map["BarCodeEncode"] = self.barCodeEncode!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.storeId != nil {
                map["StoreId"] = self.storeId!
            }
            if self.storeName != nil {
                map["StoreName"] = self.storeName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.timeZone != nil {
                map["TimeZone"] = self.timeZone!
            }
            if self.userStoreCode != nil {
                map["UserStoreCode"] = self.userStoreCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoUnbindDays") && dict["AutoUnbindDays"] != nil {
                self.autoUnbindDays = dict["AutoUnbindDays"] as! Int32
            }
            if dict.keys.contains("AutoUnbindOfflineEsl") && dict["AutoUnbindOfflineEsl"] != nil {
                self.autoUnbindOfflineEsl = dict["AutoUnbindOfflineEsl"] as! Bool
            }
            if dict.keys.contains("BarCodeEncode") && dict["BarCodeEncode"] != nil {
                self.barCodeEncode = dict["BarCodeEncode"] as! Int32
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("Phone") && dict["Phone"] != nil {
                self.phone = dict["Phone"] as! String
            }
            if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
                self.storeId = dict["StoreId"] as! String
            }
            if dict.keys.contains("StoreName") && dict["StoreName"] != nil {
                self.storeName = dict["StoreName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("TimeZone") && dict["TimeZone"] != nil {
                self.timeZone = dict["TimeZone"] as! String
            }
            if dict.keys.contains("UserStoreCode") && dict["UserStoreCode"] != nil {
                self.userStoreCode = dict["UserStoreCode"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var stores: [DescribeStoresResponseBody.Stores]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stores != nil {
            var tmp : [Any] = []
            for k in self.stores! {
                tmp.append(k.toMap())
            }
            map["Stores"] = tmp
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
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
        if dict.keys.contains("Stores") && dict["Stores"] != nil {
            var tmp : [DescribeStoresResponseBody.Stores] = []
            for v in dict["Stores"] as! [Any] {
                var model = DescribeStoresResponseBody.Stores()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stores = tmp
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeStoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStoresResponseBody?

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
            var model = DescribeStoresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTemplateByModelRequest : Tea.TeaModel {
    public var deviceType: String?

    public var eslSize: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.eslSize != nil {
            map["EslSize"] = self.eslSize!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("EslSize") && dict["EslSize"] != nil {
            self.eslSize = dict["EslSize"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class DescribeTemplateByModelResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var basePicture: String?

        public var brand: String?

        public var eslSize: String?

        public var eslType: String?

        public var height: Int64?

        public var layout: String?

        public var scene: String?

        public var templateId: String?

        public var templateName: String?

        public var templateSceneId: String?

        public var templateVersion: String?

        public var width: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.basePicture != nil {
                map["BasePicture"] = self.basePicture!
            }
            if self.brand != nil {
                map["Brand"] = self.brand!
            }
            if self.eslSize != nil {
                map["EslSize"] = self.eslSize!
            }
            if self.eslType != nil {
                map["EslType"] = self.eslType!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.layout != nil {
                map["Layout"] = self.layout!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateSceneId != nil {
                map["TemplateSceneId"] = self.templateSceneId!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BasePicture") && dict["BasePicture"] != nil {
                self.basePicture = dict["BasePicture"] as! String
            }
            if dict.keys.contains("Brand") && dict["Brand"] != nil {
                self.brand = dict["Brand"] as! String
            }
            if dict.keys.contains("EslSize") && dict["EslSize"] != nil {
                self.eslSize = dict["EslSize"] as! String
            }
            if dict.keys.contains("EslType") && dict["EslType"] != nil {
                self.eslType = dict["EslType"] as! String
            }
            if dict.keys.contains("Height") && dict["Height"] != nil {
                self.height = dict["Height"] as! Int64
            }
            if dict.keys.contains("Layout") && dict["Layout"] != nil {
                self.layout = dict["Layout"] as! String
            }
            if dict.keys.contains("Scene") && dict["Scene"] != nil {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateSceneId") && dict["TemplateSceneId"] != nil {
                self.templateSceneId = dict["TemplateSceneId"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("Width") && dict["Width"] != nil {
                self.width = dict["Width"] as! Int64
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var items: [DescribeTemplateByModelResponseBody.Items]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeTemplateByModelResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeTemplateByModelResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
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

public class DescribeTemplateByModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTemplateByModelResponseBody?

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
            var model = DescribeTemplateByModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserLogRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var extraParams: String?

    public var fromDate: String?

    public var itemBarCode: String?

    public var itemShortTitle: String?

    public var logId: String?

    public var operationStatus: String?

    public var operationType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var storeId: String?

    public var toDate: String?

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
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.fromDate != nil {
            map["FromDate"] = self.fromDate!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.itemShortTitle != nil {
            map["ItemShortTitle"] = self.itemShortTitle!
        }
        if self.logId != nil {
            map["LogId"] = self.logId!
        }
        if self.operationStatus != nil {
            map["OperationStatus"] = self.operationStatus!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.toDate != nil {
            map["ToDate"] = self.toDate!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("FromDate") && dict["FromDate"] != nil {
            self.fromDate = dict["FromDate"] as! String
        }
        if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("ItemShortTitle") && dict["ItemShortTitle"] != nil {
            self.itemShortTitle = dict["ItemShortTitle"] as! String
        }
        if dict.keys.contains("LogId") && dict["LogId"] != nil {
            self.logId = dict["LogId"] as! String
        }
        if dict.keys.contains("OperationStatus") && dict["OperationStatus"] != nil {
            self.operationStatus = dict["OperationStatus"] as! String
        }
        if dict.keys.contains("OperationType") && dict["OperationType"] != nil {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("ToDate") && dict["ToDate"] != nil {
            self.toDate = dict["ToDate"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeUserLogResponseBody : Tea.TeaModel {
    public class UserLogs : Tea.TeaModel {
        public var actionPrice: String?

        public var bePromotion: Bool?

        public var eslBarCode: String?

        public var eslSignal: Int32?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var i18nResultKey: String?

        public var itemBarCode: String?

        public var itemId: String?

        public var itemShortTitle: String?

        public var logId: String?

        public var operationResponseTime: String?

        public var operationSendTime: String?

        public var operationStatus: String?

        public var operationType: String?

        public var priceUnit: String?

        public var resultCode: String?

        public var spendTime: String?

        public var storeId: String?

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
            if self.actionPrice != nil {
                map["ActionPrice"] = self.actionPrice!
            }
            if self.bePromotion != nil {
                map["BePromotion"] = self.bePromotion!
            }
            if self.eslBarCode != nil {
                map["EslBarCode"] = self.eslBarCode!
            }
            if self.eslSignal != nil {
                map["EslSignal"] = self.eslSignal!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.i18nResultKey != nil {
                map["I18nResultKey"] = self.i18nResultKey!
            }
            if self.itemBarCode != nil {
                map["ItemBarCode"] = self.itemBarCode!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemShortTitle != nil {
                map["ItemShortTitle"] = self.itemShortTitle!
            }
            if self.logId != nil {
                map["LogId"] = self.logId!
            }
            if self.operationResponseTime != nil {
                map["OperationResponseTime"] = self.operationResponseTime!
            }
            if self.operationSendTime != nil {
                map["OperationSendTime"] = self.operationSendTime!
            }
            if self.operationStatus != nil {
                map["OperationStatus"] = self.operationStatus!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.priceUnit != nil {
                map["PriceUnit"] = self.priceUnit!
            }
            if self.resultCode != nil {
                map["ResultCode"] = self.resultCode!
            }
            if self.spendTime != nil {
                map["SpendTime"] = self.spendTime!
            }
            if self.storeId != nil {
                map["StoreId"] = self.storeId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionPrice") && dict["ActionPrice"] != nil {
                self.actionPrice = dict["ActionPrice"] as! String
            }
            if dict.keys.contains("BePromotion") && dict["BePromotion"] != nil {
                self.bePromotion = dict["BePromotion"] as! Bool
            }
            if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
                self.eslBarCode = dict["EslBarCode"] as! String
            }
            if dict.keys.contains("EslSignal") && dict["EslSignal"] != nil {
                self.eslSignal = dict["EslSignal"] as! Int32
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("I18nResultKey") && dict["I18nResultKey"] != nil {
                self.i18nResultKey = dict["I18nResultKey"] as! String
            }
            if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
                self.itemBarCode = dict["ItemBarCode"] as! String
            }
            if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
                self.itemId = dict["ItemId"] as! String
            }
            if dict.keys.contains("ItemShortTitle") && dict["ItemShortTitle"] != nil {
                self.itemShortTitle = dict["ItemShortTitle"] as! String
            }
            if dict.keys.contains("LogId") && dict["LogId"] != nil {
                self.logId = dict["LogId"] as! String
            }
            if dict.keys.contains("OperationResponseTime") && dict["OperationResponseTime"] != nil {
                self.operationResponseTime = dict["OperationResponseTime"] as! String
            }
            if dict.keys.contains("OperationSendTime") && dict["OperationSendTime"] != nil {
                self.operationSendTime = dict["OperationSendTime"] as! String
            }
            if dict.keys.contains("OperationStatus") && dict["OperationStatus"] != nil {
                self.operationStatus = dict["OperationStatus"] as! String
            }
            if dict.keys.contains("OperationType") && dict["OperationType"] != nil {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("PriceUnit") && dict["PriceUnit"] != nil {
                self.priceUnit = dict["PriceUnit"] as! String
            }
            if dict.keys.contains("ResultCode") && dict["ResultCode"] != nil {
                self.resultCode = dict["ResultCode"] as! String
            }
            if dict.keys.contains("SpendTime") && dict["SpendTime"] != nil {
                self.spendTime = dict["SpendTime"] as! String
            }
            if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
                self.storeId = dict["StoreId"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var userLogs: [DescribeUserLogResponseBody.UserLogs]?

    public override init() {
        super.init()
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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.userLogs != nil {
            var tmp : [Any] = []
            for k in self.userLogs! {
                tmp.append(k.toMap())
            }
            map["UserLogs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
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
        if dict.keys.contains("UserLogs") && dict["UserLogs"] != nil {
            var tmp : [DescribeUserLogResponseBody.UserLogs] = []
            for v in dict["UserLogs"] as! [Any] {
                var model = DescribeUserLogResponseBody.UserLogs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userLogs = tmp
        }
    }
}

public class DescribeUserLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserLogResponseBody?

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
            var model = DescribeUserLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsersRequest : Tea.TeaModel {
    public var extraParams: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var userId: String?

    public var userName: String?

    public var userType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserType") && dict["UserType"] != nil {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class DescribeUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class DingTalkInfos : Tea.TeaModel {
            public var dingTalkCompanyId: String?

            public var dingTalkUserId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dingTalkCompanyId != nil {
                    map["DingTalkCompanyId"] = self.dingTalkCompanyId!
                }
                if self.dingTalkUserId != nil {
                    map["DingTalkUserId"] = self.dingTalkUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DingTalkCompanyId") && dict["DingTalkCompanyId"] != nil {
                    self.dingTalkCompanyId = dict["DingTalkCompanyId"] as! String
                }
                if dict.keys.contains("DingTalkUserId") && dict["DingTalkUserId"] != nil {
                    self.dingTalkUserId = dict["DingTalkUserId"] as! String
                }
            }
        }
        public var bid: String?

        public var dingTalkInfos: [DescribeUsersResponseBody.Users.DingTalkInfos]?

        public var ownerId: String?

        public var stores: String?

        public var userId: String?

        public var userName: String?

        public var userType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.dingTalkInfos != nil {
                var tmp : [Any] = []
                for k in self.dingTalkInfos! {
                    tmp.append(k.toMap())
                }
                map["DingTalkInfos"] = tmp
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.stores != nil {
                map["Stores"] = self.stores!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bid") && dict["Bid"] != nil {
                self.bid = dict["Bid"] as! String
            }
            if dict.keys.contains("DingTalkInfos") && dict["DingTalkInfos"] != nil {
                var tmp : [DescribeUsersResponseBody.Users.DingTalkInfos] = []
                for v in dict["DingTalkInfos"] as! [Any] {
                    var model = DescribeUsersResponseBody.Users.DingTalkInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dingTalkInfos = tmp
            }
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("Stores") && dict["Stores"] != nil {
                self.stores = dict["Stores"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserType") && dict["UserType"] != nil {
                self.userType = dict["UserType"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var users: [DescribeUsersResponseBody.Users]?

    public override init() {
        super.init()
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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
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
            var tmp : [DescribeUsersResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = DescribeUsersResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class DescribeUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsersResponseBody?

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
            var model = DescribeUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var extraParams: String?

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
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public class DingTalkInfos : Tea.TeaModel {
            public var dingTalkCompanyId: String?

            public var dingTalkUserId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dingTalkCompanyId != nil {
                    map["DingTalkCompanyId"] = self.dingTalkCompanyId!
                }
                if self.dingTalkUserId != nil {
                    map["DingTalkUserId"] = self.dingTalkUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DingTalkCompanyId") && dict["DingTalkCompanyId"] != nil {
                    self.dingTalkCompanyId = dict["DingTalkCompanyId"] as! String
                }
                if dict.keys.contains("DingTalkUserId") && dict["DingTalkUserId"] != nil {
                    self.dingTalkUserId = dict["DingTalkUserId"] as! String
                }
            }
        }
        public var bid: String?

        public var dingTalkInfos: [GetUserResponseBody.User.DingTalkInfos]?

        public var ownerId: String?

        public var stores: String?

        public var userId: String?

        public var userName: String?

        public var userType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.dingTalkInfos != nil {
                var tmp : [Any] = []
                for k in self.dingTalkInfos! {
                    tmp.append(k.toMap())
                }
                map["DingTalkInfos"] = tmp
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.stores != nil {
                map["Stores"] = self.stores!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bid") && dict["Bid"] != nil {
                self.bid = dict["Bid"] as! String
            }
            if dict.keys.contains("DingTalkInfos") && dict["DingTalkInfos"] != nil {
                var tmp : [GetUserResponseBody.User.DingTalkInfos] = []
                for v in dict["DingTalkInfos"] as! [Any] {
                    var model = GetUserResponseBody.User.DingTalkInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dingTalkInfos = tmp
            }
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("Stores") && dict["Stores"] != nil {
                self.stores = dict["Stores"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserType") && dict["UserType"] != nil {
                self.userType = dict["UserType"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var user: GetUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            var model = GetUserResponseBody.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

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
            var model = GetUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTemplateListByGroupIdRequest : Tea.TeaModel {
    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryTemplateListByGroupIdResponseBody : Tea.TeaModel {
    public class TemplateList : Tea.TeaModel {
        public var basePicture: String?

        public var brand: String?

        public var eslSize: String?

        public var eslType: String?

        public var groupId: String?

        public var height: Int64?

        public var layout: String?

        public var relation: Bool?

        public var scene: String?

        public var templateId: String?

        public var templateName: String?

        public var templateSceneId: String?

        public var templateVersion: String?

        public var width: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.basePicture != nil {
                map["BasePicture"] = self.basePicture!
            }
            if self.brand != nil {
                map["Brand"] = self.brand!
            }
            if self.eslSize != nil {
                map["EslSize"] = self.eslSize!
            }
            if self.eslType != nil {
                map["EslType"] = self.eslType!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.layout != nil {
                map["Layout"] = self.layout!
            }
            if self.relation != nil {
                map["Relation"] = self.relation!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateSceneId != nil {
                map["TemplateSceneId"] = self.templateSceneId!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BasePicture") && dict["BasePicture"] != nil {
                self.basePicture = dict["BasePicture"] as! String
            }
            if dict.keys.contains("Brand") && dict["Brand"] != nil {
                self.brand = dict["Brand"] as! String
            }
            if dict.keys.contains("EslSize") && dict["EslSize"] != nil {
                self.eslSize = dict["EslSize"] as! String
            }
            if dict.keys.contains("EslType") && dict["EslType"] != nil {
                self.eslType = dict["EslType"] as! String
            }
            if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("Height") && dict["Height"] != nil {
                self.height = dict["Height"] as! Int64
            }
            if dict.keys.contains("Layout") && dict["Layout"] != nil {
                self.layout = dict["Layout"] as! String
            }
            if dict.keys.contains("Relation") && dict["Relation"] != nil {
                self.relation = dict["Relation"] as! Bool
            }
            if dict.keys.contains("Scene") && dict["Scene"] != nil {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateSceneId") && dict["TemplateSceneId"] != nil {
                self.templateSceneId = dict["TemplateSceneId"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("Width") && dict["Width"] != nil {
                self.width = dict["Width"] as! Int64
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var templateList: [QueryTemplateListByGroupIdResponseBody.TemplateList]?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.templateList != nil {
            var tmp : [Any] = []
            for k in self.templateList! {
                tmp.append(k.toMap())
            }
            map["TemplateList"] = tmp
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
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
        if dict.keys.contains("TemplateList") && dict["TemplateList"] != nil {
            var tmp : [QueryTemplateListByGroupIdResponseBody.TemplateList] = []
            for v in dict["TemplateList"] as! [Any] {
                var model = QueryTemplateListByGroupIdResponseBody.TemplateList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templateList = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class QueryTemplateListByGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTemplateListByGroupIdResponseBody?

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
            var model = QueryTemplateListByGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncAddMaterialRequest : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class SyncAddMaterialResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var dynamicCode: String?

        public var dynamicMessage: String?

        public var errorCode: String?

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
            if self.dynamicCode != nil {
                map["DynamicCode"] = self.dynamicCode!
            }
            if self.dynamicMessage != nil {
                map["DynamicMessage"] = self.dynamicMessage!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
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
            if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
                self.dynamicCode = dict["DynamicCode"] as! String
            }
            if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
                self.dynamicMessage = dict["DynamicMessage"] as! String
            }
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var requestId: String?

    public var result: SyncAddMaterialResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
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
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = SyncAddMaterialResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SyncAddMaterialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncAddMaterialResponseBody?

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
            var model = SyncAddMaterialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnassignUserRequest : Tea.TeaModel {
    public var extraParams: String?

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
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class UnassignUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnassignUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnassignUserResponseBody?

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
            var model = UnassignUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindEslDeviceRequest : Tea.TeaModel {
    public var column: String?

    public var containerName: String?

    public var eslBarCode: String?

    public var extraParams: String?

    public var itemBarCode: String?

    public var layer: Int32?

    public var shelf: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.column != nil {
            map["Column"] = self.column!
        }
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.layer != nil {
            map["Layer"] = self.layer!
        }
        if self.shelf != nil {
            map["Shelf"] = self.shelf!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Column") && dict["Column"] != nil {
            self.column = dict["Column"] as! String
        }
        if dict.keys.contains("ContainerName") && dict["ContainerName"] != nil {
            self.containerName = dict["ContainerName"] as! String
        }
        if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("Layer") && dict["Layer"] != nil {
            self.layer = dict["Layer"] as! Int32
        }
        if dict.keys.contains("Shelf") && dict["Shelf"] != nil {
            self.shelf = dict["Shelf"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class UnbindEslDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnbindEslDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindEslDeviceResponseBody?

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
            var model = UnbindEslDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEslDeviceLightRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var extraParams: String?

    public var frequency: String?

    public var itemBarCode: String?

    public var ledColor: String?

    public var lightUpTime: Int32?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.frequency != nil {
            map["Frequency"] = self.frequency!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.ledColor != nil {
            map["LedColor"] = self.ledColor!
        }
        if self.lightUpTime != nil {
            map["LightUpTime"] = self.lightUpTime!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("Frequency") && dict["Frequency"] != nil {
            self.frequency = dict["Frequency"] as! String
        }
        if dict.keys.contains("ItemBarCode") && dict["ItemBarCode"] != nil {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("LedColor") && dict["LedColor"] != nil {
            self.ledColor = dict["LedColor"] as! String
        }
        if dict.keys.contains("LightUpTime") && dict["LightUpTime"] != nil {
            self.lightUpTime = dict["LightUpTime"] as! Int32
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class UpdateEslDeviceLightResponseBody : Tea.TeaModel {
    public class LightFailEslInfos : Tea.TeaModel {
        public var errorMessage: String?

        public var eslBarCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.eslBarCode != nil {
                map["EslBarCode"] = self.eslBarCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("EslBarCode") && dict["EslBarCode"] != nil {
                self.eslBarCode = dict["EslBarCode"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var failCount: Int32?

    public var lightFailEslInfos: [UpdateEslDeviceLightResponseBody.LightFailEslInfos]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var successCount: Int32?

    public override init() {
        super.init()
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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.failCount != nil {
            map["FailCount"] = self.failCount!
        }
        if self.lightFailEslInfos != nil {
            var tmp : [Any] = []
            for k in self.lightFailEslInfos! {
                tmp.append(k.toMap())
            }
            map["LightFailEslInfos"] = tmp
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
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("FailCount") && dict["FailCount"] != nil {
            self.failCount = dict["FailCount"] as! Int32
        }
        if dict.keys.contains("LightFailEslInfos") && dict["LightFailEslInfos"] != nil {
            var tmp : [UpdateEslDeviceLightResponseBody.LightFailEslInfos] = []
            for v in dict["LightFailEslInfos"] as! [Any] {
                var model = UpdateEslDeviceLightResponseBody.LightFailEslInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.lightFailEslInfos = tmp
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
        if dict.keys.contains("SuccessCount") && dict["SuccessCount"] != nil {
            self.successCount = dict["SuccessCount"] as! Int32
        }
    }
}

public class UpdateEslDeviceLightResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEslDeviceLightResponseBody?

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
            var model = UpdateEslDeviceLightResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateStoreRequest : Tea.TeaModel {
    public var autoUnbindDays: Int32?

    public var autoUnbindOfflineEsl: Bool?

    public var barCodeEncode: Int32?

    public var extraParams: String?

    public var phone: String?

    public var storeId: String?

    public var storeName: String?

    public var templateVersion: String?

    public var timezone: String?

    public var userStoreCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoUnbindDays != nil {
            map["AutoUnbindDays"] = self.autoUnbindDays!
        }
        if self.autoUnbindOfflineEsl != nil {
            map["AutoUnbindOfflineEsl"] = self.autoUnbindOfflineEsl!
        }
        if self.barCodeEncode != nil {
            map["BarCodeEncode"] = self.barCodeEncode!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.storeName != nil {
            map["StoreName"] = self.storeName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        if self.userStoreCode != nil {
            map["UserStoreCode"] = self.userStoreCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoUnbindDays") && dict["AutoUnbindDays"] != nil {
            self.autoUnbindDays = dict["AutoUnbindDays"] as! Int32
        }
        if dict.keys.contains("AutoUnbindOfflineEsl") && dict["AutoUnbindOfflineEsl"] != nil {
            self.autoUnbindOfflineEsl = dict["AutoUnbindOfflineEsl"] as! Bool
        }
        if dict.keys.contains("BarCodeEncode") && dict["BarCodeEncode"] != nil {
            self.barCodeEncode = dict["BarCodeEncode"] as! Int32
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("Phone") && dict["Phone"] != nil {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("StoreName") && dict["StoreName"] != nil {
            self.storeName = dict["StoreName"] as! String
        }
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
        if dict.keys.contains("Timezone") && dict["Timezone"] != nil {
            self.timezone = dict["Timezone"] as! String
        }
        if dict.keys.contains("UserStoreCode") && dict["UserStoreCode"] != nil {
            self.userStoreCode = dict["UserStoreCode"] as! String
        }
    }
}

public class UpdateStoreResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStoreResponseBody?

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
            var model = UpdateStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateStoreConfigRequest : Tea.TeaModel {
    public var enableNotification: Bool?

    public var extraParams: String?

    public var notificationSilentTimes: String?

    public var notificationWebHook: String?

    public var storeId: String?

    public var subscribeContents: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableNotification != nil {
            map["EnableNotification"] = self.enableNotification!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.notificationSilentTimes != nil {
            map["NotificationSilentTimes"] = self.notificationSilentTimes!
        }
        if self.notificationWebHook != nil {
            map["NotificationWebHook"] = self.notificationWebHook!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.subscribeContents != nil {
            map["SubscribeContents"] = self.subscribeContents!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableNotification") && dict["EnableNotification"] != nil {
            self.enableNotification = dict["EnableNotification"] as! Bool
        }
        if dict.keys.contains("ExtraParams") && dict["ExtraParams"] != nil {
            self.extraParams = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("NotificationSilentTimes") && dict["NotificationSilentTimes"] != nil {
            self.notificationSilentTimes = dict["NotificationSilentTimes"] as! String
        }
        if dict.keys.contains("NotificationWebHook") && dict["NotificationWebHook"] != nil {
            self.notificationWebHook = dict["NotificationWebHook"] as! String
        }
        if dict.keys.contains("StoreId") && dict["StoreId"] != nil {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("SubscribeContents") && dict["SubscribeContents"] != nil {
            self.subscribeContents = dict["SubscribeContents"] as! String
        }
    }
}

public class UpdateStoreConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateStoreConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStoreConfigResponseBody?

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
            var model = UpdateStoreConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
