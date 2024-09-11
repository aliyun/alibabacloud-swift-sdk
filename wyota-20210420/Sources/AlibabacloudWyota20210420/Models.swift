import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActivateDeviceRequest : Tea.TeaModel {
    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class ActivateDeviceResponseBody : Tea.TeaModel {
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

public class ActivateDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ActivateDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddDeviceFromSNRequest : Tea.TeaModel {
    public var alias: String?

    public var customProperty: String?

    public var groupId: String?

    public var labelContents: String?

    public var secureNetworkType: String?

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
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.customProperty != nil {
            map["CustomProperty"] = self.customProperty!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.labelContents != nil {
            map["LabelContents"] = self.labelContents!
        }
        if self.secureNetworkType != nil {
            map["SecureNetworkType"] = self.secureNetworkType!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Alias") {
            self.alias = dict["Alias"] as! String
        }
        if dict.keys.contains("CustomProperty") {
            self.customProperty = dict["CustomProperty"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("LabelContents") {
            self.labelContents = dict["LabelContents"] as! String
        }
        if dict.keys.contains("SecureNetworkType") {
            self.secureNetworkType = dict["SecureNetworkType"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class AddDeviceFromSNResponseBody : Tea.TeaModel {
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

public class AddDeviceFromSNResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDeviceFromSNResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddDeviceFromSNResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddDeviceSeatsAndLabelsRequest : Tea.TeaModel {
    public var isUnique: Bool?

    public var label: String?

    public var labelList: [String]?

    public var seatName: String?

    public var serialNo: String?

    public var tenantId: String?

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
        if self.isUnique != nil {
            map["IsUnique"] = self.isUnique!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.labelList != nil {
            map["LabelList"] = self.labelList!
        }
        if self.seatName != nil {
            map["SeatName"] = self.seatName!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsUnique") {
            self.isUnique = dict["IsUnique"] as! Bool
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("LabelList") {
            self.labelList = dict["LabelList"] as! [String]
        }
        if dict.keys.contains("SeatName") {
            self.seatName = dict["SeatName"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class AddDeviceSeatsAndLabelsResponseBody : Tea.TeaModel {
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

public class AddDeviceSeatsAndLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDeviceSeatsAndLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddDeviceSeatsAndLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddDevicesFromCSVRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileType: Int32?

    public var seatCol: Int32?

    public var siteId: String?

    public var siteName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.seatCol != nil {
            map["SeatCol"] = self.seatCol!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.siteName != nil {
            map["SiteName"] = self.siteName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("FileType") {
            self.fileType = dict["FileType"] as! Int32
        }
        if dict.keys.contains("SeatCol") {
            self.seatCol = dict["SeatCol"] as! Int32
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! String
        }
        if dict.keys.contains("SiteName") {
            self.siteName = dict["SiteName"] as! String
        }
    }
}

public class AddDevicesFromCSVResponseBody : Tea.TeaModel {
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

public class AddDevicesFromCSVResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDevicesFromCSVResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddDevicesFromCSVResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddLabelsRequest : Tea.TeaModel {
    public var labelContents: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelContents != nil {
            map["LabelContents"] = self.labelContents!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelContents") {
            self.labelContents = dict["LabelContents"] as! String
        }
    }
}

public class AddLabelsResponseBody : Tea.TeaModel {
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

public class AddLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddOrUpdateDeviceSeatsRequest : Tea.TeaModel {
    public var fileName: String?

    public var userCustomId: String?

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
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.userCustomId != nil {
            map["UserCustomId"] = self.userCustomId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("UserCustomId") {
            self.userCustomId = dict["UserCustomId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class AddOrUpdateDeviceSeatsResponseBody : Tea.TeaModel {
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

public class AddOrUpdateDeviceSeatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddOrUpdateDeviceSeatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddOrUpdateDeviceSeatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddTerminalRequest : Tea.TeaModel {
    public var alias: String?

    public var serialNumber: String?

    public var terminalGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.terminalGroupId != nil {
            map["TerminalGroupId"] = self.terminalGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Alias") {
            self.alias = dict["Alias"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("TerminalGroupId") {
            self.terminalGroupId = dict["TerminalGroupId"] as! String
        }
    }
}

public class AddTerminalResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddTerminalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTerminalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddTerminalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachEndUsersRequest : Tea.TeaModel {
    public var endUserIds: String?

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
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUserIds") {
            self.endUserIds = dict["EndUserIds"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class AttachEndUsersResponseBody : Tea.TeaModel {
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

public class AttachEndUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachEndUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachEndUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachLabelRequest : Tea.TeaModel {
    public var labelContent: String?

    public var labelId: String?

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
        if self.labelContent != nil {
            map["LabelContent"] = self.labelContent!
        }
        if self.labelId != nil {
            map["LabelId"] = self.labelId!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelContent") {
            self.labelContent = dict["LabelContent"] as! String
        }
        if dict.keys.contains("LabelId") {
            self.labelId = dict["LabelId"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class AttachLabelResponseBody : Tea.TeaModel {
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

public class AttachLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachLabelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachLabelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachLabelsRequest : Tea.TeaModel {
    public var labelIds: String?

    public var serialNo: String?

    public var serialNoList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelIds != nil {
            map["LabelIds"] = self.labelIds!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.serialNoList != nil {
            map["SerialNoList"] = self.serialNoList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelIds") {
            self.labelIds = dict["LabelIds"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("SerialNoList") {
            self.serialNoList = dict["SerialNoList"] as! String
        }
    }
}

public class AttachLabelsResponseBody : Tea.TeaModel {
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

public class AttachLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindAccountLessLoginUserRequest : Tea.TeaModel {
    public var endUserId: String?

    public var serialNumber: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class BindAccountLessLoginUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BindAccountLessLoginUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAccountLessLoginUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BindAccountLessLoginUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindPasswordFreeLoginUserRequest : Tea.TeaModel {
    public var endUserId: String?

    public var serialNumber: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class BindPasswordFreeLoginUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BindPasswordFreeLoginUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindPasswordFreeLoginUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BindPasswordFreeLoginUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckUuidValidRequest : Tea.TeaModel {
    public var bluetooth: String?

    public var buildId: String?

    public var chipId: String?

    public var clientId: String?

    public var customId: String?

    public var etherMac: String?

    public var serialNo: String?

    public var uuid: String?

    public var wlan: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bluetooth != nil {
            map["Bluetooth"] = self.bluetooth!
        }
        if self.buildId != nil {
            map["BuildId"] = self.buildId!
        }
        if self.chipId != nil {
            map["ChipId"] = self.chipId!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.etherMac != nil {
            map["EtherMac"] = self.etherMac!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        if self.wlan != nil {
            map["Wlan"] = self.wlan!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bluetooth") {
            self.bluetooth = dict["Bluetooth"] as! String
        }
        if dict.keys.contains("BuildId") {
            self.buildId = dict["BuildId"] as! String
        }
        if dict.keys.contains("ChipId") {
            self.chipId = dict["ChipId"] as! String
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("EtherMac") {
            self.etherMac = dict["EtherMac"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
        if dict.keys.contains("Wlan") {
            self.wlan = dict["Wlan"] as! String
        }
    }
}

public class CheckUuidValidResponseBody : Tea.TeaModel {
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

public class CheckUuidValidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUuidValidResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckUuidValidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppOtaTaskRequest : Tea.TeaModel {
    public var appVersionUid: String?

    public var channel: String?

    public var clientIdList: [String]?

    public var clientType: Int32?

    public var creator: String?

    public var description_: String?

    public var forceUpgrade: Int32?

    public var label: String?

    public var name: String?

    public var project: String?

    public var regions: [String]?

    public var status: Int32?

    public var taskType: Int32?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersionUid != nil {
            map["AppVersionUid"] = self.appVersionUid!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.clientIdList != nil {
            map["ClientIdList"] = self.clientIdList!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.forceUpgrade != nil {
            map["ForceUpgrade"] = self.forceUpgrade!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.regions != nil {
            map["Regions"] = self.regions!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersionUid") {
            self.appVersionUid = dict["AppVersionUid"] as! String
        }
        if dict.keys.contains("Channel") {
            self.channel = dict["Channel"] as! String
        }
        if dict.keys.contains("ClientIdList") {
            self.clientIdList = dict["ClientIdList"] as! [String]
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! Int32
        }
        if dict.keys.contains("Creator") {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ForceUpgrade") {
            self.forceUpgrade = dict["ForceUpgrade"] as! Int32
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! Int32
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class CreateAppOtaTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskUid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskUid != nil {
                map["TaskUid"] = self.taskUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskUid") {
                self.taskUid = dict["TaskUid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateAppOtaTaskResponseBody.Data?

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
            var model = CreateAppOtaTaskResponseBody.Data()
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

public class CreateAppOtaTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppOtaTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAppOtaTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppOtaVersionRequest : Tea.TeaModel {
    public var appVersion: String?

    public var arch: String?

    public var channel: String?

    public var clientType: Int32?

    public var creator: String?

    public var downloadUrl: String?

    public var md5: String?

    public var os: String?

    public var osType: String?

    public var otaType: Int32?

    public var project: String?

    public var releaseNote: String?

    public var releaseNoteEn: String?

    public var releaseNoteJp: String?

    public var size: Int64?

    public var snapshotId: String?

    public var snapshotRegionId: String?

    public var status: Int32?

    public var versionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.arch != nil {
            map["Arch"] = self.arch!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.md5 != nil {
            map["Md5"] = self.md5!
        }
        if self.os != nil {
            map["Os"] = self.os!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.otaType != nil {
            map["OtaType"] = self.otaType!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.releaseNote != nil {
            map["ReleaseNote"] = self.releaseNote!
        }
        if self.releaseNoteEn != nil {
            map["ReleaseNoteEn"] = self.releaseNoteEn!
        }
        if self.releaseNoteJp != nil {
            map["ReleaseNoteJp"] = self.releaseNoteJp!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.snapshotRegionId != nil {
            map["SnapshotRegionId"] = self.snapshotRegionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("Arch") {
            self.arch = dict["Arch"] as! String
        }
        if dict.keys.contains("Channel") {
            self.channel = dict["Channel"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! Int32
        }
        if dict.keys.contains("Creator") {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("DownloadUrl") {
            self.downloadUrl = dict["DownloadUrl"] as! String
        }
        if dict.keys.contains("Md5") {
            self.md5 = dict["Md5"] as! String
        }
        if dict.keys.contains("Os") {
            self.os = dict["Os"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("OtaType") {
            self.otaType = dict["OtaType"] as! Int32
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("ReleaseNote") {
            self.releaseNote = dict["ReleaseNote"] as! String
        }
        if dict.keys.contains("ReleaseNoteEn") {
            self.releaseNoteEn = dict["ReleaseNoteEn"] as! String
        }
        if dict.keys.contains("ReleaseNoteJp") {
            self.releaseNoteJp = dict["ReleaseNoteJp"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int64
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("SnapshotRegionId") {
            self.snapshotRegionId = dict["SnapshotRegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class CreateAppOtaVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var versionUid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.versionUid != nil {
                map["VersionUid"] = self.versionUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VersionUid") {
                self.versionUid = dict["VersionUid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateAppOtaVersionResponseBody.Data?

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
            var model = CreateAppOtaVersionResponseBody.Data()
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

public class CreateAppOtaVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppOtaVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAppOtaVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppOtaVersionsRequest : Tea.TeaModel {
    public var versionUidList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.versionUidList != nil {
            map["VersionUidList"] = self.versionUidList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VersionUidList") {
            self.versionUidList = dict["VersionUidList"] as! [String]
        }
    }
}

public class DeleteAppOtaVersionsResponseBody : Tea.TeaModel {
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

public class DeleteAppOtaVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppOtaVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAppOtaVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDevicesRequest : Tea.TeaModel {
    public var force: String?

    public var serialNos: String?

    public var uuids: String?

    public override init() {
        super.init()
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
        if self.serialNos != nil {
            map["SerialNos"] = self.serialNos!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! String
        }
        if dict.keys.contains("SerialNos") {
            self.serialNos = dict["SerialNos"] as! String
        }
        if dict.keys.contains("Uuids") {
            self.uuids = dict["Uuids"] as! String
        }
    }
}

public class DeleteDevicesResponseBody : Tea.TeaModel {
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

public class DeleteDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLabelRequest : Tea.TeaModel {
    public var force: String?

    public var labelContent: String?

    public var labelId: String?

    public override init() {
        super.init()
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
        if self.labelContent != nil {
            map["LabelContent"] = self.labelContent!
        }
        if self.labelId != nil {
            map["LabelId"] = self.labelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! String
        }
        if dict.keys.contains("LabelContent") {
            self.labelContent = dict["LabelContent"] as! String
        }
        if dict.keys.contains("LabelId") {
            self.labelId = dict["LabelId"] as! String
        }
    }
}

public class DeleteLabelResponseBody : Tea.TeaModel {
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

public class DeleteLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLabelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteLabelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppOtaVersionRequest : Tea.TeaModel {
    public var appVersion: String?

    public var channel: String?

    public var clientType: Int32?

    public var creator: String?

    public var project: String?

    public var status: Int32?

    public var versionUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.versionUid != nil {
            map["VersionUid"] = self.versionUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("Channel") {
            self.channel = dict["Channel"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! Int32
        }
        if dict.keys.contains("Creator") {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("VersionUid") {
            self.versionUid = dict["VersionUid"] as! String
        }
    }
}

public class DescribeAppOtaVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AppOtaInfoDTOList : Tea.TeaModel {
            public var appVersion: String?

            public var channel: String?

            public var downloadUrl: String?

            public var fullDownloadUrl: String?

            public var gmtCreate: String?

            public var md5: String?

            public var osType: String?

            public var otaType: Int32?

            public var project: String?

            public var protocolType: String?

            public var releaseNote: String?

            public var releaseNoteEn: String?

            public var sessionType: String?

            public var size: Int64?

            public var status: Int32?

            public var versionCode: Int64?

            public var versionType: String?

            public var versionUid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appVersion != nil {
                    map["AppVersion"] = self.appVersion!
                }
                if self.channel != nil {
                    map["Channel"] = self.channel!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.fullDownloadUrl != nil {
                    map["FullDownloadUrl"] = self.fullDownloadUrl!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.md5 != nil {
                    map["Md5"] = self.md5!
                }
                if self.osType != nil {
                    map["OsType"] = self.osType!
                }
                if self.otaType != nil {
                    map["OtaType"] = self.otaType!
                }
                if self.project != nil {
                    map["Project"] = self.project!
                }
                if self.protocolType != nil {
                    map["ProtocolType"] = self.protocolType!
                }
                if self.releaseNote != nil {
                    map["ReleaseNote"] = self.releaseNote!
                }
                if self.releaseNoteEn != nil {
                    map["ReleaseNoteEn"] = self.releaseNoteEn!
                }
                if self.sessionType != nil {
                    map["SessionType"] = self.sessionType!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.versionCode != nil {
                    map["VersionCode"] = self.versionCode!
                }
                if self.versionType != nil {
                    map["VersionType"] = self.versionType!
                }
                if self.versionUid != nil {
                    map["VersionUid"] = self.versionUid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppVersion") {
                    self.appVersion = dict["AppVersion"] as! String
                }
                if dict.keys.contains("Channel") {
                    self.channel = dict["Channel"] as! String
                }
                if dict.keys.contains("DownloadUrl") {
                    self.downloadUrl = dict["DownloadUrl"] as! String
                }
                if dict.keys.contains("FullDownloadUrl") {
                    self.fullDownloadUrl = dict["FullDownloadUrl"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("Md5") {
                    self.md5 = dict["Md5"] as! String
                }
                if dict.keys.contains("OsType") {
                    self.osType = dict["OsType"] as! String
                }
                if dict.keys.contains("OtaType") {
                    self.otaType = dict["OtaType"] as! Int32
                }
                if dict.keys.contains("Project") {
                    self.project = dict["Project"] as! String
                }
                if dict.keys.contains("ProtocolType") {
                    self.protocolType = dict["ProtocolType"] as! String
                }
                if dict.keys.contains("ReleaseNote") {
                    self.releaseNote = dict["ReleaseNote"] as! String
                }
                if dict.keys.contains("ReleaseNoteEn") {
                    self.releaseNoteEn = dict["ReleaseNoteEn"] as! String
                }
                if dict.keys.contains("SessionType") {
                    self.sessionType = dict["SessionType"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("VersionCode") {
                    self.versionCode = dict["VersionCode"] as! Int64
                }
                if dict.keys.contains("VersionType") {
                    self.versionType = dict["VersionType"] as! String
                }
                if dict.keys.contains("VersionUid") {
                    self.versionUid = dict["VersionUid"] as! String
                }
            }
        }
        public var appOtaInfoDTOList: [DescribeAppOtaVersionResponseBody.Data.AppOtaInfoDTOList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appOtaInfoDTOList != nil {
                var tmp : [Any] = []
                for k in self.appOtaInfoDTOList! {
                    tmp.append(k.toMap())
                }
                map["AppOtaInfoDTOList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppOtaInfoDTOList") {
                var tmp : [DescribeAppOtaVersionResponseBody.Data.AppOtaInfoDTOList] = []
                for v in dict["AppOtaInfoDTOList"] as! [Any] {
                    var model = DescribeAppOtaVersionResponseBody.Data.AppOtaInfoDTOList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appOtaInfoDTOList = tmp
            }
        }
    }
    public var code: String?

    public var data: DescribeAppOtaVersionResponseBody.Data?

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
            var model = DescribeAppOtaVersionResponseBody.Data()
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

public class DescribeAppOtaVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppOtaVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeAppOtaVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceSeatsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var serialNo: String?

    public var serialNoList: [String]?

    public var siteId: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.serialNoList != nil {
            map["SerialNoList"] = self.serialNoList!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("SerialNoList") {
            self.serialNoList = dict["SerialNoList"] as! [String]
        }
        if dict.keys.contains("SiteId") {
            self.siteId = dict["SiteId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeDeviceSeatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var seatCol: Int32?

        public var seatName: String?

        public var seatNo: String?

        public var seatRow: Int32?

        public var serialNo: String?

        public var siteId: String?

        public var siteName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.seatCol != nil {
                map["SeatCol"] = self.seatCol!
            }
            if self.seatName != nil {
                map["SeatName"] = self.seatName!
            }
            if self.seatNo != nil {
                map["SeatNo"] = self.seatNo!
            }
            if self.seatRow != nil {
                map["SeatRow"] = self.seatRow!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            if self.siteId != nil {
                map["SiteId"] = self.siteId!
            }
            if self.siteName != nil {
                map["SiteName"] = self.siteName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SeatCol") {
                self.seatCol = dict["SeatCol"] as! Int32
            }
            if dict.keys.contains("SeatName") {
                self.seatName = dict["SeatName"] as! String
            }
            if dict.keys.contains("SeatNo") {
                self.seatNo = dict["SeatNo"] as! String
            }
            if dict.keys.contains("SeatRow") {
                self.seatRow = dict["SeatRow"] as! Int32
            }
            if dict.keys.contains("SerialNo") {
                self.serialNo = dict["SerialNo"] as! String
            }
            if dict.keys.contains("SiteId") {
                self.siteId = dict["SiteId"] as! String
            }
            if dict.keys.contains("SiteName") {
                self.siteName = dict["SiteName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [DescribeDeviceSeatsResponseBody.Data]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeDeviceSeatsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeDeviceSeatsResponseBody.Data()
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
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDeviceSeatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceSeatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDeviceSeatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceVersionDetailRequest : Tea.TeaModel {
    public var model: String?

    public var networkType: String?

    public var region: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("NetworkType") {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class DescribeDeviceVersionDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var androidHorizontalMultiCnImageDownloadUrl: String?

        public var androidHorizontalMultiEnImageDownloadUrl: String?

        public var androidVerticalMultiCnImageDownloadUrl: String?

        public var androidVerticalMultiEnImageDownloadUrl: String?

        public var channel: String?

        public var clientType: Int32?

        public var cnImageDownloadUrl: String?

        public var creator: String?

        public var downloadUrl: String?

        public var enImageDownloadUrl: String?

        public var md5: String?

        public var model: String?

        public var multiCnImageDownloadUrl: String?

        public var multiEnImageDownloadUrl: String?

        public var releaseNote: String?

        public var releaseNoteEn: String?

        public var size: Int64?

        public var version: String?

        public var versionCode: String?

        public var versionType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.androidHorizontalMultiCnImageDownloadUrl != nil {
                map["AndroidHorizontalMultiCnImageDownloadUrl"] = self.androidHorizontalMultiCnImageDownloadUrl!
            }
            if self.androidHorizontalMultiEnImageDownloadUrl != nil {
                map["AndroidHorizontalMultiEnImageDownloadUrl"] = self.androidHorizontalMultiEnImageDownloadUrl!
            }
            if self.androidVerticalMultiCnImageDownloadUrl != nil {
                map["AndroidVerticalMultiCnImageDownloadUrl"] = self.androidVerticalMultiCnImageDownloadUrl!
            }
            if self.androidVerticalMultiEnImageDownloadUrl != nil {
                map["AndroidVerticalMultiEnImageDownloadUrl"] = self.androidVerticalMultiEnImageDownloadUrl!
            }
            if self.channel != nil {
                map["Channel"] = self.channel!
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.cnImageDownloadUrl != nil {
                map["CnImageDownloadUrl"] = self.cnImageDownloadUrl!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.enImageDownloadUrl != nil {
                map["EnImageDownloadUrl"] = self.enImageDownloadUrl!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.multiCnImageDownloadUrl != nil {
                map["MultiCnImageDownloadUrl"] = self.multiCnImageDownloadUrl!
            }
            if self.multiEnImageDownloadUrl != nil {
                map["MultiEnImageDownloadUrl"] = self.multiEnImageDownloadUrl!
            }
            if self.releaseNote != nil {
                map["ReleaseNote"] = self.releaseNote!
            }
            if self.releaseNoteEn != nil {
                map["ReleaseNoteEn"] = self.releaseNoteEn!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.versionCode != nil {
                map["VersionCode"] = self.versionCode!
            }
            if self.versionType != nil {
                map["VersionType"] = self.versionType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AndroidHorizontalMultiCnImageDownloadUrl") {
                self.androidHorizontalMultiCnImageDownloadUrl = dict["AndroidHorizontalMultiCnImageDownloadUrl"] as! String
            }
            if dict.keys.contains("AndroidHorizontalMultiEnImageDownloadUrl") {
                self.androidHorizontalMultiEnImageDownloadUrl = dict["AndroidHorizontalMultiEnImageDownloadUrl"] as! String
            }
            if dict.keys.contains("AndroidVerticalMultiCnImageDownloadUrl") {
                self.androidVerticalMultiCnImageDownloadUrl = dict["AndroidVerticalMultiCnImageDownloadUrl"] as! String
            }
            if dict.keys.contains("AndroidVerticalMultiEnImageDownloadUrl") {
                self.androidVerticalMultiEnImageDownloadUrl = dict["AndroidVerticalMultiEnImageDownloadUrl"] as! String
            }
            if dict.keys.contains("Channel") {
                self.channel = dict["Channel"] as! String
            }
            if dict.keys.contains("ClientType") {
                self.clientType = dict["ClientType"] as! Int32
            }
            if dict.keys.contains("CnImageDownloadUrl") {
                self.cnImageDownloadUrl = dict["CnImageDownloadUrl"] as! String
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("DownloadUrl") {
                self.downloadUrl = dict["DownloadUrl"] as! String
            }
            if dict.keys.contains("EnImageDownloadUrl") {
                self.enImageDownloadUrl = dict["EnImageDownloadUrl"] as! String
            }
            if dict.keys.contains("Md5") {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Model") {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("MultiCnImageDownloadUrl") {
                self.multiCnImageDownloadUrl = dict["MultiCnImageDownloadUrl"] as! String
            }
            if dict.keys.contains("MultiEnImageDownloadUrl") {
                self.multiEnImageDownloadUrl = dict["MultiEnImageDownloadUrl"] as! String
            }
            if dict.keys.contains("ReleaseNote") {
                self.releaseNote = dict["ReleaseNote"] as! String
            }
            if dict.keys.contains("ReleaseNoteEn") {
                self.releaseNoteEn = dict["ReleaseNoteEn"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VersionCode") {
                self.versionCode = dict["VersionCode"] as! String
            }
            if dict.keys.contains("VersionType") {
                self.versionType = dict["VersionType"] as! String
            }
        }
    }
    public var code: String?

    public var data: [DescribeDeviceVersionDetailResponseBody.Data]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeDeviceVersionDetailResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeDeviceVersionDetailResponseBody.Data()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDeviceVersionDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceVersionDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDeviceVersionDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSnLabelCountsRequest : Tea.TeaModel {
    public var labelList: [String]?

    public var tenantId: String?

    public var zoneId: String?

    public var zoneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelList != nil {
            map["LabelList"] = self.labelList!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelList") {
            self.labelList = dict["LabelList"] as! [String]
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
        if dict.keys.contains("ZoneName") {
            self.zoneName = dict["ZoneName"] as! String
        }
    }
}

public class DescribeSnLabelCountsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class LabelCountDTOList : Tea.TeaModel {
            public var count: String?

            public var label: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
            }
        }
        public var labelCountDTOList: [DescribeSnLabelCountsResponseBody.Data.LabelCountDTOList]?

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
            if self.labelCountDTOList != nil {
                var tmp : [Any] = []
                for k in self.labelCountDTOList! {
                    tmp.append(k.toMap())
                }
                map["LabelCountDTOList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LabelCountDTOList") {
                var tmp : [DescribeSnLabelCountsResponseBody.Data.LabelCountDTOList] = []
                for v in dict["LabelCountDTOList"] as! [Any] {
                    var model = DescribeSnLabelCountsResponseBody.Data.LabelCountDTOList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labelCountDTOList = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeSnLabelCountsResponseBody.Data?

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
            var model = DescribeSnLabelCountsResponseBody.Data()
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

public class DescribeSnLabelCountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSnLabelCountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeSnLabelCountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWorkZonesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public var zoneIdList: [String]?

    public var zoneNameList: [String]?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.zoneIdList != nil {
            map["ZoneIdList"] = self.zoneIdList!
        }
        if self.zoneNameList != nil {
            map["ZoneNameList"] = self.zoneNameList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("ZoneIdList") {
            self.zoneIdList = dict["ZoneIdList"] as! [String]
        }
        if dict.keys.contains("ZoneNameList") {
            self.zoneNameList = dict["ZoneNameList"] as! [String]
        }
    }
}

public class DescribeWorkZonesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WorkZoneDTOList : Tea.TeaModel {
            public var seatCol: Int32?

            public var seatRow: Int32?

            public var tenantId: String?

            public var zoneId: String?

            public var zoneName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.seatCol != nil {
                    map["SeatCol"] = self.seatCol!
                }
                if self.seatRow != nil {
                    map["SeatRow"] = self.seatRow!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                if self.zoneName != nil {
                    map["ZoneName"] = self.zoneName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SeatCol") {
                    self.seatCol = dict["SeatCol"] as! Int32
                }
                if dict.keys.contains("SeatRow") {
                    self.seatRow = dict["SeatRow"] as! Int32
                }
                if dict.keys.contains("TenantId") {
                    self.tenantId = dict["TenantId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
                if dict.keys.contains("ZoneName") {
                    self.zoneName = dict["ZoneName"] as! String
                }
            }
        }
        public var totalCount: Int64?

        public var workZoneDTOList: [DescribeWorkZonesResponseBody.Data.WorkZoneDTOList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.workZoneDTOList != nil {
                var tmp : [Any] = []
                for k in self.workZoneDTOList! {
                    tmp.append(k.toMap())
                }
                map["WorkZoneDTOList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
            if dict.keys.contains("WorkZoneDTOList") {
                var tmp : [DescribeWorkZonesResponseBody.Data.WorkZoneDTOList] = []
                for v in dict["WorkZoneDTOList"] as! [Any] {
                    var model = DescribeWorkZonesResponseBody.Data.WorkZoneDTOList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.workZoneDTOList = tmp
            }
        }
    }
    public var code: String?

    public var data: DescribeWorkZonesResponseBody.Data?

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
            var model = DescribeWorkZonesResponseBody.Data()
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

public class DescribeWorkZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWorkZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeWorkZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachEndUsersRequest : Tea.TeaModel {
    public var endUserIds: String?

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
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUserIds") {
            self.endUserIds = dict["EndUserIds"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class DetachEndUsersResponseBody : Tea.TeaModel {
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

public class DetachEndUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachEndUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachEndUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachLabelRequest : Tea.TeaModel {
    public var labelContent: String?

    public var labelId: String?

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
        if self.labelContent != nil {
            map["LabelContent"] = self.labelContent!
        }
        if self.labelId != nil {
            map["LabelId"] = self.labelId!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelContent") {
            self.labelContent = dict["LabelContent"] as! String
        }
        if dict.keys.contains("LabelId") {
            self.labelId = dict["LabelId"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class DetachLabelResponseBody : Tea.TeaModel {
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

public class DetachLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachLabelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachLabelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachLabelsRequest : Tea.TeaModel {
    public var labelIds: String?

    public var serialNo: String?

    public var serialNoList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelIds != nil {
            map["LabelIds"] = self.labelIds!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.serialNoList != nil {
            map["SerialNoList"] = self.serialNoList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelIds") {
            self.labelIds = dict["LabelIds"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("SerialNoList") {
            self.serialNoList = dict["SerialNoList"] as! String
        }
    }
}

public class DetachLabelsResponseBody : Tea.TeaModel {
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

public class DetachLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateOssUrlRequest : Tea.TeaModel {
    public var objectNameList: [String]?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.objectNameList != nil {
            map["ObjectNameList"] = self.objectNameList!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ObjectNameList") {
            self.objectNameList = dict["ObjectNameList"] as! [String]
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class GenerateOssUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var downloadUrl: String?

        public var objectName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.objectName != nil {
                map["ObjectName"] = self.objectName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownloadUrl") {
                self.downloadUrl = dict["DownloadUrl"] as! String
            }
            if dict.keys.contains("ObjectName") {
                self.objectName = dict["ObjectName"] as! String
            }
        }
    }
    public var data: [GenerateOssUrlResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [GenerateOssUrlResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GenerateOssUrlResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateOssUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateOssUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GenerateOssUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppOtaLatestVersionRequest : Tea.TeaModel {
    public var baseVersion: String?

    public var clientType: Int32?

    public var clientUid: String?

    public var osType: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseVersion != nil {
            map["BaseVersion"] = self.baseVersion!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clientUid != nil {
            map["ClientUid"] = self.clientUid!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseVersion") {
            self.baseVersion = dict["BaseVersion"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! Int32
        }
        if dict.keys.contains("ClientUid") {
            self.clientUid = dict["ClientUid"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class GetAppOtaLatestVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appVersion: String?

        public var downloadUrl: String?

        public var forceUpgrade: Int32?

        public var md5: String?

        public var releaseNote: String?

        public var size: Int64?

        public var taskUid: String?

        public var versionCode: String?

        public var versionType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.forceUpgrade != nil {
                map["ForceUpgrade"] = self.forceUpgrade!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.releaseNote != nil {
                map["ReleaseNote"] = self.releaseNote!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.taskUid != nil {
                map["TaskUid"] = self.taskUid!
            }
            if self.versionCode != nil {
                map["VersionCode"] = self.versionCode!
            }
            if self.versionType != nil {
                map["VersionType"] = self.versionType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("DownloadUrl") {
                self.downloadUrl = dict["DownloadUrl"] as! String
            }
            if dict.keys.contains("ForceUpgrade") {
                self.forceUpgrade = dict["ForceUpgrade"] as! Int32
            }
            if dict.keys.contains("Md5") {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("ReleaseNote") {
                self.releaseNote = dict["ReleaseNote"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("TaskUid") {
                self.taskUid = dict["TaskUid"] as! String
            }
            if dict.keys.contains("VersionCode") {
                self.versionCode = dict["VersionCode"] as! String
            }
            if dict.keys.contains("VersionType") {
                self.versionType = dict["VersionType"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetAppOtaLatestVersionResponseBody.Data?

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
            var model = GetAppOtaLatestVersionResponseBody.Data()
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

public class GetAppOtaLatestVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppOtaLatestVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAppOtaLatestVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceConfigsRequest : Tea.TeaModel {
    public var deviceId: String?

    public var networkType: String?

    public var region: String?

    public var serialNo: String?

    public var urclVersion: String?

    public var userCustomId: String?

    public override init() {
        super.init()
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
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.urclVersion != nil {
            map["UrclVersion"] = self.urclVersion!
        }
        if self.userCustomId != nil {
            map["UserCustomId"] = self.userCustomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("NetworkType") {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("UrclVersion") {
            self.urclVersion = dict["UrclVersion"] as! String
        }
        if dict.keys.contains("UserCustomId") {
            self.userCustomId = dict["UserCustomId"] as! String
        }
    }
}

public class GetDeviceConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CustomResourcePackage : Tea.TeaModel {
            public var configAboutLogo: String?

            public var desktopWallpaper: String?

            public var loginPageBackground: String?

            public var loginPageLogo: String?

            public var personalCenterLogo: String?

            public var startLogo: String?

            public var startMenuLogo: String?

            public var upgradeLogo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configAboutLogo != nil {
                    map["ConfigAboutLogo"] = self.configAboutLogo!
                }
                if self.desktopWallpaper != nil {
                    map["DesktopWallpaper"] = self.desktopWallpaper!
                }
                if self.loginPageBackground != nil {
                    map["LoginPageBackground"] = self.loginPageBackground!
                }
                if self.loginPageLogo != nil {
                    map["LoginPageLogo"] = self.loginPageLogo!
                }
                if self.personalCenterLogo != nil {
                    map["PersonalCenterLogo"] = self.personalCenterLogo!
                }
                if self.startLogo != nil {
                    map["StartLogo"] = self.startLogo!
                }
                if self.startMenuLogo != nil {
                    map["StartMenuLogo"] = self.startMenuLogo!
                }
                if self.upgradeLogo != nil {
                    map["UpgradeLogo"] = self.upgradeLogo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigAboutLogo") {
                    self.configAboutLogo = dict["ConfigAboutLogo"] as! String
                }
                if dict.keys.contains("DesktopWallpaper") {
                    self.desktopWallpaper = dict["DesktopWallpaper"] as! String
                }
                if dict.keys.contains("LoginPageBackground") {
                    self.loginPageBackground = dict["LoginPageBackground"] as! String
                }
                if dict.keys.contains("LoginPageLogo") {
                    self.loginPageLogo = dict["LoginPageLogo"] as! String
                }
                if dict.keys.contains("PersonalCenterLogo") {
                    self.personalCenterLogo = dict["PersonalCenterLogo"] as! String
                }
                if dict.keys.contains("StartLogo") {
                    self.startLogo = dict["StartLogo"] as! String
                }
                if dict.keys.contains("StartMenuLogo") {
                    self.startMenuLogo = dict["StartMenuLogo"] as! String
                }
                if dict.keys.contains("UpgradeLogo") {
                    self.upgradeLogo = dict["UpgradeLogo"] as! String
                }
            }
        }
        public var autoLockScreenTime: Int32?

        public var autoLogin: Int32?

        public var autoUpdate: Int32?

        public var customIdleAction: Int32?

        public var customPowerOn: Int32?

        public var customResourcePackage: GetDeviceConfigsResponseBody.Data.CustomResourcePackage?

        public var definePowerButton: Int32?

        public var deviceLock: Int32?

        public var displayLayout: String?

        public var displayResolution: String?

        public var displayScaleRatio: String?

        public var enableAdb: Int32?

        public var enableAutoLockScreen: Int32?

        public var enableBluetooth: Int32?

        public var enableLockScreenPassword: Int32?

        public var enableModifyPassword: Int32?

        public var enableScheduledPowerOff: Int32?

        public var enableUnlockPassword: Int32?

        public var enableWlan: Int32?

        public var idleTime: Int32?

        public var localUsbPrint: Int32?

        public var lockPassword: String?

        public var scheduledPowerOff: String?

        public var secureNetworkType: String?

        public var serialNo: String?

        public var sleepTime: Int32?

        public var urcl: String?

        public var usbStorage: Int32?

        public var userCustomId: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.customResourcePackage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoLockScreenTime != nil {
                map["AutoLockScreenTime"] = self.autoLockScreenTime!
            }
            if self.autoLogin != nil {
                map["AutoLogin"] = self.autoLogin!
            }
            if self.autoUpdate != nil {
                map["AutoUpdate"] = self.autoUpdate!
            }
            if self.customIdleAction != nil {
                map["CustomIdleAction"] = self.customIdleAction!
            }
            if self.customPowerOn != nil {
                map["CustomPowerOn"] = self.customPowerOn!
            }
            if self.customResourcePackage != nil {
                map["CustomResourcePackage"] = self.customResourcePackage?.toMap()
            }
            if self.definePowerButton != nil {
                map["DefinePowerButton"] = self.definePowerButton!
            }
            if self.deviceLock != nil {
                map["DeviceLock"] = self.deviceLock!
            }
            if self.displayLayout != nil {
                map["DisplayLayout"] = self.displayLayout!
            }
            if self.displayResolution != nil {
                map["DisplayResolution"] = self.displayResolution!
            }
            if self.displayScaleRatio != nil {
                map["DisplayScaleRatio"] = self.displayScaleRatio!
            }
            if self.enableAdb != nil {
                map["EnableAdb"] = self.enableAdb!
            }
            if self.enableAutoLockScreen != nil {
                map["EnableAutoLockScreen"] = self.enableAutoLockScreen!
            }
            if self.enableBluetooth != nil {
                map["EnableBluetooth"] = self.enableBluetooth!
            }
            if self.enableLockScreenPassword != nil {
                map["EnableLockScreenPassword"] = self.enableLockScreenPassword!
            }
            if self.enableModifyPassword != nil {
                map["EnableModifyPassword"] = self.enableModifyPassword!
            }
            if self.enableScheduledPowerOff != nil {
                map["EnableScheduledPowerOff"] = self.enableScheduledPowerOff!
            }
            if self.enableUnlockPassword != nil {
                map["EnableUnlockPassword"] = self.enableUnlockPassword!
            }
            if self.enableWlan != nil {
                map["EnableWlan"] = self.enableWlan!
            }
            if self.idleTime != nil {
                map["IdleTime"] = self.idleTime!
            }
            if self.localUsbPrint != nil {
                map["LocalUsbPrint"] = self.localUsbPrint!
            }
            if self.lockPassword != nil {
                map["LockPassword"] = self.lockPassword!
            }
            if self.scheduledPowerOff != nil {
                map["ScheduledPowerOff"] = self.scheduledPowerOff!
            }
            if self.secureNetworkType != nil {
                map["SecureNetworkType"] = self.secureNetworkType!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            if self.sleepTime != nil {
                map["SleepTime"] = self.sleepTime!
            }
            if self.urcl != nil {
                map["Urcl"] = self.urcl!
            }
            if self.usbStorage != nil {
                map["UsbStorage"] = self.usbStorage!
            }
            if self.userCustomId != nil {
                map["UserCustomId"] = self.userCustomId!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoLockScreenTime") {
                self.autoLockScreenTime = dict["AutoLockScreenTime"] as! Int32
            }
            if dict.keys.contains("AutoLogin") {
                self.autoLogin = dict["AutoLogin"] as! Int32
            }
            if dict.keys.contains("AutoUpdate") {
                self.autoUpdate = dict["AutoUpdate"] as! Int32
            }
            if dict.keys.contains("CustomIdleAction") {
                self.customIdleAction = dict["CustomIdleAction"] as! Int32
            }
            if dict.keys.contains("CustomPowerOn") {
                self.customPowerOn = dict["CustomPowerOn"] as! Int32
            }
            if dict.keys.contains("CustomResourcePackage") {
                var model = GetDeviceConfigsResponseBody.Data.CustomResourcePackage()
                model.fromMap(dict["CustomResourcePackage"] as! [String: Any])
                self.customResourcePackage = model
            }
            if dict.keys.contains("DefinePowerButton") {
                self.definePowerButton = dict["DefinePowerButton"] as! Int32
            }
            if dict.keys.contains("DeviceLock") {
                self.deviceLock = dict["DeviceLock"] as! Int32
            }
            if dict.keys.contains("DisplayLayout") {
                self.displayLayout = dict["DisplayLayout"] as! String
            }
            if dict.keys.contains("DisplayResolution") {
                self.displayResolution = dict["DisplayResolution"] as! String
            }
            if dict.keys.contains("DisplayScaleRatio") {
                self.displayScaleRatio = dict["DisplayScaleRatio"] as! String
            }
            if dict.keys.contains("EnableAdb") {
                self.enableAdb = dict["EnableAdb"] as! Int32
            }
            if dict.keys.contains("EnableAutoLockScreen") {
                self.enableAutoLockScreen = dict["EnableAutoLockScreen"] as! Int32
            }
            if dict.keys.contains("EnableBluetooth") {
                self.enableBluetooth = dict["EnableBluetooth"] as! Int32
            }
            if dict.keys.contains("EnableLockScreenPassword") {
                self.enableLockScreenPassword = dict["EnableLockScreenPassword"] as! Int32
            }
            if dict.keys.contains("EnableModifyPassword") {
                self.enableModifyPassword = dict["EnableModifyPassword"] as! Int32
            }
            if dict.keys.contains("EnableScheduledPowerOff") {
                self.enableScheduledPowerOff = dict["EnableScheduledPowerOff"] as! Int32
            }
            if dict.keys.contains("EnableUnlockPassword") {
                self.enableUnlockPassword = dict["EnableUnlockPassword"] as! Int32
            }
            if dict.keys.contains("EnableWlan") {
                self.enableWlan = dict["EnableWlan"] as! Int32
            }
            if dict.keys.contains("IdleTime") {
                self.idleTime = dict["IdleTime"] as! Int32
            }
            if dict.keys.contains("LocalUsbPrint") {
                self.localUsbPrint = dict["LocalUsbPrint"] as! Int32
            }
            if dict.keys.contains("LockPassword") {
                self.lockPassword = dict["LockPassword"] as! String
            }
            if dict.keys.contains("ScheduledPowerOff") {
                self.scheduledPowerOff = dict["ScheduledPowerOff"] as! String
            }
            if dict.keys.contains("SecureNetworkType") {
                self.secureNetworkType = dict["SecureNetworkType"] as! String
            }
            if dict.keys.contains("SerialNo") {
                self.serialNo = dict["SerialNo"] as! String
            }
            if dict.keys.contains("SleepTime") {
                self.sleepTime = dict["SleepTime"] as! Int32
            }
            if dict.keys.contains("Urcl") {
                self.urcl = dict["Urcl"] as! String
            }
            if dict.keys.contains("UsbStorage") {
                self.usbStorage = dict["UsbStorage"] as! Int32
            }
            if dict.keys.contains("UserCustomId") {
                self.userCustomId = dict["UserCustomId"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetDeviceConfigsResponseBody.Data?

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
            var model = GetDeviceConfigsResponseBody.Data()
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

public class GetDeviceConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDeviceConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceOtaAutoStatusRequest : Tea.TeaModel {
    public var clientType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! Int32
        }
    }
}

public class GetDeviceOtaAutoStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var autoUpdate: Int32?

        public var autoUpdateTimeSchedule: String?

        public var forceUpgrade: Int32?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoUpdate != nil {
                map["AutoUpdate"] = self.autoUpdate!
            }
            if self.autoUpdateTimeSchedule != nil {
                map["AutoUpdateTimeSchedule"] = self.autoUpdateTimeSchedule!
            }
            if self.forceUpgrade != nil {
                map["ForceUpgrade"] = self.forceUpgrade!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoUpdate") {
                self.autoUpdate = dict["AutoUpdate"] as! Int32
            }
            if dict.keys.contains("AutoUpdateTimeSchedule") {
                self.autoUpdateTimeSchedule = dict["AutoUpdateTimeSchedule"] as! String
            }
            if dict.keys.contains("ForceUpgrade") {
                self.forceUpgrade = dict["ForceUpgrade"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: GetDeviceOtaAutoStatusResponseBody.Data?

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
            var model = GetDeviceOtaAutoStatusResponseBody.Data()
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

public class GetDeviceOtaAutoStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceOtaAutoStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDeviceOtaAutoStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceOtaInfoRequest : Tea.TeaModel {
    public var baseVersion: String?

    public var channel: String?

    public var deviceId: String?

    public var model: String?

    public var networkType: String?

    public var osVersion: String?

    public var region: String?

    public var regionId: String?

    public var targetVersionType: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseVersion != nil {
            map["BaseVersion"] = self.baseVersion!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.osVersion != nil {
            map["OsVersion"] = self.osVersion!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.targetVersionType != nil {
            map["TargetVersionType"] = self.targetVersionType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseVersion") {
            self.baseVersion = dict["BaseVersion"] as! String
        }
        if dict.keys.contains("Channel") {
            self.channel = dict["Channel"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("NetworkType") {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("OsVersion") {
            self.osVersion = dict["OsVersion"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TargetVersionType") {
            self.targetVersionType = dict["TargetVersionType"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class GetDeviceOtaInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Version : Tea.TeaModel {
            public var androidHorizontalMultiCnImageDownloadUrl: String?

            public var androidHorizontalMultiEnImageDownloadUrl: String?

            public var androidVerticalMultiCnImageDownloadUrl: String?

            public var androidVerticalMultiEnImageDownloadUrl: String?

            public var cnImageDownloadUrl: String?

            public var creator: String?

            public var customForceUpgrade: Bool?

            public var downloadUrl: String?

            public var enImageDownloadUrl: String?

            public var forceUpgrade: Int32?

            public var isAppDownloadUrl: Bool?

            public var localDownloadUrl: String?

            public var md5: String?

            public var model: String?

            public var multiCnImageDownloadUrl: String?

            public var multiEnImageDownloadUrl: String?

            public var releaseNote: String?

            public var releaseNoteEn: String?

            public var size: Int64?

            public var version: String?

            public var versionCode: String?

            public var versionType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.androidHorizontalMultiCnImageDownloadUrl != nil {
                    map["AndroidHorizontalMultiCnImageDownloadUrl"] = self.androidHorizontalMultiCnImageDownloadUrl!
                }
                if self.androidHorizontalMultiEnImageDownloadUrl != nil {
                    map["AndroidHorizontalMultiEnImageDownloadUrl"] = self.androidHorizontalMultiEnImageDownloadUrl!
                }
                if self.androidVerticalMultiCnImageDownloadUrl != nil {
                    map["AndroidVerticalMultiCnImageDownloadUrl"] = self.androidVerticalMultiCnImageDownloadUrl!
                }
                if self.androidVerticalMultiEnImageDownloadUrl != nil {
                    map["AndroidVerticalMultiEnImageDownloadUrl"] = self.androidVerticalMultiEnImageDownloadUrl!
                }
                if self.cnImageDownloadUrl != nil {
                    map["CnImageDownloadUrl"] = self.cnImageDownloadUrl!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.customForceUpgrade != nil {
                    map["CustomForceUpgrade"] = self.customForceUpgrade!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.enImageDownloadUrl != nil {
                    map["EnImageDownloadUrl"] = self.enImageDownloadUrl!
                }
                if self.forceUpgrade != nil {
                    map["ForceUpgrade"] = self.forceUpgrade!
                }
                if self.isAppDownloadUrl != nil {
                    map["IsAppDownloadUrl"] = self.isAppDownloadUrl!
                }
                if self.localDownloadUrl != nil {
                    map["LocalDownloadUrl"] = self.localDownloadUrl!
                }
                if self.md5 != nil {
                    map["Md5"] = self.md5!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.multiCnImageDownloadUrl != nil {
                    map["MultiCnImageDownloadUrl"] = self.multiCnImageDownloadUrl!
                }
                if self.multiEnImageDownloadUrl != nil {
                    map["MultiEnImageDownloadUrl"] = self.multiEnImageDownloadUrl!
                }
                if self.releaseNote != nil {
                    map["ReleaseNote"] = self.releaseNote!
                }
                if self.releaseNoteEn != nil {
                    map["ReleaseNoteEn"] = self.releaseNoteEn!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.versionCode != nil {
                    map["VersionCode"] = self.versionCode!
                }
                if self.versionType != nil {
                    map["VersionType"] = self.versionType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AndroidHorizontalMultiCnImageDownloadUrl") {
                    self.androidHorizontalMultiCnImageDownloadUrl = dict["AndroidHorizontalMultiCnImageDownloadUrl"] as! String
                }
                if dict.keys.contains("AndroidHorizontalMultiEnImageDownloadUrl") {
                    self.androidHorizontalMultiEnImageDownloadUrl = dict["AndroidHorizontalMultiEnImageDownloadUrl"] as! String
                }
                if dict.keys.contains("AndroidVerticalMultiCnImageDownloadUrl") {
                    self.androidVerticalMultiCnImageDownloadUrl = dict["AndroidVerticalMultiCnImageDownloadUrl"] as! String
                }
                if dict.keys.contains("AndroidVerticalMultiEnImageDownloadUrl") {
                    self.androidVerticalMultiEnImageDownloadUrl = dict["AndroidVerticalMultiEnImageDownloadUrl"] as! String
                }
                if dict.keys.contains("CnImageDownloadUrl") {
                    self.cnImageDownloadUrl = dict["CnImageDownloadUrl"] as! String
                }
                if dict.keys.contains("Creator") {
                    self.creator = dict["Creator"] as! String
                }
                if dict.keys.contains("CustomForceUpgrade") {
                    self.customForceUpgrade = dict["CustomForceUpgrade"] as! Bool
                }
                if dict.keys.contains("DownloadUrl") {
                    self.downloadUrl = dict["DownloadUrl"] as! String
                }
                if dict.keys.contains("EnImageDownloadUrl") {
                    self.enImageDownloadUrl = dict["EnImageDownloadUrl"] as! String
                }
                if dict.keys.contains("ForceUpgrade") {
                    self.forceUpgrade = dict["ForceUpgrade"] as! Int32
                }
                if dict.keys.contains("IsAppDownloadUrl") {
                    self.isAppDownloadUrl = dict["IsAppDownloadUrl"] as! Bool
                }
                if dict.keys.contains("LocalDownloadUrl") {
                    self.localDownloadUrl = dict["LocalDownloadUrl"] as! String
                }
                if dict.keys.contains("Md5") {
                    self.md5 = dict["Md5"] as! String
                }
                if dict.keys.contains("Model") {
                    self.model = dict["Model"] as! String
                }
                if dict.keys.contains("MultiCnImageDownloadUrl") {
                    self.multiCnImageDownloadUrl = dict["MultiCnImageDownloadUrl"] as! String
                }
                if dict.keys.contains("MultiEnImageDownloadUrl") {
                    self.multiEnImageDownloadUrl = dict["MultiEnImageDownloadUrl"] as! String
                }
                if dict.keys.contains("ReleaseNote") {
                    self.releaseNote = dict["ReleaseNote"] as! String
                }
                if dict.keys.contains("ReleaseNoteEn") {
                    self.releaseNoteEn = dict["ReleaseNoteEn"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int64
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
                if dict.keys.contains("VersionCode") {
                    self.versionCode = dict["VersionCode"] as! String
                }
                if dict.keys.contains("VersionType") {
                    self.versionType = dict["VersionType"] as! String
                }
            }
        }
        public var version: GetDeviceOtaInfoResponseBody.Data.Version?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.version?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.version != nil {
                map["Version"] = self.version?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Version") {
                var model = GetDeviceOtaInfoResponseBody.Data.Version()
                model.fromMap(dict["Version"] as! [String: Any])
                self.version = model
            }
        }
    }
    public var code: String?

    public var data: GetDeviceOtaInfoResponseBody.Data?

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
            var model = GetDeviceOtaInfoResponseBody.Data()
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

public class GetDeviceOtaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceOtaInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDeviceOtaInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceOtaInfoTestRequest : Tea.TeaModel {
    public var baseVersion: String?

    public var deviceId: String?

    public var model: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseVersion != nil {
            map["BaseVersion"] = self.baseVersion!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseVersion") {
            self.baseVersion = dict["BaseVersion"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class GetDeviceOtaInfoTestResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Version : Tea.TeaModel {
            public var creator: String?

            public var downloadUrl: String?

            public var forceUpgrade: Int32?

            public var localDownloadUrl: String?

            public var md5: String?

            public var model: String?

            public var releaseNote: String?

            public var size: Int64?

            public var version: String?

            public var versionCode: String?

            public var versionType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.forceUpgrade != nil {
                    map["ForceUpgrade"] = self.forceUpgrade!
                }
                if self.localDownloadUrl != nil {
                    map["LocalDownloadUrl"] = self.localDownloadUrl!
                }
                if self.md5 != nil {
                    map["Md5"] = self.md5!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.releaseNote != nil {
                    map["ReleaseNote"] = self.releaseNote!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.versionCode != nil {
                    map["VersionCode"] = self.versionCode!
                }
                if self.versionType != nil {
                    map["VersionType"] = self.versionType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Creator") {
                    self.creator = dict["Creator"] as! String
                }
                if dict.keys.contains("DownloadUrl") {
                    self.downloadUrl = dict["DownloadUrl"] as! String
                }
                if dict.keys.contains("ForceUpgrade") {
                    self.forceUpgrade = dict["ForceUpgrade"] as! Int32
                }
                if dict.keys.contains("LocalDownloadUrl") {
                    self.localDownloadUrl = dict["LocalDownloadUrl"] as! String
                }
                if dict.keys.contains("Md5") {
                    self.md5 = dict["Md5"] as! String
                }
                if dict.keys.contains("Model") {
                    self.model = dict["Model"] as! String
                }
                if dict.keys.contains("ReleaseNote") {
                    self.releaseNote = dict["ReleaseNote"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int64
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
                if dict.keys.contains("VersionCode") {
                    self.versionCode = dict["VersionCode"] as! String
                }
                if dict.keys.contains("VersionType") {
                    self.versionType = dict["VersionType"] as! String
                }
            }
        }
        public var version: GetDeviceOtaInfoTestResponseBody.Data.Version?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.version?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.version != nil {
                map["Version"] = self.version?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Version") {
                var model = GetDeviceOtaInfoTestResponseBody.Data.Version()
                model.fromMap(dict["Version"] as! [String: Any])
                self.version = model
            }
        }
    }
    public var code: String?

    public var data: GetDeviceOtaInfoTestResponseBody.Data?

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
            var model = GetDeviceOtaInfoTestResponseBody.Data()
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

public class GetDeviceOtaInfoTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceOtaInfoTestResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDeviceOtaInfoTestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceOtaTaskVersionInfoRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetDeviceOtaTaskVersionInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var releaseNote: String?

        public var size: Int64?

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
            if self.releaseNote != nil {
                map["ReleaseNote"] = self.releaseNote!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReleaseNote") {
                self.releaseNote = dict["ReleaseNote"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetDeviceOtaTaskVersionInfoResponseBody.Data?

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
            var model = GetDeviceOtaTaskVersionInfoResponseBody.Data()
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

public class GetDeviceOtaTaskVersionInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceOtaTaskVersionInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDeviceOtaTaskVersionInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceUpgradeStatusRequest : Tea.TeaModel {
    public var appVersion: String?

    public var clientUid: String?

    public var project: String?

    public var taskUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.clientUid != nil {
            map["ClientUid"] = self.clientUid!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.taskUid != nil {
            map["TaskUid"] = self.taskUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("ClientUid") {
            self.clientUid = dict["ClientUid"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("TaskUid") {
            self.taskUid = dict["TaskUid"] as! String
        }
    }
}

public class GetDeviceUpgradeStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AppOtaStatusDTOList : Tea.TeaModel {
            public var baseVersion: String?

            public var clientType: Int32?

            public var clientUid: String?

            public var note: String?

            public var osType: String?

            public var project: String?

            public var status: Int32?

            public var targetVersion: String?

            public var taskUid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.baseVersion != nil {
                    map["BaseVersion"] = self.baseVersion!
                }
                if self.clientType != nil {
                    map["ClientType"] = self.clientType!
                }
                if self.clientUid != nil {
                    map["ClientUid"] = self.clientUid!
                }
                if self.note != nil {
                    map["Note"] = self.note!
                }
                if self.osType != nil {
                    map["OsType"] = self.osType!
                }
                if self.project != nil {
                    map["Project"] = self.project!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.targetVersion != nil {
                    map["TargetVersion"] = self.targetVersion!
                }
                if self.taskUid != nil {
                    map["TaskUid"] = self.taskUid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BaseVersion") {
                    self.baseVersion = dict["BaseVersion"] as! String
                }
                if dict.keys.contains("ClientType") {
                    self.clientType = dict["ClientType"] as! Int32
                }
                if dict.keys.contains("ClientUid") {
                    self.clientUid = dict["ClientUid"] as! String
                }
                if dict.keys.contains("Note") {
                    self.note = dict["Note"] as! String
                }
                if dict.keys.contains("OsType") {
                    self.osType = dict["OsType"] as! String
                }
                if dict.keys.contains("Project") {
                    self.project = dict["Project"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TargetVersion") {
                    self.targetVersion = dict["TargetVersion"] as! String
                }
                if dict.keys.contains("TaskUid") {
                    self.taskUid = dict["TaskUid"] as! String
                }
            }
        }
        public var appOtaStatusDTOList: [GetDeviceUpgradeStatusResponseBody.Data.AppOtaStatusDTOList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appOtaStatusDTOList != nil {
                var tmp : [Any] = []
                for k in self.appOtaStatusDTOList! {
                    tmp.append(k.toMap())
                }
                map["AppOtaStatusDTOList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppOtaStatusDTOList") {
                var tmp : [GetDeviceUpgradeStatusResponseBody.Data.AppOtaStatusDTOList] = []
                for v in dict["AppOtaStatusDTOList"] as! [Any] {
                    var model = GetDeviceUpgradeStatusResponseBody.Data.AppOtaStatusDTOList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appOtaStatusDTOList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetDeviceUpgradeStatusResponseBody.Data?

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
            var model = GetDeviceUpgradeStatusResponseBody.Data()
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

public class GetDeviceUpgradeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceUpgradeStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDeviceUpgradeStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetExportDeviceInfoOssUrlRequest : Tea.TeaModel {
    public var tenantId: String?

    public var zoneId: String?

    public var zoneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        if self.zoneName != nil {
            map["ZoneName"] = self.zoneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
        if dict.keys.contains("ZoneName") {
            self.zoneName = dict["ZoneName"] as! String
        }
    }
}

public class GetExportDeviceInfoOssUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetExportDeviceInfoOssUrlResponseBody.Data?

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
            var model = GetExportDeviceInfoOssUrlResponseBody.Data()
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

public class GetExportDeviceInfoOssUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExportDeviceInfoOssUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetExportDeviceInfoOssUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFbOssConfigRequest : Tea.TeaModel {
    public var dirPrefix: String?

    public var isDedicatedLine: Int32?

    public var region: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dirPrefix != nil {
            map["DirPrefix"] = self.dirPrefix!
        }
        if self.isDedicatedLine != nil {
            map["IsDedicatedLine"] = self.isDedicatedLine!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirPrefix") {
            self.dirPrefix = dict["DirPrefix"] as! String
        }
        if dict.keys.contains("IsDedicatedLine") {
            self.isDedicatedLine = dict["IsDedicatedLine"] as! Int32
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
    }
}

public class GetFbOssConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var endPoint: String?

        public var ossPolicy: String?

        public var ossSignature: String?

        public var sessionId: String?

        public override init() {
            super.init()
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
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.ossPolicy != nil {
                map["OssPolicy"] = self.ossPolicy!
            }
            if self.ossSignature != nil {
                map["OssSignature"] = self.ossSignature!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("EndPoint") {
                self.endPoint = dict["EndPoint"] as! String
            }
            if dict.keys.contains("OssPolicy") {
                self.ossPolicy = dict["OssPolicy"] as! String
            }
            if dict.keys.contains("OssSignature") {
                self.ossSignature = dict["OssSignature"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetFbOssConfigResponseBody.Data?

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
            var model = GetFbOssConfigResponseBody.Data()
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

public class GetFbOssConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFbOssConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetFbOssConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOssConfigRequest : Tea.TeaModel {
    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class GetOssConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var endPoint: String?

        public var ossPolicy: String?

        public var ossSignature: String?

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
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.ossPolicy != nil {
                map["OssPolicy"] = self.ossPolicy!
            }
            if self.ossSignature != nil {
                map["OssSignature"] = self.ossSignature!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("EndPoint") {
                self.endPoint = dict["EndPoint"] as! String
            }
            if dict.keys.contains("OssPolicy") {
                self.ossPolicy = dict["OssPolicy"] as! String
            }
            if dict.keys.contains("OssSignature") {
                self.ossSignature = dict["OssSignature"] as! String
            }
            if dict.keys.contains("SecurityToken") {
                self.securityToken = dict["SecurityToken"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetOssConfigResponseBody.Data?

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
            var model = GetOssConfigResponseBody.Data()
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

public class GetOssConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetOssConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVersionDownloadUrlRequest : Tea.TeaModel {
    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class GetVersionDownloadUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fullDownloadUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fullDownloadUrl != nil {
                map["FullDownloadUrl"] = self.fullDownloadUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FullDownloadUrl") {
                self.fullDownloadUrl = dict["FullDownloadUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetVersionDownloadUrlResponseBody.Data?

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
            var model = GetVersionDownloadUrlResponseBody.Data()
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

public class GetVersionDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVersionDownloadUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetVersionDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeviceOtaTaskByTenantRequest : Tea.TeaModel {
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
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListDeviceOtaTaskByTenantResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TenantDeviceOtaTasks : Tea.TeaModel {
            public var model: String?

            public var operationStatus: Int32?

            public var publishTime: String?

            public var status: Int32?

            public var taskId: Int32?

            public var upgradeCount: Int64?

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
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.operationStatus != nil {
                    map["OperationStatus"] = self.operationStatus!
                }
                if self.publishTime != nil {
                    map["PublishTime"] = self.publishTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.upgradeCount != nil {
                    map["UpgradeCount"] = self.upgradeCount!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Model") {
                    self.model = dict["Model"] as! String
                }
                if dict.keys.contains("OperationStatus") {
                    self.operationStatus = dict["OperationStatus"] as! Int32
                }
                if dict.keys.contains("PublishTime") {
                    self.publishTime = dict["PublishTime"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! Int32
                }
                if dict.keys.contains("UpgradeCount") {
                    self.upgradeCount = dict["UpgradeCount"] as! Int64
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var tenantDeviceOtaTasks: [ListDeviceOtaTaskByTenantResponseBody.Data.TenantDeviceOtaTasks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantDeviceOtaTasks != nil {
                var tmp : [Any] = []
                for k in self.tenantDeviceOtaTasks! {
                    tmp.append(k.toMap())
                }
                map["TenantDeviceOtaTasks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TenantDeviceOtaTasks") {
                var tmp : [ListDeviceOtaTaskByTenantResponseBody.Data.TenantDeviceOtaTasks] = []
                for v in dict["TenantDeviceOtaTasks"] as! [Any] {
                    var model = ListDeviceOtaTaskByTenantResponseBody.Data.TenantDeviceOtaTasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tenantDeviceOtaTasks = tmp
            }
        }
    }
    public var code: String?

    public var data: ListDeviceOtaTaskByTenantResponseBody.Data?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListDeviceOtaTaskByTenantResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDeviceOtaTaskByTenantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceOtaTaskByTenantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDeviceOtaTaskByTenantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeviceSeatsRequest : Tea.TeaModel {
    public var label: String?

    public var seatNo: String?

    public var serialNoList: [String]?

    public var tenantId: String?

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
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.seatNo != nil {
            map["SeatNo"] = self.seatNo!
        }
        if self.serialNoList != nil {
            map["SerialNoList"] = self.serialNoList!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("SeatNo") {
            self.seatNo = dict["SeatNo"] as! String
        }
        if dict.keys.contains("SerialNoList") {
            self.serialNoList = dict["SerialNoList"] as! [String]
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ListDeviceSeatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DeviceSeatDTOList : Tea.TeaModel {
            public var label: String?

            public var seatName: String?

            public var seatNo: String?

            public var serialNo: String?

            public var siteId: String?

            public var siteName: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.seatName != nil {
                    map["SeatName"] = self.seatName!
                }
                if self.seatNo != nil {
                    map["SeatNo"] = self.seatNo!
                }
                if self.serialNo != nil {
                    map["SerialNo"] = self.serialNo!
                }
                if self.siteId != nil {
                    map["SiteId"] = self.siteId!
                }
                if self.siteName != nil {
                    map["SiteName"] = self.siteName!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("SeatName") {
                    self.seatName = dict["SeatName"] as! String
                }
                if dict.keys.contains("SeatNo") {
                    self.seatNo = dict["SeatNo"] as! String
                }
                if dict.keys.contains("SerialNo") {
                    self.serialNo = dict["SerialNo"] as! String
                }
                if dict.keys.contains("SiteId") {
                    self.siteId = dict["SiteId"] as! String
                }
                if dict.keys.contains("SiteName") {
                    self.siteName = dict["SiteName"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var deviceSeatDTOList: [ListDeviceSeatsResponseBody.Data.DeviceSeatDTOList]?

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
            if self.deviceSeatDTOList != nil {
                var tmp : [Any] = []
                for k in self.deviceSeatDTOList! {
                    tmp.append(k.toMap())
                }
                map["DeviceSeatDTOList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceSeatDTOList") {
                var tmp : [ListDeviceSeatsResponseBody.Data.DeviceSeatDTOList] = []
                for v in dict["DeviceSeatDTOList"] as! [Any] {
                    var model = ListDeviceSeatsResponseBody.Data.DeviceSeatDTOList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deviceSeatDTOList = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListDeviceSeatsResponseBody.Data?

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
            var model = ListDeviceSeatsResponseBody.Data()
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

public class ListDeviceSeatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceSeatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDeviceSeatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDevicesRequest : Tea.TeaModel {
    public var alias: String?

    public var buildId: String?

    public var clientType: Int32?

    public var deviceGroupId: String?

    public var deviceIpV4: String?

    public var deviceName: String?

    public var deviceOS: String?

    public var devicePlatform: String?

    public var endUserId: String?

    public var labelContent: String?

    public var labelId: String?

    public var locationInfo: String?

    public var model: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var serialNo: String?

    public var userType: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.buildId != nil {
            map["BuildId"] = self.buildId!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.deviceIpV4 != nil {
            map["DeviceIpV4"] = self.deviceIpV4!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.deviceOS != nil {
            map["DeviceOS"] = self.deviceOS!
        }
        if self.devicePlatform != nil {
            map["DevicePlatform"] = self.devicePlatform!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.labelContent != nil {
            map["LabelContent"] = self.labelContent!
        }
        if self.labelId != nil {
            map["LabelId"] = self.labelId!
        }
        if self.locationInfo != nil {
            map["LocationInfo"] = self.locationInfo!
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
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Alias") {
            self.alias = dict["Alias"] as! String
        }
        if dict.keys.contains("BuildId") {
            self.buildId = dict["BuildId"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! Int32
        }
        if dict.keys.contains("DeviceGroupId") {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("DeviceIpV4") {
            self.deviceIpV4 = dict["DeviceIpV4"] as! String
        }
        if dict.keys.contains("DeviceName") {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("DeviceOS") {
            self.deviceOS = dict["DeviceOS"] as! String
        }
        if dict.keys.contains("DevicePlatform") {
            self.devicePlatform = dict["DevicePlatform"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("LabelContent") {
            self.labelContent = dict["LabelContent"] as! String
        }
        if dict.keys.contains("LabelId") {
            self.labelId = dict["LabelId"] as! String
        }
        if dict.keys.contains("LocationInfo") {
            self.locationInfo = dict["LocationInfo"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class ListDevicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConnectConfigs : Tea.TeaModel {
            public var connectScript: String?

            public var peripheralPid: String?

            public var peripheralVid: String?

            public var redirectPolicy: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectScript != nil {
                    map["ConnectScript"] = self.connectScript!
                }
                if self.peripheralPid != nil {
                    map["PeripheralPid"] = self.peripheralPid!
                }
                if self.peripheralVid != nil {
                    map["PeripheralVid"] = self.peripheralVid!
                }
                if self.redirectPolicy != nil {
                    map["RedirectPolicy"] = self.redirectPolicy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectScript") {
                    self.connectScript = dict["ConnectScript"] as! String
                }
                if dict.keys.contains("PeripheralPid") {
                    self.peripheralPid = dict["PeripheralPid"] as! String
                }
                if dict.keys.contains("PeripheralVid") {
                    self.peripheralVid = dict["PeripheralVid"] as! String
                }
                if dict.keys.contains("RedirectPolicy") {
                    self.redirectPolicy = dict["RedirectPolicy"] as! Int32
                }
            }
        }
        public class CustomResourcePackage : Tea.TeaModel {
            public var configAboutLogo: String?

            public var desktopWallpaper: String?

            public var loginPageBackground: String?

            public var loginPageLogo: String?

            public var personalCenterLogo: String?

            public var startLogo: String?

            public var startMenuLogo: String?

            public var upgradeLogo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configAboutLogo != nil {
                    map["ConfigAboutLogo"] = self.configAboutLogo!
                }
                if self.desktopWallpaper != nil {
                    map["DesktopWallpaper"] = self.desktopWallpaper!
                }
                if self.loginPageBackground != nil {
                    map["LoginPageBackground"] = self.loginPageBackground!
                }
                if self.loginPageLogo != nil {
                    map["LoginPageLogo"] = self.loginPageLogo!
                }
                if self.personalCenterLogo != nil {
                    map["PersonalCenterLogo"] = self.personalCenterLogo!
                }
                if self.startLogo != nil {
                    map["StartLogo"] = self.startLogo!
                }
                if self.startMenuLogo != nil {
                    map["StartMenuLogo"] = self.startMenuLogo!
                }
                if self.upgradeLogo != nil {
                    map["UpgradeLogo"] = self.upgradeLogo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigAboutLogo") {
                    self.configAboutLogo = dict["ConfigAboutLogo"] as! String
                }
                if dict.keys.contains("DesktopWallpaper") {
                    self.desktopWallpaper = dict["DesktopWallpaper"] as! String
                }
                if dict.keys.contains("LoginPageBackground") {
                    self.loginPageBackground = dict["LoginPageBackground"] as! String
                }
                if dict.keys.contains("LoginPageLogo") {
                    self.loginPageLogo = dict["LoginPageLogo"] as! String
                }
                if dict.keys.contains("PersonalCenterLogo") {
                    self.personalCenterLogo = dict["PersonalCenterLogo"] as! String
                }
                if dict.keys.contains("StartLogo") {
                    self.startLogo = dict["StartLogo"] as! String
                }
                if dict.keys.contains("StartMenuLogo") {
                    self.startMenuLogo = dict["StartMenuLogo"] as! String
                }
                if dict.keys.contains("UpgradeLogo") {
                    self.upgradeLogo = dict["UpgradeLogo"] as! String
                }
            }
        }
        public class EndUserList : Tea.TeaModel {
            public var adDomain: String?

            public var bindTime: String?

            public var directoryId: String?

            public var endUserId: String?

            public var id: Int64?

            public var serialNo: String?

            public var tenantId: String?

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
                if self.adDomain != nil {
                    map["AdDomain"] = self.adDomain!
                }
                if self.bindTime != nil {
                    map["BindTime"] = self.bindTime!
                }
                if self.directoryId != nil {
                    map["DirectoryId"] = self.directoryId!
                }
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.serialNo != nil {
                    map["SerialNo"] = self.serialNo!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.userType != nil {
                    map["UserType"] = self.userType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdDomain") {
                    self.adDomain = dict["AdDomain"] as! String
                }
                if dict.keys.contains("BindTime") {
                    self.bindTime = dict["BindTime"] as! String
                }
                if dict.keys.contains("DirectoryId") {
                    self.directoryId = dict["DirectoryId"] as! String
                }
                if dict.keys.contains("EndUserId") {
                    self.endUserId = dict["EndUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("SerialNo") {
                    self.serialNo = dict["SerialNo"] as! String
                }
                if dict.keys.contains("TenantId") {
                    self.tenantId = dict["TenantId"] as! String
                }
                if dict.keys.contains("UserType") {
                    self.userType = dict["UserType"] as! String
                }
            }
        }
        public class LabelList : Tea.TeaModel {
            public var content: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var labelId: String?

            public var tenantId: String?

            public override init() {
                super.init()
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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.labelId != nil {
                    map["LabelId"] = self.labelId!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("LabelId") {
                    self.labelId = dict["LabelId"] as! String
                }
                if dict.keys.contains("TenantId") {
                    self.tenantId = dict["TenantId"] as! String
                }
            }
        }
        public class PeripheralConfig : Tea.TeaModel {
            public var defaultPolicy: Int32?

            public var policyStrategy: Int32?

            public var usbAndInternalCamera: Int32?

            public var usbPrinter: Int32?

            public var usbStorage: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultPolicy != nil {
                    map["DefaultPolicy"] = self.defaultPolicy!
                }
                if self.policyStrategy != nil {
                    map["PolicyStrategy"] = self.policyStrategy!
                }
                if self.usbAndInternalCamera != nil {
                    map["UsbAndInternalCamera"] = self.usbAndInternalCamera!
                }
                if self.usbPrinter != nil {
                    map["UsbPrinter"] = self.usbPrinter!
                }
                if self.usbStorage != nil {
                    map["UsbStorage"] = self.usbStorage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultPolicy") {
                    self.defaultPolicy = dict["DefaultPolicy"] as! Int32
                }
                if dict.keys.contains("PolicyStrategy") {
                    self.policyStrategy = dict["PolicyStrategy"] as! Int32
                }
                if dict.keys.contains("UsbAndInternalCamera") {
                    self.usbAndInternalCamera = dict["UsbAndInternalCamera"] as! Int32
                }
                if dict.keys.contains("UsbPrinter") {
                    self.usbPrinter = dict["UsbPrinter"] as! Int32
                }
                if dict.keys.contains("UsbStorage") {
                    self.usbStorage = dict["UsbStorage"] as! Int32
                }
            }
        }
        public var activeTime: String?

        public var alias: String?

        public var autoLockScreenTime: Int32?

        public var autoLogin: Int32?

        public var autoType: String?

        public var bluetooth: String?

        public var buildId: String?

        public var clientId: String?

        public var clientType: String?

        public var connectConfigs: [ListDevicesResponseBody.Data.ConnectConfigs]?

        public var customIdleAction: Int32?

        public var customPowerOn: Int32?

        public var customProperty: String?

        public var customResourcePackage: ListDevicesResponseBody.Data.CustomResourcePackage?

        public var definePowerButton: Int32?

        public var deviceIpV4: String?

        public var deviceLock: Int32?

        public var deviceMqttConnectionStatus: Int32?

        public var deviceName: String?

        public var deviceOS: String?

        public var devicePlatform: String?

        public var displayLayout: String?

        public var displayResolution: String?

        public var displayScaleRatio: String?

        public var enableAdb: Int32?

        public var enableAutoLockScreen: Int32?

        public var enableBluetooth: Int32?

        public var enableLockScreenPassword: Int32?

        public var enableModifyPassword: Int32?

        public var enableScheduledPowerOff: Int32?

        public var enableUnlockPassword: Int32?

        public var enableWlan: Int32?

        public var endUserList: [ListDevicesResponseBody.Data.EndUserList]?

        public var etherMac: String?

        public var gmtModified: String?

        public var gmtSync: String?

        public var id: Int64?

        public var idleTime: Int32?

        public var isActive: String?

        public var labelList: [ListDevicesResponseBody.Data.LabelList]?

        public var lastLoginUser: String?

        public var localUsbPrint: Int32?

        public var locationInfo: String?

        public var lockPassword: String?

        public var model: String?

        public var orderId: String?

        public var peripheralConfig: ListDevicesResponseBody.Data.PeripheralConfig?

        public var scheduledPowerOff: String?

        public var secureNetworkType: String?

        public var serialNo: String?

        public var sleepTime: Int32?

        public var source: String?

        public var tenantId: String?

        public var usbStorage: Int32?

        public var uuid: String?

        public var wlan: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.customResourcePackage?.validate()
            try self.peripheralConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeTime != nil {
                map["ActiveTime"] = self.activeTime!
            }
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.autoLockScreenTime != nil {
                map["AutoLockScreenTime"] = self.autoLockScreenTime!
            }
            if self.autoLogin != nil {
                map["AutoLogin"] = self.autoLogin!
            }
            if self.autoType != nil {
                map["AutoType"] = self.autoType!
            }
            if self.bluetooth != nil {
                map["Bluetooth"] = self.bluetooth!
            }
            if self.buildId != nil {
                map["BuildId"] = self.buildId!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.connectConfigs != nil {
                var tmp : [Any] = []
                for k in self.connectConfigs! {
                    tmp.append(k.toMap())
                }
                map["ConnectConfigs"] = tmp
            }
            if self.customIdleAction != nil {
                map["CustomIdleAction"] = self.customIdleAction!
            }
            if self.customPowerOn != nil {
                map["CustomPowerOn"] = self.customPowerOn!
            }
            if self.customProperty != nil {
                map["CustomProperty"] = self.customProperty!
            }
            if self.customResourcePackage != nil {
                map["CustomResourcePackage"] = self.customResourcePackage?.toMap()
            }
            if self.definePowerButton != nil {
                map["DefinePowerButton"] = self.definePowerButton!
            }
            if self.deviceIpV4 != nil {
                map["DeviceIpV4"] = self.deviceIpV4!
            }
            if self.deviceLock != nil {
                map["DeviceLock"] = self.deviceLock!
            }
            if self.deviceMqttConnectionStatus != nil {
                map["DeviceMqttConnectionStatus"] = self.deviceMqttConnectionStatus!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.deviceOS != nil {
                map["DeviceOS"] = self.deviceOS!
            }
            if self.devicePlatform != nil {
                map["DevicePlatform"] = self.devicePlatform!
            }
            if self.displayLayout != nil {
                map["DisplayLayout"] = self.displayLayout!
            }
            if self.displayResolution != nil {
                map["DisplayResolution"] = self.displayResolution!
            }
            if self.displayScaleRatio != nil {
                map["DisplayScaleRatio"] = self.displayScaleRatio!
            }
            if self.enableAdb != nil {
                map["EnableAdb"] = self.enableAdb!
            }
            if self.enableAutoLockScreen != nil {
                map["EnableAutoLockScreen"] = self.enableAutoLockScreen!
            }
            if self.enableBluetooth != nil {
                map["EnableBluetooth"] = self.enableBluetooth!
            }
            if self.enableLockScreenPassword != nil {
                map["EnableLockScreenPassword"] = self.enableLockScreenPassword!
            }
            if self.enableModifyPassword != nil {
                map["EnableModifyPassword"] = self.enableModifyPassword!
            }
            if self.enableScheduledPowerOff != nil {
                map["EnableScheduledPowerOff"] = self.enableScheduledPowerOff!
            }
            if self.enableUnlockPassword != nil {
                map["EnableUnlockPassword"] = self.enableUnlockPassword!
            }
            if self.enableWlan != nil {
                map["EnableWlan"] = self.enableWlan!
            }
            if self.endUserList != nil {
                var tmp : [Any] = []
                for k in self.endUserList! {
                    tmp.append(k.toMap())
                }
                map["EndUserList"] = tmp
            }
            if self.etherMac != nil {
                map["EtherMac"] = self.etherMac!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.gmtSync != nil {
                map["GmtSync"] = self.gmtSync!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idleTime != nil {
                map["IdleTime"] = self.idleTime!
            }
            if self.isActive != nil {
                map["IsActive"] = self.isActive!
            }
            if self.labelList != nil {
                var tmp : [Any] = []
                for k in self.labelList! {
                    tmp.append(k.toMap())
                }
                map["LabelList"] = tmp
            }
            if self.lastLoginUser != nil {
                map["LastLoginUser"] = self.lastLoginUser!
            }
            if self.localUsbPrint != nil {
                map["LocalUsbPrint"] = self.localUsbPrint!
            }
            if self.locationInfo != nil {
                map["LocationInfo"] = self.locationInfo!
            }
            if self.lockPassword != nil {
                map["LockPassword"] = self.lockPassword!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.peripheralConfig != nil {
                map["PeripheralConfig"] = self.peripheralConfig?.toMap()
            }
            if self.scheduledPowerOff != nil {
                map["ScheduledPowerOff"] = self.scheduledPowerOff!
            }
            if self.secureNetworkType != nil {
                map["SecureNetworkType"] = self.secureNetworkType!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            if self.sleepTime != nil {
                map["SleepTime"] = self.sleepTime!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.usbStorage != nil {
                map["UsbStorage"] = self.usbStorage!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            if self.wlan != nil {
                map["Wlan"] = self.wlan!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveTime") {
                self.activeTime = dict["ActiveTime"] as! String
            }
            if dict.keys.contains("Alias") {
                self.alias = dict["Alias"] as! String
            }
            if dict.keys.contains("AutoLockScreenTime") {
                self.autoLockScreenTime = dict["AutoLockScreenTime"] as! Int32
            }
            if dict.keys.contains("AutoLogin") {
                self.autoLogin = dict["AutoLogin"] as! Int32
            }
            if dict.keys.contains("AutoType") {
                self.autoType = dict["AutoType"] as! String
            }
            if dict.keys.contains("Bluetooth") {
                self.bluetooth = dict["Bluetooth"] as! String
            }
            if dict.keys.contains("BuildId") {
                self.buildId = dict["BuildId"] as! String
            }
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("ClientType") {
                self.clientType = dict["ClientType"] as! String
            }
            if dict.keys.contains("ConnectConfigs") {
                var tmp : [ListDevicesResponseBody.Data.ConnectConfigs] = []
                for v in dict["ConnectConfigs"] as! [Any] {
                    var model = ListDevicesResponseBody.Data.ConnectConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.connectConfigs = tmp
            }
            if dict.keys.contains("CustomIdleAction") {
                self.customIdleAction = dict["CustomIdleAction"] as! Int32
            }
            if dict.keys.contains("CustomPowerOn") {
                self.customPowerOn = dict["CustomPowerOn"] as! Int32
            }
            if dict.keys.contains("CustomProperty") {
                self.customProperty = dict["CustomProperty"] as! String
            }
            if dict.keys.contains("CustomResourcePackage") {
                var model = ListDevicesResponseBody.Data.CustomResourcePackage()
                model.fromMap(dict["CustomResourcePackage"] as! [String: Any])
                self.customResourcePackage = model
            }
            if dict.keys.contains("DefinePowerButton") {
                self.definePowerButton = dict["DefinePowerButton"] as! Int32
            }
            if dict.keys.contains("DeviceIpV4") {
                self.deviceIpV4 = dict["DeviceIpV4"] as! String
            }
            if dict.keys.contains("DeviceLock") {
                self.deviceLock = dict["DeviceLock"] as! Int32
            }
            if dict.keys.contains("DeviceMqttConnectionStatus") {
                self.deviceMqttConnectionStatus = dict["DeviceMqttConnectionStatus"] as! Int32
            }
            if dict.keys.contains("DeviceName") {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("DeviceOS") {
                self.deviceOS = dict["DeviceOS"] as! String
            }
            if dict.keys.contains("DevicePlatform") {
                self.devicePlatform = dict["DevicePlatform"] as! String
            }
            if dict.keys.contains("DisplayLayout") {
                self.displayLayout = dict["DisplayLayout"] as! String
            }
            if dict.keys.contains("DisplayResolution") {
                self.displayResolution = dict["DisplayResolution"] as! String
            }
            if dict.keys.contains("DisplayScaleRatio") {
                self.displayScaleRatio = dict["DisplayScaleRatio"] as! String
            }
            if dict.keys.contains("EnableAdb") {
                self.enableAdb = dict["EnableAdb"] as! Int32
            }
            if dict.keys.contains("EnableAutoLockScreen") {
                self.enableAutoLockScreen = dict["EnableAutoLockScreen"] as! Int32
            }
            if dict.keys.contains("EnableBluetooth") {
                self.enableBluetooth = dict["EnableBluetooth"] as! Int32
            }
            if dict.keys.contains("EnableLockScreenPassword") {
                self.enableLockScreenPassword = dict["EnableLockScreenPassword"] as! Int32
            }
            if dict.keys.contains("EnableModifyPassword") {
                self.enableModifyPassword = dict["EnableModifyPassword"] as! Int32
            }
            if dict.keys.contains("EnableScheduledPowerOff") {
                self.enableScheduledPowerOff = dict["EnableScheduledPowerOff"] as! Int32
            }
            if dict.keys.contains("EnableUnlockPassword") {
                self.enableUnlockPassword = dict["EnableUnlockPassword"] as! Int32
            }
            if dict.keys.contains("EnableWlan") {
                self.enableWlan = dict["EnableWlan"] as! Int32
            }
            if dict.keys.contains("EndUserList") {
                var tmp : [ListDevicesResponseBody.Data.EndUserList] = []
                for v in dict["EndUserList"] as! [Any] {
                    var model = ListDevicesResponseBody.Data.EndUserList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.endUserList = tmp
            }
            if dict.keys.contains("EtherMac") {
                self.etherMac = dict["EtherMac"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("GmtSync") {
                self.gmtSync = dict["GmtSync"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IdleTime") {
                self.idleTime = dict["IdleTime"] as! Int32
            }
            if dict.keys.contains("IsActive") {
                self.isActive = dict["IsActive"] as! String
            }
            if dict.keys.contains("LabelList") {
                var tmp : [ListDevicesResponseBody.Data.LabelList] = []
                for v in dict["LabelList"] as! [Any] {
                    var model = ListDevicesResponseBody.Data.LabelList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labelList = tmp
            }
            if dict.keys.contains("LastLoginUser") {
                self.lastLoginUser = dict["LastLoginUser"] as! String
            }
            if dict.keys.contains("LocalUsbPrint") {
                self.localUsbPrint = dict["LocalUsbPrint"] as! Int32
            }
            if dict.keys.contains("LocationInfo") {
                self.locationInfo = dict["LocationInfo"] as! String
            }
            if dict.keys.contains("LockPassword") {
                self.lockPassword = dict["LockPassword"] as! String
            }
            if dict.keys.contains("Model") {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("PeripheralConfig") {
                var model = ListDevicesResponseBody.Data.PeripheralConfig()
                model.fromMap(dict["PeripheralConfig"] as! [String: Any])
                self.peripheralConfig = model
            }
            if dict.keys.contains("ScheduledPowerOff") {
                self.scheduledPowerOff = dict["ScheduledPowerOff"] as! String
            }
            if dict.keys.contains("SecureNetworkType") {
                self.secureNetworkType = dict["SecureNetworkType"] as! String
            }
            if dict.keys.contains("SerialNo") {
                self.serialNo = dict["SerialNo"] as! String
            }
            if dict.keys.contains("SleepTime") {
                self.sleepTime = dict["SleepTime"] as! Int32
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("UsbStorage") {
                self.usbStorage = dict["UsbStorage"] as! Int32
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
            if dict.keys.contains("Wlan") {
                self.wlan = dict["Wlan"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListDevicesResponseBody.Data]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListDevicesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListDevicesResponseBody.Data()
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
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFbIssueLabelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var issueLabel: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.issueLabel != nil {
                map["IssueLabel"] = self.issueLabel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IssueLabel") {
                self.issueLabel = dict["IssueLabel"] as! [String]
            }
        }
    }
    public var code: String?

    public var data: ListFbIssueLabelsResponseBody.Data?

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
            var model = ListFbIssueLabelsResponseBody.Data()
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

public class ListFbIssueLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFbIssueLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListFbIssueLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFbIssueLabelsByLCRequest : Tea.TeaModel {
    public var caller: String?

    public var languageType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.languageType != nil {
            map["LanguageType"] = self.languageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("LanguageType") {
            self.languageType = dict["LanguageType"] as! String
        }
    }
}

public class ListFbIssueLabelsByLCResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var issueLabel: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.issueLabel != nil {
                map["IssueLabel"] = self.issueLabel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IssueLabel") {
                self.issueLabel = dict["IssueLabel"] as! [String]
            }
        }
    }
    public var code: String?

    public var data: ListFbIssueLabelsByLCResponseBody.Data?

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
            var model = ListFbIssueLabelsByLCResponseBody.Data()
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

public class ListFbIssueLabelsByLCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFbIssueLabelsByLCResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListFbIssueLabelsByLCResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLabelsRequest : Tea.TeaModel {
    public var labelContent: String?

    public var labelId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelContent != nil {
            map["LabelContent"] = self.labelContent!
        }
        if self.labelId != nil {
            map["LabelId"] = self.labelId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelContent") {
            self.labelContent = dict["LabelContent"] as! String
        }
        if dict.keys.contains("LabelId") {
            self.labelId = dict["LabelId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListLabelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var labelId: String?

        public var tenantId: String?

        public override init() {
            super.init()
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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.labelId != nil {
                map["LabelId"] = self.labelId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LabelId") {
                self.labelId = dict["LabelId"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListLabelsResponseBody.Data]?

    public var message: String?

    public var nextToken: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
            var tmp : [ListLabelsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListLabelsResponseBody.Data()
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTenantDeviceOtaInfoRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var taskId: Int32?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int32
        }
    }
}

public class ListTenantDeviceOtaInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TenantDeviceOtaInfos : Tea.TeaModel {
            public var currentVersion: String?

            public var deviceId: String?

            public var model: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currentVersion != nil {
                    map["CurrentVersion"] = self.currentVersion!
                }
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentVersion") {
                    self.currentVersion = dict["CurrentVersion"] as! String
                }
                if dict.keys.contains("DeviceId") {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("Model") {
                    self.model = dict["Model"] as! String
                }
            }
        }
        public var tenantDeviceOtaInfos: [ListTenantDeviceOtaInfoResponseBody.Data.TenantDeviceOtaInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantDeviceOtaInfos != nil {
                var tmp : [Any] = []
                for k in self.tenantDeviceOtaInfos! {
                    tmp.append(k.toMap())
                }
                map["TenantDeviceOtaInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TenantDeviceOtaInfos") {
                var tmp : [ListTenantDeviceOtaInfoResponseBody.Data.TenantDeviceOtaInfos] = []
                for v in dict["TenantDeviceOtaInfos"] as! [Any] {
                    var model = ListTenantDeviceOtaInfoResponseBody.Data.TenantDeviceOtaInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tenantDeviceOtaInfos = tmp
            }
        }
    }
    public var code: String?

    public var data: ListTenantDeviceOtaInfoResponseBody.Data?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListTenantDeviceOtaInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListTenantDeviceOtaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTenantDeviceOtaInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTenantDeviceOtaInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTerminalRequest : Tea.TeaModel {
    public var alias: String?

    public var buildId: String?

    public var clientType: Int32?

    public var inManage: Bool?

    public var ipv4: String?

    public var locationInfo: String?

    public var maxResults: Int32?

    public var model: String?

    public var nextToken: String?

    public var searchKeyword: String?

    public var serialNumber: String?

    public var terminalGroupId: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.buildId != nil {
            map["BuildId"] = self.buildId!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.inManage != nil {
            map["InManage"] = self.inManage!
        }
        if self.ipv4 != nil {
            map["Ipv4"] = self.ipv4!
        }
        if self.locationInfo != nil {
            map["LocationInfo"] = self.locationInfo!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.searchKeyword != nil {
            map["SearchKeyword"] = self.searchKeyword!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.terminalGroupId != nil {
            map["TerminalGroupId"] = self.terminalGroupId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Alias") {
            self.alias = dict["Alias"] as! String
        }
        if dict.keys.contains("BuildId") {
            self.buildId = dict["BuildId"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! Int32
        }
        if dict.keys.contains("InManage") {
            self.inManage = dict["InManage"] as! Bool
        }
        if dict.keys.contains("Ipv4") {
            self.ipv4 = dict["Ipv4"] as! String
        }
        if dict.keys.contains("LocationInfo") {
            self.locationInfo = dict["LocationInfo"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("SearchKeyword") {
            self.searchKeyword = dict["SearchKeyword"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("TerminalGroupId") {
            self.terminalGroupId = dict["TerminalGroupId"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class ListTerminalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alias: String?

        public var bindUserCount: Int32?

        public var bindUserId: String?

        public var buildId: String?

        public var clientType: Int32?

        public var desktopId: String?

        public var inManage: Bool?

        public var ipv4: String?

        public var lastLoginUser: String?

        public var locationInfo: String?

        public var lockSettings: Bool?

        public var loginUser: String?

        public var model: String?

        public var onlineStatus: Bool?

        public var serialNumber: String?

        public var terminalGroupId: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.bindUserCount != nil {
                map["BindUserCount"] = self.bindUserCount!
            }
            if self.bindUserId != nil {
                map["BindUserId"] = self.bindUserId!
            }
            if self.buildId != nil {
                map["BuildId"] = self.buildId!
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.inManage != nil {
                map["InManage"] = self.inManage!
            }
            if self.ipv4 != nil {
                map["Ipv4"] = self.ipv4!
            }
            if self.lastLoginUser != nil {
                map["LastLoginUser"] = self.lastLoginUser!
            }
            if self.locationInfo != nil {
                map["LocationInfo"] = self.locationInfo!
            }
            if self.lockSettings != nil {
                map["LockSettings"] = self.lockSettings!
            }
            if self.loginUser != nil {
                map["LoginUser"] = self.loginUser!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.onlineStatus != nil {
                map["OnlineStatus"] = self.onlineStatus!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.terminalGroupId != nil {
                map["TerminalGroupId"] = self.terminalGroupId!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alias") {
                self.alias = dict["Alias"] as! String
            }
            if dict.keys.contains("BindUserCount") {
                self.bindUserCount = dict["BindUserCount"] as! Int32
            }
            if dict.keys.contains("BindUserId") {
                self.bindUserId = dict["BindUserId"] as! String
            }
            if dict.keys.contains("BuildId") {
                self.buildId = dict["BuildId"] as! String
            }
            if dict.keys.contains("ClientType") {
                self.clientType = dict["ClientType"] as! Int32
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("InManage") {
                self.inManage = dict["InManage"] as! Bool
            }
            if dict.keys.contains("Ipv4") {
                self.ipv4 = dict["Ipv4"] as! String
            }
            if dict.keys.contains("LastLoginUser") {
                self.lastLoginUser = dict["LastLoginUser"] as! String
            }
            if dict.keys.contains("LocationInfo") {
                self.locationInfo = dict["LocationInfo"] as! String
            }
            if dict.keys.contains("LockSettings") {
                self.lockSettings = dict["LockSettings"] as! Bool
            }
            if dict.keys.contains("LoginUser") {
                self.loginUser = dict["LoginUser"] as! String
            }
            if dict.keys.contains("Model") {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("OnlineStatus") {
                self.onlineStatus = dict["OnlineStatus"] as! Bool
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("TerminalGroupId") {
                self.terminalGroupId = dict["TerminalGroupId"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListTerminalResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var nextToken: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListTerminalResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListTerminalResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTerminalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTerminalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTerminalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTerminalsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var searchKeyword: String?

    public var serialNumbers: [String]?

    public var terminalGroupId: String?

    public var uuids: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.searchKeyword != nil {
            map["SearchKeyword"] = self.searchKeyword!
        }
        if self.serialNumbers != nil {
            map["SerialNumbers"] = self.serialNumbers!
        }
        if self.terminalGroupId != nil {
            map["TerminalGroupId"] = self.terminalGroupId!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("SearchKeyword") {
            self.searchKeyword = dict["SearchKeyword"] as! String
        }
        if dict.keys.contains("SerialNumbers") {
            self.serialNumbers = dict["SerialNumbers"] as! [String]
        }
        if dict.keys.contains("TerminalGroupId") {
            self.terminalGroupId = dict["TerminalGroupId"] as! String
        }
        if dict.keys.contains("Uuids") {
            self.uuids = dict["Uuids"] as! [String]
        }
    }
}

public class ListTerminalsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alias: String?

        public var buildId: String?

        public var clientType: Int32?

        public var currentConnectDesktop: String?

        public var currentLoginUser: String?

        public var ipv4: String?

        public var locationInfo: String?

        public var manageTime: String?

        public var model: String?

        public var online: Bool?

        public var passwordFreeLoginUser: String?

        public var serialNumber: String?

        public var setPasswordFreeLoginUserTime: String?

        public var terminalGroupId: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.buildId != nil {
                map["BuildId"] = self.buildId!
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.currentConnectDesktop != nil {
                map["CurrentConnectDesktop"] = self.currentConnectDesktop!
            }
            if self.currentLoginUser != nil {
                map["CurrentLoginUser"] = self.currentLoginUser!
            }
            if self.ipv4 != nil {
                map["Ipv4"] = self.ipv4!
            }
            if self.locationInfo != nil {
                map["LocationInfo"] = self.locationInfo!
            }
            if self.manageTime != nil {
                map["ManageTime"] = self.manageTime!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.passwordFreeLoginUser != nil {
                map["PasswordFreeLoginUser"] = self.passwordFreeLoginUser!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.setPasswordFreeLoginUserTime != nil {
                map["SetPasswordFreeLoginUserTime"] = self.setPasswordFreeLoginUserTime!
            }
            if self.terminalGroupId != nil {
                map["TerminalGroupId"] = self.terminalGroupId!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alias") {
                self.alias = dict["Alias"] as! String
            }
            if dict.keys.contains("BuildId") {
                self.buildId = dict["BuildId"] as! String
            }
            if dict.keys.contains("ClientType") {
                self.clientType = dict["ClientType"] as! Int32
            }
            if dict.keys.contains("CurrentConnectDesktop") {
                self.currentConnectDesktop = dict["CurrentConnectDesktop"] as! String
            }
            if dict.keys.contains("CurrentLoginUser") {
                self.currentLoginUser = dict["CurrentLoginUser"] as! String
            }
            if dict.keys.contains("Ipv4") {
                self.ipv4 = dict["Ipv4"] as! String
            }
            if dict.keys.contains("LocationInfo") {
                self.locationInfo = dict["LocationInfo"] as! String
            }
            if dict.keys.contains("ManageTime") {
                self.manageTime = dict["ManageTime"] as! String
            }
            if dict.keys.contains("Model") {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("Online") {
                self.online = dict["Online"] as! Bool
            }
            if dict.keys.contains("PasswordFreeLoginUser") {
                self.passwordFreeLoginUser = dict["PasswordFreeLoginUser"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("SetPasswordFreeLoginUserTime") {
                self.setPasswordFreeLoginUserTime = dict["SetPasswordFreeLoginUserTime"] as! String
            }
            if dict.keys.contains("TerminalGroupId") {
                self.terminalGroupId = dict["TerminalGroupId"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListTerminalsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var nextToken: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListTerminalsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListTerminalsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTerminalsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTerminalsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTerminalsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTrustDevicesRequest : Tea.TeaModel {
    public var labelContent: String?

    public var labelId: String?

    public var serialNo: String?

    public var userCustomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelContent != nil {
            map["LabelContent"] = self.labelContent!
        }
        if self.labelId != nil {
            map["LabelId"] = self.labelId!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.userCustomId != nil {
            map["UserCustomId"] = self.userCustomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelContent") {
            self.labelContent = dict["LabelContent"] as! String
        }
        if dict.keys.contains("LabelId") {
            self.labelId = dict["LabelId"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("UserCustomId") {
            self.userCustomId = dict["UserCustomId"] as! String
        }
    }
}

public class ListTrustDevicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var model: String?

        public var serialNo: String?

        public var tenantId: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Model") {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("SerialNo") {
                self.serialNo = dict["SerialNo"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListTrustDevicesResponseBody.Data]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListTrustDevicesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListTrustDevicesResponseBody.Data()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTrustDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrustDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTrustDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserFbAcIssuesRequest : Tea.TeaModel {
    public var account: String?

    public var clientVersion: String?

    public var errorMessage: String?

    public var instanceId: String?

    public var issueId: String?

    public var label: String?

    public var reservedA: String?

    public var reservedB: String?

    public var userEmail: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.issueId != nil {
            map["IssueId"] = self.issueId!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.reservedA != nil {
            map["ReservedA"] = self.reservedA!
        }
        if self.reservedB != nil {
            map["ReservedB"] = self.reservedB!
        }
        if self.userEmail != nil {
            map["UserEmail"] = self.userEmail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IssueId") {
            self.issueId = dict["IssueId"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("ReservedA") {
            self.reservedA = dict["ReservedA"] as! String
        }
        if dict.keys.contains("ReservedB") {
            self.reservedB = dict["ReservedB"] as! String
        }
        if dict.keys.contains("UserEmail") {
            self.userEmail = dict["UserEmail"] as! String
        }
    }
}

public class ListUserFbAcIssuesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class IssueDataList : Tea.TeaModel {
            public class FileList : Tea.TeaModel {
                public var fileName: String?

                public var fileSize: Int32?

                public var fileType: Int32?

                public var sessionId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileSize != nil {
                        map["FileSize"] = self.fileSize!
                    }
                    if self.fileType != nil {
                        map["FileType"] = self.fileType!
                    }
                    if self.sessionId != nil {
                        map["SessionId"] = self.sessionId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FileName") {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("FileSize") {
                        self.fileSize = dict["FileSize"] as! Int32
                    }
                    if dict.keys.contains("FileType") {
                        self.fileType = dict["FileType"] as! Int32
                    }
                    if dict.keys.contains("SessionId") {
                        self.sessionId = dict["SessionId"] as! String
                    }
                }
            }
            public var account: String?

            public var clientVersion: String?

            public var errorMessage: String?

            public var fileList: [ListUserFbAcIssuesResponseBody.Data.IssueDataList.FileList]?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var instanceId: String?

            public var issueId: Int64?

            public var label: String?

            public var reservedA: String?

            public var reservedB: String?

            public var userEmail: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.account != nil {
                    map["Account"] = self.account!
                }
                if self.clientVersion != nil {
                    map["ClientVersion"] = self.clientVersion!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.fileList != nil {
                    var tmp : [Any] = []
                    for k in self.fileList! {
                        tmp.append(k.toMap())
                    }
                    map["FileList"] = tmp
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.issueId != nil {
                    map["IssueId"] = self.issueId!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.reservedA != nil {
                    map["ReservedA"] = self.reservedA!
                }
                if self.reservedB != nil {
                    map["ReservedB"] = self.reservedB!
                }
                if self.userEmail != nil {
                    map["UserEmail"] = self.userEmail!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Account") {
                    self.account = dict["Account"] as! String
                }
                if dict.keys.contains("ClientVersion") {
                    self.clientVersion = dict["ClientVersion"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("FileList") {
                    var tmp : [ListUserFbAcIssuesResponseBody.Data.IssueDataList.FileList] = []
                    for v in dict["FileList"] as! [Any] {
                        var model = ListUserFbAcIssuesResponseBody.Data.IssueDataList.FileList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.fileList = tmp
                }
                if dict.keys.contains("GmtCreated") {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("IssueId") {
                    self.issueId = dict["IssueId"] as! Int64
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("ReservedA") {
                    self.reservedA = dict["ReservedA"] as! String
                }
                if dict.keys.contains("ReservedB") {
                    self.reservedB = dict["ReservedB"] as! String
                }
                if dict.keys.contains("UserEmail") {
                    self.userEmail = dict["UserEmail"] as! String
                }
            }
        }
        public var issueDataList: [ListUserFbAcIssuesResponseBody.Data.IssueDataList]?

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
            if self.issueDataList != nil {
                var tmp : [Any] = []
                for k in self.issueDataList! {
                    tmp.append(k.toMap())
                }
                map["IssueDataList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IssueDataList") {
                var tmp : [ListUserFbAcIssuesResponseBody.Data.IssueDataList] = []
                for v in dict["IssueDataList"] as! [Any] {
                    var model = ListUserFbAcIssuesResponseBody.Data.IssueDataList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.issueDataList = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListUserFbAcIssuesResponseBody.Data?

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
            var model = ListUserFbAcIssuesResponseBody.Data()
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

public class ListUserFbAcIssuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserFbAcIssuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUserFbAcIssuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserFbIssuesRequest : Tea.TeaModel {
    public var appId: String?

    public var clientId: String?

    public var clientModel: String?

    public var clientSn: String?

    public var customerId: String?

    public var description_: String?

    public var desktopId: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var fbType: Int32?

    public var issueId: Int32?

    public var issueLabel: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: Int32?

    public var title: String?

    public var userEmail: String?

    public var userId: String?

    public var wasRead: Int32?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientModel != nil {
            map["ClientModel"] = self.clientModel!
        }
        if self.clientSn != nil {
            map["ClientSn"] = self.clientSn!
        }
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.fbType != nil {
            map["FbType"] = self.fbType!
        }
        if self.issueId != nil {
            map["IssueId"] = self.issueId!
        }
        if self.issueLabel != nil {
            map["IssueLabel"] = self.issueLabel!
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
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userEmail != nil {
            map["UserEmail"] = self.userEmail!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.wasRead != nil {
            map["WasRead"] = self.wasRead!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientModel") {
            self.clientModel = dict["ClientModel"] as! String
        }
        if dict.keys.contains("ClientSn") {
            self.clientSn = dict["ClientSn"] as! String
        }
        if dict.keys.contains("CustomerId") {
            self.customerId = dict["CustomerId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("FbType") {
            self.fbType = dict["FbType"] as! Int32
        }
        if dict.keys.contains("IssueId") {
            self.issueId = dict["IssueId"] as! Int32
        }
        if dict.keys.contains("IssueLabel") {
            self.issueLabel = dict["IssueLabel"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UserEmail") {
            self.userEmail = dict["UserEmail"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WasRead") {
            self.wasRead = dict["WasRead"] as! Int32
        }
    }
}

public class ListUserFbIssuesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FeedbackIssueData : Tea.TeaModel {
            public class FileList : Tea.TeaModel {
                public var fileMd5: String?

                public var fileName: String?

                public var fileSize: Int32?

                public var fileType: Int32?

                public var ossUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fileMd5 != nil {
                        map["FileMd5"] = self.fileMd5!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileSize != nil {
                        map["FileSize"] = self.fileSize!
                    }
                    if self.fileType != nil {
                        map["FileType"] = self.fileType!
                    }
                    if self.ossUrl != nil {
                        map["OssUrl"] = self.ossUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FileMd5") {
                        self.fileMd5 = dict["FileMd5"] as! String
                    }
                    if dict.keys.contains("FileName") {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("FileSize") {
                        self.fileSize = dict["FileSize"] as! Int32
                    }
                    if dict.keys.contains("FileType") {
                        self.fileType = dict["FileType"] as! Int32
                    }
                    if dict.keys.contains("OssUrl") {
                        self.ossUrl = dict["OssUrl"] as! String
                    }
                }
            }
            public var appId: String?

            public var clientId: String?

            public var clientModel: String?

            public var clientSn: String?

            public var customerId: String?

            public var description_: String?

            public var desktopId: String?

            public var errorCode: String?

            public var errorMsg: String?

            public var fbType: Int32?

            public var fileList: [ListUserFbIssuesResponseBody.Data.FeedbackIssueData.FileList]?

            public var gmtCreated: String?

            public var issueId: Int32?

            public var issueLabel: String?

            public var status: Int32?

            public var title: String?

            public var userEmail: String?

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
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.clientId != nil {
                    map["ClientId"] = self.clientId!
                }
                if self.clientModel != nil {
                    map["ClientModel"] = self.clientModel!
                }
                if self.clientSn != nil {
                    map["ClientSn"] = self.clientSn!
                }
                if self.customerId != nil {
                    map["CustomerId"] = self.customerId!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.desktopId != nil {
                    map["DesktopId"] = self.desktopId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.fbType != nil {
                    map["FbType"] = self.fbType!
                }
                if self.fileList != nil {
                    var tmp : [Any] = []
                    for k in self.fileList! {
                        tmp.append(k.toMap())
                    }
                    map["FileList"] = tmp
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.issueId != nil {
                    map["IssueId"] = self.issueId!
                }
                if self.issueLabel != nil {
                    map["IssueLabel"] = self.issueLabel!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.userEmail != nil {
                    map["UserEmail"] = self.userEmail!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("ClientId") {
                    self.clientId = dict["ClientId"] as! String
                }
                if dict.keys.contains("ClientModel") {
                    self.clientModel = dict["ClientModel"] as! String
                }
                if dict.keys.contains("ClientSn") {
                    self.clientSn = dict["ClientSn"] as! String
                }
                if dict.keys.contains("CustomerId") {
                    self.customerId = dict["CustomerId"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DesktopId") {
                    self.desktopId = dict["DesktopId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMsg") {
                    self.errorMsg = dict["ErrorMsg"] as! String
                }
                if dict.keys.contains("FbType") {
                    self.fbType = dict["FbType"] as! Int32
                }
                if dict.keys.contains("FileList") {
                    var tmp : [ListUserFbIssuesResponseBody.Data.FeedbackIssueData.FileList] = []
                    for v in dict["FileList"] as! [Any] {
                        var model = ListUserFbIssuesResponseBody.Data.FeedbackIssueData.FileList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.fileList = tmp
                }
                if dict.keys.contains("GmtCreated") {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("IssueId") {
                    self.issueId = dict["IssueId"] as! Int32
                }
                if dict.keys.contains("IssueLabel") {
                    self.issueLabel = dict["IssueLabel"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("UserEmail") {
                    self.userEmail = dict["UserEmail"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var count: String?

        public var feedbackIssueData: [ListUserFbIssuesResponseBody.Data.FeedbackIssueData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.feedbackIssueData != nil {
                var tmp : [Any] = []
                for k in self.feedbackIssueData! {
                    tmp.append(k.toMap())
                }
                map["FeedbackIssueData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! String
            }
            if dict.keys.contains("FeedbackIssueData") {
                var tmp : [ListUserFbIssuesResponseBody.Data.FeedbackIssueData] = []
                for v in dict["FeedbackIssueData"] as! [Any] {
                    var model = ListUserFbIssuesResponseBody.Data.FeedbackIssueData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.feedbackIssueData = tmp
            }
        }
    }
    public var code: String?

    public var data: ListUserFbIssuesResponseBody.Data?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListUserFbIssuesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListUserFbIssuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserFbIssuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUserFbIssuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDevicesSecureNetworkTypeRequest : Tea.TeaModel {
    public var allDevices: Int64?

    public var secureNetworkType: String?

    public var serialNos: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allDevices != nil {
            map["AllDevices"] = self.allDevices!
        }
        if self.secureNetworkType != nil {
            map["SecureNetworkType"] = self.secureNetworkType!
        }
        if self.serialNos != nil {
            map["SerialNos"] = self.serialNos!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllDevices") {
            self.allDevices = dict["AllDevices"] as! Int64
        }
        if dict.keys.contains("SecureNetworkType") {
            self.secureNetworkType = dict["SecureNetworkType"] as! String
        }
        if dict.keys.contains("SerialNos") {
            self.serialNos = dict["SerialNos"] as! String
        }
    }
}

public class ModifyDevicesSecureNetworkTypeResponseBody : Tea.TeaModel {
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

public class ModifyDevicesSecureNetworkTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDevicesSecureNetworkTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDevicesSecureNetworkTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySecureNetworkTypeRequest : Tea.TeaModel {
    public var secureNetworkType: String?

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
        if self.secureNetworkType != nil {
            map["SecureNetworkType"] = self.secureNetworkType!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecureNetworkType") {
            self.secureNetworkType = dict["SecureNetworkType"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
    }
}

public class ModifySecureNetworkTypeResponseBody : Tea.TeaModel {
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

public class ModifySecureNetworkTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecureNetworkTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifySecureNetworkTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterDeviceRequest : Tea.TeaModel {
    public var bluetooth: String?

    public var buildId: String?

    public var chipId: String?

    public var clientId: String?

    public var clientType: Int32?

    public var cpu: String?

    public var customId: String?

    public var etherMac: String?

    public var memory: String?

    public var model: String?

    public var serialNo: String?

    public var storage: String?

    public var token: String?

    public var wlan: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bluetooth != nil {
            map["Bluetooth"] = self.bluetooth!
        }
        if self.buildId != nil {
            map["BuildId"] = self.buildId!
        }
        if self.chipId != nil {
            map["ChipId"] = self.chipId!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.etherMac != nil {
            map["EtherMac"] = self.etherMac!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.storage != nil {
            map["Storage"] = self.storage!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.wlan != nil {
            map["Wlan"] = self.wlan!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bluetooth") {
            self.bluetooth = dict["Bluetooth"] as! String
        }
        if dict.keys.contains("BuildId") {
            self.buildId = dict["BuildId"] as! String
        }
        if dict.keys.contains("ChipId") {
            self.chipId = dict["ChipId"] as! String
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! Int32
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! String
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("EtherMac") {
            self.etherMac = dict["EtherMac"] as! String
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("Storage") {
            self.storage = dict["Storage"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("Wlan") {
            self.wlan = dict["Wlan"] as! String
        }
    }
}

public class RegisterDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: RegisterDeviceResponseBody.Data?

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
            var model = RegisterDeviceResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RegisterDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportAppOtaInfoRequest : Tea.TeaModel {
    public var baseVersion: String?

    public var clientType: Int32?

    public var clientUid: String?

    public var note: String?

    public var osType: String?

    public var project: String?

    public var status: Int32?

    public var targetVersion: String?

    public var taskUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseVersion != nil {
            map["BaseVersion"] = self.baseVersion!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clientUid != nil {
            map["ClientUid"] = self.clientUid!
        }
        if self.note != nil {
            map["Note"] = self.note!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.targetVersion != nil {
            map["TargetVersion"] = self.targetVersion!
        }
        if self.taskUid != nil {
            map["TaskUid"] = self.taskUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseVersion") {
            self.baseVersion = dict["BaseVersion"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! Int32
        }
        if dict.keys.contains("ClientUid") {
            self.clientUid = dict["ClientUid"] as! String
        }
        if dict.keys.contains("Note") {
            self.note = dict["Note"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TargetVersion") {
            self.targetVersion = dict["TargetVersion"] as! String
        }
        if dict.keys.contains("TaskUid") {
            self.taskUid = dict["TaskUid"] as! String
        }
    }
}

public class ReportAppOtaInfoResponseBody : Tea.TeaModel {
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

public class ReportAppOtaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportAppOtaInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReportAppOtaInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportDeviceOtaInfoRequest : Tea.TeaModel {
    public var baseVersion: String?

    public var deviceId: String?

    public var model: String?

    public var note: String?

    public var status: Int32?

    public var targetVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseVersion != nil {
            map["BaseVersion"] = self.baseVersion!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.note != nil {
            map["Note"] = self.note!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.targetVersion != nil {
            map["TargetVersion"] = self.targetVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseVersion") {
            self.baseVersion = dict["BaseVersion"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("Note") {
            self.note = dict["Note"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TargetVersion") {
            self.targetVersion = dict["TargetVersion"] as! String
        }
    }
}

public class ReportDeviceOtaInfoResponseBody : Tea.TeaModel {
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

public class ReportDeviceOtaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportDeviceOtaInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReportDeviceOtaInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportUserFbAcIssueRequest : Tea.TeaModel {
    public class FileList : Tea.TeaModel {
        public var fileName: String?

        public var fileSize: Int32?

        public var fileType: Int32?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileSize != nil {
                map["FileSize"] = self.fileSize!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FileSize") {
                self.fileSize = dict["FileSize"] as! Int32
            }
            if dict.keys.contains("FileType") {
                self.fileType = dict["FileType"] as! Int32
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var account: String?

    public var clientVersion: String?

    public var errorMsg: String?

    public var fileList: [ReportUserFbAcIssueRequest.FileList]?

    public var instanceId: String?

    public var labels: String?

    public var reservedA: String?

    public var reservedB: String?

    public var userEmail: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.fileList != nil {
            var tmp : [Any] = []
            for k in self.fileList! {
                tmp.append(k.toMap())
            }
            map["FileList"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.reservedA != nil {
            map["ReservedA"] = self.reservedA!
        }
        if self.reservedB != nil {
            map["ReservedB"] = self.reservedB!
        }
        if self.userEmail != nil {
            map["UserEmail"] = self.userEmail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("FileList") {
            var tmp : [ReportUserFbAcIssueRequest.FileList] = []
            for v in dict["FileList"] as! [Any] {
                var model = ReportUserFbAcIssueRequest.FileList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fileList = tmp
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("ReservedA") {
            self.reservedA = dict["ReservedA"] as! String
        }
        if dict.keys.contains("ReservedB") {
            self.reservedB = dict["ReservedB"] as! String
        }
        if dict.keys.contains("UserEmail") {
            self.userEmail = dict["UserEmail"] as! String
        }
    }
}

public class ReportUserFbAcIssueShrinkRequest : Tea.TeaModel {
    public var account: String?

    public var clientVersion: String?

    public var errorMsg: String?

    public var fileListShrink: String?

    public var instanceId: String?

    public var labels: String?

    public var reservedA: String?

    public var reservedB: String?

    public var userEmail: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.fileListShrink != nil {
            map["FileList"] = self.fileListShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.reservedA != nil {
            map["ReservedA"] = self.reservedA!
        }
        if self.reservedB != nil {
            map["ReservedB"] = self.reservedB!
        }
        if self.userEmail != nil {
            map["UserEmail"] = self.userEmail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("FileList") {
            self.fileListShrink = dict["FileList"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("ReservedA") {
            self.reservedA = dict["ReservedA"] as! String
        }
        if dict.keys.contains("ReservedB") {
            self.reservedB = dict["ReservedB"] as! String
        }
        if dict.keys.contains("UserEmail") {
            self.userEmail = dict["UserEmail"] as! String
        }
    }
}

public class ReportUserFbAcIssueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var issueId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.issueId != nil {
                map["IssueId"] = self.issueId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IssueId") {
                self.issueId = dict["IssueId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ReportUserFbAcIssueResponseBody.Data?

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
            var model = ReportUserFbAcIssueResponseBody.Data()
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

public class ReportUserFbAcIssueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportUserFbAcIssueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReportUserFbAcIssueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportUserFbIssueRequest : Tea.TeaModel {
    public class FileList : Tea.TeaModel {
        public var fileMd5: String?

        public var fileName: String?

        public var fileSize: Int32?

        public var fileType: Int32?

        public var ossUrl: String?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileMd5 != nil {
                map["FileMd5"] = self.fileMd5!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileSize != nil {
                map["FileSize"] = self.fileSize!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.ossUrl != nil {
                map["OssUrl"] = self.ossUrl!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileMd5") {
                self.fileMd5 = dict["FileMd5"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FileSize") {
                self.fileSize = dict["FileSize"] as! Int32
            }
            if dict.keys.contains("FileType") {
                self.fileType = dict["FileType"] as! Int32
            }
            if dict.keys.contains("OssUrl") {
                self.ossUrl = dict["OssUrl"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var appId: String?

    public var clientId: String?

    public var clientModel: String?

    public var clientOsName: String?

    public var clientSn: String?

    public var clientVersion: String?

    public var customerId: String?

    public var description_: String?

    public var desktopId: String?

    public var desktopType: Int32?

    public var errorCode: String?

    public var errorMsg: String?

    public var fbType: Int32?

    public var fileList: [ReportUserFbIssueRequest.FileList]?

    public var issueLabel: String?

    public var occurTime: Int64?

    public var reservedA: String?

    public var reservedB: String?

    public var telNo: String?

    public var title: String?

    public var userEmail: String?

    public var userId: String?

    public var userName: String?

    public var workspaceId: String?

    public var wyId: String?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientModel != nil {
            map["ClientModel"] = self.clientModel!
        }
        if self.clientOsName != nil {
            map["ClientOsName"] = self.clientOsName!
        }
        if self.clientSn != nil {
            map["ClientSn"] = self.clientSn!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.desktopType != nil {
            map["DesktopType"] = self.desktopType!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.fbType != nil {
            map["FbType"] = self.fbType!
        }
        if self.fileList != nil {
            var tmp : [Any] = []
            for k in self.fileList! {
                tmp.append(k.toMap())
            }
            map["FileList"] = tmp
        }
        if self.issueLabel != nil {
            map["IssueLabel"] = self.issueLabel!
        }
        if self.occurTime != nil {
            map["OccurTime"] = self.occurTime!
        }
        if self.reservedA != nil {
            map["ReservedA"] = self.reservedA!
        }
        if self.reservedB != nil {
            map["ReservedB"] = self.reservedB!
        }
        if self.telNo != nil {
            map["TelNo"] = self.telNo!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userEmail != nil {
            map["UserEmail"] = self.userEmail!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.wyId != nil {
            map["WyId"] = self.wyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientModel") {
            self.clientModel = dict["ClientModel"] as! String
        }
        if dict.keys.contains("ClientOsName") {
            self.clientOsName = dict["ClientOsName"] as! String
        }
        if dict.keys.contains("ClientSn") {
            self.clientSn = dict["ClientSn"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("CustomerId") {
            self.customerId = dict["CustomerId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("DesktopType") {
            self.desktopType = dict["DesktopType"] as! Int32
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("FbType") {
            self.fbType = dict["FbType"] as! Int32
        }
        if dict.keys.contains("FileList") {
            var tmp : [ReportUserFbIssueRequest.FileList] = []
            for v in dict["FileList"] as! [Any] {
                var model = ReportUserFbIssueRequest.FileList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fileList = tmp
        }
        if dict.keys.contains("IssueLabel") {
            self.issueLabel = dict["IssueLabel"] as! String
        }
        if dict.keys.contains("OccurTime") {
            self.occurTime = dict["OccurTime"] as! Int64
        }
        if dict.keys.contains("ReservedA") {
            self.reservedA = dict["ReservedA"] as! String
        }
        if dict.keys.contains("ReservedB") {
            self.reservedB = dict["ReservedB"] as! String
        }
        if dict.keys.contains("TelNo") {
            self.telNo = dict["TelNo"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UserEmail") {
            self.userEmail = dict["UserEmail"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WyId") {
            self.wyId = dict["WyId"] as! String
        }
    }
}

public class ReportUserFbIssueShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var clientId: String?

    public var clientModel: String?

    public var clientOsName: String?

    public var clientSn: String?

    public var clientVersion: String?

    public var customerId: String?

    public var description_: String?

    public var desktopId: String?

    public var desktopType: Int32?

    public var errorCode: String?

    public var errorMsg: String?

    public var fbType: Int32?

    public var fileListShrink: String?

    public var issueLabel: String?

    public var occurTime: Int64?

    public var reservedA: String?

    public var reservedB: String?

    public var telNo: String?

    public var title: String?

    public var userEmail: String?

    public var userId: String?

    public var userName: String?

    public var workspaceId: String?

    public var wyId: String?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientModel != nil {
            map["ClientModel"] = self.clientModel!
        }
        if self.clientOsName != nil {
            map["ClientOsName"] = self.clientOsName!
        }
        if self.clientSn != nil {
            map["ClientSn"] = self.clientSn!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.desktopType != nil {
            map["DesktopType"] = self.desktopType!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.fbType != nil {
            map["FbType"] = self.fbType!
        }
        if self.fileListShrink != nil {
            map["FileList"] = self.fileListShrink!
        }
        if self.issueLabel != nil {
            map["IssueLabel"] = self.issueLabel!
        }
        if self.occurTime != nil {
            map["OccurTime"] = self.occurTime!
        }
        if self.reservedA != nil {
            map["ReservedA"] = self.reservedA!
        }
        if self.reservedB != nil {
            map["ReservedB"] = self.reservedB!
        }
        if self.telNo != nil {
            map["TelNo"] = self.telNo!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userEmail != nil {
            map["UserEmail"] = self.userEmail!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.wyId != nil {
            map["WyId"] = self.wyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientModel") {
            self.clientModel = dict["ClientModel"] as! String
        }
        if dict.keys.contains("ClientOsName") {
            self.clientOsName = dict["ClientOsName"] as! String
        }
        if dict.keys.contains("ClientSn") {
            self.clientSn = dict["ClientSn"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("CustomerId") {
            self.customerId = dict["CustomerId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("DesktopType") {
            self.desktopType = dict["DesktopType"] as! Int32
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("FbType") {
            self.fbType = dict["FbType"] as! Int32
        }
        if dict.keys.contains("FileList") {
            self.fileListShrink = dict["FileList"] as! String
        }
        if dict.keys.contains("IssueLabel") {
            self.issueLabel = dict["IssueLabel"] as! String
        }
        if dict.keys.contains("OccurTime") {
            self.occurTime = dict["OccurTime"] as! Int64
        }
        if dict.keys.contains("ReservedA") {
            self.reservedA = dict["ReservedA"] as! String
        }
        if dict.keys.contains("ReservedB") {
            self.reservedB = dict["ReservedB"] as! String
        }
        if dict.keys.contains("TelNo") {
            self.telNo = dict["TelNo"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UserEmail") {
            self.userEmail = dict["UserEmail"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WyId") {
            self.wyId = dict["WyId"] as! String
        }
    }
}

public class ReportUserFbIssueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var issueId: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.issueId != nil {
                map["IssueId"] = self.issueId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IssueId") {
                self.issueId = dict["IssueId"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ReportUserFbIssueResponseBody.Data?

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
            var model = ReportUserFbIssueResponseBody.Data()
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

public class ReportUserFbIssueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportUserFbIssueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReportUserFbIssueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendOpsMessageToTerminalsRequest : Tea.TeaModel {
    public var delay: Bool?

    public var msg: String?

    public var opsAction: String?

    public var uuids: [String]?

    public var waitForAck: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delay != nil {
            map["Delay"] = self.delay!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.opsAction != nil {
            map["OpsAction"] = self.opsAction!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        if self.waitForAck != nil {
            map["WaitForAck"] = self.waitForAck!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Delay") {
            self.delay = dict["Delay"] as! Bool
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("OpsAction") {
            self.opsAction = dict["OpsAction"] as! String
        }
        if dict.keys.contains("Uuids") {
            self.uuids = dict["Uuids"] as! [String]
        }
        if dict.keys.contains("WaitForAck") {
            self.waitForAck = dict["WaitForAck"] as! Bool
        }
    }
}

public class SendOpsMessageToTerminalsResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SendOpsMessageToTerminalsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendOpsMessageToTerminalsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SendOpsMessageToTerminalsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDeviceOtaAutoStatusRequest : Tea.TeaModel {
    public var autoUpdate: Int32?

    public var autoUpdateTimeSchedule: String?

    public var clientType: Int32?

    public var forceUpgrade: Int32?

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
        if self.autoUpdate != nil {
            map["AutoUpdate"] = self.autoUpdate!
        }
        if self.autoUpdateTimeSchedule != nil {
            map["AutoUpdateTimeSchedule"] = self.autoUpdateTimeSchedule!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.forceUpgrade != nil {
            map["ForceUpgrade"] = self.forceUpgrade!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoUpdate") {
            self.autoUpdate = dict["AutoUpdate"] as! Int32
        }
        if dict.keys.contains("AutoUpdateTimeSchedule") {
            self.autoUpdateTimeSchedule = dict["AutoUpdateTimeSchedule"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! Int32
        }
        if dict.keys.contains("ForceUpgrade") {
            self.forceUpgrade = dict["ForceUpgrade"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class SetDeviceOtaAutoStatusResponseBody : Tea.TeaModel {
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

public class SetDeviceOtaAutoStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDeviceOtaAutoStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetDeviceOtaAutoStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDeviceOtaTaskStatusRequest : Tea.TeaModel {
    public var operationStatus: Int32?

    public var taskId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationStatus != nil {
            map["OperationStatus"] = self.operationStatus!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationStatus") {
            self.operationStatus = dict["OperationStatus"] as! Int32
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int32
        }
    }
}

public class SetDeviceOtaTaskStatusResponseBody : Tea.TeaModel {
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

public class SetDeviceOtaTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDeviceOtaTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetDeviceOtaTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindAccountLessLoginUserRequest : Tea.TeaModel {
    public var serialNumber: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class UnbindAccountLessLoginUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnbindAccountLessLoginUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindAccountLessLoginUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UnbindAccountLessLoginUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindDeviceSeatsRequest : Tea.TeaModel {
    public var serialNoList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serialNoList != nil {
            map["SerialNoList"] = self.serialNoList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SerialNoList") {
            self.serialNoList = dict["SerialNoList"] as! [String]
        }
    }
}

public class UnbindDeviceSeatsShrinkRequest : Tea.TeaModel {
    public var serialNoListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serialNoListShrink != nil {
            map["SerialNoList"] = self.serialNoListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SerialNoList") {
            self.serialNoListShrink = dict["SerialNoList"] as! String
        }
    }
}

public class UnbindDeviceSeatsResponseBody : Tea.TeaModel {
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

public class UnbindDeviceSeatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindDeviceSeatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UnbindDeviceSeatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindPasswordFreeLoginUserRequest : Tea.TeaModel {
    public var serialNumber: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class UnbindPasswordFreeLoginUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnbindPasswordFreeLoginUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindPasswordFreeLoginUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UnbindPasswordFreeLoginUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAliasRequest : Tea.TeaModel {
    public var alias: String?

    public var serialNo: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Alias") {
            self.alias = dict["Alias"] as! String
        }
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class UpdateAliasResponseBody : Tea.TeaModel {
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

public class UpdateAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDeviceBindedEndUserRequest : Tea.TeaModel {
    public class SourceAdEndUsers : Tea.TeaModel {
        public var adDomain: String?

        public var directoryId: String?

        public var endUserId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adDomain != nil {
                map["AdDomain"] = self.adDomain!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdDomain") {
                self.adDomain = dict["AdDomain"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
        }
    }
    public class TargetAdEndUsers : Tea.TeaModel {
        public var adDomain: String?

        public var directoryId: String?

        public var endUserId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adDomain != nil {
                map["AdDomain"] = self.adDomain!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdDomain") {
                self.adDomain = dict["AdDomain"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
        }
    }
    public var serialNo: String?

    public var sourceAdEndUsers: [UpdateDeviceBindedEndUserRequest.SourceAdEndUsers]?

    public var sourceEndUserIds: String?

    public var targetAdEndUsers: [UpdateDeviceBindedEndUserRequest.TargetAdEndUsers]?

    public var targetEndUserIds: String?

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
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.sourceAdEndUsers != nil {
            var tmp : [Any] = []
            for k in self.sourceAdEndUsers! {
                tmp.append(k.toMap())
            }
            map["SourceAdEndUsers"] = tmp
        }
        if self.sourceEndUserIds != nil {
            map["SourceEndUserIds"] = self.sourceEndUserIds!
        }
        if self.targetAdEndUsers != nil {
            var tmp : [Any] = []
            for k in self.targetAdEndUsers! {
                tmp.append(k.toMap())
            }
            map["TargetAdEndUsers"] = tmp
        }
        if self.targetEndUserIds != nil {
            map["TargetEndUserIds"] = self.targetEndUserIds!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SerialNo") {
            self.serialNo = dict["SerialNo"] as! String
        }
        if dict.keys.contains("SourceAdEndUsers") {
            var tmp : [UpdateDeviceBindedEndUserRequest.SourceAdEndUsers] = []
            for v in dict["SourceAdEndUsers"] as! [Any] {
                var model = UpdateDeviceBindedEndUserRequest.SourceAdEndUsers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sourceAdEndUsers = tmp
        }
        if dict.keys.contains("SourceEndUserIds") {
            self.sourceEndUserIds = dict["SourceEndUserIds"] as! String
        }
        if dict.keys.contains("TargetAdEndUsers") {
            var tmp : [UpdateDeviceBindedEndUserRequest.TargetAdEndUsers] = []
            for v in dict["TargetAdEndUsers"] as! [Any] {
                var model = UpdateDeviceBindedEndUserRequest.TargetAdEndUsers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.targetAdEndUsers = tmp
        }
        if dict.keys.contains("TargetEndUserIds") {
            self.targetEndUserIds = dict["TargetEndUserIds"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class UpdateDeviceBindedEndUserResponseBody : Tea.TeaModel {
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

public class UpdateDeviceBindedEndUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeviceBindedEndUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateDeviceBindedEndUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLabelRequest : Tea.TeaModel {
    public var labelContent: String?

    public var labelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelContent != nil {
            map["LabelContent"] = self.labelContent!
        }
        if self.labelId != nil {
            map["LabelId"] = self.labelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelContent") {
            self.labelContent = dict["LabelContent"] as! String
        }
        if dict.keys.contains("LabelId") {
            self.labelId = dict["LabelId"] as! String
        }
    }
}

public class UpdateLabelResponseBody : Tea.TeaModel {
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

public class UpdateLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLabelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateLabelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTerminalPolicyRequest : Tea.TeaModel {
    public var backgroundModeTitle: String?

    public var displayLayout: String?

    public var displayResolution: String?

    public var displayScaleRatio: String?

    public var enableAutoLockScreen: Int32?

    public var enableAutoLogin: Int32?

    public var enableBackgroundMode: Int32?

    public var enableBluetooth: Int32?

    public var enableModifyPassword: Int32?

    public var enableScheduledReboot: Int32?

    public var enableScheduledShutdown: Int32?

    public var enableSwitchPersonal: Int32?

    public var enableWlan: Int32?

    public var idleTimeout: Int32?

    public var idleTimeoutAction: Int32?

    public var name: String?

    public var powerButtonDefine: Int32?

    public var powerButtonDefineForAs: Int32?

    public var powerButtonDefineForNs: Int32?

    public var powerOnBehavior: Int32?

    public var scheduledReboot: String?

    public var scheduledShutdown: String?

    public var settingLock: Int32?

    public var terminalPolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backgroundModeTitle != nil {
            map["BackgroundModeTitle"] = self.backgroundModeTitle!
        }
        if self.displayLayout != nil {
            map["DisplayLayout"] = self.displayLayout!
        }
        if self.displayResolution != nil {
            map["DisplayResolution"] = self.displayResolution!
        }
        if self.displayScaleRatio != nil {
            map["DisplayScaleRatio"] = self.displayScaleRatio!
        }
        if self.enableAutoLockScreen != nil {
            map["EnableAutoLockScreen"] = self.enableAutoLockScreen!
        }
        if self.enableAutoLogin != nil {
            map["EnableAutoLogin"] = self.enableAutoLogin!
        }
        if self.enableBackgroundMode != nil {
            map["EnableBackgroundMode"] = self.enableBackgroundMode!
        }
        if self.enableBluetooth != nil {
            map["EnableBluetooth"] = self.enableBluetooth!
        }
        if self.enableModifyPassword != nil {
            map["EnableModifyPassword"] = self.enableModifyPassword!
        }
        if self.enableScheduledReboot != nil {
            map["EnableScheduledReboot"] = self.enableScheduledReboot!
        }
        if self.enableScheduledShutdown != nil {
            map["EnableScheduledShutdown"] = self.enableScheduledShutdown!
        }
        if self.enableSwitchPersonal != nil {
            map["EnableSwitchPersonal"] = self.enableSwitchPersonal!
        }
        if self.enableWlan != nil {
            map["EnableWlan"] = self.enableWlan!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.idleTimeoutAction != nil {
            map["IdleTimeoutAction"] = self.idleTimeoutAction!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.powerButtonDefine != nil {
            map["PowerButtonDefine"] = self.powerButtonDefine!
        }
        if self.powerButtonDefineForAs != nil {
            map["PowerButtonDefineForAs"] = self.powerButtonDefineForAs!
        }
        if self.powerButtonDefineForNs != nil {
            map["PowerButtonDefineForNs"] = self.powerButtonDefineForNs!
        }
        if self.powerOnBehavior != nil {
            map["PowerOnBehavior"] = self.powerOnBehavior!
        }
        if self.scheduledReboot != nil {
            map["ScheduledReboot"] = self.scheduledReboot!
        }
        if self.scheduledShutdown != nil {
            map["ScheduledShutdown"] = self.scheduledShutdown!
        }
        if self.settingLock != nil {
            map["SettingLock"] = self.settingLock!
        }
        if self.terminalPolicyId != nil {
            map["TerminalPolicyId"] = self.terminalPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackgroundModeTitle") {
            self.backgroundModeTitle = dict["BackgroundModeTitle"] as! String
        }
        if dict.keys.contains("DisplayLayout") {
            self.displayLayout = dict["DisplayLayout"] as! String
        }
        if dict.keys.contains("DisplayResolution") {
            self.displayResolution = dict["DisplayResolution"] as! String
        }
        if dict.keys.contains("DisplayScaleRatio") {
            self.displayScaleRatio = dict["DisplayScaleRatio"] as! String
        }
        if dict.keys.contains("EnableAutoLockScreen") {
            self.enableAutoLockScreen = dict["EnableAutoLockScreen"] as! Int32
        }
        if dict.keys.contains("EnableAutoLogin") {
            self.enableAutoLogin = dict["EnableAutoLogin"] as! Int32
        }
        if dict.keys.contains("EnableBackgroundMode") {
            self.enableBackgroundMode = dict["EnableBackgroundMode"] as! Int32
        }
        if dict.keys.contains("EnableBluetooth") {
            self.enableBluetooth = dict["EnableBluetooth"] as! Int32
        }
        if dict.keys.contains("EnableModifyPassword") {
            self.enableModifyPassword = dict["EnableModifyPassword"] as! Int32
        }
        if dict.keys.contains("EnableScheduledReboot") {
            self.enableScheduledReboot = dict["EnableScheduledReboot"] as! Int32
        }
        if dict.keys.contains("EnableScheduledShutdown") {
            self.enableScheduledShutdown = dict["EnableScheduledShutdown"] as! Int32
        }
        if dict.keys.contains("EnableSwitchPersonal") {
            self.enableSwitchPersonal = dict["EnableSwitchPersonal"] as! Int32
        }
        if dict.keys.contains("EnableWlan") {
            self.enableWlan = dict["EnableWlan"] as! Int32
        }
        if dict.keys.contains("IdleTimeout") {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("IdleTimeoutAction") {
            self.idleTimeoutAction = dict["IdleTimeoutAction"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PowerButtonDefine") {
            self.powerButtonDefine = dict["PowerButtonDefine"] as! Int32
        }
        if dict.keys.contains("PowerButtonDefineForAs") {
            self.powerButtonDefineForAs = dict["PowerButtonDefineForAs"] as! Int32
        }
        if dict.keys.contains("PowerButtonDefineForNs") {
            self.powerButtonDefineForNs = dict["PowerButtonDefineForNs"] as! Int32
        }
        if dict.keys.contains("PowerOnBehavior") {
            self.powerOnBehavior = dict["PowerOnBehavior"] as! Int32
        }
        if dict.keys.contains("ScheduledReboot") {
            self.scheduledReboot = dict["ScheduledReboot"] as! String
        }
        if dict.keys.contains("ScheduledShutdown") {
            self.scheduledShutdown = dict["ScheduledShutdown"] as! String
        }
        if dict.keys.contains("SettingLock") {
            self.settingLock = dict["SettingLock"] as! Int32
        }
        if dict.keys.contains("TerminalPolicyId") {
            self.terminalPolicyId = dict["TerminalPolicyId"] as! String
        }
    }
}

public class UpdateTerminalPolicyResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateTerminalPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTerminalPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTerminalPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
