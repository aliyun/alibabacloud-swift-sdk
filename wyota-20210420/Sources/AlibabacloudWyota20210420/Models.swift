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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ActivateDeviceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["CustomProperty"] as? String {
            self.customProperty = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["LabelContents"] as? String {
            self.labelContents = value
        }
        if let value = dict["SecureNetworkType"] as? String {
            self.secureNetworkType = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddDeviceFromSNResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsUnique"] as? Bool {
            self.isUnique = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["LabelList"] as? [String] {
            self.labelList = value
        }
        if let value = dict["SeatName"] as? String {
            self.seatName = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddDeviceSeatsAndLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileType"] as? Int32 {
            self.fileType = value
        }
        if let value = dict["SeatCol"] as? Int32 {
            self.seatCol = value
        }
        if let value = dict["SiteId"] as? String {
            self.siteId = value
        }
        if let value = dict["SiteName"] as? String {
            self.siteName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddDevicesFromCSVResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelContents"] as? String {
            self.labelContents = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["UserCustomId"] as? String {
            self.userCustomId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddOrUpdateDeviceSeatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddTerminalRequest : Tea.TeaModel {
    public var alias: String?

    public var clientType: String?

    public var mainBizType: String?

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
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.mainBizType != nil {
            map["MainBizType"] = self.mainBizType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["MainBizType"] as? String {
            self.mainBizType = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["TerminalGroupId"] as? String {
            self.terminalGroupId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddTerminalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddTerminalsRequest : Tea.TeaModel {
    public class AddTerminalParams : Tea.TeaModel {
        public var alias: String?

        public var clientType: Int32?

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
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["ClientType"] as? Int32 {
                self.clientType = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["TerminalGroupId"] as? String {
                self.terminalGroupId = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var addTerminalParams: [AddTerminalsRequest.AddTerminalParams]?

    public var mainBizType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addTerminalParams != nil {
            var tmp : [Any] = []
            for k in self.addTerminalParams! {
                tmp.append(k.toMap())
            }
            map["AddTerminalParams"] = tmp
        }
        if self.mainBizType != nil {
            map["MainBizType"] = self.mainBizType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddTerminalParams"] as? [Any?] {
            var tmp : [AddTerminalsRequest.AddTerminalParams] = []
            for v in value {
                if v != nil {
                    var model = AddTerminalsRequest.AddTerminalParams()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addTerminalParams = tmp
        }
        if let value = dict["MainBizType"] as? String {
            self.mainBizType = value
        }
    }
}

public class AddTerminalsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
        }
    }
    public var code: String?

    public var data: [AddTerminalsResponseBody.Data]?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [AddTerminalsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = AddTerminalsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddTerminalsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTerminalsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddTerminalsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserIds"] as? String {
            self.endUserIds = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachEndUsersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelContent"] as? String {
            self.labelContent = value
        }
        if let value = dict["LabelId"] as? String {
            self.labelId = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachLabelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelIds"] as? String {
            self.labelIds = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["SerialNoList"] as? String {
            self.serialNoList = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindAccountLessLoginUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindPasswordFreeLoginUserRequest : Tea.TeaModel {
    public var endUserId: String?

    public var mainBizType: String?

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
        if self.mainBizType != nil {
            map["MainBizType"] = self.mainBizType!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["MainBizType"] as? String {
            self.mainBizType = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindPasswordFreeLoginUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckUuidValidRequest : Tea.TeaModel {
    public var bluetooth: String?

    public var buildId: String?

    public var chipId: String?

    public var clientId: String?

    public var clientVersion: String?

    public var customId: String?

    public var etherMac: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var serialNo: String?

    public var sessionId: String?

    public var uuid: String?

    public var wlan: String?

    public var wosAppVersion: String?

    public override init() {
        super.init()
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
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.etherMac != nil {
            map["EtherMac"] = self.etherMac!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        if self.wlan != nil {
            map["Wlan"] = self.wlan!
        }
        if self.wosAppVersion != nil {
            map["WosAppVersion"] = self.wosAppVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bluetooth"] as? String {
            self.bluetooth = value
        }
        if let value = dict["BuildId"] as? String {
            self.buildId = value
        }
        if let value = dict["ChipId"] as? String {
            self.chipId = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["EtherMac"] as? String {
            self.etherMac = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
        if let value = dict["Wlan"] as? String {
            self.wlan = value
        }
        if let value = dict["WosAppVersion"] as? String {
            self.wosAppVersion = value
        }
    }
}

public class CheckUuidValidResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var newUpgrade: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.newUpgrade != nil {
                map["NewUpgrade"] = self.newUpgrade!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NewUpgrade"] as? Bool {
                self.newUpgrade = value
            }
        }
    }
    public var code: String?

    public var data: CheckUuidValidResponseBody.Data?

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
            var model = CheckUuidValidResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckUuidValidResponseBody()
            model.fromMap(value)
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

    public var tenantIdList: [String]?

    public override init() {
        super.init()
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
        if self.tenantIdList != nil {
            map["TenantIdList"] = self.tenantIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppVersionUid"] as? String {
            self.appVersionUid = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["ClientIdList"] as? [String] {
            self.clientIdList = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ForceUpgrade"] as? Int32 {
            self.forceUpgrade = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Project"] as? String {
            self.project = value
        }
        if let value = dict["Regions"] as? [String] {
            self.regions = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TaskType"] as? Int32 {
            self.taskType = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["TenantIdList"] as? [String] {
            self.tenantIdList = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskUid"] as? String {
                self.taskUid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateAppOtaTaskResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAppOtaTaskResponseBody()
            model.fromMap(value)
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

    public var relationVersionUids: [String]?

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
        if self.relationVersionUids != nil {
            map["RelationVersionUids"] = self.relationVersionUids!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["Arch"] as? String {
            self.arch = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["DownloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["Md5"] as? String {
            self.md5 = value
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["OtaType"] as? Int32 {
            self.otaType = value
        }
        if let value = dict["Project"] as? String {
            self.project = value
        }
        if let value = dict["RelationVersionUids"] as? [String] {
            self.relationVersionUids = value
        }
        if let value = dict["ReleaseNote"] as? String {
            self.releaseNote = value
        }
        if let value = dict["ReleaseNoteEn"] as? String {
            self.releaseNoteEn = value
        }
        if let value = dict["ReleaseNoteJp"] as? String {
            self.releaseNoteJp = value
        }
        if let value = dict["Size"] as? Int64 {
            self.size = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["SnapshotRegionId"] as? String {
            self.snapshotRegionId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["VersionType"] as? String {
            self.versionType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VersionUid"] as? String {
                self.versionUid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateAppOtaVersionResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAppOtaVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VersionUidList"] as? [String] {
            self.versionUidList = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAppOtaVersionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Force"] as? String {
            self.force = value
        }
        if let value = dict["SerialNos"] as? String {
            self.serialNos = value
        }
        if let value = dict["Uuids"] as? String {
            self.uuids = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDevicesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Force"] as? String {
            self.force = value
        }
        if let value = dict["LabelContent"] as? String {
            self.labelContent = value
        }
        if let value = dict["LabelId"] as? String {
            self.labelId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAppOtaVersionRequest : Tea.TeaModel {
    public var appVersion: String?

    public var channel: String?

    public var clientType: Int32?

    public var creator: String?

    public var nullChannel: Bool?

    public var otaType: Int32?

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
        if self.nullChannel != nil {
            map["NullChannel"] = self.nullChannel!
        }
        if self.otaType != nil {
            map["OtaType"] = self.otaType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["NullChannel"] as? Bool {
            self.nullChannel = value
        }
        if let value = dict["OtaType"] as? Int32 {
            self.otaType = value
        }
        if let value = dict["Project"] as? String {
            self.project = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["VersionUid"] as? String {
            self.versionUid = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppVersion"] as? String {
                    self.appVersion = value
                }
                if let value = dict["Channel"] as? String {
                    self.channel = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["FullDownloadUrl"] as? String {
                    self.fullDownloadUrl = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["Md5"] as? String {
                    self.md5 = value
                }
                if let value = dict["OsType"] as? String {
                    self.osType = value
                }
                if let value = dict["OtaType"] as? Int32 {
                    self.otaType = value
                }
                if let value = dict["Project"] as? String {
                    self.project = value
                }
                if let value = dict["ProtocolType"] as? String {
                    self.protocolType = value
                }
                if let value = dict["ReleaseNote"] as? String {
                    self.releaseNote = value
                }
                if let value = dict["ReleaseNoteEn"] as? String {
                    self.releaseNoteEn = value
                }
                if let value = dict["SessionType"] as? String {
                    self.sessionType = value
                }
                if let value = dict["Size"] as? Int64 {
                    self.size = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["VersionCode"] as? Int64 {
                    self.versionCode = value
                }
                if let value = dict["VersionType"] as? String {
                    self.versionType = value
                }
                if let value = dict["VersionUid"] as? String {
                    self.versionUid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppOtaInfoDTOList"] as? [Any?] {
                var tmp : [DescribeAppOtaVersionResponseBody.Data.AppOtaInfoDTOList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAppOtaVersionResponseBody.Data.AppOtaInfoDTOList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeAppOtaVersionResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAppOtaVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["SerialNoList"] as? [String] {
            self.serialNoList = value
        }
        if let value = dict["SiteId"] as? String {
            self.siteId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SeatCol"] as? Int32 {
                self.seatCol = value
            }
            if let value = dict["SeatName"] as? String {
                self.seatName = value
            }
            if let value = dict["SeatNo"] as? String {
                self.seatNo = value
            }
            if let value = dict["SeatRow"] as? Int32 {
                self.seatRow = value
            }
            if let value = dict["SerialNo"] as? String {
                self.serialNo = value
            }
            if let value = dict["SiteId"] as? String {
                self.siteId = value
            }
            if let value = dict["SiteName"] as? String {
                self.siteName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeDeviceSeatsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeDeviceSeatsResponseBody.Data()
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDeviceSeatsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidHorizontalMultiCnImageDownloadUrl"] as? String {
                self.androidHorizontalMultiCnImageDownloadUrl = value
            }
            if let value = dict["AndroidHorizontalMultiEnImageDownloadUrl"] as? String {
                self.androidHorizontalMultiEnImageDownloadUrl = value
            }
            if let value = dict["AndroidVerticalMultiCnImageDownloadUrl"] as? String {
                self.androidVerticalMultiCnImageDownloadUrl = value
            }
            if let value = dict["AndroidVerticalMultiEnImageDownloadUrl"] as? String {
                self.androidVerticalMultiEnImageDownloadUrl = value
            }
            if let value = dict["Channel"] as? String {
                self.channel = value
            }
            if let value = dict["ClientType"] as? Int32 {
                self.clientType = value
            }
            if let value = dict["CnImageDownloadUrl"] as? String {
                self.cnImageDownloadUrl = value
            }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["EnImageDownloadUrl"] as? String {
                self.enImageDownloadUrl = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["MultiCnImageDownloadUrl"] as? String {
                self.multiCnImageDownloadUrl = value
            }
            if let value = dict["MultiEnImageDownloadUrl"] as? String {
                self.multiEnImageDownloadUrl = value
            }
            if let value = dict["ReleaseNote"] as? String {
                self.releaseNote = value
            }
            if let value = dict["ReleaseNoteEn"] as? String {
                self.releaseNoteEn = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VersionCode"] as? String {
                self.versionCode = value
            }
            if let value = dict["VersionType"] as? String {
                self.versionType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeDeviceVersionDetailResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeDeviceVersionDetailResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDeviceVersionDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelList"] as? [String] {
            self.labelList = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? String {
                    self.count = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LabelCountDTOList"] as? [Any?] {
                var tmp : [DescribeSnLabelCountsResponseBody.Data.LabelCountDTOList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSnLabelCountsResponseBody.Data.LabelCountDTOList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labelCountDTOList = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeSnLabelCountsResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSnLabelCountsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ZoneIdList"] as? [String] {
            self.zoneIdList = value
        }
        if let value = dict["ZoneNameList"] as? [String] {
            self.zoneNameList = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SeatCol"] as? Int32 {
                    self.seatCol = value
                }
                if let value = dict["SeatRow"] as? Int32 {
                    self.seatRow = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
                if let value = dict["ZoneName"] as? String {
                    self.zoneName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["WorkZoneDTOList"] as? [Any?] {
                var tmp : [DescribeWorkZonesResponseBody.Data.WorkZoneDTOList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeWorkZonesResponseBody.Data.WorkZoneDTOList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeWorkZonesResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeWorkZonesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserIds"] as? String {
            self.endUserIds = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachEndUsersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelContent"] as? String {
            self.labelContent = value
        }
        if let value = dict["LabelId"] as? String {
            self.labelId = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachLabelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelIds"] as? String {
            self.labelIds = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["SerialNoList"] as? String {
            self.serialNoList = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ObjectNameList"] as? [String] {
            self.objectNameList = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["ObjectName"] as? String {
                self.objectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GenerateOssUrlResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GenerateOssUrlResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateOssUrlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaseVersion"] as? String {
            self.baseVersion = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["ClientUid"] as? String {
            self.clientUid = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["Project"] as? String {
            self.project = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppVersion"] as? String {
                self.appVersion = value
            }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["ForceUpgrade"] as? Int32 {
                self.forceUpgrade = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["ReleaseNote"] as? String {
                self.releaseNote = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["TaskUid"] as? String {
                self.taskUid = value
            }
            if let value = dict["VersionCode"] as? String {
                self.versionCode = value
            }
            if let value = dict["VersionType"] as? String {
                self.versionType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAppOtaLatestVersionResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAppOtaLatestVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["UrclVersion"] as? String {
            self.urclVersion = value
        }
        if let value = dict["UserCustomId"] as? String {
            self.userCustomId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigAboutLogo"] as? String {
                    self.configAboutLogo = value
                }
                if let value = dict["DesktopWallpaper"] as? String {
                    self.desktopWallpaper = value
                }
                if let value = dict["LoginPageBackground"] as? String {
                    self.loginPageBackground = value
                }
                if let value = dict["LoginPageLogo"] as? String {
                    self.loginPageLogo = value
                }
                if let value = dict["PersonalCenterLogo"] as? String {
                    self.personalCenterLogo = value
                }
                if let value = dict["StartLogo"] as? String {
                    self.startLogo = value
                }
                if let value = dict["StartMenuLogo"] as? String {
                    self.startMenuLogo = value
                }
                if let value = dict["UpgradeLogo"] as? String {
                    self.upgradeLogo = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoLockScreenTime"] as? Int32 {
                self.autoLockScreenTime = value
            }
            if let value = dict["AutoLogin"] as? Int32 {
                self.autoLogin = value
            }
            if let value = dict["AutoUpdate"] as? Int32 {
                self.autoUpdate = value
            }
            if let value = dict["CustomIdleAction"] as? Int32 {
                self.customIdleAction = value
            }
            if let value = dict["CustomPowerOn"] as? Int32 {
                self.customPowerOn = value
            }
            if let value = dict["CustomResourcePackage"] as? [String: Any?] {
                var model = GetDeviceConfigsResponseBody.Data.CustomResourcePackage()
                model.fromMap(value)
                self.customResourcePackage = model
            }
            if let value = dict["DefinePowerButton"] as? Int32 {
                self.definePowerButton = value
            }
            if let value = dict["DeviceLock"] as? Int32 {
                self.deviceLock = value
            }
            if let value = dict["DisplayLayout"] as? String {
                self.displayLayout = value
            }
            if let value = dict["DisplayResolution"] as? String {
                self.displayResolution = value
            }
            if let value = dict["DisplayScaleRatio"] as? String {
                self.displayScaleRatio = value
            }
            if let value = dict["EnableAdb"] as? Int32 {
                self.enableAdb = value
            }
            if let value = dict["EnableAutoLockScreen"] as? Int32 {
                self.enableAutoLockScreen = value
            }
            if let value = dict["EnableBluetooth"] as? Int32 {
                self.enableBluetooth = value
            }
            if let value = dict["EnableLockScreenPassword"] as? Int32 {
                self.enableLockScreenPassword = value
            }
            if let value = dict["EnableModifyPassword"] as? Int32 {
                self.enableModifyPassword = value
            }
            if let value = dict["EnableScheduledPowerOff"] as? Int32 {
                self.enableScheduledPowerOff = value
            }
            if let value = dict["EnableUnlockPassword"] as? Int32 {
                self.enableUnlockPassword = value
            }
            if let value = dict["EnableWlan"] as? Int32 {
                self.enableWlan = value
            }
            if let value = dict["IdleTime"] as? Int32 {
                self.idleTime = value
            }
            if let value = dict["LocalUsbPrint"] as? Int32 {
                self.localUsbPrint = value
            }
            if let value = dict["LockPassword"] as? String {
                self.lockPassword = value
            }
            if let value = dict["ScheduledPowerOff"] as? String {
                self.scheduledPowerOff = value
            }
            if let value = dict["SecureNetworkType"] as? String {
                self.secureNetworkType = value
            }
            if let value = dict["SerialNo"] as? String {
                self.serialNo = value
            }
            if let value = dict["SleepTime"] as? Int32 {
                self.sleepTime = value
            }
            if let value = dict["Urcl"] as? String {
                self.urcl = value
            }
            if let value = dict["UsbStorage"] as? Int32 {
                self.usbStorage = value
            }
            if let value = dict["UserCustomId"] as? String {
                self.userCustomId = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDeviceConfigsResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeviceConfigsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoUpdate"] as? Int32 {
                self.autoUpdate = value
            }
            if let value = dict["AutoUpdateTimeSchedule"] as? String {
                self.autoUpdateTimeSchedule = value
            }
            if let value = dict["ForceUpgrade"] as? Int32 {
                self.forceUpgrade = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDeviceOtaAutoStatusResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeviceOtaAutoStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaseVersion"] as? String {
            self.baseVersion = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["OsVersion"] as? String {
            self.osVersion = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TargetVersionType"] as? String {
            self.targetVersionType = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
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

            public var wyForceUpgrade: Bool?

            public override init() {
                super.init()
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
                if self.wyForceUpgrade != nil {
                    map["WyForceUpgrade"] = self.wyForceUpgrade!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AndroidHorizontalMultiCnImageDownloadUrl"] as? String {
                    self.androidHorizontalMultiCnImageDownloadUrl = value
                }
                if let value = dict["AndroidHorizontalMultiEnImageDownloadUrl"] as? String {
                    self.androidHorizontalMultiEnImageDownloadUrl = value
                }
                if let value = dict["AndroidVerticalMultiCnImageDownloadUrl"] as? String {
                    self.androidVerticalMultiCnImageDownloadUrl = value
                }
                if let value = dict["AndroidVerticalMultiEnImageDownloadUrl"] as? String {
                    self.androidVerticalMultiEnImageDownloadUrl = value
                }
                if let value = dict["CnImageDownloadUrl"] as? String {
                    self.cnImageDownloadUrl = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["CustomForceUpgrade"] as? Bool {
                    self.customForceUpgrade = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["EnImageDownloadUrl"] as? String {
                    self.enImageDownloadUrl = value
                }
                if let value = dict["ForceUpgrade"] as? Int32 {
                    self.forceUpgrade = value
                }
                if let value = dict["IsAppDownloadUrl"] as? Bool {
                    self.isAppDownloadUrl = value
                }
                if let value = dict["LocalDownloadUrl"] as? String {
                    self.localDownloadUrl = value
                }
                if let value = dict["Md5"] as? String {
                    self.md5 = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["MultiCnImageDownloadUrl"] as? String {
                    self.multiCnImageDownloadUrl = value
                }
                if let value = dict["MultiEnImageDownloadUrl"] as? String {
                    self.multiEnImageDownloadUrl = value
                }
                if let value = dict["ReleaseNote"] as? String {
                    self.releaseNote = value
                }
                if let value = dict["ReleaseNoteEn"] as? String {
                    self.releaseNoteEn = value
                }
                if let value = dict["Size"] as? Int64 {
                    self.size = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["VersionCode"] as? String {
                    self.versionCode = value
                }
                if let value = dict["VersionType"] as? String {
                    self.versionType = value
                }
                if let value = dict["WyForceUpgrade"] as? Bool {
                    self.wyForceUpgrade = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Version"] as? [String: Any?] {
                var model = GetDeviceOtaInfoResponseBody.Data.Version()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDeviceOtaInfoResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeviceOtaInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaseVersion"] as? String {
            self.baseVersion = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["ForceUpgrade"] as? Int32 {
                    self.forceUpgrade = value
                }
                if let value = dict["LocalDownloadUrl"] as? String {
                    self.localDownloadUrl = value
                }
                if let value = dict["Md5"] as? String {
                    self.md5 = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["ReleaseNote"] as? String {
                    self.releaseNote = value
                }
                if let value = dict["Size"] as? Int64 {
                    self.size = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["VersionCode"] as? String {
                    self.versionCode = value
                }
                if let value = dict["VersionType"] as? String {
                    self.versionType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Version"] as? [String: Any?] {
                var model = GetDeviceOtaInfoTestResponseBody.Data.Version()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDeviceOtaInfoTestResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeviceOtaInfoTestResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ReleaseNote"] as? String {
                self.releaseNote = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDeviceOtaTaskVersionInfoResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeviceOtaTaskVersionInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["ClientUid"] as? String {
            self.clientUid = value
        }
        if let value = dict["Project"] as? String {
            self.project = value
        }
        if let value = dict["TaskUid"] as? String {
            self.taskUid = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BaseVersion"] as? String {
                    self.baseVersion = value
                }
                if let value = dict["ClientType"] as? Int32 {
                    self.clientType = value
                }
                if let value = dict["ClientUid"] as? String {
                    self.clientUid = value
                }
                if let value = dict["Note"] as? String {
                    self.note = value
                }
                if let value = dict["OsType"] as? String {
                    self.osType = value
                }
                if let value = dict["Project"] as? String {
                    self.project = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["TargetVersion"] as? String {
                    self.targetVersion = value
                }
                if let value = dict["TaskUid"] as? String {
                    self.taskUid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppOtaStatusDTOList"] as? [Any?] {
                var tmp : [GetDeviceUpgradeStatusResponseBody.Data.AppOtaStatusDTOList] = []
                for v in value {
                    if v != nil {
                        var model = GetDeviceUpgradeStatusResponseBody.Data.AppOtaStatusDTOList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDeviceUpgradeStatusResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeviceUpgradeStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
        if let value = dict["ZoneName"] as? String {
            self.zoneName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Url"] as? String {
                self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetExportDeviceInfoOssUrlResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetExportDeviceInfoOssUrlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirPrefix"] as? String {
            self.dirPrefix = value
        }
        if let value = dict["IsDedicatedLine"] as? Int32 {
            self.isDedicatedLine = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["EndPoint"] as? String {
                self.endPoint = value
            }
            if let value = dict["OssPolicy"] as? String {
                self.ossPolicy = value
            }
            if let value = dict["OssSignature"] as? String {
                self.ossSignature = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetFbOssConfigResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFbOssConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Type"] as? Int32 {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["EndPoint"] as? String {
                self.endPoint = value
            }
            if let value = dict["OssPolicy"] as? String {
                self.ossPolicy = value
            }
            if let value = dict["OssSignature"] as? String {
                self.ossSignature = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetOssConfigResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetOssConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FullDownloadUrl"] as? String {
                self.fullDownloadUrl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetVersionDownloadUrlResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetVersionDownloadUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBoundDevicesRequest : Tea.TeaModel {
    public var adDomain: String?

    public var alias: String?

    public var clientType: Int32?

    public var directoryId: String?

    public var endUserId: String?

    public var inManage: Bool?

    public var lastLoginUser: String?

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
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.inManage != nil {
            map["InManage"] = self.inManage!
        }
        if self.lastLoginUser != nil {
            map["LastLoginUser"] = self.lastLoginUser!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdDomain"] as? String {
            self.adDomain = value
        }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["InManage"] as? Bool {
            self.inManage = value
        }
        if let value = dict["LastLoginUser"] as? String {
            self.lastLoginUser = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["UserType"] as? String {
            self.userType = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class ListBoundDevicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Devices : Tea.TeaModel {
            public var alias: String?

            public var boundTime: String?

            public var buildId: String?

            public var clientType: String?

            public var connectionStatus: String?

            public var deviceMqttConnectionStatus: Int32?

            public var deviceOs: String?

            public var devicePlatform: String?

            public var inManage: Bool?

            public var lastLoginTime: String?

            public var lastLoginUser: String?

            public var loginUser: String?

            public var model: String?

            public var passwordFreeLoginUser: String?

            public var passwordFreeLoginUserNickName: String?

            public var privateIp: String?

            public var productName: String?

            public var publicIp: String?

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
                if self.boundTime != nil {
                    map["BoundTime"] = self.boundTime!
                }
                if self.buildId != nil {
                    map["BuildId"] = self.buildId!
                }
                if self.clientType != nil {
                    map["ClientType"] = self.clientType!
                }
                if self.connectionStatus != nil {
                    map["ConnectionStatus"] = self.connectionStatus!
                }
                if self.deviceMqttConnectionStatus != nil {
                    map["DeviceMqttConnectionStatus"] = self.deviceMqttConnectionStatus!
                }
                if self.deviceOs != nil {
                    map["DeviceOs"] = self.deviceOs!
                }
                if self.devicePlatform != nil {
                    map["DevicePlatform"] = self.devicePlatform!
                }
                if self.inManage != nil {
                    map["InManage"] = self.inManage!
                }
                if self.lastLoginTime != nil {
                    map["LastLoginTime"] = self.lastLoginTime!
                }
                if self.lastLoginUser != nil {
                    map["LastLoginUser"] = self.lastLoginUser!
                }
                if self.loginUser != nil {
                    map["LoginUser"] = self.loginUser!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.passwordFreeLoginUser != nil {
                    map["PasswordFreeLoginUser"] = self.passwordFreeLoginUser!
                }
                if self.passwordFreeLoginUserNickName != nil {
                    map["PasswordFreeLoginUserNickName"] = self.passwordFreeLoginUserNickName!
                }
                if self.privateIp != nil {
                    map["PrivateIp"] = self.privateIp!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                if self.publicIp != nil {
                    map["PublicIp"] = self.publicIp!
                }
                if self.serialNo != nil {
                    map["SerialNo"] = self.serialNo!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Alias"] as? String {
                    self.alias = value
                }
                if let value = dict["BoundTime"] as? String {
                    self.boundTime = value
                }
                if let value = dict["BuildId"] as? String {
                    self.buildId = value
                }
                if let value = dict["ClientType"] as? String {
                    self.clientType = value
                }
                if let value = dict["ConnectionStatus"] as? String {
                    self.connectionStatus = value
                }
                if let value = dict["DeviceMqttConnectionStatus"] as? Int32 {
                    self.deviceMqttConnectionStatus = value
                }
                if let value = dict["DeviceOs"] as? String {
                    self.deviceOs = value
                }
                if let value = dict["DevicePlatform"] as? String {
                    self.devicePlatform = value
                }
                if let value = dict["InManage"] as? Bool {
                    self.inManage = value
                }
                if let value = dict["LastLoginTime"] as? String {
                    self.lastLoginTime = value
                }
                if let value = dict["LastLoginUser"] as? String {
                    self.lastLoginUser = value
                }
                if let value = dict["LoginUser"] as? String {
                    self.loginUser = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["PasswordFreeLoginUser"] as? String {
                    self.passwordFreeLoginUser = value
                }
                if let value = dict["PasswordFreeLoginUserNickName"] as? String {
                    self.passwordFreeLoginUserNickName = value
                }
                if let value = dict["PrivateIp"] as? String {
                    self.privateIp = value
                }
                if let value = dict["ProductName"] as? String {
                    self.productName = value
                }
                if let value = dict["PublicIp"] as? String {
                    self.publicIp = value
                }
                if let value = dict["SerialNo"] as? String {
                    self.serialNo = value
                }
                if let value = dict["Uuid"] as? String {
                    self.uuid = value
                }
            }
        }
        public var devices: [ListBoundDevicesResponseBody.Data.Devices]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.devices != nil {
                var tmp : [Any] = []
                for k in self.devices! {
                    tmp.append(k.toMap())
                }
                map["Devices"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Devices"] as? [Any?] {
                var tmp : [ListBoundDevicesResponseBody.Data.Devices] = []
                for v in value {
                    if v != nil {
                        var model = ListBoundDevicesResponseBody.Data.Devices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.devices = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListBoundDevicesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListBoundDevicesResponseBody.Data()
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListBoundDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBoundDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBoundDevicesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["OperationStatus"] as? Int32 {
                    self.operationStatus = value
                }
                if let value = dict["PublishTime"] as? String {
                    self.publishTime = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["TaskId"] as? Int32 {
                    self.taskId = value
                }
                if let value = dict["UpgradeCount"] as? Int64 {
                    self.upgradeCount = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TenantDeviceOtaTasks"] as? [Any?] {
                var tmp : [ListDeviceOtaTaskByTenantResponseBody.Data.TenantDeviceOtaTasks] = []
                for v in value {
                    if v != nil {
                        var model = ListDeviceOtaTaskByTenantResponseBody.Data.TenantDeviceOtaTasks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListDeviceOtaTaskByTenantResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDeviceOtaTaskByTenantResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["SeatNo"] as? String {
            self.seatNo = value
        }
        if let value = dict["SerialNoList"] as? [String] {
            self.serialNoList = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["SeatName"] as? String {
                    self.seatName = value
                }
                if let value = dict["SeatNo"] as? String {
                    self.seatNo = value
                }
                if let value = dict["SerialNo"] as? String {
                    self.serialNo = value
                }
                if let value = dict["SiteId"] as? String {
                    self.siteId = value
                }
                if let value = dict["SiteName"] as? String {
                    self.siteName = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceSeatDTOList"] as? [Any?] {
                var tmp : [ListDeviceSeatsResponseBody.Data.DeviceSeatDTOList] = []
                for v in value {
                    if v != nil {
                        var model = ListDeviceSeatsResponseBody.Data.DeviceSeatDTOList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.deviceSeatDTOList = tmp
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListDeviceSeatsResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDeviceSeatsResponseBody()
            model.fromMap(value)
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

    public var lastLoginUser: String?

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
        if self.lastLoginUser != nil {
            map["LastLoginUser"] = self.lastLoginUser!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["BuildId"] as? String {
            self.buildId = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["DeviceGroupId"] as? String {
            self.deviceGroupId = value
        }
        if let value = dict["DeviceIpV4"] as? String {
            self.deviceIpV4 = value
        }
        if let value = dict["DeviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["DeviceOS"] as? String {
            self.deviceOS = value
        }
        if let value = dict["DevicePlatform"] as? String {
            self.devicePlatform = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LabelContent"] as? String {
            self.labelContent = value
        }
        if let value = dict["LabelId"] as? String {
            self.labelId = value
        }
        if let value = dict["LastLoginUser"] as? String {
            self.lastLoginUser = value
        }
        if let value = dict["LocationInfo"] as? String {
            self.locationInfo = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["UserType"] as? String {
            self.userType = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectScript"] as? String {
                    self.connectScript = value
                }
                if let value = dict["PeripheralPid"] as? String {
                    self.peripheralPid = value
                }
                if let value = dict["PeripheralVid"] as? String {
                    self.peripheralVid = value
                }
                if let value = dict["RedirectPolicy"] as? Int32 {
                    self.redirectPolicy = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigAboutLogo"] as? String {
                    self.configAboutLogo = value
                }
                if let value = dict["DesktopWallpaper"] as? String {
                    self.desktopWallpaper = value
                }
                if let value = dict["LoginPageBackground"] as? String {
                    self.loginPageBackground = value
                }
                if let value = dict["LoginPageLogo"] as? String {
                    self.loginPageLogo = value
                }
                if let value = dict["PersonalCenterLogo"] as? String {
                    self.personalCenterLogo = value
                }
                if let value = dict["StartLogo"] as? String {
                    self.startLogo = value
                }
                if let value = dict["StartMenuLogo"] as? String {
                    self.startMenuLogo = value
                }
                if let value = dict["UpgradeLogo"] as? String {
                    self.upgradeLogo = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AdDomain"] as? String {
                    self.adDomain = value
                }
                if let value = dict["BindTime"] as? String {
                    self.bindTime = value
                }
                if let value = dict["DirectoryId"] as? String {
                    self.directoryId = value
                }
                if let value = dict["EndUserId"] as? String {
                    self.endUserId = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["SerialNo"] as? String {
                    self.serialNo = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["UserType"] as? String {
                    self.userType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["GmtCreate"] as? Int64 {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? Int64 {
                    self.gmtModified = value
                }
                if let value = dict["LabelId"] as? String {
                    self.labelId = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultPolicy"] as? Int32 {
                    self.defaultPolicy = value
                }
                if let value = dict["PolicyStrategy"] as? Int32 {
                    self.policyStrategy = value
                }
                if let value = dict["UsbAndInternalCamera"] as? Int32 {
                    self.usbAndInternalCamera = value
                }
                if let value = dict["UsbPrinter"] as? Int32 {
                    self.usbPrinter = value
                }
                if let value = dict["UsbStorage"] as? Int32 {
                    self.usbStorage = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveTime"] as? String {
                self.activeTime = value
            }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["AutoLockScreenTime"] as? Int32 {
                self.autoLockScreenTime = value
            }
            if let value = dict["AutoLogin"] as? Int32 {
                self.autoLogin = value
            }
            if let value = dict["AutoType"] as? String {
                self.autoType = value
            }
            if let value = dict["Bluetooth"] as? String {
                self.bluetooth = value
            }
            if let value = dict["BuildId"] as? String {
                self.buildId = value
            }
            if let value = dict["ClientId"] as? String {
                self.clientId = value
            }
            if let value = dict["ClientType"] as? String {
                self.clientType = value
            }
            if let value = dict["ConnectConfigs"] as? [Any?] {
                var tmp : [ListDevicesResponseBody.Data.ConnectConfigs] = []
                for v in value {
                    if v != nil {
                        var model = ListDevicesResponseBody.Data.ConnectConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.connectConfigs = tmp
            }
            if let value = dict["CustomIdleAction"] as? Int32 {
                self.customIdleAction = value
            }
            if let value = dict["CustomPowerOn"] as? Int32 {
                self.customPowerOn = value
            }
            if let value = dict["CustomProperty"] as? String {
                self.customProperty = value
            }
            if let value = dict["CustomResourcePackage"] as? [String: Any?] {
                var model = ListDevicesResponseBody.Data.CustomResourcePackage()
                model.fromMap(value)
                self.customResourcePackage = model
            }
            if let value = dict["DefinePowerButton"] as? Int32 {
                self.definePowerButton = value
            }
            if let value = dict["DeviceIpV4"] as? String {
                self.deviceIpV4 = value
            }
            if let value = dict["DeviceLock"] as? Int32 {
                self.deviceLock = value
            }
            if let value = dict["DeviceMqttConnectionStatus"] as? Int32 {
                self.deviceMqttConnectionStatus = value
            }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["DeviceOS"] as? String {
                self.deviceOS = value
            }
            if let value = dict["DevicePlatform"] as? String {
                self.devicePlatform = value
            }
            if let value = dict["DisplayLayout"] as? String {
                self.displayLayout = value
            }
            if let value = dict["DisplayResolution"] as? String {
                self.displayResolution = value
            }
            if let value = dict["DisplayScaleRatio"] as? String {
                self.displayScaleRatio = value
            }
            if let value = dict["EnableAdb"] as? Int32 {
                self.enableAdb = value
            }
            if let value = dict["EnableAutoLockScreen"] as? Int32 {
                self.enableAutoLockScreen = value
            }
            if let value = dict["EnableBluetooth"] as? Int32 {
                self.enableBluetooth = value
            }
            if let value = dict["EnableLockScreenPassword"] as? Int32 {
                self.enableLockScreenPassword = value
            }
            if let value = dict["EnableModifyPassword"] as? Int32 {
                self.enableModifyPassword = value
            }
            if let value = dict["EnableScheduledPowerOff"] as? Int32 {
                self.enableScheduledPowerOff = value
            }
            if let value = dict["EnableUnlockPassword"] as? Int32 {
                self.enableUnlockPassword = value
            }
            if let value = dict["EnableWlan"] as? Int32 {
                self.enableWlan = value
            }
            if let value = dict["EndUserList"] as? [Any?] {
                var tmp : [ListDevicesResponseBody.Data.EndUserList] = []
                for v in value {
                    if v != nil {
                        var model = ListDevicesResponseBody.Data.EndUserList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.endUserList = tmp
            }
            if let value = dict["EtherMac"] as? String {
                self.etherMac = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["GmtSync"] as? String {
                self.gmtSync = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["IdleTime"] as? Int32 {
                self.idleTime = value
            }
            if let value = dict["IsActive"] as? String {
                self.isActive = value
            }
            if let value = dict["LabelList"] as? [Any?] {
                var tmp : [ListDevicesResponseBody.Data.LabelList] = []
                for v in value {
                    if v != nil {
                        var model = ListDevicesResponseBody.Data.LabelList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labelList = tmp
            }
            if let value = dict["LastLoginUser"] as? String {
                self.lastLoginUser = value
            }
            if let value = dict["LocalUsbPrint"] as? Int32 {
                self.localUsbPrint = value
            }
            if let value = dict["LocationInfo"] as? String {
                self.locationInfo = value
            }
            if let value = dict["LockPassword"] as? String {
                self.lockPassword = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["PeripheralConfig"] as? [String: Any?] {
                var model = ListDevicesResponseBody.Data.PeripheralConfig()
                model.fromMap(value)
                self.peripheralConfig = model
            }
            if let value = dict["ScheduledPowerOff"] as? String {
                self.scheduledPowerOff = value
            }
            if let value = dict["SecureNetworkType"] as? String {
                self.secureNetworkType = value
            }
            if let value = dict["SerialNo"] as? String {
                self.serialNo = value
            }
            if let value = dict["SleepTime"] as? Int32 {
                self.sleepTime = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UsbStorage"] as? Int32 {
                self.usbStorage = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
            if let value = dict["Wlan"] as? String {
                self.wlan = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListDevicesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDevicesResponseBody.Data()
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDevicesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IssueLabel"] as? [String] {
                self.issueLabel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListFbIssueLabelsResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFbIssueLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
        if let value = dict["LanguageType"] as? String {
            self.languageType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IssueLabel"] as? [String] {
                self.issueLabel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListFbIssueLabelsByLCResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFbIssueLabelsByLCResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelContent"] as? String {
            self.labelContent = value
        }
        if let value = dict["LabelId"] as? String {
            self.labelId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["LabelId"] as? String {
                self.labelId = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListLabelsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListLabelsResponseBody.Data()
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskId"] as? Int32 {
            self.taskId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentVersion"] as? String {
                    self.currentVersion = value
                }
                if let value = dict["DeviceId"] as? String {
                    self.deviceId = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TenantDeviceOtaInfos"] as? [Any?] {
                var tmp : [ListTenantDeviceOtaInfoResponseBody.Data.TenantDeviceOtaInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListTenantDeviceOtaInfoResponseBody.Data.TenantDeviceOtaInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListTenantDeviceOtaInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTenantDeviceOtaInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["BuildId"] as? String {
            self.buildId = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["InManage"] as? Bool {
            self.inManage = value
        }
        if let value = dict["Ipv4"] as? String {
            self.ipv4 = value
        }
        if let value = dict["LocationInfo"] as? String {
            self.locationInfo = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["SearchKeyword"] as? String {
            self.searchKeyword = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["TerminalGroupId"] as? String {
            self.terminalGroupId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["BindUserCount"] as? Int32 {
                self.bindUserCount = value
            }
            if let value = dict["BindUserId"] as? String {
                self.bindUserId = value
            }
            if let value = dict["BuildId"] as? String {
                self.buildId = value
            }
            if let value = dict["ClientType"] as? Int32 {
                self.clientType = value
            }
            if let value = dict["DesktopId"] as? String {
                self.desktopId = value
            }
            if let value = dict["InManage"] as? Bool {
                self.inManage = value
            }
            if let value = dict["Ipv4"] as? String {
                self.ipv4 = value
            }
            if let value = dict["LastLoginUser"] as? String {
                self.lastLoginUser = value
            }
            if let value = dict["LocationInfo"] as? String {
                self.locationInfo = value
            }
            if let value = dict["LockSettings"] as? Bool {
                self.lockSettings = value
            }
            if let value = dict["LoginUser"] as? String {
                self.loginUser = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["OnlineStatus"] as? Bool {
                self.onlineStatus = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["TerminalGroupId"] as? String {
                self.terminalGroupId = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListTerminalResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTerminalResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTerminalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTerminalsRequest : Tea.TeaModel {
    public var inManage: Bool?

    public var mainBizType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var passwordFreeLoginUser: String?

    public var searchKeyword: String?

    public var serialNumbers: [String]?

    public var terminalGroupId: String?

    public var uuids: [String]?

    public var withBindUser: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inManage != nil {
            map["InManage"] = self.inManage!
        }
        if self.mainBizType != nil {
            map["MainBizType"] = self.mainBizType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.passwordFreeLoginUser != nil {
            map["PasswordFreeLoginUser"] = self.passwordFreeLoginUser!
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
        if self.withBindUser != nil {
            map["WithBindUser"] = self.withBindUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InManage"] as? Bool {
            self.inManage = value
        }
        if let value = dict["MainBizType"] as? String {
            self.mainBizType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PasswordFreeLoginUser"] as? String {
            self.passwordFreeLoginUser = value
        }
        if let value = dict["SearchKeyword"] as? String {
            self.searchKeyword = value
        }
        if let value = dict["SerialNumbers"] as? [String] {
            self.serialNumbers = value
        }
        if let value = dict["TerminalGroupId"] as? String {
            self.terminalGroupId = value
        }
        if let value = dict["Uuids"] as? [String] {
            self.uuids = value
        }
        if let value = dict["WithBindUser"] as? Bool {
            self.withBindUser = value
        }
    }
}

public class ListTerminalsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alias: String?

        public var bindUserCount: Int32?

        public var buildId: String?

        public var clientType: Int32?

        public var currentConnectDesktop: String?

        public var currentLoginUser: String?

        public var ipv4: String?

        public var lastLoginUser: String?

        public var locationInfo: String?

        public var manageTime: String?

        public var model: String?

        public var online: Bool?

        public var passwordFreeLoginUser: String?

        public var publicIpv4: String?

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
            if self.bindUserCount != nil {
                map["BindUserCount"] = self.bindUserCount!
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
            if self.lastLoginUser != nil {
                map["LastLoginUser"] = self.lastLoginUser!
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
            if self.publicIpv4 != nil {
                map["PublicIpv4"] = self.publicIpv4!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["BindUserCount"] as? Int32 {
                self.bindUserCount = value
            }
            if let value = dict["BuildId"] as? String {
                self.buildId = value
            }
            if let value = dict["ClientType"] as? Int32 {
                self.clientType = value
            }
            if let value = dict["CurrentConnectDesktop"] as? String {
                self.currentConnectDesktop = value
            }
            if let value = dict["CurrentLoginUser"] as? String {
                self.currentLoginUser = value
            }
            if let value = dict["Ipv4"] as? String {
                self.ipv4 = value
            }
            if let value = dict["LastLoginUser"] as? String {
                self.lastLoginUser = value
            }
            if let value = dict["LocationInfo"] as? String {
                self.locationInfo = value
            }
            if let value = dict["ManageTime"] as? String {
                self.manageTime = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Online"] as? Bool {
                self.online = value
            }
            if let value = dict["PasswordFreeLoginUser"] as? String {
                self.passwordFreeLoginUser = value
            }
            if let value = dict["PublicIpv4"] as? String {
                self.publicIpv4 = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["SetPasswordFreeLoginUserTime"] as? String {
                self.setPasswordFreeLoginUserTime = value
            }
            if let value = dict["TerminalGroupId"] as? String {
                self.terminalGroupId = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListTerminalsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTerminalsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTerminalsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelContent"] as? String {
            self.labelContent = value
        }
        if let value = dict["LabelId"] as? String {
            self.labelId = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["UserCustomId"] as? String {
            self.userCustomId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["SerialNo"] as? String {
                self.serialNo = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListTrustDevicesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTrustDevicesResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTrustDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUnbindDevicesRequest : Tea.TeaModel {
    public var adDomain: String?

    public var alias: String?

    public var clientType: Int32?

    public var directoryId: String?

    public var endUserId: String?

    public var inManage: Bool?

    public var lastLoginUser: String?

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
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.inManage != nil {
            map["InManage"] = self.inManage!
        }
        if self.lastLoginUser != nil {
            map["LastLoginUser"] = self.lastLoginUser!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdDomain"] as? String {
            self.adDomain = value
        }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["InManage"] as? Bool {
            self.inManage = value
        }
        if let value = dict["LastLoginUser"] as? String {
            self.lastLoginUser = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["UserType"] as? String {
            self.userType = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class ListUnbindDevicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Devices : Tea.TeaModel {
            public var alias: String?

            public var boundTime: String?

            public var buildId: String?

            public var clientType: String?

            public var connectionStatus: String?

            public var deviceMqttConnectionStatus: Int32?

            public var deviceOs: String?

            public var devicePlatform: String?

            public var inManage: Bool?

            public var lastLoginTime: String?

            public var lastLoginUser: String?

            public var loginUser: String?

            public var model: String?

            public var passwordFreeLoginUser: String?

            public var passwordFreeLoginUserNickName: String?

            public var privateIp: String?

            public var productName: String?

            public var publicIp: String?

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
                if self.boundTime != nil {
                    map["BoundTime"] = self.boundTime!
                }
                if self.buildId != nil {
                    map["BuildId"] = self.buildId!
                }
                if self.clientType != nil {
                    map["ClientType"] = self.clientType!
                }
                if self.connectionStatus != nil {
                    map["ConnectionStatus"] = self.connectionStatus!
                }
                if self.deviceMqttConnectionStatus != nil {
                    map["DeviceMqttConnectionStatus"] = self.deviceMqttConnectionStatus!
                }
                if self.deviceOs != nil {
                    map["DeviceOs"] = self.deviceOs!
                }
                if self.devicePlatform != nil {
                    map["DevicePlatform"] = self.devicePlatform!
                }
                if self.inManage != nil {
                    map["InManage"] = self.inManage!
                }
                if self.lastLoginTime != nil {
                    map["LastLoginTime"] = self.lastLoginTime!
                }
                if self.lastLoginUser != nil {
                    map["LastLoginUser"] = self.lastLoginUser!
                }
                if self.loginUser != nil {
                    map["LoginUser"] = self.loginUser!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.passwordFreeLoginUser != nil {
                    map["PasswordFreeLoginUser"] = self.passwordFreeLoginUser!
                }
                if self.passwordFreeLoginUserNickName != nil {
                    map["PasswordFreeLoginUserNickName"] = self.passwordFreeLoginUserNickName!
                }
                if self.privateIp != nil {
                    map["PrivateIp"] = self.privateIp!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                if self.publicIp != nil {
                    map["PublicIp"] = self.publicIp!
                }
                if self.serialNo != nil {
                    map["SerialNo"] = self.serialNo!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Alias"] as? String {
                    self.alias = value
                }
                if let value = dict["BoundTime"] as? String {
                    self.boundTime = value
                }
                if let value = dict["BuildId"] as? String {
                    self.buildId = value
                }
                if let value = dict["ClientType"] as? String {
                    self.clientType = value
                }
                if let value = dict["ConnectionStatus"] as? String {
                    self.connectionStatus = value
                }
                if let value = dict["DeviceMqttConnectionStatus"] as? Int32 {
                    self.deviceMqttConnectionStatus = value
                }
                if let value = dict["DeviceOs"] as? String {
                    self.deviceOs = value
                }
                if let value = dict["DevicePlatform"] as? String {
                    self.devicePlatform = value
                }
                if let value = dict["InManage"] as? Bool {
                    self.inManage = value
                }
                if let value = dict["LastLoginTime"] as? String {
                    self.lastLoginTime = value
                }
                if let value = dict["LastLoginUser"] as? String {
                    self.lastLoginUser = value
                }
                if let value = dict["LoginUser"] as? String {
                    self.loginUser = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["PasswordFreeLoginUser"] as? String {
                    self.passwordFreeLoginUser = value
                }
                if let value = dict["PasswordFreeLoginUserNickName"] as? String {
                    self.passwordFreeLoginUserNickName = value
                }
                if let value = dict["PrivateIp"] as? String {
                    self.privateIp = value
                }
                if let value = dict["ProductName"] as? String {
                    self.productName = value
                }
                if let value = dict["PublicIp"] as? String {
                    self.publicIp = value
                }
                if let value = dict["SerialNo"] as? String {
                    self.serialNo = value
                }
                if let value = dict["Uuid"] as? String {
                    self.uuid = value
                }
            }
        }
        public var devices: [ListUnbindDevicesResponseBody.Data.Devices]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.devices != nil {
                var tmp : [Any] = []
                for k in self.devices! {
                    tmp.append(k.toMap())
                }
                map["Devices"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Devices"] as? [Any?] {
                var tmp : [ListUnbindDevicesResponseBody.Data.Devices] = []
                for v in value {
                    if v != nil {
                        var model = ListUnbindDevicesResponseBody.Data.Devices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.devices = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListUnbindDevicesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListUnbindDevicesResponseBody.Data()
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListUnbindDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUnbindDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUnbindDevicesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IssueId"] as? String {
            self.issueId = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["ReservedA"] as? String {
            self.reservedA = value
        }
        if let value = dict["ReservedB"] as? String {
            self.reservedB = value
        }
        if let value = dict["UserEmail"] as? String {
            self.userEmail = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileSize"] as? Int32 {
                        self.fileSize = value
                    }
                    if let value = dict["FileType"] as? Int32 {
                        self.fileType = value
                    }
                    if let value = dict["SessionId"] as? String {
                        self.sessionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Account"] as? String {
                    self.account = value
                }
                if let value = dict["ClientVersion"] as? String {
                    self.clientVersion = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["FileList"] as? [Any?] {
                    var tmp : [ListUserFbAcIssuesResponseBody.Data.IssueDataList.FileList] = []
                    for v in value {
                        if v != nil {
                            var model = ListUserFbAcIssuesResponseBody.Data.IssueDataList.FileList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.fileList = tmp
                }
                if let value = dict["GmtCreated"] as? String {
                    self.gmtCreated = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["IssueId"] as? Int64 {
                    self.issueId = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["ReservedA"] as? String {
                    self.reservedA = value
                }
                if let value = dict["ReservedB"] as? String {
                    self.reservedB = value
                }
                if let value = dict["UserEmail"] as? String {
                    self.userEmail = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IssueDataList"] as? [Any?] {
                var tmp : [ListUserFbAcIssuesResponseBody.Data.IssueDataList] = []
                for v in value {
                    if v != nil {
                        var model = ListUserFbAcIssuesResponseBody.Data.IssueDataList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.issueDataList = tmp
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListUserFbAcIssuesResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserFbAcIssuesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientModel"] as? String {
            self.clientModel = value
        }
        if let value = dict["ClientSn"] as? String {
            self.clientSn = value
        }
        if let value = dict["CustomerId"] as? String {
            self.customerId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["FbType"] as? Int32 {
            self.fbType = value
        }
        if let value = dict["IssueId"] as? Int32 {
            self.issueId = value
        }
        if let value = dict["IssueLabel"] as? String {
            self.issueLabel = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserEmail"] as? String {
            self.userEmail = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WasRead"] as? Int32 {
            self.wasRead = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FileMd5"] as? String {
                        self.fileMd5 = value
                    }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileSize"] as? Int32 {
                        self.fileSize = value
                    }
                    if let value = dict["FileType"] as? Int32 {
                        self.fileType = value
                    }
                    if let value = dict["OssUrl"] as? String {
                        self.ossUrl = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["ClientId"] as? String {
                    self.clientId = value
                }
                if let value = dict["ClientModel"] as? String {
                    self.clientModel = value
                }
                if let value = dict["ClientSn"] as? String {
                    self.clientSn = value
                }
                if let value = dict["CustomerId"] as? String {
                    self.customerId = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DesktopId"] as? String {
                    self.desktopId = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["FbType"] as? Int32 {
                    self.fbType = value
                }
                if let value = dict["FileList"] as? [Any?] {
                    var tmp : [ListUserFbIssuesResponseBody.Data.FeedbackIssueData.FileList] = []
                    for v in value {
                        if v != nil {
                            var model = ListUserFbIssuesResponseBody.Data.FeedbackIssueData.FileList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.fileList = tmp
                }
                if let value = dict["GmtCreated"] as? String {
                    self.gmtCreated = value
                }
                if let value = dict["IssueId"] as? Int32 {
                    self.issueId = value
                }
                if let value = dict["IssueLabel"] as? String {
                    self.issueLabel = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["UserEmail"] as? String {
                    self.userEmail = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? String {
                self.count = value
            }
            if let value = dict["FeedbackIssueData"] as? [Any?] {
                var tmp : [ListUserFbIssuesResponseBody.Data.FeedbackIssueData] = []
                for v in value {
                    if v != nil {
                        var model = ListUserFbIssuesResponseBody.Data.FeedbackIssueData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListUserFbIssuesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserFbIssuesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllDevices"] as? Int64 {
            self.allDevices = value
        }
        if let value = dict["SecureNetworkType"] as? String {
            self.secureNetworkType = value
        }
        if let value = dict["SerialNos"] as? String {
            self.serialNos = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDevicesSecureNetworkTypeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecureNetworkType"] as? String {
            self.secureNetworkType = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifySecureNetworkTypeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bluetooth"] as? String {
            self.bluetooth = value
        }
        if let value = dict["BuildId"] as? String {
            self.buildId = value
        }
        if let value = dict["ChipId"] as? String {
            self.chipId = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["Cpu"] as? String {
            self.cpu = value
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["EtherMac"] as? String {
            self.etherMac = value
        }
        if let value = dict["Memory"] as? String {
            self.memory = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["Storage"] as? String {
            self.storage = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["Wlan"] as? String {
            self.wlan = value
        }
    }
}

public class RegisterDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var newUpgrade: Bool?

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
            if self.newUpgrade != nil {
                map["NewUpgrade"] = self.newUpgrade!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NewUpgrade"] as? Bool {
                self.newUpgrade = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = RegisterDeviceResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RegisterDeviceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaseVersion"] as? String {
            self.baseVersion = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["ClientUid"] as? String {
            self.clientUid = value
        }
        if let value = dict["Note"] as? String {
            self.note = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["Project"] as? String {
            self.project = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TargetVersion"] as? String {
            self.targetVersion = value
        }
        if let value = dict["TaskUid"] as? String {
            self.taskUid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReportAppOtaInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaseVersion"] as? String {
            self.baseVersion = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Note"] as? String {
            self.note = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TargetVersion"] as? String {
            self.targetVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReportDeviceOtaInfoResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileSize"] as? Int32 {
                self.fileSize = value
            }
            if let value = dict["FileType"] as? Int32 {
                self.fileType = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["FileList"] as? [Any?] {
            var tmp : [ReportUserFbAcIssueRequest.FileList] = []
            for v in value {
                if v != nil {
                    var model = ReportUserFbAcIssueRequest.FileList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fileList = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["ReservedA"] as? String {
            self.reservedA = value
        }
        if let value = dict["ReservedB"] as? String {
            self.reservedB = value
        }
        if let value = dict["UserEmail"] as? String {
            self.userEmail = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["FileList"] as? String {
            self.fileListShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["ReservedA"] as? String {
            self.reservedA = value
        }
        if let value = dict["ReservedB"] as? String {
            self.reservedB = value
        }
        if let value = dict["UserEmail"] as? String {
            self.userEmail = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IssueId"] as? Int64 {
                self.issueId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ReportUserFbAcIssueResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReportUserFbAcIssueResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileMd5"] as? String {
                self.fileMd5 = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileSize"] as? Int32 {
                self.fileSize = value
            }
            if let value = dict["FileType"] as? Int32 {
                self.fileType = value
            }
            if let value = dict["OssUrl"] as? String {
                self.ossUrl = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var appId: String?

    public var clientAppVersion: String?

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
        if self.clientAppVersion != nil {
            map["ClientAppVersion"] = self.clientAppVersion!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["ClientAppVersion"] as? String {
            self.clientAppVersion = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientModel"] as? String {
            self.clientModel = value
        }
        if let value = dict["ClientOsName"] as? String {
            self.clientOsName = value
        }
        if let value = dict["ClientSn"] as? String {
            self.clientSn = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["CustomerId"] as? String {
            self.customerId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["DesktopType"] as? Int32 {
            self.desktopType = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["FbType"] as? Int32 {
            self.fbType = value
        }
        if let value = dict["FileList"] as? [Any?] {
            var tmp : [ReportUserFbIssueRequest.FileList] = []
            for v in value {
                if v != nil {
                    var model = ReportUserFbIssueRequest.FileList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fileList = tmp
        }
        if let value = dict["IssueLabel"] as? String {
            self.issueLabel = value
        }
        if let value = dict["OccurTime"] as? Int64 {
            self.occurTime = value
        }
        if let value = dict["ReservedA"] as? String {
            self.reservedA = value
        }
        if let value = dict["ReservedB"] as? String {
            self.reservedB = value
        }
        if let value = dict["TelNo"] as? String {
            self.telNo = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserEmail"] as? String {
            self.userEmail = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["WyId"] as? String {
            self.wyId = value
        }
    }
}

public class ReportUserFbIssueShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var clientAppVersion: String?

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
        if self.clientAppVersion != nil {
            map["ClientAppVersion"] = self.clientAppVersion!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["ClientAppVersion"] as? String {
            self.clientAppVersion = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientModel"] as? String {
            self.clientModel = value
        }
        if let value = dict["ClientOsName"] as? String {
            self.clientOsName = value
        }
        if let value = dict["ClientSn"] as? String {
            self.clientSn = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["CustomerId"] as? String {
            self.customerId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["DesktopType"] as? Int32 {
            self.desktopType = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["FbType"] as? Int32 {
            self.fbType = value
        }
        if let value = dict["FileList"] as? String {
            self.fileListShrink = value
        }
        if let value = dict["IssueLabel"] as? String {
            self.issueLabel = value
        }
        if let value = dict["OccurTime"] as? Int64 {
            self.occurTime = value
        }
        if let value = dict["ReservedA"] as? String {
            self.reservedA = value
        }
        if let value = dict["ReservedB"] as? String {
            self.reservedB = value
        }
        if let value = dict["TelNo"] as? String {
            self.telNo = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserEmail"] as? String {
            self.userEmail = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["WyId"] as? String {
            self.wyId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IssueId"] as? Int32 {
                self.issueId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ReportUserFbIssueResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReportUserFbIssueResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Delay"] as? Bool {
            self.delay = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["OpsAction"] as? String {
            self.opsAction = value
        }
        if let value = dict["Uuids"] as? [String] {
            self.uuids = value
        }
        if let value = dict["WaitForAck"] as? Bool {
            self.waitForAck = value
        }
    }
}

public class SendOpsMessageToTerminalsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failReason: String?

        public var result: String?

        public var serialNumber: String?

        public var success: Bool?

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
            if self.failReason != nil {
                map["FailReason"] = self.failReason!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailReason"] as? String {
                self.failReason = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var code: String?

    public var data: [SendOpsMessageToTerminalsResponseBody.Data]?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [SendOpsMessageToTerminalsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = SendOpsMessageToTerminalsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendOpsMessageToTerminalsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoUpdate"] as? Int32 {
            self.autoUpdate = value
        }
        if let value = dict["AutoUpdateTimeSchedule"] as? String {
            self.autoUpdateTimeSchedule = value
        }
        if let value = dict["ClientType"] as? Int32 {
            self.clientType = value
        }
        if let value = dict["ForceUpgrade"] as? Int32 {
            self.forceUpgrade = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetDeviceOtaAutoStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationStatus"] as? Int32 {
            self.operationStatus = value
        }
        if let value = dict["TaskId"] as? Int32 {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetDeviceOtaTaskStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindAccountLessLoginUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNoList"] as? [String] {
            self.serialNoList = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNoList"] as? String {
            self.serialNoListShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindDeviceSeatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindPasswordFreeLoginUserRequest : Tea.TeaModel {
    public var mainBizType: String?

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
        if self.mainBizType != nil {
            map["MainBizType"] = self.mainBizType!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MainBizType"] as? String {
            self.mainBizType = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindPasswordFreeLoginUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAliasResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdDomain"] as? String {
                self.adDomain = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdDomain"] as? String {
                self.adDomain = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["SourceAdEndUsers"] as? [Any?] {
            var tmp : [UpdateDeviceBindedEndUserRequest.SourceAdEndUsers] = []
            for v in value {
                if v != nil {
                    var model = UpdateDeviceBindedEndUserRequest.SourceAdEndUsers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sourceAdEndUsers = tmp
        }
        if let value = dict["SourceEndUserIds"] as? String {
            self.sourceEndUserIds = value
        }
        if let value = dict["TargetAdEndUsers"] as? [Any?] {
            var tmp : [UpdateDeviceBindedEndUserRequest.TargetAdEndUsers] = []
            for v in value {
                if v != nil {
                    var model = UpdateDeviceBindedEndUserRequest.TargetAdEndUsers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.targetAdEndUsers = tmp
        }
        if let value = dict["TargetEndUserIds"] as? String {
            self.targetEndUserIds = value
        }
        if let value = dict["UserType"] as? String {
            self.userType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDeviceBindedEndUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelContent"] as? String {
            self.labelContent = value
        }
        if let value = dict["LabelId"] as? String {
            self.labelId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTerminalPolicyRequest : Tea.TeaModel {
    public var allowManualLockScreen: Int32?

    public var backgroundModeTitle: String?

    public var customScreenCastRes: Bool?

    public var displayLayout: String?

    public var displayResolution: String?

    public var displayScaleRatio: String?

    public var enableAutoLockScreen: Int32?

    public var enableAutoLogin: Int32?

    public var enableBackgroundMode: Int32?

    public var enableBluetooth: Int32?

    public var enableControlPanel: Int32?

    public var enableImmersiveMode: Int32?

    public var enableLockScreenHotKey: Int32?

    public var enableModifyPassword: Int32?

    public var enableScanLogin: Int32?

    public var enableScheduledReboot: Int32?

    public var enableScheduledShutdown: Int32?

    public var enableSmsLogin: Int32?

    public var enableSwitchPersonal: Int32?

    public var enableWlan: Int32?

    public var followCloudReboot: Int32?

    public var followCloudShutdown: Int32?

    public var followTerminalReboot: Int32?

    public var followTerminalShutdown: Int32?

    public var forceSetPinCode: Int32?

    public var idleTimeout: Int32?

    public var idleTimeoutAction: Int32?

    public var lockScreenPasswordRequired: Int32?

    public var lockScreenTimeout: Int32?

    public var mainBizType: String?

    public var name: String?

    public var powerButtonDefine: Int32?

    public var powerButtonDefineForAs: Int32?

    public var powerButtonDefineForNs: Int32?

    public var powerOnBehavior: Int32?

    public var runningMode: String?

    public var scheduledReboot: String?

    public var scheduledShutdown: String?

    public var screenCastResPaths: [String]?

    public var settingLock: Int32?

    public var terminalPolicyId: String?

    public var unlockMethod: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowManualLockScreen != nil {
            map["AllowManualLockScreen"] = self.allowManualLockScreen!
        }
        if self.backgroundModeTitle != nil {
            map["BackgroundModeTitle"] = self.backgroundModeTitle!
        }
        if self.customScreenCastRes != nil {
            map["CustomScreenCastRes"] = self.customScreenCastRes!
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
        if self.enableControlPanel != nil {
            map["EnableControlPanel"] = self.enableControlPanel!
        }
        if self.enableImmersiveMode != nil {
            map["EnableImmersiveMode"] = self.enableImmersiveMode!
        }
        if self.enableLockScreenHotKey != nil {
            map["EnableLockScreenHotKey"] = self.enableLockScreenHotKey!
        }
        if self.enableModifyPassword != nil {
            map["EnableModifyPassword"] = self.enableModifyPassword!
        }
        if self.enableScanLogin != nil {
            map["EnableScanLogin"] = self.enableScanLogin!
        }
        if self.enableScheduledReboot != nil {
            map["EnableScheduledReboot"] = self.enableScheduledReboot!
        }
        if self.enableScheduledShutdown != nil {
            map["EnableScheduledShutdown"] = self.enableScheduledShutdown!
        }
        if self.enableSmsLogin != nil {
            map["EnableSmsLogin"] = self.enableSmsLogin!
        }
        if self.enableSwitchPersonal != nil {
            map["EnableSwitchPersonal"] = self.enableSwitchPersonal!
        }
        if self.enableWlan != nil {
            map["EnableWlan"] = self.enableWlan!
        }
        if self.followCloudReboot != nil {
            map["FollowCloudReboot"] = self.followCloudReboot!
        }
        if self.followCloudShutdown != nil {
            map["FollowCloudShutdown"] = self.followCloudShutdown!
        }
        if self.followTerminalReboot != nil {
            map["FollowTerminalReboot"] = self.followTerminalReboot!
        }
        if self.followTerminalShutdown != nil {
            map["FollowTerminalShutdown"] = self.followTerminalShutdown!
        }
        if self.forceSetPinCode != nil {
            map["ForceSetPinCode"] = self.forceSetPinCode!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.idleTimeoutAction != nil {
            map["IdleTimeoutAction"] = self.idleTimeoutAction!
        }
        if self.lockScreenPasswordRequired != nil {
            map["LockScreenPasswordRequired"] = self.lockScreenPasswordRequired!
        }
        if self.lockScreenTimeout != nil {
            map["LockScreenTimeout"] = self.lockScreenTimeout!
        }
        if self.mainBizType != nil {
            map["MainBizType"] = self.mainBizType!
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
        if self.runningMode != nil {
            map["RunningMode"] = self.runningMode!
        }
        if self.scheduledReboot != nil {
            map["ScheduledReboot"] = self.scheduledReboot!
        }
        if self.scheduledShutdown != nil {
            map["ScheduledShutdown"] = self.scheduledShutdown!
        }
        if self.screenCastResPaths != nil {
            map["ScreenCastResPaths"] = self.screenCastResPaths!
        }
        if self.settingLock != nil {
            map["SettingLock"] = self.settingLock!
        }
        if self.terminalPolicyId != nil {
            map["TerminalPolicyId"] = self.terminalPolicyId!
        }
        if self.unlockMethod != nil {
            map["UnlockMethod"] = self.unlockMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowManualLockScreen"] as? Int32 {
            self.allowManualLockScreen = value
        }
        if let value = dict["BackgroundModeTitle"] as? String {
            self.backgroundModeTitle = value
        }
        if let value = dict["CustomScreenCastRes"] as? Bool {
            self.customScreenCastRes = value
        }
        if let value = dict["DisplayLayout"] as? String {
            self.displayLayout = value
        }
        if let value = dict["DisplayResolution"] as? String {
            self.displayResolution = value
        }
        if let value = dict["DisplayScaleRatio"] as? String {
            self.displayScaleRatio = value
        }
        if let value = dict["EnableAutoLockScreen"] as? Int32 {
            self.enableAutoLockScreen = value
        }
        if let value = dict["EnableAutoLogin"] as? Int32 {
            self.enableAutoLogin = value
        }
        if let value = dict["EnableBackgroundMode"] as? Int32 {
            self.enableBackgroundMode = value
        }
        if let value = dict["EnableBluetooth"] as? Int32 {
            self.enableBluetooth = value
        }
        if let value = dict["EnableControlPanel"] as? Int32 {
            self.enableControlPanel = value
        }
        if let value = dict["EnableImmersiveMode"] as? Int32 {
            self.enableImmersiveMode = value
        }
        if let value = dict["EnableLockScreenHotKey"] as? Int32 {
            self.enableLockScreenHotKey = value
        }
        if let value = dict["EnableModifyPassword"] as? Int32 {
            self.enableModifyPassword = value
        }
        if let value = dict["EnableScanLogin"] as? Int32 {
            self.enableScanLogin = value
        }
        if let value = dict["EnableScheduledReboot"] as? Int32 {
            self.enableScheduledReboot = value
        }
        if let value = dict["EnableScheduledShutdown"] as? Int32 {
            self.enableScheduledShutdown = value
        }
        if let value = dict["EnableSmsLogin"] as? Int32 {
            self.enableSmsLogin = value
        }
        if let value = dict["EnableSwitchPersonal"] as? Int32 {
            self.enableSwitchPersonal = value
        }
        if let value = dict["EnableWlan"] as? Int32 {
            self.enableWlan = value
        }
        if let value = dict["FollowCloudReboot"] as? Int32 {
            self.followCloudReboot = value
        }
        if let value = dict["FollowCloudShutdown"] as? Int32 {
            self.followCloudShutdown = value
        }
        if let value = dict["FollowTerminalReboot"] as? Int32 {
            self.followTerminalReboot = value
        }
        if let value = dict["FollowTerminalShutdown"] as? Int32 {
            self.followTerminalShutdown = value
        }
        if let value = dict["ForceSetPinCode"] as? Int32 {
            self.forceSetPinCode = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["IdleTimeoutAction"] as? Int32 {
            self.idleTimeoutAction = value
        }
        if let value = dict["LockScreenPasswordRequired"] as? Int32 {
            self.lockScreenPasswordRequired = value
        }
        if let value = dict["LockScreenTimeout"] as? Int32 {
            self.lockScreenTimeout = value
        }
        if let value = dict["MainBizType"] as? String {
            self.mainBizType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PowerButtonDefine"] as? Int32 {
            self.powerButtonDefine = value
        }
        if let value = dict["PowerButtonDefineForAs"] as? Int32 {
            self.powerButtonDefineForAs = value
        }
        if let value = dict["PowerButtonDefineForNs"] as? Int32 {
            self.powerButtonDefineForNs = value
        }
        if let value = dict["PowerOnBehavior"] as? Int32 {
            self.powerOnBehavior = value
        }
        if let value = dict["RunningMode"] as? String {
            self.runningMode = value
        }
        if let value = dict["ScheduledReboot"] as? String {
            self.scheduledReboot = value
        }
        if let value = dict["ScheduledShutdown"] as? String {
            self.scheduledShutdown = value
        }
        if let value = dict["ScreenCastResPaths"] as? [String] {
            self.screenCastResPaths = value
        }
        if let value = dict["SettingLock"] as? Int32 {
            self.settingLock = value
        }
        if let value = dict["TerminalPolicyId"] as? String {
            self.terminalPolicyId = value
        }
        if let value = dict["UnlockMethod"] as? Int32 {
            self.unlockMethod = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTerminalPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
