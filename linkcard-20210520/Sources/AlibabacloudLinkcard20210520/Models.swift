import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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
        if dict.keys.contains("FileUri") {
            self.fileUri = dict["FileUri"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("OrderList") {
            self.orderList = dict["OrderList"] as! [String]
        }
        if dict.keys.contains("TagList") {
            self.tagList = dict["TagList"] as! [String]
        }
        if dict.keys.contains("UploadMethod") {
            self.uploadMethod = dict["UploadMethod"] as! String
        }
        if dict.keys.contains("UploadType") {
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
        if dict.keys.contains("FileUri") {
            self.fileUri = dict["FileUri"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("OrderList") {
            self.orderListShrink = dict["OrderList"] as! String
        }
        if dict.keys.contains("TagList") {
            self.tagListShrink = dict["TagList"] as! String
        }
        if dict.keys.contains("UploadMethod") {
            self.uploadMethod = dict["UploadMethod"] as! String
        }
        if dict.keys.contains("UploadType") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("GroupName") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddDirectionalGroupResponseBody()
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
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! Int64
        }
        if dict.keys.contains("ListAddress") {
            self.listAddress = dict["ListAddress"] as! [String]
        }
        if dict.keys.contains("Source") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchAddDirectionalAddressResponseBody()
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
        if dict.keys.contains("DateType") {
            self.dateType = dict["DateType"] as! String
        }
        if dict.keys.contains("Iccid") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DestroyCard") {
            self.destroyCard = dict["DestroyCard"] as! Bool
        }
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ShowPsim") {
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
                if dict.keys.contains("ApnName") {
                    self.apnName = dict["ApnName"] as! String
                }
                if dict.keys.contains("CertifyStatus") {
                    self.certifyStatus = dict["CertifyStatus"] as! String
                }
                if dict.keys.contains("Iccid") {
                    self.iccid = dict["Iccid"] as! String
                }
                if dict.keys.contains("Imsi") {
                    self.imsi = dict["Imsi"] as! [String]
                }
                if dict.keys.contains("Ip") {
                    self.ip = dict["Ip"] as! [String]
                }
                if dict.keys.contains("Msisdn") {
                    self.msisdn = dict["Msisdn"] as! [String]
                }
                if dict.keys.contains("OpenSms") {
                    self.openSms = dict["OpenSms"] as! Bool
                }
                if dict.keys.contains("OsStatus") {
                    self.osStatus = dict["OsStatus"] as! String
                }
                if dict.keys.contains("PeriodAddFlow") {
                    self.periodAddFlow = dict["PeriodAddFlow"] as! String
                }
                if dict.keys.contains("PeriodSmsUse") {
                    self.periodSmsUse = dict["PeriodSmsUse"] as! String
                }
                if dict.keys.contains("PrivateNetworkSegment") {
                    self.privateNetworkSegment = dict["PrivateNetworkSegment"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Vendor") {
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
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("TagName") {
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
                if dict.keys.contains("ActiveTime") {
                    self.activeTime = dict["ActiveTime"] as! String
                }
                if dict.keys.contains("ActiveType") {
                    self.activeType = dict["ActiveType"] as! String
                }
                if dict.keys.contains("AliFee") {
                    self.aliFee = dict["AliFee"] as! String
                }
                if dict.keys.contains("AliyunOrderId") {
                    self.aliyunOrderId = dict["AliyunOrderId"] as! String
                }
                if dict.keys.contains("ApnName") {
                    self.apnName = dict["ApnName"] as! String
                }
                if dict.keys.contains("AutoLimitResume") {
                    self.autoLimitResume = dict["AutoLimitResume"] as! Bool
                }
                if dict.keys.contains("AutoRebindReuse") {
                    self.autoRebindReuse = dict["AutoRebindReuse"] as! Bool
                }
                if dict.keys.contains("CardLimitSpeedThreshold") {
                    self.cardLimitSpeedThreshold = dict["CardLimitSpeedThreshold"] as! Int32
                }
                if dict.keys.contains("CardLimitStopThreshold") {
                    self.cardLimitStopThreshold = dict["CardLimitStopThreshold"] as! Int32
                }
                if dict.keys.contains("CertifyStatus") {
                    self.certifyStatus = dict["CertifyStatus"] as! String
                }
                if dict.keys.contains("CertifyType") {
                    self.certifyType = dict["CertifyType"] as! String
                }
                if dict.keys.contains("CredentialInstanceId") {
                    self.credentialInstanceId = dict["CredentialInstanceId"] as! String
                }
                if dict.keys.contains("CredentialLimitSpeedThreshold") {
                    self.credentialLimitSpeedThreshold = dict["CredentialLimitSpeedThreshold"] as! Int32
                }
                if dict.keys.contains("CredentialLimitStopThreshold") {
                    self.credentialLimitStopThreshold = dict["CredentialLimitStopThreshold"] as! Int32
                }
                if dict.keys.contains("CredentialNo") {
                    self.credentialNo = dict["CredentialNo"] as! String
                }
                if dict.keys.contains("CredentialType") {
                    self.credentialType = dict["CredentialType"] as! String
                }
                if dict.keys.contains("DataLevel") {
                    self.dataLevel = dict["DataLevel"] as! String
                }
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("DeviceImei") {
                    self.deviceImei = dict["DeviceImei"] as! String
                }
                if dict.keys.contains("DirectionalGroupId") {
                    self.directionalGroupId = dict["DirectionalGroupId"] as! String
                }
                if dict.keys.contains("DirectionalGroupName") {
                    self.directionalGroupName = dict["DirectionalGroupName"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("FlowThresholdUnit") {
                    self.flowThresholdUnit = dict["FlowThresholdUnit"] as! String
                }
                if dict.keys.contains("Iccid") {
                    self.iccid = dict["Iccid"] as! String
                }
                if dict.keys.contains("Imsi") {
                    self.imsi = dict["Imsi"] as! [String]
                }
                if dict.keys.contains("Ip") {
                    self.ip = dict["Ip"] as! [String]
                }
                if dict.keys.contains("IsAutoRecharge") {
                    self.isAutoRecharge = dict["IsAutoRecharge"] as! Bool
                }
                if dict.keys.contains("Msisdn") {
                    self.msisdn = dict["Msisdn"] as! [String]
                }
                if dict.keys.contains("NotifyId") {
                    self.notifyId = dict["NotifyId"] as! String
                }
                if dict.keys.contains("OpenAccountTime") {
                    self.openAccountTime = dict["OpenAccountTime"] as! String
                }
                if dict.keys.contains("OpenSms") {
                    self.openSms = dict["OpenSms"] as! Bool
                }
                if dict.keys.contains("OsStatus") {
                    self.osStatus = dict["OsStatus"] as! String
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! String
                }
                if dict.keys.contains("PeriodAddFlow") {
                    self.periodAddFlow = dict["PeriodAddFlow"] as! String
                }
                if dict.keys.contains("PeriodRestFlow") {
                    self.periodRestFlow = dict["PeriodRestFlow"] as! String
                }
                if dict.keys.contains("PeriodSmsUse") {
                    self.periodSmsUse = dict["PeriodSmsUse"] as! String
                }
                if dict.keys.contains("PrivateNetworkSegment") {
                    self.privateNetworkSegment = dict["PrivateNetworkSegment"] as! String
                }
                if dict.keys.contains("SimType") {
                    self.simType = dict["SimType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TagList") {
                    self.tagList = dict["TagList"] as! [GetCardDetailResponseBody.Data.VsimCardInfo.TagList]
                }
                if dict.keys.contains("Vendor") {
                    self.vendor = dict["Vendor"] as! String
                }
                if dict.keys.contains("VsimInstanceId") {
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
            if dict.keys.contains("ListPsimCards") {
                self.listPsimCards = dict["ListPsimCards"] as! [GetCardDetailResponseBody.Data.ListPsimCards]
            }
            if dict.keys.contains("VsimCardInfo") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCardDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DateList") {
            self.dateList = dict["DateList"] as! [String]
        }
        if dict.keys.contains("Iccid") {
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
                    if dict.keys.contains("Day") {
                        self.day = dict["Day"] as! String
                    }
                    if dict.keys.contains("Flow") {
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
                if dict.keys.contains("FlowCount") {
                    self.flowCount = dict["FlowCount"] as! String
                }
                if dict.keys.contains("ListDayFlow") {
                    self.listDayFlow = dict["ListDayFlow"] as! [GetCardFlowInfoResponseBody.Data.ListCardMonthFlow.ListDayFlow]
                }
                if dict.keys.contains("Month") {
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
                if dict.keys.contains("EffectiveTime") {
                    self.effectiveTime = dict["EffectiveTime"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("PackageName") {
                    self.packageName = dict["PackageName"] as! String
                }
                if dict.keys.contains("Remark") {
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
                if dict.keys.contains("NetWorkDelay") {
                    self.netWorkDelay = dict["NetWorkDelay"] as! String
                }
                if dict.keys.contains("Ratio") {
                    self.ratio = dict["Ratio"] as! String
                }
                if dict.keys.contains("SignalStrength") {
                    self.signalStrength = dict["SignalStrength"] as! String
                }
                if dict.keys.contains("UsedFlow") {
                    self.usedFlow = dict["UsedFlow"] as! String
                }
                if dict.keys.contains("Vendor") {
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
            if dict.keys.contains("ListCardMonthFlow") {
                self.listCardMonthFlow = dict["ListCardMonthFlow"] as! [GetCardFlowInfoResponseBody.Data.ListCardMonthFlow]
            }
            if dict.keys.contains("ListPackageDTO") {
                self.listPackageDTO = dict["ListPackageDTO"] as! [GetCardFlowInfoResponseBody.Data.ListPackageDTO]
            }
            if dict.keys.contains("ListVendorDetail") {
                self.listVendorDetail = dict["ListVendorDetail"] as! [GetCardFlowInfoResponseBody.Data.ListVendorDetail]
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCardFlowInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCardFlowInfoResponseBody()
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
        if dict.keys.contains("CredentialNO") {
            self.credentialNO = dict["CredentialNO"] as! String
        }
        if dict.keys.contains("Date") {
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
            if dict.keys.contains("CardActiveNum") {
                self.cardActiveNum = dict["CardActiveNum"] as! Int64
            }
            if dict.keys.contains("CardTotalNum") {
                self.cardTotalNum = dict["CardTotalNum"] as! Int64
            }
            if dict.keys.contains("CredentialInstanceId") {
                self.credentialInstanceId = dict["CredentialInstanceId"] as! String
            }
            if dict.keys.contains("CredentialNO") {
                self.credentialNO = dict["CredentialNO"] as! String
            }
            if dict.keys.contains("CredentialType") {
                self.credentialType = dict["CredentialType"] as! String
            }
            if dict.keys.contains("EffectiveAvailableFlow") {
                self.effectiveAvailableFlow = dict["EffectiveAvailableFlow"] as! String
            }
            if dict.keys.contains("EffectiveTotalFlow") {
                self.effectiveTotalFlow = dict["EffectiveTotalFlow"] as! String
            }
            if dict.keys.contains("MonthFeatureFee") {
                self.monthFeatureFee = dict["MonthFeatureFee"] as! Int64
            }
            if dict.keys.contains("MonthUsedAmount") {
                self.monthUsedAmount = dict["MonthUsedAmount"] as! Int64
            }
            if dict.keys.contains("PoolAvaiable") {
                self.poolAvaiable = dict["PoolAvaiable"] as! String
            }
            if dict.keys.contains("PoolGrandTotal") {
                self.poolGrandTotal = dict["PoolGrandTotal"] as! String
            }
            if dict.keys.contains("PoolGrandTotalUsed") {
                self.poolGrandTotalUsed = dict["PoolGrandTotalUsed"] as! String
            }
            if dict.keys.contains("PoolOutUsed") {
                self.poolOutUsed = dict["PoolOutUsed"] as! String
            }
            if dict.keys.contains("PoolUsed") {
                self.poolUsed = dict["PoolUsed"] as! String
            }
            if dict.keys.contains("SmsUsed") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCredentialPoolStatisticsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCredentialPoolStatisticsResponseBody()
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
        if dict.keys.contains("ActiveTimeEnd") {
            self.activeTimeEnd = dict["ActiveTimeEnd"] as! String
        }
        if dict.keys.contains("ActiveTimeStart") {
            self.activeTimeStart = dict["ActiveTimeStart"] as! String
        }
        if dict.keys.contains("AliFee") {
            self.aliFee = dict["AliFee"] as! String
        }
        if dict.keys.contains("AliyunOrderId") {
            self.aliyunOrderId = dict["AliyunOrderId"] as! String
        }
        if dict.keys.contains("ApnName") {
            self.apnName = dict["ApnName"] as! String
        }
        if dict.keys.contains("CertifyType") {
            self.certifyType = dict["CertifyType"] as! String
        }
        if dict.keys.contains("CredentialNo") {
            self.credentialNo = dict["CredentialNo"] as! String
        }
        if dict.keys.contains("DataLevel") {
            self.dataLevel = dict["DataLevel"] as! String
        }
        if dict.keys.contains("DataType") {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("DirectionalGroupId") {
            self.directionalGroupId = dict["DirectionalGroupId"] as! String
        }
        if dict.keys.contains("ExpireTimeEnd") {
            self.expireTimeEnd = dict["ExpireTimeEnd"] as! String
        }
        if dict.keys.contains("ExpireTimeStart") {
            self.expireTimeStart = dict["ExpireTimeStart"] as! String
        }
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("Imsi") {
            self.imsi = dict["Imsi"] as! String
        }
        if dict.keys.contains("IsAutoRecharge") {
            self.isAutoRecharge = dict["IsAutoRecharge"] as! Bool
        }
        if dict.keys.contains("MaxFlow") {
            self.maxFlow = dict["MaxFlow"] as! String
        }
        if dict.keys.contains("MaxRestFlowPercentage") {
            self.maxRestFlowPercentage = dict["MaxRestFlowPercentage"] as! Double
        }
        if dict.keys.contains("MinFlow") {
            self.minFlow = dict["MinFlow"] as! String
        }
        if dict.keys.contains("Msisdn") {
            self.msisdn = dict["Msisdn"] as! String
        }
        if dict.keys.contains("NotifyId") {
            self.notifyId = dict["NotifyId"] as! String
        }
        if dict.keys.contains("OsStatus") {
            self.osStatus = dict["OsStatus"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("PoolId") {
            self.poolId = dict["PoolId"] as! String
        }
        if dict.keys.contains("SimType") {
            self.simType = dict["SimType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
        if dict.keys.contains("Vendor") {
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
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("TagName") {
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
                if dict.keys.contains("ActiveTime") {
                    self.activeTime = dict["ActiveTime"] as! String
                }
                if dict.keys.contains("ActiveType") {
                    self.activeType = dict["ActiveType"] as! String
                }
                if dict.keys.contains("AliFee") {
                    self.aliFee = dict["AliFee"] as! String
                }
                if dict.keys.contains("AliyunOrderId") {
                    self.aliyunOrderId = dict["AliyunOrderId"] as! String
                }
                if dict.keys.contains("ApnName") {
                    self.apnName = dict["ApnName"] as! String
                }
                if dict.keys.contains("CertifyType") {
                    self.certifyType = dict["CertifyType"] as! String
                }
                if dict.keys.contains("CredentialInstanceId") {
                    self.credentialInstanceId = dict["CredentialInstanceId"] as! String
                }
                if dict.keys.contains("CredentialNo") {
                    self.credentialNo = dict["CredentialNo"] as! String
                }
                if dict.keys.contains("CredentialType") {
                    self.credentialType = dict["CredentialType"] as! String
                }
                if dict.keys.contains("DataLevel") {
                    self.dataLevel = dict["DataLevel"] as! String
                }
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("DirectionalGroupId") {
                    self.directionalGroupId = dict["DirectionalGroupId"] as! Int64
                }
                if dict.keys.contains("DirectionalGroupName") {
                    self.directionalGroupName = dict["DirectionalGroupName"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("Iccid") {
                    self.iccid = dict["Iccid"] as! String
                }
                if dict.keys.contains("Imsi") {
                    self.imsi = dict["Imsi"] as! [String]
                }
                if dict.keys.contains("IsAutoRecharge") {
                    self.isAutoRecharge = dict["IsAutoRecharge"] as! Bool
                }
                if dict.keys.contains("Msisdn") {
                    self.msisdn = dict["Msisdn"] as! [String]
                }
                if dict.keys.contains("NotifyId") {
                    self.notifyId = dict["NotifyId"] as! String
                }
                if dict.keys.contains("OpenAccountTime") {
                    self.openAccountTime = dict["OpenAccountTime"] as! String
                }
                if dict.keys.contains("OsStatus") {
                    self.osStatus = dict["OsStatus"] as! String
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! String
                }
                if dict.keys.contains("PeriodAddFlow") {
                    self.periodAddFlow = dict["PeriodAddFlow"] as! String
                }
                if dict.keys.contains("PeriodRestFlow") {
                    self.periodRestFlow = dict["PeriodRestFlow"] as! String
                }
                if dict.keys.contains("PeriodSmsUse") {
                    self.periodSmsUse = dict["PeriodSmsUse"] as! String
                }
                if dict.keys.contains("PrivateNetworkSegment") {
                    self.privateNetworkSegment = dict["PrivateNetworkSegment"] as! String
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("SimType") {
                    self.simType = dict["SimType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TagList") {
                    self.tagList = dict["TagList"] as! [ListCardInfoResponseBody.Data.List.TagList]
                }
                if dict.keys.contains("Vendor") {
                    self.vendor = dict["Vendor"] as! String
                }
                if dict.keys.contains("VsimInstanceId") {
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
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListCardInfoResponseBody.Data.List]
            }
            if dict.keys.contains("PageCount") {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListCardInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
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
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("AddressType") {
                    self.addressType = dict["AddressType"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("State") {
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
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListDirectionalAddressResponseBody.Data.List]
            }
            if dict.keys.contains("PageCount") {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListDirectionalAddressResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
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
                    if dict.keys.contains("Address") {
                        self.address = dict["Address"] as! String
                    }
                    if dict.keys.contains("AddressType") {
                        self.addressType = dict["AddressType"] as! String
                    }
                    if dict.keys.contains("GroupId") {
                        self.groupId = dict["GroupId"] as! String
                    }
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! String
                    }
                    if dict.keys.contains("State") {
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
                if dict.keys.contains("List") {
                    self.list = dict["List"] as! [ListDirectionalDetailResponseBody.Data.PaginationResult.List]
                }
                if dict.keys.contains("PageCount") {
                    self.pageCount = dict["PageCount"] as! Int32
                }
                if dict.keys.contains("PageNo") {
                    self.pageNo = dict["PageNo"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("Total") {
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
            if dict.keys.contains("DirectionalGroupId") {
                self.directionalGroupId = dict["DirectionalGroupId"] as! Int64
            }
            if dict.keys.contains("DirectionalName") {
                self.directionalName = dict["DirectionalName"] as! String
            }
            if dict.keys.contains("PaginationResult") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListDirectionalDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDirectionalDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrderRequest : Tea.TeaModel {
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
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("OrderStatus") {
            self.orderStatus = dict["OrderStatus"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartDate") {
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
                    if dict.keys.contains("Address") {
                        self.address = dict["Address"] as! String
                    }
                    if dict.keys.contains("BuyerMessage") {
                        self.buyerMessage = dict["BuyerMessage"] as! String
                    }
                    if dict.keys.contains("Mail") {
                        self.mail = dict["Mail"] as! String
                    }
                    if dict.keys.contains("Receiver") {
                        self.receiver = dict["Receiver"] as! String
                    }
                    if dict.keys.contains("ZipCode") {
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
                if dict.keys.contains("AliFee") {
                    self.aliFee = dict["AliFee"] as! String
                }
                if dict.keys.contains("ApnName") {
                    self.apnName = dict["ApnName"] as! String
                }
                if dict.keys.contains("ApnRegion") {
                    self.apnRegion = dict["ApnRegion"] as! String
                }
                if dict.keys.contains("BillingCycle") {
                    self.billingCycle = dict["BillingCycle"] as! String
                }
                if dict.keys.contains("BuyNum") {
                    self.buyNum = dict["BuyNum"] as! Int32
                }
                if dict.keys.contains("CardPayCount") {
                    self.cardPayCount = dict["CardPayCount"] as! Int32
                }
                if dict.keys.contains("CredentialNo") {
                    self.credentialNo = dict["CredentialNo"] as! String
                }
                if dict.keys.contains("CredentialPackage") {
                    self.credentialPackage = dict["CredentialPackage"] as! String
                }
                if dict.keys.contains("DataLevel") {
                    self.dataLevel = dict["DataLevel"] as! String
                }
                if dict.keys.contains("DeliveryInfo") {
                    var model = ListOrderResponseBody.Data.List.DeliveryInfo()
                    model.fromMap(dict["DeliveryInfo"] as! [String: Any])
                    self.deliveryInfo = model
                }
                if dict.keys.contains("ExpressNoList") {
                    self.expressNoList = dict["ExpressNoList"] as! [String]
                }
                if dict.keys.contains("FlowType") {
                    self.flowType = dict["FlowType"] as! String
                }
                if dict.keys.contains("FunctionFee") {
                    self.functionFee = dict["FunctionFee"] as! Int32
                }
                if dict.keys.contains("OrderDetailUrl") {
                    self.orderDetailUrl = dict["OrderDetailUrl"] as! String
                }
                if dict.keys.contains("OrderId") {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("OrderInfo") {
                    self.orderInfo = dict["OrderInfo"] as! String
                }
                if dict.keys.contains("OrderStatus") {
                    self.orderStatus = dict["OrderStatus"] as! String
                }
                if dict.keys.contains("OrderType") {
                    self.orderType = dict["OrderType"] as! String
                }
                if dict.keys.contains("PayDuration") {
                    self.payDuration = dict["PayDuration"] as! String
                }
                if dict.keys.contains("PayTime") {
                    self.payTime = dict["PayTime"] as! String
                }
                if dict.keys.contains("PoolCapacity") {
                    self.poolCapacity = dict["PoolCapacity"] as! String
                }
                if dict.keys.contains("PoolCapacityUnit") {
                    self.poolCapacityUnit = dict["PoolCapacityUnit"] as! String
                }
                if dict.keys.contains("PoolNo") {
                    self.poolNo = dict["PoolNo"] as! String
                }
                if dict.keys.contains("ResourceQuantity") {
                    self.resourceQuantity = dict["ResourceQuantity"] as! Int64
                }
                if dict.keys.contains("Vendor") {
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
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListOrderResponseBody.Data.List]
            }
            if dict.keys.contains("PageCount") {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") {
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
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ApiProduct") {
            self.apiProduct = dict["ApiProduct"] as! String
        }
        if dict.keys.contains("ApiRevision") {
            self.apiRevision = dict["ApiRevision"] as! String
        }
        if dict.keys.contains("BuyNum") {
            self.buyNum = dict["BuyNum"] as! Int32
        }
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OfferCode") {
            self.offerCode = dict["OfferCode"] as! String
        }
        if dict.keys.contains("RechargeType") {
            self.rechargeType = dict["RechargeType"] as! String
        }
        if dict.keys.contains("SerialNo") {
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
            if dict.keys.contains("OrderNo") {
                self.orderNo = dict["OrderNo"] as! String
            }
            if dict.keys.contains("SerialNo") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RenewResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") {
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
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AutoRestore") {
            self.autoRestore = dict["AutoRestore"] as! Bool
        }
        if dict.keys.contains("FlowLimit") {
            self.flowLimit = dict["FlowLimit"] as! Int64
        }
        if dict.keys.contains("Iccid") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") {
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
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("OptMsisdns") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Iccid") {
            self.iccid = dict["Iccid"] as! String
        }
        if dict.keys.contains("Open") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Iccid") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LocalizedMessage") {
            self.localizedMessage = dict["LocalizedMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VerifyIotCardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
