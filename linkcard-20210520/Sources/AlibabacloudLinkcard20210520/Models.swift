import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddCardToDirectionalGroupRequest : Tea.TeaModel {
    public var addType: String?

    public var apiProduct: String?

    public var groupId: String?

    public var iccidList: [String]?

    public var msgNotify: Bool?

    public var serialNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addType != nil {
            map["AddType"] = self.addType!
        }
        if self.apiProduct != nil {
            map["ApiProduct"] = self.apiProduct!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.iccidList != nil {
            map["IccidList"] = self.iccidList!
        }
        if self.msgNotify != nil {
            map["MsgNotify"] = self.msgNotify!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddType") && dict["AddType"] != nil {
            self.addType = dict["AddType"] as! String
        }
        if dict.keys.contains("ApiProduct") && dict["ApiProduct"] != nil {
            self.apiProduct = dict["ApiProduct"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("IccidList") && dict["IccidList"] != nil {
            self.iccidList = dict["IccidList"] as! [String]
        }
        if dict.keys.contains("MsgNotify") && dict["MsgNotify"] != nil {
            self.msgNotify = dict["MsgNotify"] as! Bool
        }
        if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class AddCardToDirectionalGroupShrinkRequest : Tea.TeaModel {
    public var addType: String?

    public var apiProduct: String?

    public var groupId: String?

    public var iccidListShrink: String?

    public var msgNotify: Bool?

    public var serialNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addType != nil {
            map["AddType"] = self.addType!
        }
        if self.apiProduct != nil {
            map["ApiProduct"] = self.apiProduct!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.iccidListShrink != nil {
            map["IccidList"] = self.iccidListShrink!
        }
        if self.msgNotify != nil {
            map["MsgNotify"] = self.msgNotify!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddType") && dict["AddType"] != nil {
            self.addType = dict["AddType"] as! String
        }
        if dict.keys.contains("ApiProduct") && dict["ApiProduct"] != nil {
            self.apiProduct = dict["ApiProduct"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("IccidList") && dict["IccidList"] != nil {
            self.iccidListShrink = dict["IccidList"] as! String
        }
        if dict.keys.contains("MsgNotify") && dict["MsgNotify"] != nil {
            self.msgNotify = dict["MsgNotify"] as! Bool
        }
        if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class AddCardToDirectionalGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Bool?

        public var serialNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") && dict["Result"] != nil {
                self.result = dict["Result"] as! Bool
            }
            if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
                self.serialNo = dict["SerialNo"] as! String
            }
        }
    }
    public var code: String?

    public var data: AddCardToDirectionalGroupResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = AddCardToDirectionalGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddCardToDirectionalGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCardToDirectionalGroupResponseBody?

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
            var model = AddCardToDirectionalGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddDirectionalAddressRequest : Tea.TeaModel {
    public var address: String?

    public var addressType: String?

    public var groupId: String?

    public var msgNotify: Bool?

    public var serialNo: String?

    public var source: String?

    public var urlInsecurityForce: Bool?

    public override init() {
        super.init()
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
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.msgNotify != nil {
            map["MsgNotify"] = self.msgNotify!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.urlInsecurityForce != nil {
            map["UrlInsecurityForce"] = self.urlInsecurityForce!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("AddressType") && dict["AddressType"] != nil {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("MsgNotify") && dict["MsgNotify"] != nil {
            self.msgNotify = dict["MsgNotify"] as! Bool
        }
        if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("UrlInsecurityForce") && dict["UrlInsecurityForce"] != nil {
            self.urlInsecurityForce = dict["UrlInsecurityForce"] as! Bool
        }
    }
}

public class AddDirectionalAddressResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddDirectionalAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDirectionalAddressResponseBody?

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
            var model = AddDirectionalAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddDirectionalCardRequest : Tea.TeaModel {
    public var fileUri: String?

    public var groupId: String?

    public var groupName: String?

    public var orderList: [String]?

    public var tagList: [String]?

    public var uploadMethod: String?

    public var uploadType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileUri != nil {
            map["FileUri"] = self.fileUri!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.orderList != nil {
            map["OrderList"] = self.orderList!
        }
        if self.tagList != nil {
            map["TagList"] = self.tagList!
        }
        if self.uploadMethod != nil {
            map["UploadMethod"] = self.uploadMethod!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileUri") && dict["FileUri"] != nil {
            self.fileUri = dict["FileUri"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("OrderList") && dict["OrderList"] != nil {
            self.orderList = dict["OrderList"] as! [String]
        }
        if dict.keys.contains("TagList") && dict["TagList"] != nil {
            self.tagList = dict["TagList"] as! [String]
        }
        if dict.keys.contains("UploadMethod") && dict["UploadMethod"] != nil {
            self.uploadMethod = dict["UploadMethod"] as! String
        }
        if dict.keys.contains("UploadType") && dict["UploadType"] != nil {
            self.uploadType = dict["UploadType"] as! String
        }
    }
}

public class AddDirectionalCardShrinkRequest : Tea.TeaModel {
    public var fileUri: String?

    public var groupId: String?

    public var groupName: String?

    public var orderListShrink: String?

    public var tagListShrink: String?

    public var uploadMethod: String?

    public var uploadType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileUri != nil {
            map["FileUri"] = self.fileUri!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.orderListShrink != nil {
            map["OrderList"] = self.orderListShrink!
        }
        if self.tagListShrink != nil {
            map["TagList"] = self.tagListShrink!
        }
        if self.uploadMethod != nil {
            map["UploadMethod"] = self.uploadMethod!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileUri") && dict["FileUri"] != nil {
            self.fileUri = dict["FileUri"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("OrderList") && dict["OrderList"] != nil {
            self.orderListShrink = dict["OrderList"] as! String
        }
        if dict.keys.contains("TagList") && dict["TagList"] != nil {
            self.tagListShrink = dict["TagList"] as! String
        }
        if dict.keys.contains("UploadMethod") && dict["UploadMethod"] != nil {
            self.uploadMethod = dict["UploadMethod"] as! String
        }
        if dict.keys.contains("UploadType") && dict["UploadType"] != nil {
            self.uploadType = dict["UploadType"] as! String
        }
    }
}

public class AddDirectionalCardResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddDirectionalCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDirectionalCardResponseBody?

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
            var model = AddDirectionalCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddDirectionalGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class AddDirectionalGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddDirectionalGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDirectionalGroupResponseBody?

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
            var model = AddDirectionalGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddTagsToCardRequest : Tea.TeaModel {
    public var iccid: String?

    public var tagNameList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.tagNameList != nil {
            map["TagNameList"] = self.tagNameList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("TagNameList") && dict["TagNameList"] != nil {
            self.tagNameList = dict["TagNameList"] as! [String]
        }
    }
}

public class AddTagsToCardShrinkRequest : Tea.TeaModel {
    public var iccid: String?

    public var tagNameListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.tagNameListShrink != nil {
            map["TagNameList"] = self.tagNameListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("TagNameList") && dict["TagNameList"] != nil {
            self.tagNameListShrink = dict["TagNameList"] as! String
        }
    }
}

public class AddTagsToCardResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var tagId: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! String
            }
            if dict.keys.contains("TagName") && dict["TagName"] != nil {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [AddTagsToCardResponseBody.Data]?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [AddTagsToCardResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = AddTagsToCardResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddTagsToCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTagsToCardResponseBody?

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
            var model = AddTagsToCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchAddDirectionalAddressRequest : Tea.TeaModel {
    public var addressType: String?

    public var groupId: Int64?

    public var listAddress: [String]?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.listAddress != nil {
            map["ListAddress"] = self.listAddress!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressType") && dict["AddressType"] != nil {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! Int64
        }
        if dict.keys.contains("ListAddress") && dict["ListAddress"] != nil {
            self.listAddress = dict["ListAddress"] as! [String]
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class BatchAddDirectionalAddressResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BatchAddDirectionalAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchAddDirectionalAddressResponseBody?

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
            var model = BatchAddDirectionalAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDirectionalAddressRequest : Tea.TeaModel {
    public var address: String?

    public var groupId: String?

    public var msgNotify: Bool?

    public var serialNo: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.msgNotify != nil {
            map["MsgNotify"] = self.msgNotify!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("MsgNotify") && dict["MsgNotify"] != nil {
            self.msgNotify = dict["MsgNotify"] as! Bool
        }
        if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class DeleteDirectionalAddressResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteDirectionalAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDirectionalAddressResponseBody?

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
            var model = DeleteDirectionalAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDirectionalGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DeleteDirectionalGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteDirectionalGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDirectionalGroupResponseBody?

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
            var model = DeleteDirectionalGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ForceActivationRequest : Tea.TeaModel {
    public var dateType: String?

    public var iccid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateType != nil {
            map["DateType"] = self.dateType!
        }
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateType") && dict["DateType"] != nil {
            self.dateType = dict["DateType"] as! String
        }
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
    }
}

public class ForceActivationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ForceActivationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ForceActivationResponseBody?

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
            var model = ForceActivationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCardDetailRequest : Tea.TeaModel {
    public var destroyCard: Bool?

    public var iccid: String?

    public var instanceId: String?

    public var showPsim: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destroyCard != nil {
            map["DestroyCard"] = self.destroyCard!
        }
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.showPsim != nil {
            map["ShowPsim"] = self.showPsim!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestroyCard") && dict["DestroyCard"] != nil {
            self.destroyCard = dict["DestroyCard"] as! Bool
        }
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ShowPsim") && dict["ShowPsim"] != nil {
            self.showPsim = dict["ShowPsim"] as! Bool
        }
    }
}

public class GetCardDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ListPsimCards : Tea.TeaModel {
            public var apnName: String?

            public var certifyStatus: String?

            public var iccid: String?

            public var imsi: [String]?

            public var ip: [String]?

            public var msisdn: [String]?

            public var openSms: Bool?

            public var osStatus: String?

            public var periodAddFlow: String?

            public var periodSmsUse: String?

            public var privateNetworkSegment: String?

            public var status: String?

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
                if self.apnName != nil {
                    map["ApnName"] = self.apnName!
                }
                if self.certifyStatus != nil {
                    map["CertifyStatus"] = self.certifyStatus!
                }
                if self.iccid != nil {
                    map["Iccid"] = self.iccid!
                }
                if self.imsi != nil {
                    map["Imsi"] = self.imsi!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.msisdn != nil {
                    map["Msisdn"] = self.msisdn!
                }
                if self.openSms != nil {
                    map["OpenSms"] = self.openSms!
                }
                if self.osStatus != nil {
                    map["OsStatus"] = self.osStatus!
                }
                if self.periodAddFlow != nil {
                    map["PeriodAddFlow"] = self.periodAddFlow!
                }
                if self.periodSmsUse != nil {
                    map["PeriodSmsUse"] = self.periodSmsUse!
                }
                if self.privateNetworkSegment != nil {
                    map["PrivateNetworkSegment"] = self.privateNetworkSegment!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vendor != nil {
                    map["Vendor"] = self.vendor!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApnName") && dict["ApnName"] != nil {
                    self.apnName = dict["ApnName"] as! String
                }
                if dict.keys.contains("CertifyStatus") && dict["CertifyStatus"] != nil {
                    self.certifyStatus = dict["CertifyStatus"] as! String
                }
                if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
                    self.iccid = dict["Iccid"] as! String
                }
                if dict.keys.contains("Imsi") && dict["Imsi"] != nil {
                    self.imsi = dict["Imsi"] as! [String]
                }
                if dict.keys.contains("Ip") && dict["Ip"] != nil {
                    self.ip = dict["Ip"] as! [String]
                }
                if dict.keys.contains("Msisdn") && dict["Msisdn"] != nil {
                    self.msisdn = dict["Msisdn"] as! [String]
                }
                if dict.keys.contains("OpenSms") && dict["OpenSms"] != nil {
                    self.openSms = dict["OpenSms"] as! Bool
                }
                if dict.keys.contains("OsStatus") && dict["OsStatus"] != nil {
                    self.osStatus = dict["OsStatus"] as! String
                }
                if dict.keys.contains("PeriodAddFlow") && dict["PeriodAddFlow"] != nil {
                    self.periodAddFlow = dict["PeriodAddFlow"] as! String
                }
                if dict.keys.contains("PeriodSmsUse") && dict["PeriodSmsUse"] != nil {
                    self.periodSmsUse = dict["PeriodSmsUse"] as! String
                }
                if dict.keys.contains("PrivateNetworkSegment") && dict["PrivateNetworkSegment"] != nil {
                    self.privateNetworkSegment = dict["PrivateNetworkSegment"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Vendor") && dict["Vendor"] != nil {
                    self.vendor = dict["Vendor"] as! String
                }
            }
        }
        public class VsimCardInfo : Tea.TeaModel {
            public class TagList : Tea.TeaModel {
                public var id: Int64?

                public var tagName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.tagName != nil {
                        map["TagName"] = self.tagName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("TagName") && dict["TagName"] != nil {
                        self.tagName = dict["TagName"] as! String
                    }
                }
            }
            public var activeTime: String?

            public var activeType: String?

            public var aliFee: String?

            public var aliyunOrderId: String?

            public var apnName: String?

            public var autoLimitResume: Bool?

            public var autoRebindReuse: Bool?

            public var cardLimitSpeedThreshold: Int32?

            public var cardLimitStopThreshold: Int32?

            public var certifyStatus: String?

            public var certifyType: String?

            public var credentialInstanceId: String?

            public var credentialLimitSpeedThreshold: Int32?

            public var credentialLimitStopThreshold: Int32?

            public var credentialNo: String?

            public var credentialType: String?

            public var dataLevel: String?

            public var dataType: String?

            public var deviceImei: String?

            public var directionalGroupId: String?

            public var directionalGroupName: String?

            public var expireTime: String?

            public var flowThresholdUnit: String?

            public var iccid: String?

            public var imsi: [String]?

            public var ip: [String]?

            public var isAutoRecharge: Bool?

            public var msisdn: [String]?

            public var notifyId: String?

            public var openAccountTime: String?

            public var openSms: Bool?

            public var osStatus: String?

            public var period: String?

            public var periodAddFlow: String?

            public var periodRestFlow: String?

            public var periodSmsUse: String?

            public var privateNetworkSegment: String?

            public var simType: String?

            public var status: String?

            public var tagList: [GetCardDetailResponseBody.Data.VsimCardInfo.TagList]?

            public var vendor: String?

            public var vsimInstanceId: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeTime != nil {
                    map["ActiveTime"] = self.activeTime!
                }
                if self.activeType != nil {
                    map["ActiveType"] = self.activeType!
                }
                if self.aliFee != nil {
                    map["AliFee"] = self.aliFee!
                }
                if self.aliyunOrderId != nil {
                    map["AliyunOrderId"] = self.aliyunOrderId!
                }
                if self.apnName != nil {
                    map["ApnName"] = self.apnName!
                }
                if self.autoLimitResume != nil {
                    map["AutoLimitResume"] = self.autoLimitResume!
                }
                if self.autoRebindReuse != nil {
                    map["AutoRebindReuse"] = self.autoRebindReuse!
                }
                if self.cardLimitSpeedThreshold != nil {
                    map["CardLimitSpeedThreshold"] = self.cardLimitSpeedThreshold!
                }
                if self.cardLimitStopThreshold != nil {
                    map["CardLimitStopThreshold"] = self.cardLimitStopThreshold!
                }
                if self.certifyStatus != nil {
                    map["CertifyStatus"] = self.certifyStatus!
                }
                if self.certifyType != nil {
                    map["CertifyType"] = self.certifyType!
                }
                if self.credentialInstanceId != nil {
                    map["CredentialInstanceId"] = self.credentialInstanceId!
                }
                if self.credentialLimitSpeedThreshold != nil {
                    map["CredentialLimitSpeedThreshold"] = self.credentialLimitSpeedThreshold!
                }
                if self.credentialLimitStopThreshold != nil {
                    map["CredentialLimitStopThreshold"] = self.credentialLimitStopThreshold!
                }
                if self.credentialNo != nil {
                    map["CredentialNo"] = self.credentialNo!
                }
                if self.credentialType != nil {
                    map["CredentialType"] = self.credentialType!
                }
                if self.dataLevel != nil {
                    map["DataLevel"] = self.dataLevel!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.deviceImei != nil {
                    map["DeviceImei"] = self.deviceImei!
                }
                if self.directionalGroupId != nil {
                    map["DirectionalGroupId"] = self.directionalGroupId!
                }
                if self.directionalGroupName != nil {
                    map["DirectionalGroupName"] = self.directionalGroupName!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.flowThresholdUnit != nil {
                    map["FlowThresholdUnit"] = self.flowThresholdUnit!
                }
                if self.iccid != nil {
                    map["Iccid"] = self.iccid!
                }
                if self.imsi != nil {
                    map["Imsi"] = self.imsi!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.isAutoRecharge != nil {
                    map["IsAutoRecharge"] = self.isAutoRecharge!
                }
                if self.msisdn != nil {
                    map["Msisdn"] = self.msisdn!
                }
                if self.notifyId != nil {
                    map["NotifyId"] = self.notifyId!
                }
                if self.openAccountTime != nil {
                    map["OpenAccountTime"] = self.openAccountTime!
                }
                if self.openSms != nil {
                    map["OpenSms"] = self.openSms!
                }
                if self.osStatus != nil {
                    map["OsStatus"] = self.osStatus!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.periodAddFlow != nil {
                    map["PeriodAddFlow"] = self.periodAddFlow!
                }
                if self.periodRestFlow != nil {
                    map["PeriodRestFlow"] = self.periodRestFlow!
                }
                if self.periodSmsUse != nil {
                    map["PeriodSmsUse"] = self.periodSmsUse!
                }
                if self.privateNetworkSegment != nil {
                    map["PrivateNetworkSegment"] = self.privateNetworkSegment!
                }
                if self.simType != nil {
                    map["SimType"] = self.simType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tagList != nil {
                    var tmp : [Any] = []
                    for k in self.tagList! {
                        tmp.append(k.toMap())
                    }
                    map["TagList"] = tmp
                }
                if self.vendor != nil {
                    map["Vendor"] = self.vendor!
                }
                if self.vsimInstanceId != nil {
                    map["VsimInstanceId"] = self.vsimInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActiveTime") && dict["ActiveTime"] != nil {
                    self.activeTime = dict["ActiveTime"] as! String
                }
                if dict.keys.contains("ActiveType") && dict["ActiveType"] != nil {
                    self.activeType = dict["ActiveType"] as! String
                }
                if dict.keys.contains("AliFee") && dict["AliFee"] != nil {
                    self.aliFee = dict["AliFee"] as! String
                }
                if dict.keys.contains("AliyunOrderId") && dict["AliyunOrderId"] != nil {
                    self.aliyunOrderId = dict["AliyunOrderId"] as! String
                }
                if dict.keys.contains("ApnName") && dict["ApnName"] != nil {
                    self.apnName = dict["ApnName"] as! String
                }
                if dict.keys.contains("AutoLimitResume") && dict["AutoLimitResume"] != nil {
                    self.autoLimitResume = dict["AutoLimitResume"] as! Bool
                }
                if dict.keys.contains("AutoRebindReuse") && dict["AutoRebindReuse"] != nil {
                    self.autoRebindReuse = dict["AutoRebindReuse"] as! Bool
                }
                if dict.keys.contains("CardLimitSpeedThreshold") && dict["CardLimitSpeedThreshold"] != nil {
                    self.cardLimitSpeedThreshold = dict["CardLimitSpeedThreshold"] as! Int32
                }
                if dict.keys.contains("CardLimitStopThreshold") && dict["CardLimitStopThreshold"] != nil {
                    self.cardLimitStopThreshold = dict["CardLimitStopThreshold"] as! Int32
                }
                if dict.keys.contains("CertifyStatus") && dict["CertifyStatus"] != nil {
                    self.certifyStatus = dict["CertifyStatus"] as! String
                }
                if dict.keys.contains("CertifyType") && dict["CertifyType"] != nil {
                    self.certifyType = dict["CertifyType"] as! String
                }
                if dict.keys.contains("CredentialInstanceId") && dict["CredentialInstanceId"] != nil {
                    self.credentialInstanceId = dict["CredentialInstanceId"] as! String
                }
                if dict.keys.contains("CredentialLimitSpeedThreshold") && dict["CredentialLimitSpeedThreshold"] != nil {
                    self.credentialLimitSpeedThreshold = dict["CredentialLimitSpeedThreshold"] as! Int32
                }
                if dict.keys.contains("CredentialLimitStopThreshold") && dict["CredentialLimitStopThreshold"] != nil {
                    self.credentialLimitStopThreshold = dict["CredentialLimitStopThreshold"] as! Int32
                }
                if dict.keys.contains("CredentialNo") && dict["CredentialNo"] != nil {
                    self.credentialNo = dict["CredentialNo"] as! String
                }
                if dict.keys.contains("CredentialType") && dict["CredentialType"] != nil {
                    self.credentialType = dict["CredentialType"] as! String
                }
                if dict.keys.contains("DataLevel") && dict["DataLevel"] != nil {
                    self.dataLevel = dict["DataLevel"] as! String
                }
                if dict.keys.contains("DataType") && dict["DataType"] != nil {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("DeviceImei") && dict["DeviceImei"] != nil {
                    self.deviceImei = dict["DeviceImei"] as! String
                }
                if dict.keys.contains("DirectionalGroupId") && dict["DirectionalGroupId"] != nil {
                    self.directionalGroupId = dict["DirectionalGroupId"] as! String
                }
                if dict.keys.contains("DirectionalGroupName") && dict["DirectionalGroupName"] != nil {
                    self.directionalGroupName = dict["DirectionalGroupName"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("FlowThresholdUnit") && dict["FlowThresholdUnit"] != nil {
                    self.flowThresholdUnit = dict["FlowThresholdUnit"] as! String
                }
                if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
                    self.iccid = dict["Iccid"] as! String
                }
                if dict.keys.contains("Imsi") && dict["Imsi"] != nil {
                    self.imsi = dict["Imsi"] as! [String]
                }
                if dict.keys.contains("Ip") && dict["Ip"] != nil {
                    self.ip = dict["Ip"] as! [String]
                }
                if dict.keys.contains("IsAutoRecharge") && dict["IsAutoRecharge"] != nil {
                    self.isAutoRecharge = dict["IsAutoRecharge"] as! Bool
                }
                if dict.keys.contains("Msisdn") && dict["Msisdn"] != nil {
                    self.msisdn = dict["Msisdn"] as! [String]
                }
                if dict.keys.contains("NotifyId") && dict["NotifyId"] != nil {
                    self.notifyId = dict["NotifyId"] as! String
                }
                if dict.keys.contains("OpenAccountTime") && dict["OpenAccountTime"] != nil {
                    self.openAccountTime = dict["OpenAccountTime"] as! String
                }
                if dict.keys.contains("OpenSms") && dict["OpenSms"] != nil {
                    self.openSms = dict["OpenSms"] as! Bool
                }
                if dict.keys.contains("OsStatus") && dict["OsStatus"] != nil {
                    self.osStatus = dict["OsStatus"] as! String
                }
                if dict.keys.contains("Period") && dict["Period"] != nil {
                    self.period = dict["Period"] as! String
                }
                if dict.keys.contains("PeriodAddFlow") && dict["PeriodAddFlow"] != nil {
                    self.periodAddFlow = dict["PeriodAddFlow"] as! String
                }
                if dict.keys.contains("PeriodRestFlow") && dict["PeriodRestFlow"] != nil {
                    self.periodRestFlow = dict["PeriodRestFlow"] as! String
                }
                if dict.keys.contains("PeriodSmsUse") && dict["PeriodSmsUse"] != nil {
                    self.periodSmsUse = dict["PeriodSmsUse"] as! String
                }
                if dict.keys.contains("PrivateNetworkSegment") && dict["PrivateNetworkSegment"] != nil {
                    self.privateNetworkSegment = dict["PrivateNetworkSegment"] as! String
                }
                if dict.keys.contains("SimType") && dict["SimType"] != nil {
                    self.simType = dict["SimType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TagList") && dict["TagList"] != nil {
                    var tmp : [GetCardDetailResponseBody.Data.VsimCardInfo.TagList] = []
                    for v in dict["TagList"] as! [Any] {
                        var model = GetCardDetailResponseBody.Data.VsimCardInfo.TagList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tagList = tmp
                }
                if dict.keys.contains("Vendor") && dict["Vendor"] != nil {
                    self.vendor = dict["Vendor"] as! String
                }
                if dict.keys.contains("VsimInstanceId") && dict["VsimInstanceId"] != nil {
                    self.vsimInstanceId = dict["VsimInstanceId"] as! Int32
                }
            }
        }
        public var listPsimCards: [GetCardDetailResponseBody.Data.ListPsimCards]?

        public var vsimCardInfo: GetCardDetailResponseBody.Data.VsimCardInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.vsimCardInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listPsimCards != nil {
                var tmp : [Any] = []
                for k in self.listPsimCards! {
                    tmp.append(k.toMap())
                }
                map["ListPsimCards"] = tmp
            }
            if self.vsimCardInfo != nil {
                map["VsimCardInfo"] = self.vsimCardInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ListPsimCards") && dict["ListPsimCards"] != nil {
                var tmp : [GetCardDetailResponseBody.Data.ListPsimCards] = []
                for v in dict["ListPsimCards"] as! [Any] {
                    var model = GetCardDetailResponseBody.Data.ListPsimCards()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.listPsimCards = tmp
            }
            if dict.keys.contains("VsimCardInfo") && dict["VsimCardInfo"] != nil {
                var model = GetCardDetailResponseBody.Data.VsimCardInfo()
                model.fromMap(dict["VsimCardInfo"] as! [String: Any])
                self.vsimCardInfo = model
            }
        }
    }
    public var code: String?

    public var data: GetCardDetailResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetCardDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCardDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCardDetailResponseBody?

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
            var model = GetCardDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCardFlowInfoRequest : Tea.TeaModel {
    public var dateList: [String]?

    public var iccid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dateList != nil {
            map["DateList"] = self.dateList!
        }
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateList") && dict["DateList"] != nil {
            self.dateList = dict["DateList"] as! [String]
        }
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
    }
}

public class GetCardFlowInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ListCardMonthFlow : Tea.TeaModel {
            public class ListDayFlow : Tea.TeaModel {
                public var day: String?

                public var flow: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.day != nil {
                        map["Day"] = self.day!
                    }
                    if self.flow != nil {
                        map["Flow"] = self.flow!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Day") && dict["Day"] != nil {
                        self.day = dict["Day"] as! String
                    }
                    if dict.keys.contains("Flow") && dict["Flow"] != nil {
                        self.flow = dict["Flow"] as! String
                    }
                }
            }
            public var flowCount: String?

            public var listDayFlow: [GetCardFlowInfoResponseBody.Data.ListCardMonthFlow.ListDayFlow]?

            public var month: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flowCount != nil {
                    map["FlowCount"] = self.flowCount!
                }
                if self.listDayFlow != nil {
                    var tmp : [Any] = []
                    for k in self.listDayFlow! {
                        tmp.append(k.toMap())
                    }
                    map["ListDayFlow"] = tmp
                }
                if self.month != nil {
                    map["Month"] = self.month!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FlowCount") && dict["FlowCount"] != nil {
                    self.flowCount = dict["FlowCount"] as! String
                }
                if dict.keys.contains("ListDayFlow") && dict["ListDayFlow"] != nil {
                    var tmp : [GetCardFlowInfoResponseBody.Data.ListCardMonthFlow.ListDayFlow] = []
                    for v in dict["ListDayFlow"] as! [Any] {
                        var model = GetCardFlowInfoResponseBody.Data.ListCardMonthFlow.ListDayFlow()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.listDayFlow = tmp
                }
                if dict.keys.contains("Month") && dict["Month"] != nil {
                    self.month = dict["Month"] as! String
                }
            }
        }
        public class ListPackageDTO : Tea.TeaModel {
            public var effectiveTime: String?

            public var expireTime: String?

            public var packageName: String?

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
                if self.effectiveTime != nil {
                    map["EffectiveTime"] = self.effectiveTime!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.packageName != nil {
                    map["PackageName"] = self.packageName!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EffectiveTime") && dict["EffectiveTime"] != nil {
                    self.effectiveTime = dict["EffectiveTime"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("PackageName") && dict["PackageName"] != nil {
                    self.packageName = dict["PackageName"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
            }
        }
        public class ListVendorDetail : Tea.TeaModel {
            public var netWorkDelay: String?

            public var ratio: String?

            public var signalStrength: String?

            public var usedFlow: String?

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
                if self.netWorkDelay != nil {
                    map["NetWorkDelay"] = self.netWorkDelay!
                }
                if self.ratio != nil {
                    map["Ratio"] = self.ratio!
                }
                if self.signalStrength != nil {
                    map["SignalStrength"] = self.signalStrength!
                }
                if self.usedFlow != nil {
                    map["UsedFlow"] = self.usedFlow!
                }
                if self.vendor != nil {
                    map["Vendor"] = self.vendor!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NetWorkDelay") && dict["NetWorkDelay"] != nil {
                    self.netWorkDelay = dict["NetWorkDelay"] as! String
                }
                if dict.keys.contains("Ratio") && dict["Ratio"] != nil {
                    self.ratio = dict["Ratio"] as! String
                }
                if dict.keys.contains("SignalStrength") && dict["SignalStrength"] != nil {
                    self.signalStrength = dict["SignalStrength"] as! String
                }
                if dict.keys.contains("UsedFlow") && dict["UsedFlow"] != nil {
                    self.usedFlow = dict["UsedFlow"] as! String
                }
                if dict.keys.contains("Vendor") && dict["Vendor"] != nil {
                    self.vendor = dict["Vendor"] as! String
                }
            }
        }
        public var listCardMonthFlow: [GetCardFlowInfoResponseBody.Data.ListCardMonthFlow]?

        public var listPackageDTO: [GetCardFlowInfoResponseBody.Data.ListPackageDTO]?

        public var listVendorDetail: [GetCardFlowInfoResponseBody.Data.ListVendorDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listCardMonthFlow != nil {
                var tmp : [Any] = []
                for k in self.listCardMonthFlow! {
                    tmp.append(k.toMap())
                }
                map["ListCardMonthFlow"] = tmp
            }
            if self.listPackageDTO != nil {
                var tmp : [Any] = []
                for k in self.listPackageDTO! {
                    tmp.append(k.toMap())
                }
                map["ListPackageDTO"] = tmp
            }
            if self.listVendorDetail != nil {
                var tmp : [Any] = []
                for k in self.listVendorDetail! {
                    tmp.append(k.toMap())
                }
                map["ListVendorDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ListCardMonthFlow") && dict["ListCardMonthFlow"] != nil {
                var tmp : [GetCardFlowInfoResponseBody.Data.ListCardMonthFlow] = []
                for v in dict["ListCardMonthFlow"] as! [Any] {
                    var model = GetCardFlowInfoResponseBody.Data.ListCardMonthFlow()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.listCardMonthFlow = tmp
            }
            if dict.keys.contains("ListPackageDTO") && dict["ListPackageDTO"] != nil {
                var tmp : [GetCardFlowInfoResponseBody.Data.ListPackageDTO] = []
                for v in dict["ListPackageDTO"] as! [Any] {
                    var model = GetCardFlowInfoResponseBody.Data.ListPackageDTO()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.listPackageDTO = tmp
            }
            if dict.keys.contains("ListVendorDetail") && dict["ListVendorDetail"] != nil {
                var tmp : [GetCardFlowInfoResponseBody.Data.ListVendorDetail] = []
                for v in dict["ListVendorDetail"] as! [Any] {
                    var model = GetCardFlowInfoResponseBody.Data.ListVendorDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.listVendorDetail = tmp
            }
        }
    }
    public var code: String?

    public var data: GetCardFlowInfoResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetCardFlowInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCardFlowInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCardFlowInfoResponseBody?

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
            var model = GetCardFlowInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCardLatestFlowRequest : Tea.TeaModel {
    public var iccid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
    }
}

public class GetCardLatestFlowResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCardLatestFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCardLatestFlowResponseBody?

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
            var model = GetCardLatestFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCardRealStatusRequest : Tea.TeaModel {
    public var iccid: String?

    public var msisdn: String?

    public var serialNo: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.msisdn != nil {
            map["Msisdn"] = self.msisdn!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("Msisdn") && dict["Msisdn"] != nil {
            self.msisdn = dict["Msisdn"] as! String
        }
        if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
            self.serialNo = dict["SerialNo"] as! [String]
        }
    }
}

public class GetCardRealStatusShrinkRequest : Tea.TeaModel {
    public var iccid: String?

    public var msisdn: String?

    public var serialNoShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.msisdn != nil {
            map["Msisdn"] = self.msisdn!
        }
        if self.serialNoShrink != nil {
            map["SerialNo"] = self.serialNoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("Msisdn") && dict["Msisdn"] != nil {
            self.msisdn = dict["Msisdn"] as! String
        }
        if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
            self.serialNoShrink = dict["SerialNo"] as! String
        }
    }
}

public class GetCardRealStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gprs: Bool?

        public var iccid: String?

        public var online: Bool?

        public var serialNo: String?

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
            if self.gprs != nil {
                map["Gprs"] = self.gprs!
            }
            if self.iccid != nil {
                map["Iccid"] = self.iccid!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Gprs") && dict["Gprs"] != nil {
                self.gprs = dict["Gprs"] as! Bool
            }
            if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
                self.iccid = dict["Iccid"] as! String
            }
            if dict.keys.contains("Online") && dict["Online"] != nil {
                self.online = dict["Online"] as! Bool
            }
            if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
                self.serialNo = dict["SerialNo"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetCardRealStatusResponseBody.Data]?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GetCardRealStatusResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetCardRealStatusResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCardRealStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCardRealStatusResponseBody?

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
            var model = GetCardRealStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCardStatusStatisticsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ErrorStopStatisticsDTO : Tea.TeaModel {
            public var poolCount: Int64?

            public var sameFlowCardCount: Int64?

            public var singleCardCount: Int64?

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
                if self.poolCount != nil {
                    map["PoolCount"] = self.poolCount!
                }
                if self.sameFlowCardCount != nil {
                    map["SameFlowCardCount"] = self.sameFlowCardCount!
                }
                if self.singleCardCount != nil {
                    map["SingleCardCount"] = self.singleCardCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PoolCount") && dict["PoolCount"] != nil {
                    self.poolCount = dict["PoolCount"] as! Int64
                }
                if dict.keys.contains("SameFlowCardCount") && dict["SameFlowCardCount"] != nil {
                    self.sameFlowCardCount = dict["SameFlowCardCount"] as! Int64
                }
                if dict.keys.contains("SingleCardCount") && dict["SingleCardCount"] != nil {
                    self.singleCardCount = dict["SingleCardCount"] as! Int64
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ExhaustStopStatisticsDTO : Tea.TeaModel {
            public var poolCount: Int64?

            public var sameFlowCardCount: Int64?

            public var singleCardCount: Int64?

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
                if self.poolCount != nil {
                    map["PoolCount"] = self.poolCount!
                }
                if self.sameFlowCardCount != nil {
                    map["SameFlowCardCount"] = self.sameFlowCardCount!
                }
                if self.singleCardCount != nil {
                    map["SingleCardCount"] = self.singleCardCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PoolCount") && dict["PoolCount"] != nil {
                    self.poolCount = dict["PoolCount"] as! Int64
                }
                if dict.keys.contains("SameFlowCardCount") && dict["SameFlowCardCount"] != nil {
                    self.sameFlowCardCount = dict["SameFlowCardCount"] as! Int64
                }
                if dict.keys.contains("SingleCardCount") && dict["SingleCardCount"] != nil {
                    self.singleCardCount = dict["SingleCardCount"] as! Int64
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ExpireStopStatisticsDTO : Tea.TeaModel {
            public var poolCount: Int64?

            public var sameFlowCardCount: Int64?

            public var singleCardCount: Int64?

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
                if self.poolCount != nil {
                    map["PoolCount"] = self.poolCount!
                }
                if self.sameFlowCardCount != nil {
                    map["SameFlowCardCount"] = self.sameFlowCardCount!
                }
                if self.singleCardCount != nil {
                    map["SingleCardCount"] = self.singleCardCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PoolCount") && dict["PoolCount"] != nil {
                    self.poolCount = dict["PoolCount"] as! Int64
                }
                if dict.keys.contains("SameFlowCardCount") && dict["SameFlowCardCount"] != nil {
                    self.sameFlowCardCount = dict["SameFlowCardCount"] as! Int64
                }
                if dict.keys.contains("SingleCardCount") && dict["SingleCardCount"] != nil {
                    self.singleCardCount = dict["SingleCardCount"] as! Int64
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class FlowOutStatisticsDTO : Tea.TeaModel {
            public var poolCount: Int64?

            public var sameFlowCardCount: Int64?

            public var singleCardCount: Int64?

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
                if self.poolCount != nil {
                    map["PoolCount"] = self.poolCount!
                }
                if self.sameFlowCardCount != nil {
                    map["SameFlowCardCount"] = self.sameFlowCardCount!
                }
                if self.singleCardCount != nil {
                    map["SingleCardCount"] = self.singleCardCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PoolCount") && dict["PoolCount"] != nil {
                    self.poolCount = dict["PoolCount"] as! Int64
                }
                if dict.keys.contains("SameFlowCardCount") && dict["SameFlowCardCount"] != nil {
                    self.sameFlowCardCount = dict["SameFlowCardCount"] as! Int64
                }
                if dict.keys.contains("SingleCardCount") && dict["SingleCardCount"] != nil {
                    self.singleCardCount = dict["SingleCardCount"] as! Int64
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ManageStopStatisticsDTO : Tea.TeaModel {
            public var poolCount: Int64?

            public var sameFlowCardCount: Int64?

            public var singleCardCount: Int64?

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
                if self.poolCount != nil {
                    map["PoolCount"] = self.poolCount!
                }
                if self.sameFlowCardCount != nil {
                    map["SameFlowCardCount"] = self.sameFlowCardCount!
                }
                if self.singleCardCount != nil {
                    map["SingleCardCount"] = self.singleCardCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PoolCount") && dict["PoolCount"] != nil {
                    self.poolCount = dict["PoolCount"] as! Int64
                }
                if dict.keys.contains("SameFlowCardCount") && dict["SameFlowCardCount"] != nil {
                    self.sameFlowCardCount = dict["SameFlowCardCount"] as! Int64
                }
                if dict.keys.contains("SingleCardCount") && dict["SingleCardCount"] != nil {
                    self.singleCardCount = dict["SingleCardCount"] as! Int64
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class RiskWaringStatisticsDTO : Tea.TeaModel {
            public var leftFlowPercentageWarnCount: Int64?

            public var stopCount: Int64?

            public var waringTotalCount: Int64?

            public var warningCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.leftFlowPercentageWarnCount != nil {
                    map["LeftFlowPercentageWarnCount"] = self.leftFlowPercentageWarnCount!
                }
                if self.stopCount != nil {
                    map["StopCount"] = self.stopCount!
                }
                if self.waringTotalCount != nil {
                    map["WaringTotalCount"] = self.waringTotalCount!
                }
                if self.warningCount != nil {
                    map["WarningCount"] = self.warningCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LeftFlowPercentageWarnCount") && dict["LeftFlowPercentageWarnCount"] != nil {
                    self.leftFlowPercentageWarnCount = dict["LeftFlowPercentageWarnCount"] as! Int64
                }
                if dict.keys.contains("StopCount") && dict["StopCount"] != nil {
                    self.stopCount = dict["StopCount"] as! Int64
                }
                if dict.keys.contains("WaringTotalCount") && dict["WaringTotalCount"] != nil {
                    self.waringTotalCount = dict["WaringTotalCount"] as! Int64
                }
                if dict.keys.contains("WarningCount") && dict["WarningCount"] != nil {
                    self.warningCount = dict["WarningCount"] as! Int64
                }
            }
        }
        public class SingCardPeriodLeftFlowWarnDTO : Tea.TeaModel {
            public var lessFlowPercentage10Count: Int64?

            public var lessFlowPercentage30Count: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lessFlowPercentage10Count != nil {
                    map["LessFlowPercentage10Count"] = self.lessFlowPercentage10Count!
                }
                if self.lessFlowPercentage30Count != nil {
                    map["LessFlowPercentage30Count"] = self.lessFlowPercentage30Count!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LessFlowPercentage10Count") && dict["LessFlowPercentage10Count"] != nil {
                    self.lessFlowPercentage10Count = dict["LessFlowPercentage10Count"] as! Int64
                }
                if dict.keys.contains("LessFlowPercentage30Count") && dict["LessFlowPercentage30Count"] != nil {
                    self.lessFlowPercentage30Count = dict["LessFlowPercentage30Count"] as! Int64
                }
            }
        }
        public class UnCertifiedStopStatisticsDTO : Tea.TeaModel {
            public var poolCount: Int64?

            public var sameFlowCardCount: Int64?

            public var singleCardCount: Int64?

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
                if self.poolCount != nil {
                    map["PoolCount"] = self.poolCount!
                }
                if self.sameFlowCardCount != nil {
                    map["SameFlowCardCount"] = self.sameFlowCardCount!
                }
                if self.singleCardCount != nil {
                    map["SingleCardCount"] = self.singleCardCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PoolCount") && dict["PoolCount"] != nil {
                    self.poolCount = dict["PoolCount"] as! Int64
                }
                if dict.keys.contains("SameFlowCardCount") && dict["SameFlowCardCount"] != nil {
                    self.sameFlowCardCount = dict["SameFlowCardCount"] as! Int64
                }
                if dict.keys.contains("SingleCardCount") && dict["SingleCardCount"] != nil {
                    self.singleCardCount = dict["SingleCardCount"] as! Int64
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class UnbindResumeStatisticsDTO : Tea.TeaModel {
            public var poolCount: Int64?

            public var sameFlowCardCount: Int64?

            public var singleCardCount: Int64?

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
                if self.poolCount != nil {
                    map["PoolCount"] = self.poolCount!
                }
                if self.sameFlowCardCount != nil {
                    map["SameFlowCardCount"] = self.sameFlowCardCount!
                }
                if self.singleCardCount != nil {
                    map["SingleCardCount"] = self.singleCardCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PoolCount") && dict["PoolCount"] != nil {
                    self.poolCount = dict["PoolCount"] as! Int64
                }
                if dict.keys.contains("SameFlowCardCount") && dict["SameFlowCardCount"] != nil {
                    self.sameFlowCardCount = dict["SameFlowCardCount"] as! Int64
                }
                if dict.keys.contains("SingleCardCount") && dict["SingleCardCount"] != nil {
                    self.singleCardCount = dict["SingleCardCount"] as! Int64
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class WeekWarnStatisticsDTO : Tea.TeaModel {
            public var poolCount: Int64?

            public var sameFlowCardCount: Int64?

            public var singleCardCount: Int64?

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
                if self.poolCount != nil {
                    map["PoolCount"] = self.poolCount!
                }
                if self.sameFlowCardCount != nil {
                    map["SameFlowCardCount"] = self.sameFlowCardCount!
                }
                if self.singleCardCount != nil {
                    map["SingleCardCount"] = self.singleCardCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PoolCount") && dict["PoolCount"] != nil {
                    self.poolCount = dict["PoolCount"] as! Int64
                }
                if dict.keys.contains("SameFlowCardCount") && dict["SameFlowCardCount"] != nil {
                    self.sameFlowCardCount = dict["SameFlowCardCount"] as! Int64
                }
                if dict.keys.contains("SingleCardCount") && dict["SingleCardCount"] != nil {
                    self.singleCardCount = dict["SingleCardCount"] as! Int64
                }
                if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public var errorStopStatisticsDTO: GetCardStatusStatisticsResponseBody.Data.ErrorStopStatisticsDTO?

        public var exhaustStopStatisticsDTO: GetCardStatusStatisticsResponseBody.Data.ExhaustStopStatisticsDTO?

        public var expireStopStatisticsDTO: GetCardStatusStatisticsResponseBody.Data.ExpireStopStatisticsDTO?

        public var flowOutStatisticsDTO: GetCardStatusStatisticsResponseBody.Data.FlowOutStatisticsDTO?

        public var manageStopStatisticsDTO: GetCardStatusStatisticsResponseBody.Data.ManageStopStatisticsDTO?

        public var riskWaringStatisticsDTO: GetCardStatusStatisticsResponseBody.Data.RiskWaringStatisticsDTO?

        public var singCardPeriodLeftFlowWarnDTO: GetCardStatusStatisticsResponseBody.Data.SingCardPeriodLeftFlowWarnDTO?

        public var unCertifiedStopStatisticsDTO: GetCardStatusStatisticsResponseBody.Data.UnCertifiedStopStatisticsDTO?

        public var unbindResumeStatisticsDTO: GetCardStatusStatisticsResponseBody.Data.UnbindResumeStatisticsDTO?

        public var weekWarnStatisticsDTO: GetCardStatusStatisticsResponseBody.Data.WeekWarnStatisticsDTO?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.errorStopStatisticsDTO?.validate()
            try self.exhaustStopStatisticsDTO?.validate()
            try self.expireStopStatisticsDTO?.validate()
            try self.flowOutStatisticsDTO?.validate()
            try self.manageStopStatisticsDTO?.validate()
            try self.riskWaringStatisticsDTO?.validate()
            try self.singCardPeriodLeftFlowWarnDTO?.validate()
            try self.unCertifiedStopStatisticsDTO?.validate()
            try self.unbindResumeStatisticsDTO?.validate()
            try self.weekWarnStatisticsDTO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorStopStatisticsDTO != nil {
                map["ErrorStopStatisticsDTO"] = self.errorStopStatisticsDTO?.toMap()
            }
            if self.exhaustStopStatisticsDTO != nil {
                map["ExhaustStopStatisticsDTO"] = self.exhaustStopStatisticsDTO?.toMap()
            }
            if self.expireStopStatisticsDTO != nil {
                map["ExpireStopStatisticsDTO"] = self.expireStopStatisticsDTO?.toMap()
            }
            if self.flowOutStatisticsDTO != nil {
                map["FlowOutStatisticsDTO"] = self.flowOutStatisticsDTO?.toMap()
            }
            if self.manageStopStatisticsDTO != nil {
                map["ManageStopStatisticsDTO"] = self.manageStopStatisticsDTO?.toMap()
            }
            if self.riskWaringStatisticsDTO != nil {
                map["RiskWaringStatisticsDTO"] = self.riskWaringStatisticsDTO?.toMap()
            }
            if self.singCardPeriodLeftFlowWarnDTO != nil {
                map["SingCardPeriodLeftFlowWarnDTO"] = self.singCardPeriodLeftFlowWarnDTO?.toMap()
            }
            if self.unCertifiedStopStatisticsDTO != nil {
                map["UnCertifiedStopStatisticsDTO"] = self.unCertifiedStopStatisticsDTO?.toMap()
            }
            if self.unbindResumeStatisticsDTO != nil {
                map["UnbindResumeStatisticsDTO"] = self.unbindResumeStatisticsDTO?.toMap()
            }
            if self.weekWarnStatisticsDTO != nil {
                map["WeekWarnStatisticsDTO"] = self.weekWarnStatisticsDTO?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorStopStatisticsDTO") && dict["ErrorStopStatisticsDTO"] != nil {
                var model = GetCardStatusStatisticsResponseBody.Data.ErrorStopStatisticsDTO()
                model.fromMap(dict["ErrorStopStatisticsDTO"] as! [String: Any])
                self.errorStopStatisticsDTO = model
            }
            if dict.keys.contains("ExhaustStopStatisticsDTO") && dict["ExhaustStopStatisticsDTO"] != nil {
                var model = GetCardStatusStatisticsResponseBody.Data.ExhaustStopStatisticsDTO()
                model.fromMap(dict["ExhaustStopStatisticsDTO"] as! [String: Any])
                self.exhaustStopStatisticsDTO = model
            }
            if dict.keys.contains("ExpireStopStatisticsDTO") && dict["ExpireStopStatisticsDTO"] != nil {
                var model = GetCardStatusStatisticsResponseBody.Data.ExpireStopStatisticsDTO()
                model.fromMap(dict["ExpireStopStatisticsDTO"] as! [String: Any])
                self.expireStopStatisticsDTO = model
            }
            if dict.keys.contains("FlowOutStatisticsDTO") && dict["FlowOutStatisticsDTO"] != nil {
                var model = GetCardStatusStatisticsResponseBody.Data.FlowOutStatisticsDTO()
                model.fromMap(dict["FlowOutStatisticsDTO"] as! [String: Any])
                self.flowOutStatisticsDTO = model
            }
            if dict.keys.contains("ManageStopStatisticsDTO") && dict["ManageStopStatisticsDTO"] != nil {
                var model = GetCardStatusStatisticsResponseBody.Data.ManageStopStatisticsDTO()
                model.fromMap(dict["ManageStopStatisticsDTO"] as! [String: Any])
                self.manageStopStatisticsDTO = model
            }
            if dict.keys.contains("RiskWaringStatisticsDTO") && dict["RiskWaringStatisticsDTO"] != nil {
                var model = GetCardStatusStatisticsResponseBody.Data.RiskWaringStatisticsDTO()
                model.fromMap(dict["RiskWaringStatisticsDTO"] as! [String: Any])
                self.riskWaringStatisticsDTO = model
            }
            if dict.keys.contains("SingCardPeriodLeftFlowWarnDTO") && dict["SingCardPeriodLeftFlowWarnDTO"] != nil {
                var model = GetCardStatusStatisticsResponseBody.Data.SingCardPeriodLeftFlowWarnDTO()
                model.fromMap(dict["SingCardPeriodLeftFlowWarnDTO"] as! [String: Any])
                self.singCardPeriodLeftFlowWarnDTO = model
            }
            if dict.keys.contains("UnCertifiedStopStatisticsDTO") && dict["UnCertifiedStopStatisticsDTO"] != nil {
                var model = GetCardStatusStatisticsResponseBody.Data.UnCertifiedStopStatisticsDTO()
                model.fromMap(dict["UnCertifiedStopStatisticsDTO"] as! [String: Any])
                self.unCertifiedStopStatisticsDTO = model
            }
            if dict.keys.contains("UnbindResumeStatisticsDTO") && dict["UnbindResumeStatisticsDTO"] != nil {
                var model = GetCardStatusStatisticsResponseBody.Data.UnbindResumeStatisticsDTO()
                model.fromMap(dict["UnbindResumeStatisticsDTO"] as! [String: Any])
                self.unbindResumeStatisticsDTO = model
            }
            if dict.keys.contains("WeekWarnStatisticsDTO") && dict["WeekWarnStatisticsDTO"] != nil {
                var model = GetCardStatusStatisticsResponseBody.Data.WeekWarnStatisticsDTO()
                model.fromMap(dict["WeekWarnStatisticsDTO"] as! [String: Any])
                self.weekWarnStatisticsDTO = model
            }
        }
    }
    public var code: String?

    public var data: GetCardStatusStatisticsResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetCardStatusStatisticsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCardStatusStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCardStatusStatisticsResponseBody?

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
            var model = GetCardStatusStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCredentialPoolStatisticsRequest : Tea.TeaModel {
    public var credentialNO: String?

    public var date: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialNO != nil {
            map["CredentialNO"] = self.credentialNO!
        }
        if self.date != nil {
            map["Date"] = self.date!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialNO") && dict["CredentialNO"] != nil {
            self.credentialNO = dict["CredentialNO"] as! String
        }
        if dict.keys.contains("Date") && dict["Date"] != nil {
            self.date = dict["Date"] as! String
        }
    }
}

public class GetCredentialPoolStatisticsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cardActiveNum: Int64?

        public var cardTotalNum: Int64?

        public var credentialInstanceId: String?

        public var credentialNO: String?

        public var credentialType: String?

        public var effectiveAvailableFlow: String?

        public var effectiveTotalFlow: String?

        public var monthExceedFee: Int64?

        public var monthFeatureFee: Int64?

        public var monthUsedAmount: Int64?

        public var poolAvaiable: String?

        public var poolGrandTotal: String?

        public var poolGrandTotalUsed: String?

        public var poolOutUsed: String?

        public var poolUsed: String?

        public var smsUsed: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cardActiveNum != nil {
                map["CardActiveNum"] = self.cardActiveNum!
            }
            if self.cardTotalNum != nil {
                map["CardTotalNum"] = self.cardTotalNum!
            }
            if self.credentialInstanceId != nil {
                map["CredentialInstanceId"] = self.credentialInstanceId!
            }
            if self.credentialNO != nil {
                map["CredentialNO"] = self.credentialNO!
            }
            if self.credentialType != nil {
                map["CredentialType"] = self.credentialType!
            }
            if self.effectiveAvailableFlow != nil {
                map["EffectiveAvailableFlow"] = self.effectiveAvailableFlow!
            }
            if self.effectiveTotalFlow != nil {
                map["EffectiveTotalFlow"] = self.effectiveTotalFlow!
            }
            if self.monthExceedFee != nil {
                map["MonthExceedFee"] = self.monthExceedFee!
            }
            if self.monthFeatureFee != nil {
                map["MonthFeatureFee"] = self.monthFeatureFee!
            }
            if self.monthUsedAmount != nil {
                map["MonthUsedAmount"] = self.monthUsedAmount!
            }
            if self.poolAvaiable != nil {
                map["PoolAvaiable"] = self.poolAvaiable!
            }
            if self.poolGrandTotal != nil {
                map["PoolGrandTotal"] = self.poolGrandTotal!
            }
            if self.poolGrandTotalUsed != nil {
                map["PoolGrandTotalUsed"] = self.poolGrandTotalUsed!
            }
            if self.poolOutUsed != nil {
                map["PoolOutUsed"] = self.poolOutUsed!
            }
            if self.poolUsed != nil {
                map["PoolUsed"] = self.poolUsed!
            }
            if self.smsUsed != nil {
                map["SmsUsed"] = self.smsUsed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CardActiveNum") && dict["CardActiveNum"] != nil {
                self.cardActiveNum = dict["CardActiveNum"] as! Int64
            }
            if dict.keys.contains("CardTotalNum") && dict["CardTotalNum"] != nil {
                self.cardTotalNum = dict["CardTotalNum"] as! Int64
            }
            if dict.keys.contains("CredentialInstanceId") && dict["CredentialInstanceId"] != nil {
                self.credentialInstanceId = dict["CredentialInstanceId"] as! String
            }
            if dict.keys.contains("CredentialNO") && dict["CredentialNO"] != nil {
                self.credentialNO = dict["CredentialNO"] as! String
            }
            if dict.keys.contains("CredentialType") && dict["CredentialType"] != nil {
                self.credentialType = dict["CredentialType"] as! String
            }
            if dict.keys.contains("EffectiveAvailableFlow") && dict["EffectiveAvailableFlow"] != nil {
                self.effectiveAvailableFlow = dict["EffectiveAvailableFlow"] as! String
            }
            if dict.keys.contains("EffectiveTotalFlow") && dict["EffectiveTotalFlow"] != nil {
                self.effectiveTotalFlow = dict["EffectiveTotalFlow"] as! String
            }
            if dict.keys.contains("MonthExceedFee") && dict["MonthExceedFee"] != nil {
                self.monthExceedFee = dict["MonthExceedFee"] as! Int64
            }
            if dict.keys.contains("MonthFeatureFee") && dict["MonthFeatureFee"] != nil {
                self.monthFeatureFee = dict["MonthFeatureFee"] as! Int64
            }
            if dict.keys.contains("MonthUsedAmount") && dict["MonthUsedAmount"] != nil {
                self.monthUsedAmount = dict["MonthUsedAmount"] as! Int64
            }
            if dict.keys.contains("PoolAvaiable") && dict["PoolAvaiable"] != nil {
                self.poolAvaiable = dict["PoolAvaiable"] as! String
            }
            if dict.keys.contains("PoolGrandTotal") && dict["PoolGrandTotal"] != nil {
                self.poolGrandTotal = dict["PoolGrandTotal"] as! String
            }
            if dict.keys.contains("PoolGrandTotalUsed") && dict["PoolGrandTotalUsed"] != nil {
                self.poolGrandTotalUsed = dict["PoolGrandTotalUsed"] as! String
            }
            if dict.keys.contains("PoolOutUsed") && dict["PoolOutUsed"] != nil {
                self.poolOutUsed = dict["PoolOutUsed"] as! String
            }
            if dict.keys.contains("PoolUsed") && dict["PoolUsed"] != nil {
                self.poolUsed = dict["PoolUsed"] as! String
            }
            if dict.keys.contains("SmsUsed") && dict["SmsUsed"] != nil {
                self.smsUsed = dict["SmsUsed"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetCredentialPoolStatisticsResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetCredentialPoolStatisticsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCredentialPoolStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCredentialPoolStatisticsResponseBody?

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
            var model = GetCredentialPoolStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOperateResultRequest : Tea.TeaModel {
    public var apiProduct: String?

    public var resId: String?

    public var serialNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiProduct != nil {
            map["ApiProduct"] = self.apiProduct!
        }
        if self.resId != nil {
            map["ResId"] = self.resId!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiProduct") && dict["ApiProduct"] != nil {
            self.apiProduct = dict["ApiProduct"] as! String
        }
        if dict.keys.contains("ResId") && dict["ResId"] != nil {
            self.resId = dict["ResId"] as! String
        }
        if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class GetOperateResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var executeResult: String?

        public var operateType: String?

        public var result: Bool?

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
            if self.executeResult != nil {
                map["ExecuteResult"] = self.executeResult!
            }
            if self.operateType != nil {
                map["OperateType"] = self.operateType!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExecuteResult") && dict["ExecuteResult"] != nil {
                self.executeResult = dict["ExecuteResult"] as! String
            }
            if dict.keys.contains("OperateType") && dict["OperateType"] != nil {
                self.operateType = dict["OperateType"] as! String
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
                self.result = dict["Result"] as! Bool
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetOperateResultResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetOperateResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetOperateResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOperateResultResponseBody?

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
            var model = GetOperateResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRealNameStatusRequest : Tea.TeaModel {
    public var iccid: String?

    public var listMsisdns: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.listMsisdns != nil {
            map["ListMsisdns"] = self.listMsisdns!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("ListMsisdns") && dict["ListMsisdns"] != nil {
            self.listMsisdns = dict["ListMsisdns"] as! [String]
        }
    }
}

public class GetRealNameStatusShrinkRequest : Tea.TeaModel {
    public var iccid: String?

    public var listMsisdnsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.listMsisdnsShrink != nil {
            map["ListMsisdns"] = self.listMsisdnsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("ListMsisdns") && dict["ListMsisdns"] != nil {
            self.listMsisdnsShrink = dict["ListMsisdns"] as! String
        }
    }
}

public class GetRealNameStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var desc: String?

        public var realNameStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.realNameStatus != nil {
                map["RealNameStatus"] = self.realNameStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Desc") && dict["Desc"] != nil {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("RealNameStatus") && dict["RealNameStatus"] != nil {
                self.realNameStatus = dict["RealNameStatus"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetRealNameStatusResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetRealNameStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetRealNameStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRealNameStatusResponseBody?

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
            var model = GetRealNameStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSimCardStateDistributionRequest : Tea.TeaModel {
    public var credentialNO: String?

    public var date: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialNO != nil {
            map["CredentialNO"] = self.credentialNO!
        }
        if self.date != nil {
            map["Date"] = self.date!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialNO") && dict["CredentialNO"] != nil {
            self.credentialNO = dict["CredentialNO"] as! String
        }
        if dict.keys.contains("Date") && dict["Date"] != nil {
            self.date = dict["Date"] as! String
        }
    }
}

public class GetSimCardStateDistributionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cardCount: Int64?

        public var destoryedCount: Int64?

        public var shutDownCount: Int64?

        public var stopCount: Int64?

        public var testCount: Int64?

        public var unusedCount: Int64?

        public var usingCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cardCount != nil {
                map["CardCount"] = self.cardCount!
            }
            if self.destoryedCount != nil {
                map["DestoryedCount"] = self.destoryedCount!
            }
            if self.shutDownCount != nil {
                map["ShutDownCount"] = self.shutDownCount!
            }
            if self.stopCount != nil {
                map["StopCount"] = self.stopCount!
            }
            if self.testCount != nil {
                map["TestCount"] = self.testCount!
            }
            if self.unusedCount != nil {
                map["UnusedCount"] = self.unusedCount!
            }
            if self.usingCount != nil {
                map["UsingCount"] = self.usingCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CardCount") && dict["CardCount"] != nil {
                self.cardCount = dict["CardCount"] as! Int64
            }
            if dict.keys.contains("DestoryedCount") && dict["DestoryedCount"] != nil {
                self.destoryedCount = dict["DestoryedCount"] as! Int64
            }
            if dict.keys.contains("ShutDownCount") && dict["ShutDownCount"] != nil {
                self.shutDownCount = dict["ShutDownCount"] as! Int64
            }
            if dict.keys.contains("StopCount") && dict["StopCount"] != nil {
                self.stopCount = dict["StopCount"] as! Int64
            }
            if dict.keys.contains("TestCount") && dict["TestCount"] != nil {
                self.testCount = dict["TestCount"] as! Int64
            }
            if dict.keys.contains("UnusedCount") && dict["UnusedCount"] != nil {
                self.unusedCount = dict["UnusedCount"] as! Int64
            }
            if dict.keys.contains("UsingCount") && dict["UsingCount"] != nil {
                self.usingCount = dict["UsingCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetSimCardStateDistributionResponseBody.Data?

    public var errorMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSimCardStateDistributionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetSimCardStateDistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSimCardStateDistributionResponseBody?

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
            var model = GetSimCardStateDistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCardInfoRequest : Tea.TeaModel {
    public var activeTimeEnd: String?

    public var activeTimeStart: String?

    public var aliFee: String?

    public var aliyunOrderId: String?

    public var apnName: String?

    public var certifyType: String?

    public var credentialNo: String?

    public var dataLevel: String?

    public var dataType: String?

    public var directionalGroupId: String?

    public var expireTimeEnd: String?

    public var expireTimeStart: String?

    public var iccid: String?

    public var imsi: String?

    public var isAutoRecharge: Bool?

    public var maxFlow: String?

    public var maxRestFlowPercentage: Double?

    public var minFlow: String?

    public var msisdn: String?

    public var notifyId: String?

    public var osStatus: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var period: String?

    public var poolId: String?

    public var simType: String?

    public var status: String?

    public var tagName: String?

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
        if self.activeTimeEnd != nil {
            map["ActiveTimeEnd"] = self.activeTimeEnd!
        }
        if self.activeTimeStart != nil {
            map["ActiveTimeStart"] = self.activeTimeStart!
        }
        if self.aliFee != nil {
            map["AliFee"] = self.aliFee!
        }
        if self.aliyunOrderId != nil {
            map["AliyunOrderId"] = self.aliyunOrderId!
        }
        if self.apnName != nil {
            map["ApnName"] = self.apnName!
        }
        if self.certifyType != nil {
            map["CertifyType"] = self.certifyType!
        }
        if self.credentialNo != nil {
            map["CredentialNo"] = self.credentialNo!
        }
        if self.dataLevel != nil {
            map["DataLevel"] = self.dataLevel!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.directionalGroupId != nil {
            map["DirectionalGroupId"] = self.directionalGroupId!
        }
        if self.expireTimeEnd != nil {
            map["ExpireTimeEnd"] = self.expireTimeEnd!
        }
        if self.expireTimeStart != nil {
            map["ExpireTimeStart"] = self.expireTimeStart!
        }
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.imsi != nil {
            map["Imsi"] = self.imsi!
        }
        if self.isAutoRecharge != nil {
            map["IsAutoRecharge"] = self.isAutoRecharge!
        }
        if self.maxFlow != nil {
            map["MaxFlow"] = self.maxFlow!
        }
        if self.maxRestFlowPercentage != nil {
            map["MaxRestFlowPercentage"] = self.maxRestFlowPercentage!
        }
        if self.minFlow != nil {
            map["MinFlow"] = self.minFlow!
        }
        if self.msisdn != nil {
            map["Msisdn"] = self.msisdn!
        }
        if self.notifyId != nil {
            map["NotifyId"] = self.notifyId!
        }
        if self.osStatus != nil {
            map["OsStatus"] = self.osStatus!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.poolId != nil {
            map["PoolId"] = self.poolId!
        }
        if self.simType != nil {
            map["SimType"] = self.simType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActiveTimeEnd") && dict["ActiveTimeEnd"] != nil {
            self.activeTimeEnd = dict["ActiveTimeEnd"] as! String
        }
        if dict.keys.contains("ActiveTimeStart") && dict["ActiveTimeStart"] != nil {
            self.activeTimeStart = dict["ActiveTimeStart"] as! String
        }
        if dict.keys.contains("AliFee") && dict["AliFee"] != nil {
            self.aliFee = dict["AliFee"] as! String
        }
        if dict.keys.contains("AliyunOrderId") && dict["AliyunOrderId"] != nil {
            self.aliyunOrderId = dict["AliyunOrderId"] as! String
        }
        if dict.keys.contains("ApnName") && dict["ApnName"] != nil {
            self.apnName = dict["ApnName"] as! String
        }
        if dict.keys.contains("CertifyType") && dict["CertifyType"] != nil {
            self.certifyType = dict["CertifyType"] as! String
        }
        if dict.keys.contains("CredentialNo") && dict["CredentialNo"] != nil {
            self.credentialNo = dict["CredentialNo"] as! String
        }
        if dict.keys.contains("DataLevel") && dict["DataLevel"] != nil {
            self.dataLevel = dict["DataLevel"] as! String
        }
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("DirectionalGroupId") && dict["DirectionalGroupId"] != nil {
            self.directionalGroupId = dict["DirectionalGroupId"] as! String
        }
        if dict.keys.contains("ExpireTimeEnd") && dict["ExpireTimeEnd"] != nil {
            self.expireTimeEnd = dict["ExpireTimeEnd"] as! String
        }
        if dict.keys.contains("ExpireTimeStart") && dict["ExpireTimeStart"] != nil {
            self.expireTimeStart = dict["ExpireTimeStart"] as! String
        }
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("Imsi") && dict["Imsi"] != nil {
            self.imsi = dict["Imsi"] as! String
        }
        if dict.keys.contains("IsAutoRecharge") && dict["IsAutoRecharge"] != nil {
            self.isAutoRecharge = dict["IsAutoRecharge"] as! Bool
        }
        if dict.keys.contains("MaxFlow") && dict["MaxFlow"] != nil {
            self.maxFlow = dict["MaxFlow"] as! String
        }
        if dict.keys.contains("MaxRestFlowPercentage") && dict["MaxRestFlowPercentage"] != nil {
            self.maxRestFlowPercentage = dict["MaxRestFlowPercentage"] as! Double
        }
        if dict.keys.contains("MinFlow") && dict["MinFlow"] != nil {
            self.minFlow = dict["MinFlow"] as! String
        }
        if dict.keys.contains("Msisdn") && dict["Msisdn"] != nil {
            self.msisdn = dict["Msisdn"] as! String
        }
        if dict.keys.contains("NotifyId") && dict["NotifyId"] != nil {
            self.notifyId = dict["NotifyId"] as! String
        }
        if dict.keys.contains("OsStatus") && dict["OsStatus"] != nil {
            self.osStatus = dict["OsStatus"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("PoolId") && dict["PoolId"] != nil {
            self.poolId = dict["PoolId"] as! String
        }
        if dict.keys.contains("SimType") && dict["SimType"] != nil {
            self.simType = dict["SimType"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagName") && dict["TagName"] != nil {
            self.tagName = dict["TagName"] as! String
        }
        if dict.keys.contains("Vendor") && dict["Vendor"] != nil {
            self.vendor = dict["Vendor"] as! String
        }
    }
}

public class ListCardInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class TagList : Tea.TeaModel {
                public var id: Int64?

                public var tagName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.tagName != nil {
                        map["TagName"] = self.tagName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("TagName") && dict["TagName"] != nil {
                        self.tagName = dict["TagName"] as! String
                    }
                }
            }
            public var activeTime: String?

            public var activeType: String?

            public var aliFee: String?

            public var aliyunOrderId: String?

            public var apnName: String?

            public var certifyType: String?

            public var credentialInstanceId: String?

            public var credentialNo: String?

            public var credentialType: String?

            public var dataLevel: String?

            public var dataType: String?

            public var directionalGroupId: Int64?

            public var directionalGroupName: String?

            public var expireTime: String?

            public var iccid: String?

            public var imsi: [String]?

            public var isAutoRecharge: Bool?

            public var msisdn: [String]?

            public var notifyId: String?

            public var openAccountTime: String?

            public var osStatus: String?

            public var period: String?

            public var periodAddFlow: String?

            public var periodRestFlow: String?

            public var periodSmsUse: String?

            public var privateNetworkSegment: String?

            public var remark: String?

            public var simType: String?

            public var status: String?

            public var tagList: [ListCardInfoResponseBody.Data.List.TagList]?

            public var vendor: String?

            public var vsimInstanceId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeTime != nil {
                    map["ActiveTime"] = self.activeTime!
                }
                if self.activeType != nil {
                    map["ActiveType"] = self.activeType!
                }
                if self.aliFee != nil {
                    map["AliFee"] = self.aliFee!
                }
                if self.aliyunOrderId != nil {
                    map["AliyunOrderId"] = self.aliyunOrderId!
                }
                if self.apnName != nil {
                    map["ApnName"] = self.apnName!
                }
                if self.certifyType != nil {
                    map["CertifyType"] = self.certifyType!
                }
                if self.credentialInstanceId != nil {
                    map["CredentialInstanceId"] = self.credentialInstanceId!
                }
                if self.credentialNo != nil {
                    map["CredentialNo"] = self.credentialNo!
                }
                if self.credentialType != nil {
                    map["CredentialType"] = self.credentialType!
                }
                if self.dataLevel != nil {
                    map["DataLevel"] = self.dataLevel!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.directionalGroupId != nil {
                    map["DirectionalGroupId"] = self.directionalGroupId!
                }
                if self.directionalGroupName != nil {
                    map["DirectionalGroupName"] = self.directionalGroupName!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.iccid != nil {
                    map["Iccid"] = self.iccid!
                }
                if self.imsi != nil {
                    map["Imsi"] = self.imsi!
                }
                if self.isAutoRecharge != nil {
                    map["IsAutoRecharge"] = self.isAutoRecharge!
                }
                if self.msisdn != nil {
                    map["Msisdn"] = self.msisdn!
                }
                if self.notifyId != nil {
                    map["NotifyId"] = self.notifyId!
                }
                if self.openAccountTime != nil {
                    map["OpenAccountTime"] = self.openAccountTime!
                }
                if self.osStatus != nil {
                    map["OsStatus"] = self.osStatus!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.periodAddFlow != nil {
                    map["PeriodAddFlow"] = self.periodAddFlow!
                }
                if self.periodRestFlow != nil {
                    map["PeriodRestFlow"] = self.periodRestFlow!
                }
                if self.periodSmsUse != nil {
                    map["PeriodSmsUse"] = self.periodSmsUse!
                }
                if self.privateNetworkSegment != nil {
                    map["PrivateNetworkSegment"] = self.privateNetworkSegment!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.simType != nil {
                    map["SimType"] = self.simType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tagList != nil {
                    var tmp : [Any] = []
                    for k in self.tagList! {
                        tmp.append(k.toMap())
                    }
                    map["TagList"] = tmp
                }
                if self.vendor != nil {
                    map["Vendor"] = self.vendor!
                }
                if self.vsimInstanceId != nil {
                    map["VsimInstanceId"] = self.vsimInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActiveTime") && dict["ActiveTime"] != nil {
                    self.activeTime = dict["ActiveTime"] as! String
                }
                if dict.keys.contains("ActiveType") && dict["ActiveType"] != nil {
                    self.activeType = dict["ActiveType"] as! String
                }
                if dict.keys.contains("AliFee") && dict["AliFee"] != nil {
                    self.aliFee = dict["AliFee"] as! String
                }
                if dict.keys.contains("AliyunOrderId") && dict["AliyunOrderId"] != nil {
                    self.aliyunOrderId = dict["AliyunOrderId"] as! String
                }
                if dict.keys.contains("ApnName") && dict["ApnName"] != nil {
                    self.apnName = dict["ApnName"] as! String
                }
                if dict.keys.contains("CertifyType") && dict["CertifyType"] != nil {
                    self.certifyType = dict["CertifyType"] as! String
                }
                if dict.keys.contains("CredentialInstanceId") && dict["CredentialInstanceId"] != nil {
                    self.credentialInstanceId = dict["CredentialInstanceId"] as! String
                }
                if dict.keys.contains("CredentialNo") && dict["CredentialNo"] != nil {
                    self.credentialNo = dict["CredentialNo"] as! String
                }
                if dict.keys.contains("CredentialType") && dict["CredentialType"] != nil {
                    self.credentialType = dict["CredentialType"] as! String
                }
                if dict.keys.contains("DataLevel") && dict["DataLevel"] != nil {
                    self.dataLevel = dict["DataLevel"] as! String
                }
                if dict.keys.contains("DataType") && dict["DataType"] != nil {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("DirectionalGroupId") && dict["DirectionalGroupId"] != nil {
                    self.directionalGroupId = dict["DirectionalGroupId"] as! Int64
                }
                if dict.keys.contains("DirectionalGroupName") && dict["DirectionalGroupName"] != nil {
                    self.directionalGroupName = dict["DirectionalGroupName"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
                    self.iccid = dict["Iccid"] as! String
                }
                if dict.keys.contains("Imsi") && dict["Imsi"] != nil {
                    self.imsi = dict["Imsi"] as! [String]
                }
                if dict.keys.contains("IsAutoRecharge") && dict["IsAutoRecharge"] != nil {
                    self.isAutoRecharge = dict["IsAutoRecharge"] as! Bool
                }
                if dict.keys.contains("Msisdn") && dict["Msisdn"] != nil {
                    self.msisdn = dict["Msisdn"] as! [String]
                }
                if dict.keys.contains("NotifyId") && dict["NotifyId"] != nil {
                    self.notifyId = dict["NotifyId"] as! String
                }
                if dict.keys.contains("OpenAccountTime") && dict["OpenAccountTime"] != nil {
                    self.openAccountTime = dict["OpenAccountTime"] as! String
                }
                if dict.keys.contains("OsStatus") && dict["OsStatus"] != nil {
                    self.osStatus = dict["OsStatus"] as! String
                }
                if dict.keys.contains("Period") && dict["Period"] != nil {
                    self.period = dict["Period"] as! String
                }
                if dict.keys.contains("PeriodAddFlow") && dict["PeriodAddFlow"] != nil {
                    self.periodAddFlow = dict["PeriodAddFlow"] as! String
                }
                if dict.keys.contains("PeriodRestFlow") && dict["PeriodRestFlow"] != nil {
                    self.periodRestFlow = dict["PeriodRestFlow"] as! String
                }
                if dict.keys.contains("PeriodSmsUse") && dict["PeriodSmsUse"] != nil {
                    self.periodSmsUse = dict["PeriodSmsUse"] as! String
                }
                if dict.keys.contains("PrivateNetworkSegment") && dict["PrivateNetworkSegment"] != nil {
                    self.privateNetworkSegment = dict["PrivateNetworkSegment"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("SimType") && dict["SimType"] != nil {
                    self.simType = dict["SimType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TagList") && dict["TagList"] != nil {
                    var tmp : [ListCardInfoResponseBody.Data.List.TagList] = []
                    for v in dict["TagList"] as! [Any] {
                        var model = ListCardInfoResponseBody.Data.List.TagList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tagList = tmp
                }
                if dict.keys.contains("Vendor") && dict["Vendor"] != nil {
                    self.vendor = dict["Vendor"] as! String
                }
                if dict.keys.contains("VsimInstanceId") && dict["VsimInstanceId"] != nil {
                    self.vsimInstanceId = dict["VsimInstanceId"] as! Int64
                }
            }
        }
        public var list: [ListCardInfoResponseBody.Data.List]?

        public var pageCount: Int32?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [ListCardInfoResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = ListCardInfoResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListCardInfoResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListCardInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListCardInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCardInfoResponseBody?

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
            var model = ListCardInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDirectionalAddressRequest : Tea.TeaModel {
    public var groupId: String?

    public var pageNo: Int32?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListDirectionalAddressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var address: String?

            public var addressType: String?

            public var groupId: String?

            public var source: String?

            public var state: Int32?

            public override init() {
                super.init()
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
                if self.addressType != nil {
                    map["AddressType"] = self.addressType!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") && dict["Address"] != nil {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("AddressType") && dict["AddressType"] != nil {
                    self.addressType = dict["AddressType"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("Source") && dict["Source"] != nil {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! Int32
                }
            }
        }
        public var list: [ListDirectionalAddressResponseBody.Data.List]?

        public var pageCount: Int32?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [ListDirectionalAddressResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = ListDirectionalAddressResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListDirectionalAddressResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDirectionalAddressResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListDirectionalAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDirectionalAddressResponseBody?

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
            var model = ListDirectionalAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDirectionalDetailRequest : Tea.TeaModel {
    public var iccid: String?

    public var pageNo: Int32?

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
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListDirectionalDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PaginationResult : Tea.TeaModel {
            public class List : Tea.TeaModel {
                public var address: String?

                public var addressType: String?

                public var groupId: String?

                public var source: String?

                public var state: String?

                public override init() {
                    super.init()
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
                    if self.addressType != nil {
                        map["AddressType"] = self.addressType!
                    }
                    if self.groupId != nil {
                        map["GroupId"] = self.groupId!
                    }
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.state != nil {
                        map["State"] = self.state!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Address") && dict["Address"] != nil {
                        self.address = dict["Address"] as! String
                    }
                    if dict.keys.contains("AddressType") && dict["AddressType"] != nil {
                        self.addressType = dict["AddressType"] as! String
                    }
                    if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                        self.groupId = dict["GroupId"] as! String
                    }
                    if dict.keys.contains("Source") && dict["Source"] != nil {
                        self.source = dict["Source"] as! String
                    }
                    if dict.keys.contains("State") && dict["State"] != nil {
                        self.state = dict["State"] as! String
                    }
                }
            }
            public var list: [ListDirectionalDetailResponseBody.Data.PaginationResult.List]?

            public var pageCount: Int32?

            public var pageNo: Int32?

            public var pageSize: Int32?

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
                if self.list != nil {
                    var tmp : [Any] = []
                    for k in self.list! {
                        tmp.append(k.toMap())
                    }
                    map["List"] = tmp
                }
                if self.pageCount != nil {
                    map["PageCount"] = self.pageCount!
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("List") && dict["List"] != nil {
                    var tmp : [ListDirectionalDetailResponseBody.Data.PaginationResult.List] = []
                    for v in dict["List"] as! [Any] {
                        var model = ListDirectionalDetailResponseBody.Data.PaginationResult.List()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.list = tmp
                }
                if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                    self.pageCount = dict["PageCount"] as! Int32
                }
                if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                    self.pageNo = dict["PageNo"] as! Int32
                }
                if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("Total") && dict["Total"] != nil {
                    self.total = dict["Total"] as! Int32
                }
            }
        }
        public var directionalGroupId: Int64?

        public var directionalName: String?

        public var paginationResult: ListDirectionalDetailResponseBody.Data.PaginationResult?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.paginationResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.directionalGroupId != nil {
                map["DirectionalGroupId"] = self.directionalGroupId!
            }
            if self.directionalName != nil {
                map["DirectionalName"] = self.directionalName!
            }
            if self.paginationResult != nil {
                map["PaginationResult"] = self.paginationResult?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DirectionalGroupId") && dict["DirectionalGroupId"] != nil {
                self.directionalGroupId = dict["DirectionalGroupId"] as! Int64
            }
            if dict.keys.contains("DirectionalName") && dict["DirectionalName"] != nil {
                self.directionalName = dict["DirectionalName"] as! String
            }
            if dict.keys.contains("PaginationResult") && dict["PaginationResult"] != nil {
                var model = ListDirectionalDetailResponseBody.Data.PaginationResult()
                model.fromMap(dict["PaginationResult"] as! [String: Any])
                self.paginationResult = model
            }
        }
    }
    public var code: String?

    public var data: ListDirectionalDetailResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDirectionalDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListDirectionalDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDirectionalDetailResponseBody?

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
            var model = ListDirectionalDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrderRequest : Tea.TeaModel {
    public var credentialNo: String?

    public var endDate: String?

    public var orderId: String?

    public var orderStatus: String?

    public var orderType: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var startDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialNo != nil {
            map["CredentialNo"] = self.credentialNo!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialNo") && dict["CredentialNo"] != nil {
            self.credentialNo = dict["CredentialNo"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("OrderStatus") && dict["OrderStatus"] != nil {
            self.orderStatus = dict["OrderStatus"] as! String
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class ListOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class DeliveryInfo : Tea.TeaModel {
                public var address: String?

                public var buyerMessage: String?

                public var mail: String?

                public var receiver: String?

                public var zipCode: String?

                public override init() {
                    super.init()
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
                    if self.buyerMessage != nil {
                        map["BuyerMessage"] = self.buyerMessage!
                    }
                    if self.mail != nil {
                        map["Mail"] = self.mail!
                    }
                    if self.receiver != nil {
                        map["Receiver"] = self.receiver!
                    }
                    if self.zipCode != nil {
                        map["ZipCode"] = self.zipCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Address") && dict["Address"] != nil {
                        self.address = dict["Address"] as! String
                    }
                    if dict.keys.contains("BuyerMessage") && dict["BuyerMessage"] != nil {
                        self.buyerMessage = dict["BuyerMessage"] as! String
                    }
                    if dict.keys.contains("Mail") && dict["Mail"] != nil {
                        self.mail = dict["Mail"] as! String
                    }
                    if dict.keys.contains("Receiver") && dict["Receiver"] != nil {
                        self.receiver = dict["Receiver"] as! String
                    }
                    if dict.keys.contains("ZipCode") && dict["ZipCode"] != nil {
                        self.zipCode = dict["ZipCode"] as! String
                    }
                }
            }
            public var aliFee: String?

            public var apnName: String?

            public var apnRegion: String?

            public var billingCycle: String?

            public var buyNum: Int32?

            public var cardPayCount: Int32?

            public var credentialNo: String?

            public var credentialPackage: String?

            public var dataLevel: String?

            public var deliveryInfo: ListOrderResponseBody.Data.List.DeliveryInfo?

            public var expressNoList: [String]?

            public var flowType: String?

            public var functionFee: Int32?

            public var orderDetailUrl: String?

            public var orderId: String?

            public var orderInfo: String?

            public var orderStatus: String?

            public var orderType: String?

            public var payDuration: String?

            public var payTime: String?

            public var poolCapacity: String?

            public var poolCapacityUnit: String?

            public var poolNo: String?

            public var resourceQuantity: Int64?

            public var vendor: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.deliveryInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliFee != nil {
                    map["AliFee"] = self.aliFee!
                }
                if self.apnName != nil {
                    map["ApnName"] = self.apnName!
                }
                if self.apnRegion != nil {
                    map["ApnRegion"] = self.apnRegion!
                }
                if self.billingCycle != nil {
                    map["BillingCycle"] = self.billingCycle!
                }
                if self.buyNum != nil {
                    map["BuyNum"] = self.buyNum!
                }
                if self.cardPayCount != nil {
                    map["CardPayCount"] = self.cardPayCount!
                }
                if self.credentialNo != nil {
                    map["CredentialNo"] = self.credentialNo!
                }
                if self.credentialPackage != nil {
                    map["CredentialPackage"] = self.credentialPackage!
                }
                if self.dataLevel != nil {
                    map["DataLevel"] = self.dataLevel!
                }
                if self.deliveryInfo != nil {
                    map["DeliveryInfo"] = self.deliveryInfo?.toMap()
                }
                if self.expressNoList != nil {
                    map["ExpressNoList"] = self.expressNoList!
                }
                if self.flowType != nil {
                    map["FlowType"] = self.flowType!
                }
                if self.functionFee != nil {
                    map["FunctionFee"] = self.functionFee!
                }
                if self.orderDetailUrl != nil {
                    map["OrderDetailUrl"] = self.orderDetailUrl!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.orderInfo != nil {
                    map["OrderInfo"] = self.orderInfo!
                }
                if self.orderStatus != nil {
                    map["OrderStatus"] = self.orderStatus!
                }
                if self.orderType != nil {
                    map["OrderType"] = self.orderType!
                }
                if self.payDuration != nil {
                    map["PayDuration"] = self.payDuration!
                }
                if self.payTime != nil {
                    map["PayTime"] = self.payTime!
                }
                if self.poolCapacity != nil {
                    map["PoolCapacity"] = self.poolCapacity!
                }
                if self.poolCapacityUnit != nil {
                    map["PoolCapacityUnit"] = self.poolCapacityUnit!
                }
                if self.poolNo != nil {
                    map["PoolNo"] = self.poolNo!
                }
                if self.resourceQuantity != nil {
                    map["ResourceQuantity"] = self.resourceQuantity!
                }
                if self.vendor != nil {
                    map["Vendor"] = self.vendor!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliFee") && dict["AliFee"] != nil {
                    self.aliFee = dict["AliFee"] as! String
                }
                if dict.keys.contains("ApnName") && dict["ApnName"] != nil {
                    self.apnName = dict["ApnName"] as! String
                }
                if dict.keys.contains("ApnRegion") && dict["ApnRegion"] != nil {
                    self.apnRegion = dict["ApnRegion"] as! String
                }
                if dict.keys.contains("BillingCycle") && dict["BillingCycle"] != nil {
                    self.billingCycle = dict["BillingCycle"] as! String
                }
                if dict.keys.contains("BuyNum") && dict["BuyNum"] != nil {
                    self.buyNum = dict["BuyNum"] as! Int32
                }
                if dict.keys.contains("CardPayCount") && dict["CardPayCount"] != nil {
                    self.cardPayCount = dict["CardPayCount"] as! Int32
                }
                if dict.keys.contains("CredentialNo") && dict["CredentialNo"] != nil {
                    self.credentialNo = dict["CredentialNo"] as! String
                }
                if dict.keys.contains("CredentialPackage") && dict["CredentialPackage"] != nil {
                    self.credentialPackage = dict["CredentialPackage"] as! String
                }
                if dict.keys.contains("DataLevel") && dict["DataLevel"] != nil {
                    self.dataLevel = dict["DataLevel"] as! String
                }
                if dict.keys.contains("DeliveryInfo") && dict["DeliveryInfo"] != nil {
                    var model = ListOrderResponseBody.Data.List.DeliveryInfo()
                    model.fromMap(dict["DeliveryInfo"] as! [String: Any])
                    self.deliveryInfo = model
                }
                if dict.keys.contains("ExpressNoList") && dict["ExpressNoList"] != nil {
                    self.expressNoList = dict["ExpressNoList"] as! [String]
                }
                if dict.keys.contains("FlowType") && dict["FlowType"] != nil {
                    self.flowType = dict["FlowType"] as! String
                }
                if dict.keys.contains("FunctionFee") && dict["FunctionFee"] != nil {
                    self.functionFee = dict["FunctionFee"] as! Int32
                }
                if dict.keys.contains("OrderDetailUrl") && dict["OrderDetailUrl"] != nil {
                    self.orderDetailUrl = dict["OrderDetailUrl"] as! String
                }
                if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("OrderInfo") && dict["OrderInfo"] != nil {
                    self.orderInfo = dict["OrderInfo"] as! String
                }
                if dict.keys.contains("OrderStatus") && dict["OrderStatus"] != nil {
                    self.orderStatus = dict["OrderStatus"] as! String
                }
                if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
                    self.orderType = dict["OrderType"] as! String
                }
                if dict.keys.contains("PayDuration") && dict["PayDuration"] != nil {
                    self.payDuration = dict["PayDuration"] as! String
                }
                if dict.keys.contains("PayTime") && dict["PayTime"] != nil {
                    self.payTime = dict["PayTime"] as! String
                }
                if dict.keys.contains("PoolCapacity") && dict["PoolCapacity"] != nil {
                    self.poolCapacity = dict["PoolCapacity"] as! String
                }
                if dict.keys.contains("PoolCapacityUnit") && dict["PoolCapacityUnit"] != nil {
                    self.poolCapacityUnit = dict["PoolCapacityUnit"] as! String
                }
                if dict.keys.contains("PoolNo") && dict["PoolNo"] != nil {
                    self.poolNo = dict["PoolNo"] as! String
                }
                if dict.keys.contains("ResourceQuantity") && dict["ResourceQuantity"] != nil {
                    self.resourceQuantity = dict["ResourceQuantity"] as! Int64
                }
                if dict.keys.contains("Vendor") && dict["Vendor"] != nil {
                    self.vendor = dict["Vendor"] as! String
                }
            }
        }
        public var list: [ListOrderResponseBody.Data.List]?

        public var pageCount: Int32?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [ListOrderResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = ListOrderResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListOrderResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrderResponseBody?

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
            var model = ListOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebindResumeSingleCardRequest : Tea.TeaModel {
    public var iccid: String?

    public var optMsisdns: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.optMsisdns != nil {
            map["OptMsisdns"] = self.optMsisdns!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") && dict["OptMsisdns"] != nil {
            self.optMsisdns = dict["OptMsisdns"] as! [String]
        }
    }
}

public class RebindResumeSingleCardShrinkRequest : Tea.TeaModel {
    public var iccid: String?

    public var optMsisdnsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.optMsisdnsShrink != nil {
            map["OptMsisdns"] = self.optMsisdnsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") && dict["OptMsisdns"] != nil {
            self.optMsisdnsShrink = dict["OptMsisdns"] as! String
        }
    }
}

public class RebindResumeSingleCardResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RebindResumeSingleCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebindResumeSingleCardResponseBody?

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
            var model = RebindResumeSingleCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewRequest : Tea.TeaModel {
    public var apiProduct: String?

    public var apiRevision: String?

    public var buyNum: Int32?

    public var iccid: String?

    public var offerCode: String?

    public var rechargeType: String?

    public var serialNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiProduct != nil {
            map["ApiProduct"] = self.apiProduct!
        }
        if self.apiRevision != nil {
            map["ApiRevision"] = self.apiRevision!
        }
        if self.buyNum != nil {
            map["BuyNum"] = self.buyNum!
        }
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.offerCode != nil {
            map["OfferCode"] = self.offerCode!
        }
        if self.rechargeType != nil {
            map["RechargeType"] = self.rechargeType!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiProduct") && dict["ApiProduct"] != nil {
            self.apiProduct = dict["ApiProduct"] as! String
        }
        if dict.keys.contains("ApiRevision") && dict["ApiRevision"] != nil {
            self.apiRevision = dict["ApiRevision"] as! String
        }
        if dict.keys.contains("BuyNum") && dict["BuyNum"] != nil {
            self.buyNum = dict["BuyNum"] as! Int32
        }
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OfferCode") && dict["OfferCode"] != nil {
            self.offerCode = dict["OfferCode"] as! String
        }
        if dict.keys.contains("RechargeType") && dict["RechargeType"] != nil {
            self.rechargeType = dict["RechargeType"] as! String
        }
        if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class RenewResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderNo: String?

        public var serialNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderNo != nil {
                map["OrderNo"] = self.orderNo!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderNo") && dict["OrderNo"] != nil {
                self.orderNo = dict["OrderNo"] as! String
            }
            if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
                self.serialNo = dict["SerialNo"] as! String
            }
        }
    }
    public var code: String?

    public var data: RenewResponseBody.Data?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = RenewResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RenewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewResponseBody?

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
            var model = RenewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeSingleCardRequest : Tea.TeaModel {
    public var iccid: String?

    public var optMsisdns: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.optMsisdns != nil {
            map["OptMsisdns"] = self.optMsisdns!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") && dict["OptMsisdns"] != nil {
            self.optMsisdns = dict["OptMsisdns"] as! [String]
        }
    }
}

public class ResumeSingleCardShrinkRequest : Tea.TeaModel {
    public var iccid: String?

    public var optMsisdnsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.optMsisdnsShrink != nil {
            map["OptMsisdns"] = self.optMsisdnsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") && dict["OptMsisdns"] != nil {
            self.optMsisdnsShrink = dict["OptMsisdns"] as! String
        }
    }
}

public class ResumeSingleCardResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ResumeSingleCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeSingleCardResponseBody?

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
            var model = ResumeSingleCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetCardStopRuleRequest : Tea.TeaModel {
    public var autoRestore: Bool?

    public var flowLimit: Int64?

    public var iccid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRestore != nil {
            map["AutoRestore"] = self.autoRestore!
        }
        if self.flowLimit != nil {
            map["FlowLimit"] = self.flowLimit!
        }
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRestore") && dict["AutoRestore"] != nil {
            self.autoRestore = dict["AutoRestore"] as! Bool
        }
        if dict.keys.contains("FlowLimit") && dict["FlowLimit"] != nil {
            self.flowLimit = dict["FlowLimit"] as! Int64
        }
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
    }
}

public class SetCardStopRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SetCardStopRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetCardStopRuleResponseBody?

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
            var model = SetCardStopRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopSingleCardRequest : Tea.TeaModel {
    public var iccid: String?

    public var optMsisdns: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.optMsisdns != nil {
            map["OptMsisdns"] = self.optMsisdns!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") && dict["OptMsisdns"] != nil {
            self.optMsisdns = dict["OptMsisdns"] as! [String]
        }
    }
}

public class StopSingleCardShrinkRequest : Tea.TeaModel {
    public var iccid: String?

    public var optMsisdnsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.optMsisdnsShrink != nil {
            map["OptMsisdns"] = self.optMsisdnsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") && dict["OptMsisdns"] != nil {
            self.optMsisdnsShrink = dict["OptMsisdns"] as! String
        }
    }
}

public class StopSingleCardResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StopSingleCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopSingleCardResponseBody?

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
            var model = StopSingleCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAutoRechargeSwitchRequest : Tea.TeaModel {
    public var iccid: String?

    public var open_: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        if self.open_ != nil {
            map["Open"] = self.open_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("Open") && dict["Open"] != nil {
            self.open_ = dict["Open"] as! Bool
        }
    }
}

public class UpdateAutoRechargeSwitchResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateAutoRechargeSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAutoRechargeSwitchResponseBody?

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
            var model = UpdateAutoRechargeSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyIotCardRequest : Tea.TeaModel {
    public var iccid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iccid != nil {
            map["Iccid"] = self.iccid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Iccid") && dict["Iccid"] != nil {
            self.iccid = dict["Iccid"] as! String
        }
    }
}

public class VerifyIotCardResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMessage: String?

    public var localizedMessage: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") && dict["LocalizedMessage"] != nil {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class VerifyIotCardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyIotCardResponseBody?

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
            var model = VerifyIotCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
