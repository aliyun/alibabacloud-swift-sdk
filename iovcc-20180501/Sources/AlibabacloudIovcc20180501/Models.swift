import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddUploadedFunctionFileInfoRequest : Tea.TeaModel {
    public var fileName: String?

    public var objectKey: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("ObjectKey") {
            self.objectKey = dict["ObjectKey"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class AddUploadedFunctionFileInfoResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddUploadedFunctionFileInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUploadedFunctionFileInfoResponseBody?

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
            var model = AddUploadedFunctionFileInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddVersionBlackDevicesRequest : Tea.TeaModel {
    public var deviceIdType: String?

    public var deviceIds: String?

    public var projectId: String?

    public var versionId: String?

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
        if self.deviceIdType != nil {
            map["DeviceIdType"] = self.deviceIdType!
        }
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceIdType") {
            self.deviceIdType = dict["DeviceIdType"] as! String
        }
        if dict.keys.contains("DeviceIds") {
            self.deviceIds = dict["DeviceIds"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class AddVersionBlackDevicesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddVersionBlackDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddVersionBlackDevicesResponseBody?

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
            var model = AddVersionBlackDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddVersionGroupDevicesRequest : Tea.TeaModel {
    public var deviceGroupId: String?

    public var deviceIdType: String?

    public var deviceIds: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.deviceIdType != nil {
            map["DeviceIdType"] = self.deviceIdType!
        }
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupId") {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("DeviceIdType") {
            self.deviceIdType = dict["DeviceIdType"] as! String
        }
        if dict.keys.contains("DeviceIds") {
            self.deviceIds = dict["DeviceIds"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class AddVersionGroupDevicesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddVersionGroupDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddVersionGroupDevicesResponseBody?

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
            var model = AddVersionGroupDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddVersionWhiteDevicesRequest : Tea.TeaModel {
    public var deviceIdType: String?

    public var deviceIds: String?

    public var projectId: String?

    public var versionId: String?

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
        if self.deviceIdType != nil {
            map["DeviceIdType"] = self.deviceIdType!
        }
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceIdType") {
            self.deviceIdType = dict["DeviceIdType"] as! String
        }
        if dict.keys.contains("DeviceIds") {
            self.deviceIds = dict["DeviceIds"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class AddVersionWhiteDevicesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddVersionWhiteDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddVersionWhiteDevicesResponseBody?

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
            var model = AddVersionWhiteDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddVersionWhiteDevicesByDeviceGroupsRequest : Tea.TeaModel {
    public var groupIds: String?

    public var projectId: String?

    public var versionId: String?

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
        if self.groupIds != nil {
            map["GroupIds"] = self.groupIds!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupIds") {
            self.groupIds = dict["GroupIds"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class AddVersionWhiteDevicesByDeviceGroupsResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddVersionWhiteDevicesByDeviceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddVersionWhiteDevicesByDeviceGroupsResponseBody?

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
            var model = AddVersionWhiteDevicesByDeviceGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConnectAssistDeviceRequest : Tea.TeaModel {
    public var allowCommandExtension: Bool?

    public var deviceId: String?

    public var hardwareId: String?

    public var projectId: String?

    public var serialNumber: String?

    public var UUID: String?

    public var VIN: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowCommandExtension != nil {
            map["AllowCommandExtension"] = self.allowCommandExtension!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.hardwareId != nil {
            map["HardwareId"] = self.hardwareId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.UUID != nil {
            map["UUID"] = self.UUID!
        }
        if self.VIN != nil {
            map["VIN"] = self.VIN!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowCommandExtension") {
            self.allowCommandExtension = dict["AllowCommandExtension"] as! Bool
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("HardwareId") {
            self.hardwareId = dict["HardwareId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("UUID") {
            self.UUID = dict["UUID"] as! String
        }
        if dict.keys.contains("VIN") {
            self.VIN = dict["VIN"] as! String
        }
    }
}

public class ConnectAssistDeviceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConnectAssistDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConnectAssistDeviceResponseBody?

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
            var model = ConnectAssistDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountActivatedOrNewRegistrationDeviceRequest : Tea.TeaModel {
    public var deviceBrand: String?

    public var deviceBrandId: String?

    public var deviceCountStatType: String?

    public var deviceModel: String?

    public var deviceModelId: String?

    public var deviceType: String?

    public var endTime: String?

    public var isQueryNewRegistrationDevice: String?

    public var isQueryYearlyActivate: String?

    public var projectId: String?

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
        if self.deviceBrand != nil {
            map["DeviceBrand"] = self.deviceBrand!
        }
        if self.deviceBrandId != nil {
            map["DeviceBrandId"] = self.deviceBrandId!
        }
        if self.deviceCountStatType != nil {
            map["DeviceCountStatType"] = self.deviceCountStatType!
        }
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isQueryNewRegistrationDevice != nil {
            map["IsQueryNewRegistrationDevice"] = self.isQueryNewRegistrationDevice!
        }
        if self.isQueryYearlyActivate != nil {
            map["IsQueryYearlyActivate"] = self.isQueryYearlyActivate!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceBrand") {
            self.deviceBrand = dict["DeviceBrand"] as! String
        }
        if dict.keys.contains("DeviceBrandId") {
            self.deviceBrandId = dict["DeviceBrandId"] as! String
        }
        if dict.keys.contains("DeviceCountStatType") {
            self.deviceCountStatType = dict["DeviceCountStatType"] as! String
        }
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! String
        }
        if dict.keys.contains("DeviceType") {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IsQueryNewRegistrationDevice") {
            self.isQueryNewRegistrationDevice = dict["IsQueryNewRegistrationDevice"] as! String
        }
        if dict.keys.contains("IsQueryYearlyActivate") {
            self.isQueryYearlyActivate = dict["IsQueryYearlyActivate"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class CountActivatedOrNewRegistrationDeviceResponseBody : Tea.TeaModel {
    public class Statistics : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public var data: [String]?

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
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! [String]
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var categories: [String]?

        public var series: [CountActivatedOrNewRegistrationDeviceResponseBody.Statistics.Series]?

        public override init() {
            super.init()
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
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") {
                self.categories = dict["Categories"] as! [String]
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! [CountActivatedOrNewRegistrationDeviceResponseBody.Statistics.Series]
            }
        }
    }
    public var requestId: String?

    public var statistics: CountActivatedOrNewRegistrationDeviceResponseBody.Statistics?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.statistics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.statistics != nil {
            map["Statistics"] = self.statistics?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Statistics") {
            var model = CountActivatedOrNewRegistrationDeviceResponseBody.Statistics()
            model.fromMap(dict["Statistics"] as! [String: Any])
            self.statistics = model
        }
    }
}

public class CountActivatedOrNewRegistrationDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountActivatedOrNewRegistrationDeviceResponseBody?

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
            var model = CountActivatedOrNewRegistrationDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountDeviceBrandsRequest : Tea.TeaModel {
    public var deviceBrand: String?

    public var deviceBrandId: Int64?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceBrand != nil {
            map["DeviceBrand"] = self.deviceBrand!
        }
        if self.deviceBrandId != nil {
            map["DeviceBrandId"] = self.deviceBrandId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceBrand") {
            self.deviceBrand = dict["DeviceBrand"] as! String
        }
        if dict.keys.contains("DeviceBrandId") {
            self.deviceBrandId = dict["DeviceBrandId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CountDeviceBrandsResponseBody : Tea.TeaModel {
    public var brandCount: Int32?

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
        if self.brandCount != nil {
            map["BrandCount"] = self.brandCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BrandCount") {
            self.brandCount = dict["BrandCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CountDeviceBrandsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountDeviceBrandsResponseBody?

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
            var model = CountDeviceBrandsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountDeviceModelsRequest : Tea.TeaModel {
    public var deviceBrand: String?

    public var deviceModel: String?

    public var deviceModelId: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceBrand != nil {
            map["DeviceBrand"] = self.deviceBrand!
        }
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceBrand") {
            self.deviceBrand = dict["DeviceBrand"] as! String
        }
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CountDeviceModelsResponseBody : Tea.TeaModel {
    public var modelCount: Int32?

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
        if self.modelCount != nil {
            map["ModelCount"] = self.modelCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelCount") {
            self.modelCount = dict["ModelCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CountDeviceModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountDeviceModelsResponseBody?

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
            var model = CountDeviceModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountDevicesRequest : Tea.TeaModel {
    public var deviceModel: String?

    public var deviceModelId: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CountDevicesResponseBody : Tea.TeaModel {
    public var deviceCount: Int32?

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
        if self.deviceCount != nil {
            map["DeviceCount"] = self.deviceCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceCount") {
            self.deviceCount = dict["DeviceCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CountDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountDevicesResponseBody?

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
            var model = CountDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountYunIdInfoResponseBody : Tea.TeaModel {
    public class YunIdInfo : Tea.TeaModel {
        public var totalBrandCount: Int64?

        public var totalDeviceCount: Int64?

        public var totalDeviceModelCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalBrandCount != nil {
                map["TotalBrandCount"] = self.totalBrandCount!
            }
            if self.totalDeviceCount != nil {
                map["TotalDeviceCount"] = self.totalDeviceCount!
            }
            if self.totalDeviceModelCount != nil {
                map["TotalDeviceModelCount"] = self.totalDeviceModelCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TotalBrandCount") {
                self.totalBrandCount = dict["TotalBrandCount"] as! Int64
            }
            if dict.keys.contains("TotalDeviceCount") {
                self.totalDeviceCount = dict["TotalDeviceCount"] as! Int64
            }
            if dict.keys.contains("TotalDeviceModelCount") {
                self.totalDeviceModelCount = dict["TotalDeviceModelCount"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var yunIdInfo: [CountYunIdInfoResponseBody.YunIdInfo]?

    public override init() {
        super.init()
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
        if self.yunIdInfo != nil {
            var tmp : [Any] = []
            for k in self.yunIdInfo! {
                tmp.append(k.toMap())
            }
            map["YunIdInfo"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("YunIdInfo") {
            self.yunIdInfo = dict["YunIdInfo"] as! [CountYunIdInfoResponseBody.YunIdInfo]
        }
    }
}

public class CountYunIdInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountYunIdInfoResponseBody?

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
            var model = CountYunIdInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppVersionRequest : Tea.TeaModel {
    public var apkMd5: String?

    public var appId: String?

    public var appVersion: String?

    public var blackVersionList: String?

    public var deviceAdapterList: String?

    public var installType: String?

    public var isAllowNewInstall: String?

    public var isForceUpgrade: String?

    public var isNeedRestart: String?

    public var isSilentUpgrade: String?

    public var packageUrl: String?

    public var projectId: String?

    public var releaseNote: String?

    public var remark: String?

    public var restartAppParam: String?

    public var restartAppType: String?

    public var restartType: String?

    public var versionCode: String?

    public var whiteVersionList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apkMd5 != nil {
            map["ApkMd5"] = self.apkMd5!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.blackVersionList != nil {
            map["BlackVersionList"] = self.blackVersionList!
        }
        if self.deviceAdapterList != nil {
            map["DeviceAdapterList"] = self.deviceAdapterList!
        }
        if self.installType != nil {
            map["InstallType"] = self.installType!
        }
        if self.isAllowNewInstall != nil {
            map["IsAllowNewInstall"] = self.isAllowNewInstall!
        }
        if self.isForceUpgrade != nil {
            map["IsForceUpgrade"] = self.isForceUpgrade!
        }
        if self.isNeedRestart != nil {
            map["IsNeedRestart"] = self.isNeedRestart!
        }
        if self.isSilentUpgrade != nil {
            map["IsSilentUpgrade"] = self.isSilentUpgrade!
        }
        if self.packageUrl != nil {
            map["PackageUrl"] = self.packageUrl!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.releaseNote != nil {
            map["ReleaseNote"] = self.releaseNote!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.restartAppParam != nil {
            map["RestartAppParam"] = self.restartAppParam!
        }
        if self.restartAppType != nil {
            map["RestartAppType"] = self.restartAppType!
        }
        if self.restartType != nil {
            map["RestartType"] = self.restartType!
        }
        if self.versionCode != nil {
            map["VersionCode"] = self.versionCode!
        }
        if self.whiteVersionList != nil {
            map["WhiteVersionList"] = self.whiteVersionList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApkMd5") {
            self.apkMd5 = dict["ApkMd5"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("BlackVersionList") {
            self.blackVersionList = dict["BlackVersionList"] as! String
        }
        if dict.keys.contains("DeviceAdapterList") {
            self.deviceAdapterList = dict["DeviceAdapterList"] as! String
        }
        if dict.keys.contains("InstallType") {
            self.installType = dict["InstallType"] as! String
        }
        if dict.keys.contains("IsAllowNewInstall") {
            self.isAllowNewInstall = dict["IsAllowNewInstall"] as! String
        }
        if dict.keys.contains("IsForceUpgrade") {
            self.isForceUpgrade = dict["IsForceUpgrade"] as! String
        }
        if dict.keys.contains("IsNeedRestart") {
            self.isNeedRestart = dict["IsNeedRestart"] as! String
        }
        if dict.keys.contains("IsSilentUpgrade") {
            self.isSilentUpgrade = dict["IsSilentUpgrade"] as! String
        }
        if dict.keys.contains("PackageUrl") {
            self.packageUrl = dict["PackageUrl"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ReleaseNote") {
            self.releaseNote = dict["ReleaseNote"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("RestartAppParam") {
            self.restartAppParam = dict["RestartAppParam"] as! String
        }
        if dict.keys.contains("RestartAppType") {
            self.restartAppType = dict["RestartAppType"] as! String
        }
        if dict.keys.contains("RestartType") {
            self.restartType = dict["RestartType"] as! String
        }
        if dict.keys.contains("VersionCode") {
            self.versionCode = dict["VersionCode"] as! String
        }
        if dict.keys.contains("WhiteVersionList") {
            self.whiteVersionList = dict["WhiteVersionList"] as! String
        }
    }
}

public class CreateAppVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var versionId: String?

    public override init() {
        super.init()
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
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class CreateAppVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppVersionResponseBody?

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
            var model = CreateAppVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomizedFilterRequest : Tea.TeaModel {
    public var blackWhiteType: String?

    public var name: String?

    public var projectId: String?

    public var value: String?

    public var valueCompareType: String?

    public var valueType: String?

    public var versionId: String?

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
        if self.blackWhiteType != nil {
            map["BlackWhiteType"] = self.blackWhiteType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.valueCompareType != nil {
            map["ValueCompareType"] = self.valueCompareType!
        }
        if self.valueType != nil {
            map["ValueType"] = self.valueType!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackWhiteType") {
            self.blackWhiteType = dict["BlackWhiteType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
        if dict.keys.contains("ValueCompareType") {
            self.valueCompareType = dict["ValueCompareType"] as! String
        }
        if dict.keys.contains("ValueType") {
            self.valueType = dict["ValueType"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class CreateCustomizedFilterResponseBody : Tea.TeaModel {
    public var customizedFilterId: String?

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
        if self.customizedFilterId != nil {
            map["CustomizedFilterId"] = self.customizedFilterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomizedFilterId") {
            self.customizedFilterId = dict["CustomizedFilterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCustomizedFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomizedFilterResponseBody?

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
            var model = CreateCustomizedFilterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomizedPropertyRequest : Tea.TeaModel {
    public var name: String?

    public var projectId: String?

    public var value: String?

    public var versionId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class CreateCustomizedPropertyResponseBody : Tea.TeaModel {
    public var customizedPropertyId: String?

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
        if self.customizedPropertyId != nil {
            map["CustomizedPropertyId"] = self.customizedPropertyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomizedPropertyId") {
            self.customizedPropertyId = dict["CustomizedPropertyId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCustomizedPropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomizedPropertyResponseBody?

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
            var model = CreateCustomizedPropertyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDeviceBrandRequest : Tea.TeaModel {
    public var brandName: String?

    public var description_: String?

    public var manufacture: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brandName != nil {
            map["BrandName"] = self.brandName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.manufacture != nil {
            map["Manufacture"] = self.manufacture!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BrandName") {
            self.brandName = dict["BrandName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Manufacture") {
            self.manufacture = dict["Manufacture"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CreateDeviceBrandResponseBody : Tea.TeaModel {
    public var brandId: Int64?

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
        if self.brandId != nil {
            map["BrandId"] = self.brandId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BrandId") {
            self.brandId = dict["BrandId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDeviceBrandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeviceBrandResponseBody?

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
            var model = CreateDeviceBrandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDeviceModelRequest : Tea.TeaModel {
    public var brandName: String?

    public var canCreateDeviceId: String?

    public var description_: String?

    public var deviceName: String?

    public var deviceType: String?

    public var hardwareType: String?

    public var initUsageType: String?

    public var modelName: String?

    public var objectKey: String?

    public var osPlatform: String?

    public var projectId: String?

    public var securityChip: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brandName != nil {
            map["BrandName"] = self.brandName!
        }
        if self.canCreateDeviceId != nil {
            map["CanCreateDeviceId"] = self.canCreateDeviceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.hardwareType != nil {
            map["HardwareType"] = self.hardwareType!
        }
        if self.initUsageType != nil {
            map["InitUsageType"] = self.initUsageType!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.osPlatform != nil {
            map["OsPlatform"] = self.osPlatform!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.securityChip != nil {
            map["SecurityChip"] = self.securityChip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BrandName") {
            self.brandName = dict["BrandName"] as! String
        }
        if dict.keys.contains("CanCreateDeviceId") {
            self.canCreateDeviceId = dict["CanCreateDeviceId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DeviceName") {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("DeviceType") {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("HardwareType") {
            self.hardwareType = dict["HardwareType"] as! String
        }
        if dict.keys.contains("InitUsageType") {
            self.initUsageType = dict["InitUsageType"] as! String
        }
        if dict.keys.contains("ModelName") {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("ObjectKey") {
            self.objectKey = dict["ObjectKey"] as! String
        }
        if dict.keys.contains("OsPlatform") {
            self.osPlatform = dict["OsPlatform"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SecurityChip") {
            self.securityChip = dict["SecurityChip"] as! String
        }
    }
}

public class CreateDeviceModelResponseBody : Tea.TeaModel {
    public var deviceModelId: Int64?

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
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDeviceModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeviceModelResponseBody?

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
            var model = CreateDeviceModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNamespaceRequest : Tea.TeaModel {
    public var authType: String?

    public var desc: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthType") {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("Desc") {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CreateNamespaceResponseBody : Tea.TeaModel {
    public var namespace: String?

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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNamespaceResponseBody?

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
            var model = CreateNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOsVersionRequest : Tea.TeaModel {
    public var blackVersionList: String?

    public var deviceModelId: String?

    public var enableMobileDownload: String?

    public var isForceNightUpgrade: String?

    public var isForceUpgrade: String?

    public var isMilestone: String?

    public var maxClientVersion: String?

    public var minClientVersion: String?

    public var mobileDownloadMaxSize: String?

    public var nightUpgradeDownloadType: String?

    public var nightUpgradeIsAllowedCancel: String?

    public var nightUpgradeIsShowTip: String?

    public var projectId: String?

    public var releaseNote: String?

    public var remark: String?

    public var romList: String?

    public var systemVersion: String?

    public var whiteVersionList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackVersionList != nil {
            map["BlackVersionList"] = self.blackVersionList!
        }
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.enableMobileDownload != nil {
            map["EnableMobileDownload"] = self.enableMobileDownload!
        }
        if self.isForceNightUpgrade != nil {
            map["IsForceNightUpgrade"] = self.isForceNightUpgrade!
        }
        if self.isForceUpgrade != nil {
            map["IsForceUpgrade"] = self.isForceUpgrade!
        }
        if self.isMilestone != nil {
            map["IsMilestone"] = self.isMilestone!
        }
        if self.maxClientVersion != nil {
            map["MaxClientVersion"] = self.maxClientVersion!
        }
        if self.minClientVersion != nil {
            map["MinClientVersion"] = self.minClientVersion!
        }
        if self.mobileDownloadMaxSize != nil {
            map["MobileDownloadMaxSize"] = self.mobileDownloadMaxSize!
        }
        if self.nightUpgradeDownloadType != nil {
            map["NightUpgradeDownloadType"] = self.nightUpgradeDownloadType!
        }
        if self.nightUpgradeIsAllowedCancel != nil {
            map["NightUpgradeIsAllowedCancel"] = self.nightUpgradeIsAllowedCancel!
        }
        if self.nightUpgradeIsShowTip != nil {
            map["NightUpgradeIsShowTip"] = self.nightUpgradeIsShowTip!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.releaseNote != nil {
            map["ReleaseNote"] = self.releaseNote!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.romList != nil {
            map["RomList"] = self.romList!
        }
        if self.systemVersion != nil {
            map["SystemVersion"] = self.systemVersion!
        }
        if self.whiteVersionList != nil {
            map["WhiteVersionList"] = self.whiteVersionList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackVersionList") {
            self.blackVersionList = dict["BlackVersionList"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! String
        }
        if dict.keys.contains("EnableMobileDownload") {
            self.enableMobileDownload = dict["EnableMobileDownload"] as! String
        }
        if dict.keys.contains("IsForceNightUpgrade") {
            self.isForceNightUpgrade = dict["IsForceNightUpgrade"] as! String
        }
        if dict.keys.contains("IsForceUpgrade") {
            self.isForceUpgrade = dict["IsForceUpgrade"] as! String
        }
        if dict.keys.contains("IsMilestone") {
            self.isMilestone = dict["IsMilestone"] as! String
        }
        if dict.keys.contains("MaxClientVersion") {
            self.maxClientVersion = dict["MaxClientVersion"] as! String
        }
        if dict.keys.contains("MinClientVersion") {
            self.minClientVersion = dict["MinClientVersion"] as! String
        }
        if dict.keys.contains("MobileDownloadMaxSize") {
            self.mobileDownloadMaxSize = dict["MobileDownloadMaxSize"] as! String
        }
        if dict.keys.contains("NightUpgradeDownloadType") {
            self.nightUpgradeDownloadType = dict["NightUpgradeDownloadType"] as! String
        }
        if dict.keys.contains("NightUpgradeIsAllowedCancel") {
            self.nightUpgradeIsAllowedCancel = dict["NightUpgradeIsAllowedCancel"] as! String
        }
        if dict.keys.contains("NightUpgradeIsShowTip") {
            self.nightUpgradeIsShowTip = dict["NightUpgradeIsShowTip"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ReleaseNote") {
            self.releaseNote = dict["ReleaseNote"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("RomList") {
            self.romList = dict["RomList"] as! String
        }
        if dict.keys.contains("SystemVersion") {
            self.systemVersion = dict["SystemVersion"] as! String
        }
        if dict.keys.contains("WhiteVersionList") {
            self.whiteVersionList = dict["WhiteVersionList"] as! String
        }
    }
}

public class CreateOsVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var versionId: String?

    public override init() {
        super.init()
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
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class CreateOsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOsVersionResponseBody?

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
            var model = CreateOsVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var projectDesc: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectDesc != nil {
            map["ProjectDesc"] = self.projectDesc!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectDesc") {
            self.projectDesc = dict["ProjectDesc"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectResponseBody?

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
            var model = CreateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectAppRequest : Tea.TeaModel {
    public var appName: String?

    public var appPkgName: String?

    public var osType: Int32?

    public var projectId: String?

    public override init() {
        super.init()
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
            map["AppName"] = self.appName!
        }
        if self.appPkgName != nil {
            map["AppPkgName"] = self.appPkgName!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppPkgName") {
            self.appPkgName = dict["AppPkgName"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CreateProjectAppResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateProjectAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectAppResponseBody?

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
            var model = CreateProjectAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRpcServiceRequest : Tea.TeaModel {
    public var appKey: String?

    public var groupName: String?

    public var interfaceName: String?

    public var invokeType: String?

    public var methodName: String?

    public var params: String?

    public var projectId: String?

    public var versionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.interfaceName != nil {
            map["InterfaceName"] = self.interfaceName!
        }
        if self.invokeType != nil {
            map["InvokeType"] = self.invokeType!
        }
        if self.methodName != nil {
            map["MethodName"] = self.methodName!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionCode != nil {
            map["VersionCode"] = self.versionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InterfaceName") {
            self.interfaceName = dict["InterfaceName"] as! String
        }
        if dict.keys.contains("InvokeType") {
            self.invokeType = dict["InvokeType"] as! String
        }
        if dict.keys.contains("MethodName") {
            self.methodName = dict["MethodName"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionCode") {
            self.versionCode = dict["VersionCode"] as! String
        }
    }
}

public class CreateRpcServiceResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRpcServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRpcServiceResponseBody?

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
            var model = CreateRpcServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSchemaSubscribeRequest : Tea.TeaModel {
    public var deviceModel: String?

    public var projectId: String?

    public var schemaVersion: String?

    public var subscribeList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.subscribeList != nil {
            map["SubscribeList"] = self.subscribeList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SchemaVersion") {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("SubscribeList") {
            self.subscribeList = dict["SubscribeList"] as! String
        }
    }
}

public class CreateSchemaSubscribeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateSchemaSubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSchemaSubscribeResponseBody?

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
            var model = CreateSchemaSubscribeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateShadowSchemaRequest : Tea.TeaModel {
    public var authType: String?

    public var deviceModelId: String?

    public var namespace: String?

    public var projectId: String?

    public var schema: String?

    public override init() {
        super.init()
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
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthType") {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Schema") {
            self.schema = dict["Schema"] as! String
        }
    }
}

public class CreateShadowSchemaResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateShadowSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateShadowSchemaResponseBody?

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
            var model = CreateShadowSchemaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTriggerRequest : Tea.TeaModel {
    public var fileIds: String?

    public var functionIds: String?

    public var invocationMode: Int32?

    public var namespace: String?

    public var production: Int32?

    public var projectId: String?

    public var sandbox: Int32?

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
        if self.fileIds != nil {
            map["FileIds"] = self.fileIds!
        }
        if self.functionIds != nil {
            map["FunctionIds"] = self.functionIds!
        }
        if self.invocationMode != nil {
            map["InvocationMode"] = self.invocationMode!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.production != nil {
            map["Production"] = self.production!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sandbox != nil {
            map["Sandbox"] = self.sandbox!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileIds") {
            self.fileIds = dict["FileIds"] as! String
        }
        if dict.keys.contains("FunctionIds") {
            self.functionIds = dict["FunctionIds"] as! String
        }
        if dict.keys.contains("InvocationMode") {
            self.invocationMode = dict["InvocationMode"] as! Int32
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Production") {
            self.production = dict["Production"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Sandbox") {
            self.sandbox = dict["Sandbox"] as! Int32
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateTriggerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTriggerResponseBody?

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
            var model = CreateTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUpstreamAppKeyRelationRequest : Tea.TeaModel {
    public var appKey: String?

    public var PAppKey: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.PAppKey != nil {
            map["PAppKey"] = self.PAppKey!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("PAppKey") {
            self.PAppKey = dict["PAppKey"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CreateUpstreamAppKeyRelationResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateUpstreamAppKeyRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUpstreamAppKeyRelationResponseBody?

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
            var model = CreateUpstreamAppKeyRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUpstreamAppKeyRelationsRequest : Tea.TeaModel {
    public var appKeys: String?

    public var appServerId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKeys != nil {
            map["AppKeys"] = self.appKeys!
        }
        if self.appServerId != nil {
            map["AppServerId"] = self.appServerId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKeys") {
            self.appKeys = dict["AppKeys"] as! String
        }
        if dict.keys.contains("AppServerId") {
            self.appServerId = dict["AppServerId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CreateUpstreamAppKeyRelationsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateUpstreamAppKeyRelationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUpstreamAppKeyRelationsResponseBody?

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
            var model = CreateUpstreamAppKeyRelationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUpstreamAppServerRequest : Tea.TeaModel {
    public var name: String?

    public var projectId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class CreateUpstreamAppServerResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateUpstreamAppServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUpstreamAppServerResponseBody?

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
            var model = CreateUpstreamAppServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVersionDeviceGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var maxCount: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.maxCount != nil {
            map["MaxCount"] = self.maxCount!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MaxCount") {
            self.maxCount = dict["MaxCount"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CreateVersionDeviceGroupResponseBody : Tea.TeaModel {
    public var deviceGroupId: String?

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
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupId") {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateVersionDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVersionDeviceGroupResponseBody?

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
            var model = CreateVersionDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVersionPrepublishRequest : Tea.TeaModel {
    public var barrierCount: String?

    public var isTotalPrepublish: String?

    public var name: String?

    public var projectId: String?

    public var versionId: String?

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
        if self.barrierCount != nil {
            map["BarrierCount"] = self.barrierCount!
        }
        if self.isTotalPrepublish != nil {
            map["IsTotalPrepublish"] = self.isTotalPrepublish!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BarrierCount") {
            self.barrierCount = dict["BarrierCount"] as! String
        }
        if dict.keys.contains("IsTotalPrepublish") {
            self.isTotalPrepublish = dict["IsTotalPrepublish"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class CreateVersionPrepublishResponseBody : Tea.TeaModel {
    public var prepublishId: String?

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
        if self.prepublishId != nil {
            map["PrepublishId"] = self.prepublishId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrepublishId") {
            self.prepublishId = dict["PrepublishId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateVersionPrepublishResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVersionPrepublishResponseBody?

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
            var model = CreateVersionPrepublishResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVersionTestRequest : Tea.TeaModel {
    public var description_: String?

    public var deviceGroupId: String?

    public var name: String?

    public var projectId: String?

    public var versionId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DeviceGroupId") {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class CreateVersionTestResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var testId: String?

    public override init() {
        super.init()
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
        if self.testId != nil {
            map["TestId"] = self.testId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TestId") {
            self.testId = dict["TestId"] as! String
        }
    }
}

public class CreateVersionTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVersionTestResponseBody?

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
            var model = CreateVersionTestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DelayPublishOsVersionRequest : Tea.TeaModel {
    public var description_: String?

    public var downTime: Int64?

    public var email: String?

    public var prepubTime: Int64?

    public var prepublishCount: String?

    public var projectId: String?

    public var publishTime: Int64?

    public var sendMessage: String?

    public var versionId: String?

    public override init() {
        super.init()
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
        if self.downTime != nil {
            map["DownTime"] = self.downTime!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.prepubTime != nil {
            map["PrepubTime"] = self.prepubTime!
        }
        if self.prepublishCount != nil {
            map["PrepublishCount"] = self.prepublishCount!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.publishTime != nil {
            map["PublishTime"] = self.publishTime!
        }
        if self.sendMessage != nil {
            map["SendMessage"] = self.sendMessage!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DownTime") {
            self.downTime = dict["DownTime"] as! Int64
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("PrepubTime") {
            self.prepubTime = dict["PrepubTime"] as! Int64
        }
        if dict.keys.contains("PrepublishCount") {
            self.prepublishCount = dict["PrepublishCount"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("PublishTime") {
            self.publishTime = dict["PublishTime"] as! Int64
        }
        if dict.keys.contains("SendMessage") {
            self.sendMessage = dict["SendMessage"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class DelayPublishOsVersionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DelayPublishOsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DelayPublishOsVersionResponseBody?

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
            var model = DelayPublishOsVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAllCustomizedFiltersRequest : Tea.TeaModel {
    public var projectId: String?

    public var versionId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class DeleteAllCustomizedFiltersResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAllCustomizedFiltersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAllCustomizedFiltersResponseBody?

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
            var model = DeleteAllCustomizedFiltersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAllVersionGroupDevicesRequest : Tea.TeaModel {
    public var deviceGroupId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupId") {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteAllVersionGroupDevicesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAllVersionGroupDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAllVersionGroupDevicesResponseBody?

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
            var model = DeleteAllVersionGroupDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomizedFilterRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteCustomizedFilterResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCustomizedFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomizedFilterResponseBody?

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
            var model = DeleteCustomizedFilterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomizedPropertyRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteCustomizedPropertyResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCustomizedPropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomizedPropertyResponseBody?

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
            var model = DeleteCustomizedPropertyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDeviceRequest : Tea.TeaModel {
    public var deviceId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteDeviceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeviceResponseBody?

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
            var model = DeleteDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFunctionFileRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileType: Int32?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
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
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteFunctionFileResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteFunctionFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFunctionFileResponseBody?

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
            var model = DeleteFunctionFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNamespaceRequest : Tea.TeaModel {
    public var namespace: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteNamespaceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNamespaceResponseBody?

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
            var model = DeleteNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOpenAccountRequest : Tea.TeaModel {
    public var identityId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityId != nil {
            map["IdentityId"] = self.identityId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentityId") {
            self.identityId = dict["IdentityId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteOpenAccountResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteOpenAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOpenAccountResponseBody?

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
            var model = DeleteOpenAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProjectAppRequest : Tea.TeaModel {
    public var appId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteProjectAppResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteProjectAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProjectAppResponseBody?

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
            var model = DeleteProjectAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRpcServiceRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteRpcServiceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteRpcServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRpcServiceResponseBody?

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
            var model = DeleteRpcServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSchemaSubscribeRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteSchemaSubscribeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSchemaSubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSchemaSubscribeResponseBody?

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
            var model = DeleteSchemaSubscribeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteShadowSchemaRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteShadowSchemaResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteShadowSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteShadowSchemaResponseBody?

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
            var model = DeleteShadowSchemaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTriggerRequest : Tea.TeaModel {
    public var id: Int64?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteTriggerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTriggerResponseBody?

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
            var model = DeleteTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUpstreamAppKeyRelationRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteUpstreamAppKeyRelationResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteUpstreamAppKeyRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUpstreamAppKeyRelationResponseBody?

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
            var model = DeleteUpstreamAppKeyRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUpstreamAppServerRequest : Tea.TeaModel {
    public var id: Int64?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteUpstreamAppServerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteUpstreamAppServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUpstreamAppServerResponseBody?

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
            var model = DeleteUpstreamAppServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVersionAllBlackDevicesRequest : Tea.TeaModel {
    public var projectId: String?

    public var versionId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class DeleteVersionAllBlackDevicesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVersionAllBlackDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVersionAllBlackDevicesResponseBody?

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
            var model = DeleteVersionAllBlackDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVersionAllWhiteDevicesRequest : Tea.TeaModel {
    public var projectId: String?

    public var versionId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class DeleteVersionAllWhiteDevicesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVersionAllWhiteDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVersionAllWhiteDevicesResponseBody?

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
            var model = DeleteVersionAllWhiteDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVersionBlackDevicesRequest : Tea.TeaModel {
    public var deviceIdType: String?

    public var deviceIds: String?

    public var projectId: String?

    public var versionId: String?

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
        if self.deviceIdType != nil {
            map["DeviceIdType"] = self.deviceIdType!
        }
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceIdType") {
            self.deviceIdType = dict["DeviceIdType"] as! String
        }
        if dict.keys.contains("DeviceIds") {
            self.deviceIds = dict["DeviceIds"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class DeleteVersionBlackDevicesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVersionBlackDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVersionBlackDevicesResponseBody?

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
            var model = DeleteVersionBlackDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVersionBlackDevicesByIdRequest : Tea.TeaModel {
    public var ids: String?

    public var projectId: String?

    public var versionId: String?

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
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class DeleteVersionBlackDevicesByIdResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVersionBlackDevicesByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVersionBlackDevicesByIdResponseBody?

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
            var model = DeleteVersionBlackDevicesByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVersionDeviceGroupRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteVersionDeviceGroupResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVersionDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVersionDeviceGroupResponseBody?

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
            var model = DeleteVersionDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVersionGroupDeviceRequest : Tea.TeaModel {
    public var deviceGroupId: String?

    public var deviceIdType: String?

    public var deviceIds: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.deviceIdType != nil {
            map["DeviceIdType"] = self.deviceIdType!
        }
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupId") {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("DeviceIdType") {
            self.deviceIdType = dict["DeviceIdType"] as! String
        }
        if dict.keys.contains("DeviceIds") {
            self.deviceIds = dict["DeviceIds"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteVersionGroupDeviceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVersionGroupDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVersionGroupDeviceResponseBody?

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
            var model = DeleteVersionGroupDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVersionGroupDeviceByIdRequest : Tea.TeaModel {
    public var deviceGroupId: String?

    public var ids: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupId") {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteVersionGroupDeviceByIdResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVersionGroupDeviceByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVersionGroupDeviceByIdResponseBody?

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
            var model = DeleteVersionGroupDeviceByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVersionTestRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteVersionTestResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVersionTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVersionTestResponseBody?

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
            var model = DeleteVersionTestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVersionWhiteDevicesRequest : Tea.TeaModel {
    public var deviceIdType: String?

    public var deviceIds: String?

    public var projectId: String?

    public var versionId: String?

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
        if self.deviceIdType != nil {
            map["DeviceIdType"] = self.deviceIdType!
        }
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceIdType") {
            self.deviceIdType = dict["DeviceIdType"] as! String
        }
        if dict.keys.contains("DeviceIds") {
            self.deviceIds = dict["DeviceIds"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class DeleteVersionWhiteDevicesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVersionWhiteDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVersionWhiteDevicesResponseBody?

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
            var model = DeleteVersionWhiteDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVersionWhiteDevicesByIdRequest : Tea.TeaModel {
    public var ids: String?

    public var projectId: String?

    public var versionId: String?

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
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class DeleteVersionWhiteDevicesByIdResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVersionWhiteDevicesByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVersionWhiteDevicesByIdResponseBody?

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
            var model = DeleteVersionWhiteDevicesByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployFunctionFileRequest : Tea.TeaModel {
    public var deployEnv: Int32?

    public var fileId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployEnv != nil {
            map["DeployEnv"] = self.deployEnv!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeployEnv") {
            self.deployEnv = dict["DeployEnv"] as! Int32
        }
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeployFunctionFileResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeployFunctionFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployFunctionFileResponseBody?

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
            var model = DeployFunctionFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiGatewayAppSecurityRequest : Tea.TeaModel {
    public var gatewayAppId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayAppId != nil {
            map["GatewayAppId"] = self.gatewayAppId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayAppId") {
            self.gatewayAppId = dict["GatewayAppId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeApiGatewayAppSecurityResponseBody : Tea.TeaModel {
    public class ApiGatewayAppSecurity : Tea.TeaModel {
        public var gatewayAppId: String?

        public var gatewayAppKey: String?

        public var gatewayAppSecret: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayAppId != nil {
                map["GatewayAppId"] = self.gatewayAppId!
            }
            if self.gatewayAppKey != nil {
                map["GatewayAppKey"] = self.gatewayAppKey!
            }
            if self.gatewayAppSecret != nil {
                map["GatewayAppSecret"] = self.gatewayAppSecret!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GatewayAppId") {
                self.gatewayAppId = dict["GatewayAppId"] as! String
            }
            if dict.keys.contains("GatewayAppKey") {
                self.gatewayAppKey = dict["GatewayAppKey"] as! String
            }
            if dict.keys.contains("GatewayAppSecret") {
                self.gatewayAppSecret = dict["GatewayAppSecret"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
        }
    }
    public var apiGatewayAppSecurity: DescribeApiGatewayAppSecurityResponseBody.ApiGatewayAppSecurity?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiGatewayAppSecurity?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiGatewayAppSecurity != nil {
            map["ApiGatewayAppSecurity"] = self.apiGatewayAppSecurity?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiGatewayAppSecurity") {
            var model = DescribeApiGatewayAppSecurityResponseBody.ApiGatewayAppSecurity()
            model.fromMap(dict["ApiGatewayAppSecurity"] as! [String: Any])
            self.apiGatewayAppSecurity = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeApiGatewayAppSecurityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiGatewayAppSecurityResponseBody?

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
            var model = DescribeApiGatewayAppSecurityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppVersionRequest : Tea.TeaModel {
    public var projectId: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class DescribeAppVersionResponseBody : Tea.TeaModel {
    public class AppVersion : Tea.TeaModel {
        public class Adapters : Tea.TeaModel {
            public var deviceModelId: String?

            public var deviceModelName: String?

            public var id: Int64?

            public var maxOsVersion: String?

            public var minOsVersion: String?

            public var versionId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceModelId != nil {
                    map["DeviceModelId"] = self.deviceModelId!
                }
                if self.deviceModelName != nil {
                    map["DeviceModelName"] = self.deviceModelName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.maxOsVersion != nil {
                    map["MaxOsVersion"] = self.maxOsVersion!
                }
                if self.minOsVersion != nil {
                    map["MinOsVersion"] = self.minOsVersion!
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceModelId") {
                    self.deviceModelId = dict["DeviceModelId"] as! String
                }
                if dict.keys.contains("DeviceModelName") {
                    self.deviceModelName = dict["DeviceModelName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("MaxOsVersion") {
                    self.maxOsVersion = dict["MaxOsVersion"] as! String
                }
                if dict.keys.contains("MinOsVersion") {
                    self.minOsVersion = dict["MinOsVersion"] as! String
                }
                if dict.keys.contains("VersionId") {
                    self.versionId = dict["VersionId"] as! Int64
                }
            }
        }
        public var adapters: [DescribeAppVersionResponseBody.AppVersion.Adapters]?

        public var apkMd5: String?

        public var appId: String?

        public var appName: String?

        public var appVersion: String?

        public var blackVersionList: String?

        public var downloadUrl: String?

        public var gmtCreate: String?

        public var gmtModify: String?

        public var id: Int64?

        public var installType: String?

        public var isAllowNewInstall: String?

        public var isForceUpgrade: String?

        public var isNeedRestart: String?

        public var isSilentUpgrade: String?

        public var md5: String?

        public var originalUrl: String?

        public var packageName: String?

        public var releaseNote: String?

        public var remark: String?

        public var restartAppParam: String?

        public var restartAppType: String?

        public var restartType: String?

        public var size: String?

        public var status: String?

        public var statusName: String?

        public var versionCode: Int64?

        public var whiteVersionList: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adapters != nil {
                var tmp : [Any] = []
                for k in self.adapters! {
                    tmp.append(k.toMap())
                }
                map["Adapters"] = tmp
            }
            if self.apkMd5 != nil {
                map["ApkMd5"] = self.apkMd5!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.blackVersionList != nil {
                map["BlackVersionList"] = self.blackVersionList!
            }
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModify != nil {
                map["GmtModify"] = self.gmtModify!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.installType != nil {
                map["InstallType"] = self.installType!
            }
            if self.isAllowNewInstall != nil {
                map["IsAllowNewInstall"] = self.isAllowNewInstall!
            }
            if self.isForceUpgrade != nil {
                map["IsForceUpgrade"] = self.isForceUpgrade!
            }
            if self.isNeedRestart != nil {
                map["IsNeedRestart"] = self.isNeedRestart!
            }
            if self.isSilentUpgrade != nil {
                map["IsSilentUpgrade"] = self.isSilentUpgrade!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.originalUrl != nil {
                map["OriginalUrl"] = self.originalUrl!
            }
            if self.packageName != nil {
                map["PackageName"] = self.packageName!
            }
            if self.releaseNote != nil {
                map["ReleaseNote"] = self.releaseNote!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.restartAppParam != nil {
                map["RestartAppParam"] = self.restartAppParam!
            }
            if self.restartAppType != nil {
                map["RestartAppType"] = self.restartAppType!
            }
            if self.restartType != nil {
                map["RestartType"] = self.restartType!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusName != nil {
                map["StatusName"] = self.statusName!
            }
            if self.versionCode != nil {
                map["VersionCode"] = self.versionCode!
            }
            if self.whiteVersionList != nil {
                map["WhiteVersionList"] = self.whiteVersionList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Adapters") {
                self.adapters = dict["Adapters"] as! [DescribeAppVersionResponseBody.AppVersion.Adapters]
            }
            if dict.keys.contains("ApkMd5") {
                self.apkMd5 = dict["ApkMd5"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("BlackVersionList") {
                self.blackVersionList = dict["BlackVersionList"] as! String
            }
            if dict.keys.contains("DownloadUrl") {
                self.downloadUrl = dict["DownloadUrl"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModify") {
                self.gmtModify = dict["GmtModify"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstallType") {
                self.installType = dict["InstallType"] as! String
            }
            if dict.keys.contains("IsAllowNewInstall") {
                self.isAllowNewInstall = dict["IsAllowNewInstall"] as! String
            }
            if dict.keys.contains("IsForceUpgrade") {
                self.isForceUpgrade = dict["IsForceUpgrade"] as! String
            }
            if dict.keys.contains("IsNeedRestart") {
                self.isNeedRestart = dict["IsNeedRestart"] as! String
            }
            if dict.keys.contains("IsSilentUpgrade") {
                self.isSilentUpgrade = dict["IsSilentUpgrade"] as! String
            }
            if dict.keys.contains("Md5") {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("OriginalUrl") {
                self.originalUrl = dict["OriginalUrl"] as! String
            }
            if dict.keys.contains("PackageName") {
                self.packageName = dict["PackageName"] as! String
            }
            if dict.keys.contains("ReleaseNote") {
                self.releaseNote = dict["ReleaseNote"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("RestartAppParam") {
                self.restartAppParam = dict["RestartAppParam"] as! String
            }
            if dict.keys.contains("RestartAppType") {
                self.restartAppType = dict["RestartAppType"] as! String
            }
            if dict.keys.contains("RestartType") {
                self.restartType = dict["RestartType"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusName") {
                self.statusName = dict["StatusName"] as! String
            }
            if dict.keys.contains("VersionCode") {
                self.versionCode = dict["VersionCode"] as! Int64
            }
            if dict.keys.contains("WhiteVersionList") {
                self.whiteVersionList = dict["WhiteVersionList"] as! String
            }
        }
    }
    public var appVersion: DescribeAppVersionResponseBody.AppVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersion") {
            var model = DescribeAppVersionResponseBody.AppVersion()
            model.fromMap(dict["AppVersion"] as! [String: Any])
            self.appVersion = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppVersionResponseBody?

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
            var model = DescribeAppVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAssistRTMPServerAddressRequest : Tea.TeaModel {
    public var deviceId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeAssistRTMPServerAddressResponseBody : Tea.TeaModel {
    public var OTP: String?

    public var RTMPServer: String?

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
        if self.OTP != nil {
            map["OTP"] = self.OTP!
        }
        if self.RTMPServer != nil {
            map["RTMPServer"] = self.RTMPServer!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OTP") {
            self.OTP = dict["OTP"] as! String
        }
        if dict.keys.contains("RTMPServer") {
            self.RTMPServer = dict["RTMPServer"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAssistRTMPServerAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAssistRTMPServerAddressResponseBody?

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
            var model = DescribeAssistRTMPServerAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAssistReportRequest : Tea.TeaModel {
    public var assistId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assistId != nil {
            map["AssistId"] = self.assistId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssistId") {
            self.assistId = dict["AssistId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeAssistReportResponseBody : Tea.TeaModel {
    public var assistDescription: String?

    public var assistId: String?

    public var assistReason: String?

    public var assistResult: String?

    public var assistTag: String?

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
        if self.assistDescription != nil {
            map["AssistDescription"] = self.assistDescription!
        }
        if self.assistId != nil {
            map["AssistId"] = self.assistId!
        }
        if self.assistReason != nil {
            map["AssistReason"] = self.assistReason!
        }
        if self.assistResult != nil {
            map["AssistResult"] = self.assistResult!
        }
        if self.assistTag != nil {
            map["AssistTag"] = self.assistTag!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssistDescription") {
            self.assistDescription = dict["AssistDescription"] as! String
        }
        if dict.keys.contains("AssistId") {
            self.assistId = dict["AssistId"] as! String
        }
        if dict.keys.contains("AssistReason") {
            self.assistReason = dict["AssistReason"] as! String
        }
        if dict.keys.contains("AssistResult") {
            self.assistResult = dict["AssistResult"] as! String
        }
        if dict.keys.contains("AssistTag") {
            self.assistTag = dict["AssistTag"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAssistReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAssistReportResponseBody?

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
            var model = DescribeAssistReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAssistWSServerAddressRequest : Tea.TeaModel {
    public var deviceId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeAssistWSServerAddressResponseBody : Tea.TeaModel {
    public var OTP: String?

    public var requestId: String?

    public var wsServer: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OTP != nil {
            map["OTP"] = self.OTP!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.wsServer != nil {
            map["WsServer"] = self.wsServer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OTP") {
            self.OTP = dict["OTP"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WsServer") {
            self.wsServer = dict["WsServer"] as! String
        }
    }
}

public class DescribeAssistWSServerAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAssistWSServerAddressResponseBody?

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
            var model = DescribeAssistWSServerAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomizedFilterRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeCustomizedFilterResponseBody : Tea.TeaModel {
    public class CustomizedFilter : Tea.TeaModel {
        public var blackWhiteType: String?

        public var gmtCreate: String?

        public var gmtCreateTimestamp: Int64?

        public var gmtModify: String?

        public var gmtModifyTimestamp: Int64?

        public var id: Int64?

        public var name: String?

        public var value: String?

        public var valueCompareType: String?

        public var valueType: String?

        public var versionId: Int64?

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
            if self.blackWhiteType != nil {
                map["BlackWhiteType"] = self.blackWhiteType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtCreateTimestamp != nil {
                map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
            }
            if self.gmtModify != nil {
                map["GmtModify"] = self.gmtModify!
            }
            if self.gmtModifyTimestamp != nil {
                map["GmtModifyTimestamp"] = self.gmtModifyTimestamp!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.valueCompareType != nil {
                map["ValueCompareType"] = self.valueCompareType!
            }
            if self.valueType != nil {
                map["ValueType"] = self.valueType!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            if self.versionType != nil {
                map["VersionType"] = self.versionType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlackWhiteType") {
                self.blackWhiteType = dict["BlackWhiteType"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtCreateTimestamp") {
                self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
            }
            if dict.keys.contains("GmtModify") {
                self.gmtModify = dict["GmtModify"] as! String
            }
            if dict.keys.contains("GmtModifyTimestamp") {
                self.gmtModifyTimestamp = dict["GmtModifyTimestamp"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
            if dict.keys.contains("ValueCompareType") {
                self.valueCompareType = dict["ValueCompareType"] as! String
            }
            if dict.keys.contains("ValueType") {
                self.valueType = dict["ValueType"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! Int64
            }
            if dict.keys.contains("VersionType") {
                self.versionType = dict["VersionType"] as! String
            }
        }
    }
    public var customizedFilter: DescribeCustomizedFilterResponseBody.CustomizedFilter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customizedFilter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customizedFilter != nil {
            map["CustomizedFilter"] = self.customizedFilter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomizedFilter") {
            var model = DescribeCustomizedFilterResponseBody.CustomizedFilter()
            model.fromMap(dict["CustomizedFilter"] as! [String: Any])
            self.customizedFilter = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCustomizedFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomizedFilterResponseBody?

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
            var model = DescribeCustomizedFilterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefaultSchemaRequest : Tea.TeaModel {
    public var deviceModelId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeDefaultSchemaResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var schema: String?

    public override init() {
        super.init()
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
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schema") {
            self.schema = dict["Schema"] as! String
        }
    }
}

public class DescribeDefaultSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefaultSchemaResponseBody?

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
            var model = DescribeDefaultSchemaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceBrandRequest : Tea.TeaModel {
    public var deviceBrand: String?

    public var deviceBrandId: Int64?

    public var length: String?

    public var projectId: String?

    public var start: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceBrand != nil {
            map["DeviceBrand"] = self.deviceBrand!
        }
        if self.deviceBrandId != nil {
            map["DeviceBrandId"] = self.deviceBrandId!
        }
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceBrand") {
            self.deviceBrand = dict["DeviceBrand"] as! String
        }
        if dict.keys.contains("DeviceBrandId") {
            self.deviceBrandId = dict["DeviceBrandId"] as! Int64
        }
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! String
        }
    }
}

public class DescribeDeviceBrandResponseBody : Tea.TeaModel {
    public class DeviceBrand : Tea.TeaModel {
        public var description_: String?

        public var deviceBrand: String?

        public var deviceBrandId: Int64?

        public var manufacture: String?

        public var projectId: String?

        public override init() {
            super.init()
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
            if self.deviceBrand != nil {
                map["DeviceBrand"] = self.deviceBrand!
            }
            if self.deviceBrandId != nil {
                map["DeviceBrandId"] = self.deviceBrandId!
            }
            if self.manufacture != nil {
                map["Manufacture"] = self.manufacture!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceBrand") {
                self.deviceBrand = dict["DeviceBrand"] as! String
            }
            if dict.keys.contains("DeviceBrandId") {
                self.deviceBrandId = dict["DeviceBrandId"] as! Int64
            }
            if dict.keys.contains("Manufacture") {
                self.manufacture = dict["Manufacture"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
        }
    }
    public var deviceBrand: DescribeDeviceBrandResponseBody.DeviceBrand?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceBrand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceBrand != nil {
            map["DeviceBrand"] = self.deviceBrand?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceBrand") {
            var model = DescribeDeviceBrandResponseBody.DeviceBrand()
            model.fromMap(dict["DeviceBrand"] as! [String: Any])
            self.deviceBrand = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDeviceBrandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceBrandResponseBody?

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
            var model = DescribeDeviceBrandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceIdByOuterInfoRequest : Tea.TeaModel {
    public var projectId: String?

    public var queryType: String?

    public var queryValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.queryValue != nil {
            map["QueryValue"] = self.queryValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("QueryValue") {
            self.queryValue = dict["QueryValue"] as! String
        }
    }
}

public class DescribeDeviceIdByOuterInfoResponseBody : Tea.TeaModel {
    public var deviceId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDeviceIdByOuterInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceIdByOuterInfoResponseBody?

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
            var model = DescribeDeviceIdByOuterInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceInfoRequest : Tea.TeaModel {
    public var deviceId: String?

    public var deviceToken: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.deviceToken != nil {
            map["DeviceToken"] = self.deviceToken!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("DeviceToken") {
            self.deviceToken = dict["DeviceToken"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeDeviceInfoResponseBody : Tea.TeaModel {
    public class DeviceInfo : Tea.TeaModel {
        public var deviceBrand: String?

        public var deviceId: String?

        public var deviceModel: String?

        public var deviceModelId: Int64?

        public var deviceType: String?

        public var hardwareId: String?

        public var macAddress: String?

        public var name: String?

        public var projectId: String?

        public var region: String?

        public var serialNumber: String?

        public var softwareId: String?

        public var status: String?

        public var usageType: Int32?

        public var usageTypeDesc: String?

        public var uuid: String?

        public var vin: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceBrand != nil {
                map["DeviceBrand"] = self.deviceBrand!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceModelId != nil {
                map["DeviceModelId"] = self.deviceModelId!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.hardwareId != nil {
                map["HardwareId"] = self.hardwareId!
            }
            if self.macAddress != nil {
                map["MacAddress"] = self.macAddress!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.softwareId != nil {
                map["SoftwareId"] = self.softwareId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.usageType != nil {
                map["UsageType"] = self.usageType!
            }
            if self.usageTypeDesc != nil {
                map["UsageTypeDesc"] = self.usageTypeDesc!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            if self.vin != nil {
                map["Vin"] = self.vin!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceBrand") {
                self.deviceBrand = dict["DeviceBrand"] as! String
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DeviceModel") {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceModelId") {
                self.deviceModelId = dict["DeviceModelId"] as! Int64
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("HardwareId") {
                self.hardwareId = dict["HardwareId"] as! String
            }
            if dict.keys.contains("MacAddress") {
                self.macAddress = dict["MacAddress"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("SoftwareId") {
                self.softwareId = dict["SoftwareId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UsageType") {
                self.usageType = dict["UsageType"] as! Int32
            }
            if dict.keys.contains("UsageTypeDesc") {
                self.usageTypeDesc = dict["UsageTypeDesc"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
            if dict.keys.contains("Vin") {
                self.vin = dict["Vin"] as! String
            }
        }
    }
    public var deviceInfo: DescribeDeviceInfoResponseBody.DeviceInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceInfo != nil {
            map["DeviceInfo"] = self.deviceInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceInfo") {
            var model = DescribeDeviceInfoResponseBody.DeviceInfo()
            model.fromMap(dict["DeviceInfo"] as! [String: Any])
            self.deviceInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceInfoResponseBody?

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
            var model = DescribeDeviceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceModelRequest : Tea.TeaModel {
    public var deviceModel: String?

    public var deviceModelId: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeDeviceModelResponseBody : Tea.TeaModel {
    public class DeviceModel : Tea.TeaModel {
        public var canCreateDeviceId: Int32?

        public var description_: String?

        public var deviceBrand: String?

        public var deviceLogoUrl: String?

        public var deviceModel: String?

        public var deviceModelId: Int64?

        public var deviceName: String?

        public var deviceType: String?

        public var hardwareType: String?

        public var initUsageType: Int32?

        public var initUsageTypeDesc: String?

        public var objectKey: String?

        public var osPlatform: String?

        public var projectId: String?

        public var securityChip: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canCreateDeviceId != nil {
                map["CanCreateDeviceId"] = self.canCreateDeviceId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceBrand != nil {
                map["DeviceBrand"] = self.deviceBrand!
            }
            if self.deviceLogoUrl != nil {
                map["DeviceLogoUrl"] = self.deviceLogoUrl!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceModelId != nil {
                map["DeviceModelId"] = self.deviceModelId!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.hardwareType != nil {
                map["HardwareType"] = self.hardwareType!
            }
            if self.initUsageType != nil {
                map["InitUsageType"] = self.initUsageType!
            }
            if self.initUsageTypeDesc != nil {
                map["InitUsageTypeDesc"] = self.initUsageTypeDesc!
            }
            if self.objectKey != nil {
                map["ObjectKey"] = self.objectKey!
            }
            if self.osPlatform != nil {
                map["OsPlatform"] = self.osPlatform!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.securityChip != nil {
                map["SecurityChip"] = self.securityChip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanCreateDeviceId") {
                self.canCreateDeviceId = dict["CanCreateDeviceId"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceBrand") {
                self.deviceBrand = dict["DeviceBrand"] as! String
            }
            if dict.keys.contains("DeviceLogoUrl") {
                self.deviceLogoUrl = dict["DeviceLogoUrl"] as! String
            }
            if dict.keys.contains("DeviceModel") {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceModelId") {
                self.deviceModelId = dict["DeviceModelId"] as! Int64
            }
            if dict.keys.contains("DeviceName") {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("HardwareType") {
                self.hardwareType = dict["HardwareType"] as! String
            }
            if dict.keys.contains("InitUsageType") {
                self.initUsageType = dict["InitUsageType"] as! Int32
            }
            if dict.keys.contains("InitUsageTypeDesc") {
                self.initUsageTypeDesc = dict["InitUsageTypeDesc"] as! String
            }
            if dict.keys.contains("ObjectKey") {
                self.objectKey = dict["ObjectKey"] as! String
            }
            if dict.keys.contains("OsPlatform") {
                self.osPlatform = dict["OsPlatform"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("SecurityChip") {
                self.securityChip = dict["SecurityChip"] as! String
            }
        }
    }
    public var deviceModel: DescribeDeviceModelResponseBody.DeviceModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModel") {
            var model = DescribeDeviceModelResponseBody.DeviceModel()
            model.fromMap(dict["DeviceModel"] as! [String: Any])
            self.deviceModel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDeviceModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceModelResponseBody?

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
            var model = DescribeDeviceModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceOnlineInfoRequest : Tea.TeaModel {
    public var projectId: String?

    public var type: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class DescribeDeviceOnlineInfoResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var clientVersion: String?

        public var deviceId: String?

        public var iasId: String?

        public var loginTime: Int64?

        public var online: Int32?

        public var projectId: String?

        public var systemVersion: String?

        public var terminal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientVersion != nil {
                map["ClientVersion"] = self.clientVersion!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.iasId != nil {
                map["IasId"] = self.iasId!
            }
            if self.loginTime != nil {
                map["LoginTime"] = self.loginTime!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.systemVersion != nil {
                map["SystemVersion"] = self.systemVersion!
            }
            if self.terminal != nil {
                map["Terminal"] = self.terminal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientVersion") {
                self.clientVersion = dict["ClientVersion"] as! String
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("IasId") {
                self.iasId = dict["IasId"] as! String
            }
            if dict.keys.contains("LoginTime") {
                self.loginTime = dict["LoginTime"] as! Int64
            }
            if dict.keys.contains("Online") {
                self.online = dict["Online"] as! Int32
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("SystemVersion") {
                self.systemVersion = dict["SystemVersion"] as! String
            }
            if dict.keys.contains("Terminal") {
                self.terminal = dict["Terminal"] as! String
            }
        }
    }
    public var devices: [DescribeDeviceOnlineInfoResponseBody.Devices]?

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
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Devices") {
            self.devices = dict["Devices"] as! [DescribeDeviceOnlineInfoResponseBody.Devices]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDeviceOnlineInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceOnlineInfoResponseBody?

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
            var model = DescribeDeviceOnlineInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceShadowRequest : Tea.TeaModel {
    public var deviceId: String?

    public var deviceModel: String?

    public var path: String?

    public var projectId: String?

    public var viewSubscribed: Bool?

    public override init() {
        super.init()
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
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.viewSubscribed != nil {
            map["ViewSubscribed"] = self.viewSubscribed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ViewSubscribed") {
            self.viewSubscribed = dict["ViewSubscribed"] as! Bool
        }
    }
}

public class DescribeDeviceShadowResponseBody : Tea.TeaModel {
    public class DeviceShadow : Tea.TeaModel {
        public var deviceInfo: String?

        public var deviceShadow: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceInfo != nil {
                map["DeviceInfo"] = self.deviceInfo!
            }
            if self.deviceShadow != nil {
                map["DeviceShadow"] = self.deviceShadow!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceInfo") {
                self.deviceInfo = dict["DeviceInfo"] as! String
            }
            if dict.keys.contains("DeviceShadow") {
                self.deviceShadow = dict["DeviceShadow"] as! String
            }
        }
    }
    public var deviceShadow: DescribeDeviceShadowResponseBody.DeviceShadow?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceShadow?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceShadow != nil {
            map["DeviceShadow"] = self.deviceShadow?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceShadow") {
            var model = DescribeDeviceShadowResponseBody.DeviceShadow()
            model.fromMap(dict["DeviceShadow"] as! [String: Any])
            self.deviceShadow = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDeviceShadowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceShadowResponseBody?

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
            var model = DescribeDeviceShadowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceValiditySchemaRequest : Tea.TeaModel {
    public var deviceModel: String?

    public var projectId: String?

    public var schemaVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SchemaVersion") {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
    }
}

public class DescribeDeviceValiditySchemaResponseBody : Tea.TeaModel {
    public class ItemList : Tea.TeaModel {
        public var description_: String?

        public var enumListStr: String?

        public var exclusiveMaximum: Bool?

        public var exclusiveMinimum: Bool?

        public var itemType: String?

        public var maxLength: Int32?

        public var maximum: Double?

        public var minLength: Int32?

        public var minimum: Double?

        public var path: String?

        public var required_: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enumListStr != nil {
                map["EnumListStr"] = self.enumListStr!
            }
            if self.exclusiveMaximum != nil {
                map["ExclusiveMaximum"] = self.exclusiveMaximum!
            }
            if self.exclusiveMinimum != nil {
                map["ExclusiveMinimum"] = self.exclusiveMinimum!
            }
            if self.itemType != nil {
                map["ItemType"] = self.itemType!
            }
            if self.maxLength != nil {
                map["MaxLength"] = self.maxLength!
            }
            if self.maximum != nil {
                map["Maximum"] = self.maximum!
            }
            if self.minLength != nil {
                map["MinLength"] = self.minLength!
            }
            if self.minimum != nil {
                map["Minimum"] = self.minimum!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EnumListStr") {
                self.enumListStr = dict["EnumListStr"] as! String
            }
            if dict.keys.contains("ExclusiveMaximum") {
                self.exclusiveMaximum = dict["ExclusiveMaximum"] as! Bool
            }
            if dict.keys.contains("ExclusiveMinimum") {
                self.exclusiveMinimum = dict["ExclusiveMinimum"] as! Bool
            }
            if dict.keys.contains("ItemType") {
                self.itemType = dict["ItemType"] as! String
            }
            if dict.keys.contains("MaxLength") {
                self.maxLength = dict["MaxLength"] as! Int32
            }
            if dict.keys.contains("Maximum") {
                self.maximum = dict["Maximum"] as! Double
            }
            if dict.keys.contains("MinLength") {
                self.minLength = dict["MinLength"] as! Int32
            }
            if dict.keys.contains("Minimum") {
                self.minimum = dict["Minimum"] as! Double
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var itemList: [DescribeDeviceValiditySchemaResponseBody.ItemList]?

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
        if self.itemList != nil {
            var tmp : [Any] = []
            for k in self.itemList! {
                tmp.append(k.toMap())
            }
            map["ItemList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ItemList") {
            self.itemList = dict["ItemList"] as! [DescribeDeviceValiditySchemaResponseBody.ItemList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDeviceValiditySchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceValiditySchemaResponseBody?

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
            var model = DescribeDeviceValiditySchemaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMessageRequest : Tea.TeaModel {
    public var messageId: Int64?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeMessageResponseBody : Tea.TeaModel {
    public class Message : Tea.TeaModel {
        public var ackCnt: Int32?

        public var action: String?

        public var appKey: String?

        public var appName: String?

        public var audit: Int32?

        public var auditMsg: String?

        public var desc: String?

        public var exipiredTime: Int64?

        public var gmtCreateTime: Int64?

        public var id: Int64?

        public var parameter: String?

        public var predictSendCnt: Int32?

        public var projectId: String?

        public var sendStatus: Int32?

        public var title: String?

        public var type: Int32?

        public var uri: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ackCnt != nil {
                map["AckCnt"] = self.ackCnt!
            }
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.audit != nil {
                map["Audit"] = self.audit!
            }
            if self.auditMsg != nil {
                map["AuditMsg"] = self.auditMsg!
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.exipiredTime != nil {
                map["ExipiredTime"] = self.exipiredTime!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.parameter != nil {
                map["Parameter"] = self.parameter!
            }
            if self.predictSendCnt != nil {
                map["PredictSendCnt"] = self.predictSendCnt!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.sendStatus != nil {
                map["SendStatus"] = self.sendStatus!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AckCnt") {
                self.ackCnt = dict["AckCnt"] as! Int32
            }
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("AppKey") {
                self.appKey = dict["AppKey"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("Audit") {
                self.audit = dict["Audit"] as! Int32
            }
            if dict.keys.contains("AuditMsg") {
                self.auditMsg = dict["AuditMsg"] as! String
            }
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("ExipiredTime") {
                self.exipiredTime = dict["ExipiredTime"] as! Int64
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Parameter") {
                self.parameter = dict["Parameter"] as! String
            }
            if dict.keys.contains("PredictSendCnt") {
                self.predictSendCnt = dict["PredictSendCnt"] as! Int32
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("SendStatus") {
                self.sendStatus = dict["SendStatus"] as! Int32
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
            if dict.keys.contains("Uri") {
                self.uri = dict["Uri"] as! String
            }
        }
    }
    public var message: DescribeMessageResponseBody.Message?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.message?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.message != nil {
            map["Message"] = self.message?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            var model = DescribeMessageResponseBody.Message()
            model.fromMap(dict["Message"] as! [String: Any])
            self.message = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMessageResponseBody?

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
            var model = DescribeMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOpenAccountRequest : Tea.TeaModel {
    public var idToken: String?

    public var identityId: String?

    public var idp: String?

    public var openId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.idToken != nil {
            map["IdToken"] = self.idToken!
        }
        if self.identityId != nil {
            map["IdentityId"] = self.identityId!
        }
        if self.idp != nil {
            map["Idp"] = self.idp!
        }
        if self.openId != nil {
            map["OpenId"] = self.openId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdToken") {
            self.idToken = dict["IdToken"] as! String
        }
        if dict.keys.contains("IdentityId") {
            self.identityId = dict["IdentityId"] as! String
        }
        if dict.keys.contains("Idp") {
            self.idp = dict["Idp"] as! String
        }
        if dict.keys.contains("OpenId") {
            self.openId = dict["OpenId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeOpenAccountResponseBody : Tea.TeaModel {
    public class OpenAccount : Tea.TeaModel {
        public var aliyunId: String?

        public var createAccessKey: String?

        public var displayName: String?

        public var identityId: String?

        public var idp: String?

        public var loginId: String?

        public var mobile: String?

        public var openId: String?

        public var region: String?

        public var status: Int32?

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
            if self.aliyunId != nil {
                map["AliyunId"] = self.aliyunId!
            }
            if self.createAccessKey != nil {
                map["CreateAccessKey"] = self.createAccessKey!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.identityId != nil {
                map["IdentityId"] = self.identityId!
            }
            if self.idp != nil {
                map["Idp"] = self.idp!
            }
            if self.loginId != nil {
                map["LoginId"] = self.loginId!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.openId != nil {
                map["OpenId"] = self.openId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunId") {
                self.aliyunId = dict["AliyunId"] as! String
            }
            if dict.keys.contains("CreateAccessKey") {
                self.createAccessKey = dict["CreateAccessKey"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("IdentityId") {
                self.identityId = dict["IdentityId"] as! String
            }
            if dict.keys.contains("Idp") {
                self.idp = dict["Idp"] as! String
            }
            if dict.keys.contains("LoginId") {
                self.loginId = dict["LoginId"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("OpenId") {
                self.openId = dict["OpenId"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var openAccount: DescribeOpenAccountResponseBody.OpenAccount?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.openAccount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.openAccount != nil {
            map["OpenAccount"] = self.openAccount?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpenAccount") {
            var model = DescribeOpenAccountResponseBody.OpenAccount()
            model.fromMap(dict["OpenAccount"] as! [String: Any])
            self.openAccount = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOpenAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOpenAccountResponseBody?

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
            var model = DescribeOpenAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOsVersionRequest : Tea.TeaModel {
    public var projectId: String?

    public var versionId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! Int64
        }
    }
}

public class DescribeOsVersionResponseBody : Tea.TeaModel {
    public class OsVersion : Tea.TeaModel {
        public class NightUpgradeOption : Tea.TeaModel {
            public var downloadType: String?

            public var isAllowedCancel: String?

            public var isShowTip: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.downloadType != nil {
                    map["DownloadType"] = self.downloadType!
                }
                if self.isAllowedCancel != nil {
                    map["IsAllowedCancel"] = self.isAllowedCancel!
                }
                if self.isShowTip != nil {
                    map["IsShowTip"] = self.isShowTip!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DownloadType") {
                    self.downloadType = dict["DownloadType"] as! String
                }
                if dict.keys.contains("IsAllowedCancel") {
                    self.isAllowedCancel = dict["IsAllowedCancel"] as! String
                }
                if dict.keys.contains("IsShowTip") {
                    self.isShowTip = dict["IsShowTip"] as! String
                }
            }
        }
        public class RomList : Tea.TeaModel {
            public var baseVersion: String?

            public var downloadUrl: String?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var id: Int64?

            public var md5: String?

            public var originalUrl: String?

            public var size: String?

            public var splitNum: String?

            public var versionId: Int64?

            public override init() {
                super.init()
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
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.md5 != nil {
                    map["Md5"] = self.md5!
                }
                if self.originalUrl != nil {
                    map["OriginalUrl"] = self.originalUrl!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.splitNum != nil {
                    map["SplitNum"] = self.splitNum!
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BaseVersion") {
                    self.baseVersion = dict["BaseVersion"] as! String
                }
                if dict.keys.contains("DownloadUrl") {
                    self.downloadUrl = dict["DownloadUrl"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModify") {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Md5") {
                    self.md5 = dict["Md5"] as! String
                }
                if dict.keys.contains("OriginalUrl") {
                    self.originalUrl = dict["OriginalUrl"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! String
                }
                if dict.keys.contains("SplitNum") {
                    self.splitNum = dict["SplitNum"] as! String
                }
                if dict.keys.contains("VersionId") {
                    self.versionId = dict["VersionId"] as! Int64
                }
            }
        }
        public var blackVersionList: String?

        public var deviceModelId: String?

        public var deviceModelName: String?

        public var enableMobileDownload: String?

        public var gmtCreate: String?

        public var gmtModify: String?

        public var id: Int64?

        public var isForceNightUpgrade: String?

        public var isForceUpgrade: String?

        public var isMilestone: String?

        public var maxClientVersion: String?

        public var minClientVersion: String?

        public var mobileDownloadMaxSize: String?

        public var nightUpgradeOption: DescribeOsVersionResponseBody.OsVersion.NightUpgradeOption?

        public var releaseNote: String?

        public var remark: String?

        public var romList: [DescribeOsVersionResponseBody.OsVersion.RomList]?

        public var status: String?

        public var statusName: String?

        public var systemVersion: String?

        public var whiteVersionList: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nightUpgradeOption?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blackVersionList != nil {
                map["BlackVersionList"] = self.blackVersionList!
            }
            if self.deviceModelId != nil {
                map["DeviceModelId"] = self.deviceModelId!
            }
            if self.deviceModelName != nil {
                map["DeviceModelName"] = self.deviceModelName!
            }
            if self.enableMobileDownload != nil {
                map["EnableMobileDownload"] = self.enableMobileDownload!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModify != nil {
                map["GmtModify"] = self.gmtModify!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isForceNightUpgrade != nil {
                map["IsForceNightUpgrade"] = self.isForceNightUpgrade!
            }
            if self.isForceUpgrade != nil {
                map["IsForceUpgrade"] = self.isForceUpgrade!
            }
            if self.isMilestone != nil {
                map["IsMilestone"] = self.isMilestone!
            }
            if self.maxClientVersion != nil {
                map["MaxClientVersion"] = self.maxClientVersion!
            }
            if self.minClientVersion != nil {
                map["MinClientVersion"] = self.minClientVersion!
            }
            if self.mobileDownloadMaxSize != nil {
                map["MobileDownloadMaxSize"] = self.mobileDownloadMaxSize!
            }
            if self.nightUpgradeOption != nil {
                map["NightUpgradeOption"] = self.nightUpgradeOption?.toMap()
            }
            if self.releaseNote != nil {
                map["ReleaseNote"] = self.releaseNote!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.romList != nil {
                var tmp : [Any] = []
                for k in self.romList! {
                    tmp.append(k.toMap())
                }
                map["RomList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusName != nil {
                map["StatusName"] = self.statusName!
            }
            if self.systemVersion != nil {
                map["SystemVersion"] = self.systemVersion!
            }
            if self.whiteVersionList != nil {
                map["WhiteVersionList"] = self.whiteVersionList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlackVersionList") {
                self.blackVersionList = dict["BlackVersionList"] as! String
            }
            if dict.keys.contains("DeviceModelId") {
                self.deviceModelId = dict["DeviceModelId"] as! String
            }
            if dict.keys.contains("DeviceModelName") {
                self.deviceModelName = dict["DeviceModelName"] as! String
            }
            if dict.keys.contains("EnableMobileDownload") {
                self.enableMobileDownload = dict["EnableMobileDownload"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModify") {
                self.gmtModify = dict["GmtModify"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IsForceNightUpgrade") {
                self.isForceNightUpgrade = dict["IsForceNightUpgrade"] as! String
            }
            if dict.keys.contains("IsForceUpgrade") {
                self.isForceUpgrade = dict["IsForceUpgrade"] as! String
            }
            if dict.keys.contains("IsMilestone") {
                self.isMilestone = dict["IsMilestone"] as! String
            }
            if dict.keys.contains("MaxClientVersion") {
                self.maxClientVersion = dict["MaxClientVersion"] as! String
            }
            if dict.keys.contains("MinClientVersion") {
                self.minClientVersion = dict["MinClientVersion"] as! String
            }
            if dict.keys.contains("MobileDownloadMaxSize") {
                self.mobileDownloadMaxSize = dict["MobileDownloadMaxSize"] as! String
            }
            if dict.keys.contains("NightUpgradeOption") {
                var model = DescribeOsVersionResponseBody.OsVersion.NightUpgradeOption()
                model.fromMap(dict["NightUpgradeOption"] as! [String: Any])
                self.nightUpgradeOption = model
            }
            if dict.keys.contains("ReleaseNote") {
                self.releaseNote = dict["ReleaseNote"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("RomList") {
                self.romList = dict["RomList"] as! [DescribeOsVersionResponseBody.OsVersion.RomList]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusName") {
                self.statusName = dict["StatusName"] as! String
            }
            if dict.keys.contains("SystemVersion") {
                self.systemVersion = dict["SystemVersion"] as! String
            }
            if dict.keys.contains("WhiteVersionList") {
                self.whiteVersionList = dict["WhiteVersionList"] as! String
            }
        }
    }
    public var osVersion: DescribeOsVersionResponseBody.OsVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.osVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.osVersion != nil {
            map["OsVersion"] = self.osVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OsVersion") {
            var model = DescribeOsVersionResponseBody.OsVersion()
            model.fromMap(dict["OsVersion"] as! [String: Any])
            self.osVersion = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOsVersionResponseBody?

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
            var model = DescribeOsVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProjectRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeProjectResponseBody : Tea.TeaModel {
    public class Project : Tea.TeaModel {
        public var creator: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var name: String?

        public var projectId: String?

        public var status: Int32?

        public var userId: String?

        public var vehicleCommunicationProtocol: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.vehicleCommunicationProtocol != nil {
                map["VehicleCommunicationProtocol"] = self.vehicleCommunicationProtocol!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
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
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("VehicleCommunicationProtocol") {
                self.vehicleCommunicationProtocol = dict["VehicleCommunicationProtocol"] as! String
            }
        }
    }
    public var project: DescribeProjectResponseBody.Project?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.project?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            var model = DescribeProjectResponseBody.Project()
            model.fromMap(dict["Project"] as! [String: Any])
            self.project = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProjectResponseBody?

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
            var model = DescribeProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProjectAppSecurityRequest : Tea.TeaModel {
    public var appId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeProjectAppSecurityResponseBody : Tea.TeaModel {
    public class ProjectAppSecurity : Tea.TeaModel {
        public var appId: String?

        public var appKey: String?

        public var appSecret: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public override init() {
            super.init()
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
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.appSecret != nil {
                map["AppSecret"] = self.appSecret!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppKey") {
                self.appKey = dict["AppKey"] as! String
            }
            if dict.keys.contains("AppSecret") {
                self.appSecret = dict["AppSecret"] as! String
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
        }
    }
    public var projectAppSecurity: DescribeProjectAppSecurityResponseBody.ProjectAppSecurity?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.projectAppSecurity?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectAppSecurity != nil {
            map["ProjectAppSecurity"] = self.projectAppSecurity?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectAppSecurity") {
            var model = DescribeProjectAppSecurityResponseBody.ProjectAppSecurity()
            model.fromMap(dict["ProjectAppSecurity"] as! [String: Any])
            self.projectAppSecurity = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeProjectAppSecurityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProjectAppSecurityResponseBody?

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
            var model = DescribeProjectAppSecurityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeShadowSchemaRequest : Tea.TeaModel {
    public var deviceModel: String?

    public var isSimple: Bool?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.isSimple != nil {
            map["IsSimple"] = self.isSimple!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("IsSimple") {
            self.isSimple = dict["IsSimple"] as! Bool
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeShadowSchemaResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var schema: String?

    public override init() {
        super.init()
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
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schema") {
            self.schema = dict["Schema"] as! String
        }
    }
}

public class DescribeShadowSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeShadowSchemaResponseBody?

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
            var model = DescribeShadowSchemaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVersionDeviceGroupRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeVersionDeviceGroupResponseBody : Tea.TeaModel {
    public class DeviceGroup : Tea.TeaModel {
        public var description_: String?

        public var gmtCreate: String?

        public var gmtModify: String?

        public var id: Int64?

        public var maxCount: String?

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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModify != nil {
                map["GmtModify"] = self.gmtModify!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.maxCount != nil {
                map["MaxCount"] = self.maxCount!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModify") {
                self.gmtModify = dict["GmtModify"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("MaxCount") {
                self.maxCount = dict["MaxCount"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var deviceGroup: DescribeVersionDeviceGroupResponseBody.DeviceGroup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroup != nil {
            map["DeviceGroup"] = self.deviceGroup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroup") {
            var model = DescribeVersionDeviceGroupResponseBody.DeviceGroup()
            model.fromMap(dict["DeviceGroup"] as! [String: Any])
            self.deviceGroup = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVersionDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVersionDeviceGroupResponseBody?

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
            var model = DescribeVersionDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DiagnosisVersionRequest : Tea.TeaModel {
    public var diagnoseStyle: String?

    public var endTime: String?

    public var idType: String?

    public var originalId: String?

    public var projectId: String?

    public var startTime: String?

    public var versionId: String?

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
        if self.diagnoseStyle != nil {
            map["DiagnoseStyle"] = self.diagnoseStyle!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.idType != nil {
            map["IdType"] = self.idType!
        }
        if self.originalId != nil {
            map["OriginalId"] = self.originalId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnoseStyle") {
            self.diagnoseStyle = dict["DiagnoseStyle"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IdType") {
            self.idType = dict["IdType"] as! String
        }
        if dict.keys.contains("OriginalId") {
            self.originalId = dict["OriginalId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class DiagnosisVersionResponseBody : Tea.TeaModel {
    public var diagnosisResult: String?

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
        if self.diagnosisResult != nil {
            map["DiagnosisResult"] = self.diagnosisResult!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnosisResult") {
            self.diagnosisResult = dict["DiagnosisResult"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DiagnosisVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DiagnosisVersionResponseBody?

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
            var model = DiagnosisVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindAppVersionsRequest : Tea.TeaModel {
    public var appId: String?

    public var deviceModelId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var remark: String?

    public var status: String?

    public var versionId: String?

    public override init() {
        super.init()
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
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class FindAppVersionsResponseBody : Tea.TeaModel {
    public class AppVersionList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var appName: String?

            public var appPackageName: String?

            public var appVersion: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var gmtModify: String?

            public var gmtModifyTimestamp: Int64?

            public var id: Int64?

            public var installType: String?

            public var isAllowNewInstall: String?

            public var isForceUpgrade: String?

            public var isNeedRestart: String?

            public var isSilentUpgrade: String?

            public var restartAppParam: String?

            public var restartAppType: String?

            public var restartType: String?

            public var status: String?

            public var statusName: String?

            public var versionCode: String?

            public override init() {
                super.init()
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
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appPackageName != nil {
                    map["AppPackageName"] = self.appPackageName!
                }
                if self.appVersion != nil {
                    map["AppVersion"] = self.appVersion!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.gmtModifyTimestamp != nil {
                    map["GmtModifyTimestamp"] = self.gmtModifyTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.installType != nil {
                    map["InstallType"] = self.installType!
                }
                if self.isAllowNewInstall != nil {
                    map["IsAllowNewInstall"] = self.isAllowNewInstall!
                }
                if self.isForceUpgrade != nil {
                    map["IsForceUpgrade"] = self.isForceUpgrade!
                }
                if self.isNeedRestart != nil {
                    map["IsNeedRestart"] = self.isNeedRestart!
                }
                if self.isSilentUpgrade != nil {
                    map["IsSilentUpgrade"] = self.isSilentUpgrade!
                }
                if self.restartAppParam != nil {
                    map["RestartAppParam"] = self.restartAppParam!
                }
                if self.restartAppType != nil {
                    map["RestartAppType"] = self.restartAppType!
                }
                if self.restartType != nil {
                    map["RestartType"] = self.restartType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusName != nil {
                    map["StatusName"] = self.statusName!
                }
                if self.versionCode != nil {
                    map["VersionCode"] = self.versionCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppPackageName") {
                    self.appPackageName = dict["AppPackageName"] as! String
                }
                if dict.keys.contains("AppVersion") {
                    self.appVersion = dict["AppVersion"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("GmtModify") {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("GmtModifyTimestamp") {
                    self.gmtModifyTimestamp = dict["GmtModifyTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("InstallType") {
                    self.installType = dict["InstallType"] as! String
                }
                if dict.keys.contains("IsAllowNewInstall") {
                    self.isAllowNewInstall = dict["IsAllowNewInstall"] as! String
                }
                if dict.keys.contains("IsForceUpgrade") {
                    self.isForceUpgrade = dict["IsForceUpgrade"] as! String
                }
                if dict.keys.contains("IsNeedRestart") {
                    self.isNeedRestart = dict["IsNeedRestart"] as! String
                }
                if dict.keys.contains("IsSilentUpgrade") {
                    self.isSilentUpgrade = dict["IsSilentUpgrade"] as! String
                }
                if dict.keys.contains("RestartAppParam") {
                    self.restartAppParam = dict["RestartAppParam"] as! String
                }
                if dict.keys.contains("RestartAppType") {
                    self.restartAppType = dict["RestartAppType"] as! String
                }
                if dict.keys.contains("RestartType") {
                    self.restartType = dict["RestartType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusName") {
                    self.statusName = dict["StatusName"] as! String
                }
                if dict.keys.contains("VersionCode") {
                    self.versionCode = dict["VersionCode"] as! String
                }
            }
        }
        public var items: [FindAppVersionsResponseBody.AppVersionList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindAppVersionsResponseBody.AppVersionList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var appVersionList: FindAppVersionsResponseBody.AppVersionList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appVersionList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersionList != nil {
            map["AppVersionList"] = self.appVersionList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersionList") {
            var model = FindAppVersionsResponseBody.AppVersionList()
            model.fromMap(dict["AppVersionList"] as! [String: Any])
            self.appVersionList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindAppVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindAppVersionsResponseBody?

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
            var model = FindAppVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindCustomizedFiltersRequest : Tea.TeaModel {
    public var name: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var versionId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class FindCustomizedFiltersResponseBody : Tea.TeaModel {
    public class CustomizedFilterList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var blackWhiteType: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var gmtModify: String?

            public var gmtModifyTimestamp: Int64?

            public var id: Int64?

            public var name: String?

            public var value: String?

            public var valueCompareType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blackWhiteType != nil {
                    map["BlackWhiteType"] = self.blackWhiteType!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.gmtModifyTimestamp != nil {
                    map["GmtModifyTimestamp"] = self.gmtModifyTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.valueCompareType != nil {
                    map["ValueCompareType"] = self.valueCompareType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlackWhiteType") {
                    self.blackWhiteType = dict["BlackWhiteType"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("GmtModify") {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("GmtModifyTimestamp") {
                    self.gmtModifyTimestamp = dict["GmtModifyTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("ValueCompareType") {
                    self.valueCompareType = dict["ValueCompareType"] as! String
                }
            }
        }
        public var items: [FindCustomizedFiltersResponseBody.CustomizedFilterList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindCustomizedFiltersResponseBody.CustomizedFilterList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var customizedFilterList: FindCustomizedFiltersResponseBody.CustomizedFilterList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customizedFilterList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customizedFilterList != nil {
            map["CustomizedFilterList"] = self.customizedFilterList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomizedFilterList") {
            var model = FindCustomizedFiltersResponseBody.CustomizedFilterList()
            model.fromMap(dict["CustomizedFilterList"] as! [String: Any])
            self.customizedFilterList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindCustomizedFiltersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindCustomizedFiltersResponseBody?

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
            var model = FindCustomizedFiltersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindCustomizedPropertiesRequest : Tea.TeaModel {
    public var name: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var versionId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class FindCustomizedPropertiesResponseBody : Tea.TeaModel {
    public class CustomizedPropertyList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var id: Int64?

            public var name: String?

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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var items: [FindCustomizedPropertiesResponseBody.CustomizedPropertyList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindCustomizedPropertiesResponseBody.CustomizedPropertyList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var customizedPropertyList: FindCustomizedPropertiesResponseBody.CustomizedPropertyList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customizedPropertyList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customizedPropertyList != nil {
            map["CustomizedPropertyList"] = self.customizedPropertyList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomizedPropertyList") {
            var model = FindCustomizedPropertiesResponseBody.CustomizedPropertyList()
            model.fromMap(dict["CustomizedPropertyList"] as! [String: Any])
            self.customizedPropertyList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindCustomizedPropertiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindCustomizedPropertiesResponseBody?

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
            var model = FindCustomizedPropertiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindOsVersionsRequest : Tea.TeaModel {
    public var deviceModelId: String?

    public var isMilestone: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var remark: String?

    public var status: String?

    public var systemVersion: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.isMilestone != nil {
            map["IsMilestone"] = self.isMilestone!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.systemVersion != nil {
            map["SystemVersion"] = self.systemVersion!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! String
        }
        if dict.keys.contains("IsMilestone") {
            self.isMilestone = dict["IsMilestone"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SystemVersion") {
            self.systemVersion = dict["SystemVersion"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class FindOsVersionsResponseBody : Tea.TeaModel {
    public class OsVersionList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var deviceModelId: String?

            public var deviceModelName: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var gmtModify: String?

            public var gmtModifyTimestamp: Int64?

            public var id: Int64?

            public var isForceNightUpgrade: String?

            public var isForceReboot: String?

            public var isForceUpgrade: String?

            public var isMilestone: String?

            public var isSilentUpgrade: String?

            public var remark: String?

            public var status: String?

            public var statusName: String?

            public var systemVersion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceModelId != nil {
                    map["DeviceModelId"] = self.deviceModelId!
                }
                if self.deviceModelName != nil {
                    map["DeviceModelName"] = self.deviceModelName!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.gmtModifyTimestamp != nil {
                    map["GmtModifyTimestamp"] = self.gmtModifyTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isForceNightUpgrade != nil {
                    map["IsForceNightUpgrade"] = self.isForceNightUpgrade!
                }
                if self.isForceReboot != nil {
                    map["IsForceReboot"] = self.isForceReboot!
                }
                if self.isForceUpgrade != nil {
                    map["IsForceUpgrade"] = self.isForceUpgrade!
                }
                if self.isMilestone != nil {
                    map["IsMilestone"] = self.isMilestone!
                }
                if self.isSilentUpgrade != nil {
                    map["IsSilentUpgrade"] = self.isSilentUpgrade!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusName != nil {
                    map["StatusName"] = self.statusName!
                }
                if self.systemVersion != nil {
                    map["SystemVersion"] = self.systemVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceModelId") {
                    self.deviceModelId = dict["DeviceModelId"] as! String
                }
                if dict.keys.contains("DeviceModelName") {
                    self.deviceModelName = dict["DeviceModelName"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("GmtModify") {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("GmtModifyTimestamp") {
                    self.gmtModifyTimestamp = dict["GmtModifyTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IsForceNightUpgrade") {
                    self.isForceNightUpgrade = dict["IsForceNightUpgrade"] as! String
                }
                if dict.keys.contains("IsForceReboot") {
                    self.isForceReboot = dict["IsForceReboot"] as! String
                }
                if dict.keys.contains("IsForceUpgrade") {
                    self.isForceUpgrade = dict["IsForceUpgrade"] as! String
                }
                if dict.keys.contains("IsMilestone") {
                    self.isMilestone = dict["IsMilestone"] as! String
                }
                if dict.keys.contains("IsSilentUpgrade") {
                    self.isSilentUpgrade = dict["IsSilentUpgrade"] as! String
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusName") {
                    self.statusName = dict["StatusName"] as! String
                }
                if dict.keys.contains("SystemVersion") {
                    self.systemVersion = dict["SystemVersion"] as! String
                }
            }
        }
        public var items: [FindOsVersionsResponseBody.OsVersionList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindOsVersionsResponseBody.OsVersionList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var osVersionList: FindOsVersionsResponseBody.OsVersionList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.osVersionList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.osVersionList != nil {
            map["OsVersionList"] = self.osVersionList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OsVersionList") {
            var model = FindOsVersionsResponseBody.OsVersionList()
            model.fromMap(dict["OsVersionList"] as! [String: Any])
            self.osVersionList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindOsVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindOsVersionsResponseBody?

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
            var model = FindOsVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindPrepublishPassedDevicesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var prepublishId: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prepublishId != nil {
            map["PrepublishId"] = self.prepublishId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrepublishId") {
            self.prepublishId = dict["PrepublishId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class FindPrepublishPassedDevicesResponseBody : Tea.TeaModel {
    public class DeviceList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var deviceId: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public override init() {
                super.init()
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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceId") {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
            }
        }
        public var items: [FindPrepublishPassedDevicesResponseBody.DeviceList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindPrepublishPassedDevicesResponseBody.DeviceList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var deviceList: FindPrepublishPassedDevicesResponseBody.DeviceList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceList != nil {
            map["DeviceList"] = self.deviceList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceList") {
            var model = FindPrepublishPassedDevicesResponseBody.DeviceList()
            model.fromMap(dict["DeviceList"] as! [String: Any])
            self.deviceList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindPrepublishPassedDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindPrepublishPassedDevicesResponseBody?

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
            var model = FindPrepublishPassedDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindPrepublishesByParentIdRequest : Tea.TeaModel {
    public var parentId: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class FindPrepublishesByParentIdResponseBody : Tea.TeaModel {
    public class PrepublishList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var barrierCount: String?

            public var deviceModelId: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var gmtModify: String?

            public var gmtModifyTimestamp: Int64?

            public var id: Int64?

            public var isActive: String?

            public var isTotalPrepublish: String?

            public var name: String?

            public var parentId: String?

            public var versionId: String?

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
                if self.barrierCount != nil {
                    map["BarrierCount"] = self.barrierCount!
                }
                if self.deviceModelId != nil {
                    map["DeviceModelId"] = self.deviceModelId!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.gmtModifyTimestamp != nil {
                    map["GmtModifyTimestamp"] = self.gmtModifyTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isActive != nil {
                    map["IsActive"] = self.isActive!
                }
                if self.isTotalPrepublish != nil {
                    map["IsTotalPrepublish"] = self.isTotalPrepublish!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                if self.versionType != nil {
                    map["VersionType"] = self.versionType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BarrierCount") {
                    self.barrierCount = dict["BarrierCount"] as! String
                }
                if dict.keys.contains("DeviceModelId") {
                    self.deviceModelId = dict["DeviceModelId"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("GmtModify") {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("GmtModifyTimestamp") {
                    self.gmtModifyTimestamp = dict["GmtModifyTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IsActive") {
                    self.isActive = dict["IsActive"] as! String
                }
                if dict.keys.contains("IsTotalPrepublish") {
                    self.isTotalPrepublish = dict["IsTotalPrepublish"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ParentId") {
                    self.parentId = dict["ParentId"] as! String
                }
                if dict.keys.contains("VersionId") {
                    self.versionId = dict["VersionId"] as! String
                }
                if dict.keys.contains("VersionType") {
                    self.versionType = dict["VersionType"] as! String
                }
            }
        }
        public var items: [FindPrepublishesByParentIdResponseBody.PrepublishList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindPrepublishesByParentIdResponseBody.PrepublishList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var prepublishList: FindPrepublishesByParentIdResponseBody.PrepublishList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.prepublishList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prepublishList != nil {
            map["PrepublishList"] = self.prepublishList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrepublishList") {
            var model = FindPrepublishesByParentIdResponseBody.PrepublishList()
            model.fromMap(dict["PrepublishList"] as! [String: Any])
            self.prepublishList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindPrepublishesByParentIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindPrepublishesByParentIdResponseBody?

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
            var model = FindPrepublishesByParentIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindPrepublishesByVersionIdRequest : Tea.TeaModel {
    public var projectId: String?

    public var versionId: Int32?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! Int32
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class FindPrepublishesByVersionIdResponseBody : Tea.TeaModel {
    public class PrepublishList : Tea.TeaModel {
        public var barrierCount: String?

        public var deviceModelId: String?

        public var deviceModelName: String?

        public var gmtCreate: String?

        public var gmtCreateTimestamp: Int64?

        public var gmtModify: String?

        public var gmtModifyTimestamp: Int64?

        public var id: String?

        public var isActive: String?

        public var isTotalPrepublish: String?

        public var name: String?

        public var parentId: String?

        public var passedCount: String?

        public var versionId: String?

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
            if self.barrierCount != nil {
                map["BarrierCount"] = self.barrierCount!
            }
            if self.deviceModelId != nil {
                map["DeviceModelId"] = self.deviceModelId!
            }
            if self.deviceModelName != nil {
                map["DeviceModelName"] = self.deviceModelName!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtCreateTimestamp != nil {
                map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
            }
            if self.gmtModify != nil {
                map["GmtModify"] = self.gmtModify!
            }
            if self.gmtModifyTimestamp != nil {
                map["GmtModifyTimestamp"] = self.gmtModifyTimestamp!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isActive != nil {
                map["IsActive"] = self.isActive!
            }
            if self.isTotalPrepublish != nil {
                map["IsTotalPrepublish"] = self.isTotalPrepublish!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.passedCount != nil {
                map["PassedCount"] = self.passedCount!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            if self.versionType != nil {
                map["VersionType"] = self.versionType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BarrierCount") {
                self.barrierCount = dict["BarrierCount"] as! String
            }
            if dict.keys.contains("DeviceModelId") {
                self.deviceModelId = dict["DeviceModelId"] as! String
            }
            if dict.keys.contains("DeviceModelName") {
                self.deviceModelName = dict["DeviceModelName"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtCreateTimestamp") {
                self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
            }
            if dict.keys.contains("GmtModify") {
                self.gmtModify = dict["GmtModify"] as! String
            }
            if dict.keys.contains("GmtModifyTimestamp") {
                self.gmtModifyTimestamp = dict["GmtModifyTimestamp"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IsActive") {
                self.isActive = dict["IsActive"] as! String
            }
            if dict.keys.contains("IsTotalPrepublish") {
                self.isTotalPrepublish = dict["IsTotalPrepublish"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("PassedCount") {
                self.passedCount = dict["PassedCount"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! String
            }
            if dict.keys.contains("VersionType") {
                self.versionType = dict["VersionType"] as! String
            }
        }
    }
    public var prepublishList: [FindPrepublishesByVersionIdResponseBody.PrepublishList]?

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
        if self.prepublishList != nil {
            var tmp : [Any] = []
            for k in self.prepublishList! {
                tmp.append(k.toMap())
            }
            map["PrepublishList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrepublishList") {
            self.prepublishList = dict["PrepublishList"] as! [FindPrepublishesByVersionIdResponseBody.PrepublishList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindPrepublishesByVersionIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindPrepublishesByVersionIdResponseBody?

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
            var model = FindPrepublishesByVersionIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindVersionBlackDevicesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var originalId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var versionId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.originalId != nil {
            map["OriginalId"] = self.originalId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("OriginalId") {
            self.originalId = dict["OriginalId"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class FindVersionBlackDevicesResponseBody : Tea.TeaModel {
    public class DeviceList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var deviceId: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var id: Int64?

            public var idType: String?

            public var originalId: String?

            public override init() {
                super.init()
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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.idType != nil {
                    map["IdType"] = self.idType!
                }
                if self.originalId != nil {
                    map["OriginalId"] = self.originalId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceId") {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IdType") {
                    self.idType = dict["IdType"] as! String
                }
                if dict.keys.contains("OriginalId") {
                    self.originalId = dict["OriginalId"] as! String
                }
            }
        }
        public var items: [FindVersionBlackDevicesResponseBody.DeviceList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindVersionBlackDevicesResponseBody.DeviceList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var deviceList: FindVersionBlackDevicesResponseBody.DeviceList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceList != nil {
            map["DeviceList"] = self.deviceList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceList") {
            var model = FindVersionBlackDevicesResponseBody.DeviceList()
            model.fromMap(dict["DeviceList"] as! [String: Any])
            self.deviceList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindVersionBlackDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindVersionBlackDevicesResponseBody?

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
            var model = FindVersionBlackDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindVersionDeviceGroupsRequest : Tea.TeaModel {
    public var deviceId: String?

    public var name: String?

    public var originalId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.originalId != nil {
            map["OriginalId"] = self.originalId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OriginalId") {
            self.originalId = dict["OriginalId"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class FindVersionDeviceGroupsResponseBody : Tea.TeaModel {
    public class DeviceGroupList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var description_: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var gmtModify: String?

            public var gmtModifyTimestamp: Int64?

            public var id: Int64?

            public var maxCount: String?

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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.gmtModifyTimestamp != nil {
                    map["GmtModifyTimestamp"] = self.gmtModifyTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.maxCount != nil {
                    map["MaxCount"] = self.maxCount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("GmtModify") {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("GmtModifyTimestamp") {
                    self.gmtModifyTimestamp = dict["GmtModifyTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("MaxCount") {
                    self.maxCount = dict["MaxCount"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var items: [FindVersionDeviceGroupsResponseBody.DeviceGroupList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindVersionDeviceGroupsResponseBody.DeviceGroupList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var deviceGroupList: FindVersionDeviceGroupsResponseBody.DeviceGroupList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceGroupList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupList != nil {
            map["DeviceGroupList"] = self.deviceGroupList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupList") {
            var model = FindVersionDeviceGroupsResponseBody.DeviceGroupList()
            model.fromMap(dict["DeviceGroupList"] as! [String: Any])
            self.deviceGroupList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindVersionDeviceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindVersionDeviceGroupsResponseBody?

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
            var model = FindVersionDeviceGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindVersionGroupDevicesRequest : Tea.TeaModel {
    public var deviceGroupId: String?

    public var deviceId: String?

    public var originalId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceGroupId != nil {
            map["DeviceGroupId"] = self.deviceGroupId!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.originalId != nil {
            map["OriginalId"] = self.originalId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupId") {
            self.deviceGroupId = dict["DeviceGroupId"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("OriginalId") {
            self.originalId = dict["OriginalId"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class FindVersionGroupDevicesResponseBody : Tea.TeaModel {
    public class GroupDeviceList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var deviceId: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var id: String?

            public var idType: String?

            public var originalId: String?

            public override init() {
                super.init()
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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.idType != nil {
                    map["IdType"] = self.idType!
                }
                if self.originalId != nil {
                    map["OriginalId"] = self.originalId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceId") {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("IdType") {
                    self.idType = dict["IdType"] as! String
                }
                if dict.keys.contains("OriginalId") {
                    self.originalId = dict["OriginalId"] as! String
                }
            }
        }
        public var items: [FindVersionGroupDevicesResponseBody.GroupDeviceList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindVersionGroupDevicesResponseBody.GroupDeviceList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var groupDeviceList: FindVersionGroupDevicesResponseBody.GroupDeviceList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupDeviceList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupDeviceList != nil {
            map["GroupDeviceList"] = self.groupDeviceList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupDeviceList") {
            var model = FindVersionGroupDevicesResponseBody.GroupDeviceList()
            model.fromMap(dict["GroupDeviceList"] as! [String: Any])
            self.groupDeviceList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindVersionGroupDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindVersionGroupDevicesResponseBody?

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
            var model = FindVersionGroupDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindVersionMessageSendRecordsRequest : Tea.TeaModel {
    public var messageType: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var versionId: String?

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
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageType") {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class FindVersionMessageSendRecordsResponseBody : Tea.TeaModel {
    public class MessageSendRecordList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var failedCount: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var id: Int64?

            public var messageType: String?

            public var result: String?

            public var resultDesc: String?

            public var skippedCount: String?

            public var succeededCount: String?

            public var targetId: String?

            public var versionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failedCount != nil {
                    map["FailedCount"] = self.failedCount!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.messageType != nil {
                    map["MessageType"] = self.messageType!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                if self.resultDesc != nil {
                    map["ResultDesc"] = self.resultDesc!
                }
                if self.skippedCount != nil {
                    map["SkippedCount"] = self.skippedCount!
                }
                if self.succeededCount != nil {
                    map["SucceededCount"] = self.succeededCount!
                }
                if self.targetId != nil {
                    map["TargetId"] = self.targetId!
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FailedCount") {
                    self.failedCount = dict["FailedCount"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("MessageType") {
                    self.messageType = dict["MessageType"] as! String
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! String
                }
                if dict.keys.contains("ResultDesc") {
                    self.resultDesc = dict["ResultDesc"] as! String
                }
                if dict.keys.contains("SkippedCount") {
                    self.skippedCount = dict["SkippedCount"] as! String
                }
                if dict.keys.contains("SucceededCount") {
                    self.succeededCount = dict["SucceededCount"] as! String
                }
                if dict.keys.contains("TargetId") {
                    self.targetId = dict["TargetId"] as! String
                }
                if dict.keys.contains("VersionId") {
                    self.versionId = dict["VersionId"] as! String
                }
            }
        }
        public var items: [FindVersionMessageSendRecordsResponseBody.MessageSendRecordList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindVersionMessageSendRecordsResponseBody.MessageSendRecordList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var messageSendRecordList: FindVersionMessageSendRecordsResponseBody.MessageSendRecordList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.messageSendRecordList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageSendRecordList != nil {
            map["MessageSendRecordList"] = self.messageSendRecordList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageSendRecordList") {
            var model = FindVersionMessageSendRecordsResponseBody.MessageSendRecordList()
            model.fromMap(dict["MessageSendRecordList"] as! [String: Any])
            self.messageSendRecordList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindVersionMessageSendRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindVersionMessageSendRecordsResponseBody?

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
            var model = FindVersionMessageSendRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindVersionMessagesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var messageType: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var sendRecordId: String?

    public var testId: String?

    public var versionId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sendRecordId != nil {
            map["SendRecordId"] = self.sendRecordId!
        }
        if self.testId != nil {
            map["TestId"] = self.testId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("MessageType") {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SendRecordId") {
            self.sendRecordId = dict["SendRecordId"] as! String
        }
        if dict.keys.contains("TestId") {
            self.testId = dict["TestId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class FindVersionMessagesResponseBody : Tea.TeaModel {
    public class MessageList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var deviceId: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var gmtModify: String?

            public var gmtModifyTimestamp: Int64?

            public var id: Int64?

            public var messageId: String?

            public var status: String?

            public var statusDesc: String?

            public var testId: String?

            public var versionId: String?

            public override init() {
                super.init()
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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.gmtModifyTimestamp != nil {
                    map["GmtModifyTimestamp"] = self.gmtModifyTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.messageId != nil {
                    map["MessageId"] = self.messageId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusDesc != nil {
                    map["StatusDesc"] = self.statusDesc!
                }
                if self.testId != nil {
                    map["TestId"] = self.testId!
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceId") {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("GmtModify") {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("GmtModifyTimestamp") {
                    self.gmtModifyTimestamp = dict["GmtModifyTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("MessageId") {
                    self.messageId = dict["MessageId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusDesc") {
                    self.statusDesc = dict["StatusDesc"] as! String
                }
                if dict.keys.contains("TestId") {
                    self.testId = dict["TestId"] as! String
                }
                if dict.keys.contains("VersionId") {
                    self.versionId = dict["VersionId"] as! String
                }
            }
        }
        public var items: [FindVersionMessagesResponseBody.MessageList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindVersionMessagesResponseBody.MessageList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var messageList: FindVersionMessagesResponseBody.MessageList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.messageList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageList != nil {
            map["MessageList"] = self.messageList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageList") {
            var model = FindVersionMessagesResponseBody.MessageList()
            model.fromMap(dict["MessageList"] as! [String: Any])
            self.messageList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindVersionMessagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindVersionMessagesResponseBody?

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
            var model = FindVersionMessagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindVersionTestsRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var versionId: String?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class FindVersionTestsResponseBody : Tea.TeaModel {
    public class VersionTestList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var description_: String?

            public var deviceGroupId: String?

            public var deviceGroupName: String?

            public var failedCount: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var gmtModify: String?

            public var gmtModifyTimestamp: Int64?

            public var id: Int64?

            public var name: String?

            public var skippedCount: String?

            public var succeededCount: String?

            public var versionId: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.deviceGroupId != nil {
                    map["DeviceGroupId"] = self.deviceGroupId!
                }
                if self.deviceGroupName != nil {
                    map["DeviceGroupName"] = self.deviceGroupName!
                }
                if self.failedCount != nil {
                    map["FailedCount"] = self.failedCount!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.gmtModifyTimestamp != nil {
                    map["GmtModifyTimestamp"] = self.gmtModifyTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.skippedCount != nil {
                    map["SkippedCount"] = self.skippedCount!
                }
                if self.succeededCount != nil {
                    map["SucceededCount"] = self.succeededCount!
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                if self.versionType != nil {
                    map["VersionType"] = self.versionType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DeviceGroupId") {
                    self.deviceGroupId = dict["DeviceGroupId"] as! String
                }
                if dict.keys.contains("DeviceGroupName") {
                    self.deviceGroupName = dict["DeviceGroupName"] as! String
                }
                if dict.keys.contains("FailedCount") {
                    self.failedCount = dict["FailedCount"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("GmtModify") {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("GmtModifyTimestamp") {
                    self.gmtModifyTimestamp = dict["GmtModifyTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("SkippedCount") {
                    self.skippedCount = dict["SkippedCount"] as! String
                }
                if dict.keys.contains("SucceededCount") {
                    self.succeededCount = dict["SucceededCount"] as! String
                }
                if dict.keys.contains("VersionId") {
                    self.versionId = dict["VersionId"] as! String
                }
                if dict.keys.contains("VersionType") {
                    self.versionType = dict["VersionType"] as! String
                }
            }
        }
        public var items: [FindVersionTestsResponseBody.VersionTestList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindVersionTestsResponseBody.VersionTestList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var versionTestList: FindVersionTestsResponseBody.VersionTestList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.versionTestList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.versionTestList != nil {
            map["VersionTestList"] = self.versionTestList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VersionTestList") {
            var model = FindVersionTestsResponseBody.VersionTestList()
            model.fromMap(dict["VersionTestList"] as! [String: Any])
            self.versionTestList = model
        }
    }
}

public class FindVersionTestsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindVersionTestsResponseBody?

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
            var model = FindVersionTestsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindVersionWhiteDevicesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var originalId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var versionId: String?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.originalId != nil {
            map["OriginalId"] = self.originalId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("OriginalId") {
            self.originalId = dict["OriginalId"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class FindVersionWhiteDevicesResponseBody : Tea.TeaModel {
    public class DeviceList : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var deviceId: String?

            public var gmtCreate: String?

            public var gmtCreateTimestamp: Int64?

            public var id: Int64?

            public var idType: String?

            public var originalId: String?

            public override init() {
                super.init()
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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtCreateTimestamp != nil {
                    map["GmtCreateTimestamp"] = self.gmtCreateTimestamp!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.idType != nil {
                    map["IdType"] = self.idType!
                }
                if self.originalId != nil {
                    map["OriginalId"] = self.originalId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceId") {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtCreateTimestamp") {
                    self.gmtCreateTimestamp = dict["GmtCreateTimestamp"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IdType") {
                    self.idType = dict["IdType"] as! String
                }
                if dict.keys.contains("OriginalId") {
                    self.originalId = dict["OriginalId"] as! String
                }
            }
        }
        public var items: [FindVersionWhiteDevicesResponseBody.DeviceList.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [FindVersionWhiteDevicesResponseBody.DeviceList.Items]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var deviceList: FindVersionWhiteDevicesResponseBody.DeviceList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceList != nil {
            map["DeviceList"] = self.deviceList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceList") {
            var model = FindVersionWhiteDevicesResponseBody.DeviceList()
            model.fromMap(dict["DeviceList"] as! [String: Any])
            self.deviceList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindVersionWhiteDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindVersionWhiteDevicesResponseBody?

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
            var model = FindVersionWhiteDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateFunctionFileUploadMetaRequest : Tea.TeaModel {
    public var fileName: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GenerateFunctionFileUploadMetaResponseBody : Tea.TeaModel {
    public class UploadMeta : Tea.TeaModel {
        public class PostObjectPolicy : Tea.TeaModel {
            public var accessId: String?

            public var expire: String?

            public var host: String?

            public var policy: String?

            public var signature: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessId != nil {
                    map["AccessId"] = self.accessId!
                }
                if self.expire != nil {
                    map["Expire"] = self.expire!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessId") {
                    self.accessId = dict["AccessId"] as! String
                }
                if dict.keys.contains("Expire") {
                    self.expire = dict["Expire"] as! String
                }
                if dict.keys.contains("Host") {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("Policy") {
                    self.policy = dict["Policy"] as! String
                }
                if dict.keys.contains("Signature") {
                    self.signature = dict["Signature"] as! String
                }
            }
        }
        public var objectKey: String?

        public var postObjectPolicy: GenerateFunctionFileUploadMetaResponseBody.UploadMeta.PostObjectPolicy?

        public var securityToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.postObjectPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.objectKey != nil {
                map["ObjectKey"] = self.objectKey!
            }
            if self.postObjectPolicy != nil {
                map["PostObjectPolicy"] = self.postObjectPolicy?.toMap()
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ObjectKey") {
                self.objectKey = dict["ObjectKey"] as! String
            }
            if dict.keys.contains("PostObjectPolicy") {
                var model = GenerateFunctionFileUploadMetaResponseBody.UploadMeta.PostObjectPolicy()
                model.fromMap(dict["PostObjectPolicy"] as! [String: Any])
                self.postObjectPolicy = model
            }
            if dict.keys.contains("SecurityToken") {
                self.securityToken = dict["SecurityToken"] as! String
            }
        }
    }
    public var requestId: String?

    public var uploadMeta: GenerateFunctionFileUploadMetaResponseBody.UploadMeta?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.uploadMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uploadMeta != nil {
            map["UploadMeta"] = self.uploadMeta?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UploadMeta") {
            var model = GenerateFunctionFileUploadMetaResponseBody.UploadMeta()
            model.fromMap(dict["UploadMeta"] as! [String: Any])
            self.uploadMeta = model
        }
    }
}

public class GenerateFunctionFileUploadMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateFunctionFileUploadMetaResponseBody?

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
            var model = GenerateFunctionFileUploadMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateOssPostPolicyRequest : Tea.TeaModel {
    public var accessId: String?

    public var accessKey: String?

    public var ext: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessId != nil {
            map["AccessId"] = self.accessId!
        }
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessId") {
            self.accessId = dict["AccessId"] as! String
        }
        if dict.keys.contains("AccessKey") {
            self.accessKey = dict["AccessKey"] as! String
        }
        if dict.keys.contains("Ext") {
            self.ext = dict["Ext"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GenerateOssPostPolicyResponseBody : Tea.TeaModel {
    public class OssPostPolicy : Tea.TeaModel {
        public var accessId: String?

        public var expire: String?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.expire != nil {
                map["Expire"] = self.expire!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("Expire") {
                self.expire = dict["Expire"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Signature") {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var ossPostPolicy: GenerateOssPostPolicyResponseBody.OssPostPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ossPostPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossPostPolicy != nil {
            map["OssPostPolicy"] = self.ossPostPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OssPostPolicy") {
            var model = GenerateOssPostPolicyResponseBody.OssPostPolicy()
            model.fromMap(dict["OssPostPolicy"] as! [String: Any])
            self.ossPostPolicy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateOssPostPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateOssPostPolicyResponseBody?

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
            var model = GenerateOssPostPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateOssUploadMetaRequest : Tea.TeaModel {
    public var ext: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ext") {
            self.ext = dict["Ext"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GenerateOssUploadMetaResponseBody : Tea.TeaModel {
    public class OssUploadMeta : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var bucket: String?

        public var objectKey: String?

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
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.objectKey != nil {
                map["ObjectKey"] = self.objectKey!
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
            if dict.keys.contains("AccessKeySecret") {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("Bucket") {
                self.bucket = dict["Bucket"] as! String
            }
            if dict.keys.contains("ObjectKey") {
                self.objectKey = dict["ObjectKey"] as! String
            }
            if dict.keys.contains("SecurityToken") {
                self.securityToken = dict["SecurityToken"] as! String
            }
        }
    }
    public var ossUploadMeta: GenerateOssUploadMetaResponseBody.OssUploadMeta?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ossUploadMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossUploadMeta != nil {
            map["OssUploadMeta"] = self.ossUploadMeta?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OssUploadMeta") {
            var model = GenerateOssUploadMetaResponseBody.OssUploadMeta()
            model.fromMap(dict["OssUploadMeta"] as! [String: Any])
            self.ossUploadMeta = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateOssUploadMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateOssUploadMetaResponseBody?

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
            var model = GenerateOssUploadMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateSdkDownloadInfoRequest : Tea.TeaModel {
    public var appId: String?

    public var certFileObjectKey: String?

    public var osType: Int32?

    public var pkgName: String?

    public var projectId: String?

    public var sdks: String?

    public override init() {
        super.init()
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
        if self.certFileObjectKey != nil {
            map["CertFileObjectKey"] = self.certFileObjectKey!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.pkgName != nil {
            map["PkgName"] = self.pkgName!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sdks != nil {
            map["Sdks"] = self.sdks!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CertFileObjectKey") {
            self.certFileObjectKey = dict["CertFileObjectKey"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! Int32
        }
        if dict.keys.contains("PkgName") {
            self.pkgName = dict["PkgName"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Sdks") {
            self.sdks = dict["Sdks"] as! String
        }
    }
}

public class GenerateSdkDownloadInfoResponseBody : Tea.TeaModel {
    public class SdkDownloadInfo : Tea.TeaModel {
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
    public var requestId: String?

    public var sdkDownloadInfo: GenerateSdkDownloadInfoResponseBody.SdkDownloadInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkDownloadInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sdkDownloadInfo != nil {
            map["SdkDownloadInfo"] = self.sdkDownloadInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SdkDownloadInfo") {
            var model = GenerateSdkDownloadInfoResponseBody.SdkDownloadInfo()
            model.fromMap(dict["SdkDownloadInfo"] as! [String: Any])
            self.sdkDownloadInfo = model
        }
    }
}

public class GenerateSdkDownloadInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateSdkDownloadInfoResponseBody?

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
            var model = GenerateSdkDownloadInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateSysAppDownloadInfoRequest : Tea.TeaModel {
    public var certFileObjectKey: String?

    public var osType: Int32?

    public var pkgName: String?

    public var plugins: String?

    public var projectId: String?

    public var signMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certFileObjectKey != nil {
            map["CertFileObjectKey"] = self.certFileObjectKey!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.pkgName != nil {
            map["PkgName"] = self.pkgName!
        }
        if self.plugins != nil {
            map["Plugins"] = self.plugins!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.signMode != nil {
            map["SignMode"] = self.signMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertFileObjectKey") {
            self.certFileObjectKey = dict["CertFileObjectKey"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! Int32
        }
        if dict.keys.contains("PkgName") {
            self.pkgName = dict["PkgName"] as! String
        }
        if dict.keys.contains("Plugins") {
            self.plugins = dict["Plugins"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SignMode") {
            self.signMode = dict["SignMode"] as! String
        }
    }
}

public class GenerateSysAppDownloadInfoResponseBody : Tea.TeaModel {
    public class SysAppDownloadInfo : Tea.TeaModel {
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
    public var requestId: String?

    public var sysAppDownloadInfo: GenerateSysAppDownloadInfoResponseBody.SysAppDownloadInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sysAppDownloadInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sysAppDownloadInfo != nil {
            map["SysAppDownloadInfo"] = self.sysAppDownloadInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SysAppDownloadInfo") {
            var model = GenerateSysAppDownloadInfoResponseBody.SysAppDownloadInfo()
            model.fromMap(dict["SysAppDownloadInfo"] as! [String: Any])
            self.sysAppDownloadInfo = model
        }
    }
}

public class GenerateSysAppDownloadInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateSysAppDownloadInfoResponseBody?

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
            var model = GenerateSysAppDownloadInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceAppUpdateFunnelEventsRequest : Tea.TeaModel {
    public var idType: String?

    public var originalId: String?

    public var packageName: String?

    public var projectId: String?

    public var targetVersionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.idType != nil {
            map["IdType"] = self.idType!
        }
        if self.originalId != nil {
            map["OriginalId"] = self.originalId!
        }
        if self.packageName != nil {
            map["PackageName"] = self.packageName!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.targetVersionCode != nil {
            map["TargetVersionCode"] = self.targetVersionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdType") {
            self.idType = dict["IdType"] as! String
        }
        if dict.keys.contains("OriginalId") {
            self.originalId = dict["OriginalId"] as! String
        }
        if dict.keys.contains("PackageName") {
            self.packageName = dict["PackageName"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("TargetVersionCode") {
            self.targetVersionCode = dict["TargetVersionCode"] as! String
        }
    }
}

public class GetDeviceAppUpdateFunnelEventsResponseBody : Tea.TeaModel {
    public class EventList : Tea.TeaModel {
        public var deviceId: String?

        public var event: String?

        public var packageName: String?

        public var reportTime: String?

        public var reportTimestamp: Int64?

        public var targetVersionCode: String?

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
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.packageName != nil {
                map["PackageName"] = self.packageName!
            }
            if self.reportTime != nil {
                map["ReportTime"] = self.reportTime!
            }
            if self.reportTimestamp != nil {
                map["ReportTimestamp"] = self.reportTimestamp!
            }
            if self.targetVersionCode != nil {
                map["TargetVersionCode"] = self.targetVersionCode!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("PackageName") {
                self.packageName = dict["PackageName"] as! String
            }
            if dict.keys.contains("ReportTime") {
                self.reportTime = dict["ReportTime"] as! String
            }
            if dict.keys.contains("ReportTimestamp") {
                self.reportTimestamp = dict["ReportTimestamp"] as! Int64
            }
            if dict.keys.contains("TargetVersionCode") {
                self.targetVersionCode = dict["TargetVersionCode"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
        }
    }
    public var eventList: [GetDeviceAppUpdateFunnelEventsResponseBody.EventList]?

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
        if self.eventList != nil {
            var tmp : [Any] = []
            for k in self.eventList! {
                tmp.append(k.toMap())
            }
            map["EventList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventList") {
            self.eventList = dict["EventList"] as! [GetDeviceAppUpdateFunnelEventsResponseBody.EventList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDeviceAppUpdateFunnelEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceAppUpdateFunnelEventsResponseBody?

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
            var model = GetDeviceAppUpdateFunnelEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceSystemUpdateFunnelEventsRequest : Tea.TeaModel {
    public var idType: String?

    public var originalId: String?

    public var projectId: String?

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
        if self.idType != nil {
            map["IdType"] = self.idType!
        }
        if self.originalId != nil {
            map["OriginalId"] = self.originalId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.targetVersion != nil {
            map["TargetVersion"] = self.targetVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdType") {
            self.idType = dict["IdType"] as! String
        }
        if dict.keys.contains("OriginalId") {
            self.originalId = dict["OriginalId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("TargetVersion") {
            self.targetVersion = dict["TargetVersion"] as! String
        }
    }
}

public class GetDeviceSystemUpdateFunnelEventsResponseBody : Tea.TeaModel {
    public class EventList : Tea.TeaModel {
        public var deviceId: String?

        public var event: String?

        public var reportTime: String?

        public var reportTimestamp: Int64?

        public var targetVersion: String?

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
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.reportTime != nil {
                map["ReportTime"] = self.reportTime!
            }
            if self.reportTimestamp != nil {
                map["ReportTimestamp"] = self.reportTimestamp!
            }
            if self.targetVersion != nil {
                map["TargetVersion"] = self.targetVersion!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("ReportTime") {
                self.reportTime = dict["ReportTime"] as! String
            }
            if dict.keys.contains("ReportTimestamp") {
                self.reportTimestamp = dict["ReportTimestamp"] as! Int64
            }
            if dict.keys.contains("TargetVersion") {
                self.targetVersion = dict["TargetVersion"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
        }
    }
    public var eventList: [GetDeviceSystemUpdateFunnelEventsResponseBody.EventList]?

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
        if self.eventList != nil {
            var tmp : [Any] = []
            for k in self.eventList! {
                tmp.append(k.toMap())
            }
            map["EventList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventList") {
            self.eventList = dict["EventList"] as! [GetDeviceSystemUpdateFunnelEventsResponseBody.EventList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDeviceSystemUpdateFunnelEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceSystemUpdateFunnelEventsResponseBody?

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
            var model = GetDeviceSystemUpdateFunnelEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNamespaceDataRequest : Tea.TeaModel {
    public var accountId: String?

    public var accountType: String?

    public var authType: String?

    public var deviceId: String?

    public var deviceIdType: String?

    public var namespace: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.deviceIdType != nil {
            map["DeviceIdType"] = self.deviceIdType!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("AuthType") {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("DeviceIdType") {
            self.deviceIdType = dict["DeviceIdType"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetNamespaceDataResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetNamespaceDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNamespaceDataResponseBody?

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
            var model = GetNamespaceDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNamespaceStatisticsDataRequest : Tea.TeaModel {
    public var dimensionType: String?

    public var endTime: String?

    public var namespace: String?

    public var projectId: String?

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
        if self.dimensionType != nil {
            map["DimensionType"] = self.dimensionType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DimensionType") {
            self.dimensionType = dict["DimensionType"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class GetNamespaceStatisticsDataResponseBody : Tea.TeaModel {
    public class Statistics : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public var data: [Int64]?

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
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! [Int64]
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var categories: [Int64]?

        public var series: [GetNamespaceStatisticsDataResponseBody.Statistics.Series]?

        public override init() {
            super.init()
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
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") {
                self.categories = dict["Categories"] as! [Int64]
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! [GetNamespaceStatisticsDataResponseBody.Statistics.Series]
            }
        }
    }
    public var requestId: String?

    public var statistics: GetNamespaceStatisticsDataResponseBody.Statistics?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.statistics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.statistics != nil {
            map["Statistics"] = self.statistics?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Statistics") {
            var model = GetNamespaceStatisticsDataResponseBody.Statistics()
            model.fromMap(dict["Statistics"] as! [String: Any])
            self.statistics = model
        }
    }
}

public class GetNamespaceStatisticsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNamespaceStatisticsDataResponseBody?

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
            var model = GetNamespaceStatisticsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOssUploadMetaRequest : Tea.TeaModel {
    public var ext: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ext") {
            self.ext = dict["Ext"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetOssUploadMetaResponseBody : Tea.TeaModel {
    public class OssUploadMeta : Tea.TeaModel {
        public var accessKey: String?

        public var host: String?

        public var objectKey: String?

        public var policy: String?

        public var securityToken: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.objectKey != nil {
                map["ObjectKey"] = self.objectKey!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKey") {
                self.accessKey = dict["AccessKey"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("ObjectKey") {
                self.objectKey = dict["ObjectKey"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("SecurityToken") {
                self.securityToken = dict["SecurityToken"] as! String
            }
            if dict.keys.contains("Signature") {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var ossUploadMeta: GetOssUploadMetaResponseBody.OssUploadMeta?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ossUploadMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossUploadMeta != nil {
            map["OssUploadMeta"] = self.ossUploadMeta?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OssUploadMeta") {
            var model = GetOssUploadMetaResponseBody.OssUploadMeta()
            model.fromMap(dict["OssUploadMeta"] as! [String: Any])
            self.ossUploadMeta = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetOssUploadMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssUploadMetaResponseBody?

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
            var model = GetOssUploadMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvokeFunctionRequest : Tea.TeaModel {
    public var env: Int32?

    public var fileId: Int64?

    public var functionName: String?

    public var parameters: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! Int32
        }
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("FunctionName") {
            self.functionName = dict["FunctionName"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class InvokeFunctionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var backEndRequestId: String?

        public var output: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backEndRequestId != nil {
                map["BackEndRequestId"] = self.backEndRequestId!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackEndRequestId") {
                self.backEndRequestId = dict["BackEndRequestId"] as! String
            }
            if dict.keys.contains("Output") {
                self.output = dict["Output"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: InvokeFunctionResponseBody.Result?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = InvokeFunctionResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class InvokeFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvokeFunctionResponseBody?

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
            var model = InvokeFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApiGatewayAppsRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListApiGatewayAppsResponseBody : Tea.TeaModel {
    public class ApiGatewayApps : Tea.TeaModel {
        public var gatewayAppId: String?

        public var gatewayAppKey: String?

        public var gatewayAppSecret: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var projectId: String?

        public var status: Int32?

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
            if self.gatewayAppId != nil {
                map["GatewayAppId"] = self.gatewayAppId!
            }
            if self.gatewayAppKey != nil {
                map["GatewayAppKey"] = self.gatewayAppKey!
            }
            if self.gatewayAppSecret != nil {
                map["GatewayAppSecret"] = self.gatewayAppSecret!
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
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GatewayAppId") {
                self.gatewayAppId = dict["GatewayAppId"] as! String
            }
            if dict.keys.contains("GatewayAppKey") {
                self.gatewayAppKey = dict["GatewayAppKey"] as! String
            }
            if dict.keys.contains("GatewayAppSecret") {
                self.gatewayAppSecret = dict["GatewayAppSecret"] as! String
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
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var apiGatewayApps: [ListApiGatewayAppsResponseBody.ApiGatewayApps]?

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
        if self.apiGatewayApps != nil {
            var tmp : [Any] = []
            for k in self.apiGatewayApps! {
                tmp.append(k.toMap())
            }
            map["ApiGatewayApps"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiGatewayApps") {
            self.apiGatewayApps = dict["ApiGatewayApps"] as! [ListApiGatewayAppsResponseBody.ApiGatewayApps]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListApiGatewayAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApiGatewayAppsResponseBody?

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
            var model = ListApiGatewayAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppsRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListAppsResponseBody : Tea.TeaModel {
    public class Apps : Tea.TeaModel {
        public var appKey: String?

        public var appName: String?

        public var appPackage: String?

        public var osType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appPackage != nil {
                map["AppPackage"] = self.appPackage!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppKey") {
                self.appKey = dict["AppKey"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppPackage") {
                self.appPackage = dict["AppPackage"] as! String
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! Int32
            }
        }
    }
    public var apps: [ListAppsResponseBody.Apps]?

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
        if self.apps != nil {
            var tmp : [Any] = []
            for k in self.apps! {
                tmp.append(k.toMap())
            }
            map["Apps"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Apps") {
            self.apps = dict["Apps"] as! [ListAppsResponseBody.Apps]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppsResponseBody?

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
            var model = ListAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAssistActionDetailsRequest : Tea.TeaModel {
    public var actionTimestamp: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionTimestamp != nil {
            map["ActionTimestamp"] = self.actionTimestamp!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionTimestamp") {
            self.actionTimestamp = dict["ActionTimestamp"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListAssistActionDetailsResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var action: String?

        public var createdAt: Int64?

        public var data: String?

        public var deviceId: String?

        public var ID: String?

        public var timestamp: String?

        public var type: String?

        public var updatedAt: Int64?

        public override init() {
            super.init()
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
                map["Action"] = self.action!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.ID != nil {
                map["ID"] = self.ID!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! Int64
            }
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! String
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("ID") {
                self.ID = dict["ID"] as! String
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var results: [ListAssistActionDetailsResponseBody.Results]?

    public override init() {
        super.init()
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
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") {
            self.results = dict["Results"] as! [ListAssistActionDetailsResponseBody.Results]
        }
    }
}

public class ListAssistActionDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAssistActionDetailsResponseBody?

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
            var model = ListAssistActionDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAssistDevicesRequest : Tea.TeaModel {
    public var condition: String?

    public var pageIndex: Int32?

    public var perPage: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.condition != nil {
            map["Condition"] = self.condition!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.perPage != nil {
            map["PerPage"] = self.perPage!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Condition") {
            self.condition = dict["Condition"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PerPage") {
            self.perPage = dict["PerPage"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListAssistDevicesResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var accessTime: Int64?

        public var deviceId: String?

        public var deviceName: String?

        public var hardwareId: String?

        public var serialNumber: String?

        public var UUID: String?

        public var VIN: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTime != nil {
                map["AccessTime"] = self.accessTime!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.hardwareId != nil {
                map["HardwareId"] = self.hardwareId!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.UUID != nil {
                map["UUID"] = self.UUID!
            }
            if self.VIN != nil {
                map["VIN"] = self.VIN!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessTime") {
                self.accessTime = dict["AccessTime"] as! Int64
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DeviceName") {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("HardwareId") {
                self.hardwareId = dict["HardwareId"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("UUID") {
                self.UUID = dict["UUID"] as! String
            }
            if dict.keys.contains("VIN") {
                self.VIN = dict["VIN"] as! String
            }
        }
    }
    public var devices: [ListAssistDevicesResponseBody.Devices]?

    public var pageIndex: Int32?

    public var perPage: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.perPage != nil {
            map["PerPage"] = self.perPage!
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
        if dict.keys.contains("Devices") {
            self.devices = dict["Devices"] as! [ListAssistDevicesResponseBody.Devices]
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PerPage") {
            self.perPage = dict["PerPage"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAssistDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAssistDevicesResponseBody?

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
            var model = ListAssistDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAssistHistoriesRequest : Tea.TeaModel {
    public var condition: String?

    public var pageIndex: Int32?

    public var perPage: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.condition != nil {
            map["Condition"] = self.condition!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.perPage != nil {
            map["PerPage"] = self.perPage!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Condition") {
            self.condition = dict["Condition"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PerPage") {
            self.perPage = dict["PerPage"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListAssistHistoriesResponseBody : Tea.TeaModel {
    public class Histories : Tea.TeaModel {
        public var deviceId: String?

        public var deviceName: String?

        public var endTime: Int64?

        public var hardwareId: String?

        public var ID: String?

        public var serialNumber: String?

        public var startTime: Int64?

        public var UID: String?

        public var UNAME: String?

        public var UUID: String?

        public var VIN: String?

        public override init() {
            super.init()
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
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.hardwareId != nil {
                map["HardwareId"] = self.hardwareId!
            }
            if self.ID != nil {
                map["ID"] = self.ID!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.UID != nil {
                map["UID"] = self.UID!
            }
            if self.UNAME != nil {
                map["UNAME"] = self.UNAME!
            }
            if self.UUID != nil {
                map["UUID"] = self.UUID!
            }
            if self.VIN != nil {
                map["VIN"] = self.VIN!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DeviceName") {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("HardwareId") {
                self.hardwareId = dict["HardwareId"] as! String
            }
            if dict.keys.contains("ID") {
                self.ID = dict["ID"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("UID") {
                self.UID = dict["UID"] as! String
            }
            if dict.keys.contains("UNAME") {
                self.UNAME = dict["UNAME"] as! String
            }
            if dict.keys.contains("UUID") {
                self.UUID = dict["UUID"] as! String
            }
            if dict.keys.contains("VIN") {
                self.VIN = dict["VIN"] as! String
            }
        }
    }
    public var histories: [ListAssistHistoriesResponseBody.Histories]?

    public var pageIndex: Int32?

    public var perPage: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.histories != nil {
            var tmp : [Any] = []
            for k in self.histories! {
                tmp.append(k.toMap())
            }
            map["Histories"] = tmp
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.perPage != nil {
            map["PerPage"] = self.perPage!
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
        if dict.keys.contains("Histories") {
            self.histories = dict["Histories"] as! [ListAssistHistoriesResponseBody.Histories]
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PerPage") {
            self.perPage = dict["PerPage"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAssistHistoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAssistHistoriesResponseBody?

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
            var model = ListAssistHistoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAssistHistoryDetailsRequest : Tea.TeaModel {
    public var assistId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assistId != nil {
            map["AssistId"] = self.assistId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssistId") {
            self.assistId = dict["AssistId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListAssistHistoryDetailsResponseBody : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public var action: String?

        public var assistId: String?

        public var createdAt: Int64?

        public var ID: String?

        public var timestamp: String?

        public var updatedAt: Int64?

        public override init() {
            super.init()
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
                map["Action"] = self.action!
            }
            if self.assistId != nil {
                map["AssistId"] = self.assistId!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.ID != nil {
                map["ID"] = self.ID!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("AssistId") {
                self.assistId = dict["AssistId"] as! String
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! Int64
            }
            if dict.keys.contains("ID") {
                self.ID = dict["ID"] as! String
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! Int64
            }
        }
    }
    public var actions: [ListAssistHistoryDetailsResponseBody.Actions]?

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
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["Actions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Actions") {
            self.actions = dict["Actions"] as! [ListAssistHistoryDetailsResponseBody.Actions]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAssistHistoryDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAssistHistoryDetailsResponseBody?

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
            var model = ListAssistHistoryDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClientPluginVersionsRequest : Tea.TeaModel {
    public var osType: String?

    public var pkgName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.pkgName != nil {
            map["PkgName"] = self.pkgName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("PkgName") {
            self.pkgName = dict["PkgName"] as! String
        }
    }
}

public class ListClientPluginVersionsResponseBody : Tea.TeaModel {
    public class ClientPluginVersions : Tea.TeaModel {
        public var downloadUrl: String?

        public var id: Int64?

        public var pkgName: String?

        public var size: Int64?

        public var version: String?

        public var versionCode: Int64?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.pkgName != nil {
                map["PkgName"] = self.pkgName!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownloadUrl") {
                self.downloadUrl = dict["DownloadUrl"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("PkgName") {
                self.pkgName = dict["PkgName"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VersionCode") {
                self.versionCode = dict["VersionCode"] as! Int64
            }
        }
    }
    public var clientPluginVersions: [ListClientPluginVersionsResponseBody.ClientPluginVersions]?

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
        if self.clientPluginVersions != nil {
            var tmp : [Any] = []
            for k in self.clientPluginVersions! {
                tmp.append(k.toMap())
            }
            map["ClientPluginVersions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientPluginVersions") {
            self.clientPluginVersions = dict["ClientPluginVersions"] as! [ListClientPluginVersionsResponseBody.ClientPluginVersions]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListClientPluginVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClientPluginVersionsResponseBody?

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
            var model = ListClientPluginVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClientPluginsRequest : Tea.TeaModel {
    public var osType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
    }
}

public class ListClientPluginsResponseBody : Tea.TeaModel {
    public class ClientPlugins : Tea.TeaModel {
        public var name: String?

        public var pkgName: String?

        public override init() {
            super.init()
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
            if self.pkgName != nil {
                map["PkgName"] = self.pkgName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PkgName") {
                self.pkgName = dict["PkgName"] as! String
            }
        }
    }
    public var clientPlugins: [ListClientPluginsResponseBody.ClientPlugins]?

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
        if self.clientPlugins != nil {
            var tmp : [Any] = []
            for k in self.clientPlugins! {
                tmp.append(k.toMap())
            }
            map["ClientPlugins"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientPlugins") {
            self.clientPlugins = dict["ClientPlugins"] as! [ListClientPluginsResponseBody.ClientPlugins]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListClientPluginsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClientPluginsResponseBody?

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
            var model = ListClientPluginsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClientSdksRequest : Tea.TeaModel {
    public var osType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
    }
}

public class ListClientSdksResponseBody : Tea.TeaModel {
    public class ClientSdks : Tea.TeaModel {
        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var name: String?

        public var osType: Int32?

        public var pkgName: String?

        public var pkgType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.pkgName != nil {
                map["PkgName"] = self.pkgName!
            }
            if self.pkgType != nil {
                map["PkgType"] = self.pkgType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! Int32
            }
            if dict.keys.contains("PkgName") {
                self.pkgName = dict["PkgName"] as! String
            }
            if dict.keys.contains("PkgType") {
                self.pkgType = dict["PkgType"] as! Int32
            }
        }
    }
    public var clientSdks: [ListClientSdksResponseBody.ClientSdks]?

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
        if self.clientSdks != nil {
            var tmp : [Any] = []
            for k in self.clientSdks! {
                tmp.append(k.toMap())
            }
            map["ClientSdks"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientSdks") {
            self.clientSdks = dict["ClientSdks"] as! [ListClientSdksResponseBody.ClientSdks]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListClientSdksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClientSdksResponseBody?

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
            var model = ListClientSdksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConnectLogsRequest : Tea.TeaModel {
    public var deviceId: String?

    public var endTime: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var startTime: Int32?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int32
        }
    }
}

public class ListConnectLogsResponseBody : Tea.TeaModel {
    public class Logs : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var deviceId: String?

            public var ip: String?

            public var netWorking: String?

            public var sid: String?

            public var status: String?

            public var systemVersion: String?

            public var terminal: String?

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
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.netWorking != nil {
                    map["NetWorking"] = self.netWorking!
                }
                if self.sid != nil {
                    map["Sid"] = self.sid!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.systemVersion != nil {
                    map["SystemVersion"] = self.systemVersion!
                }
                if self.terminal != nil {
                    map["Terminal"] = self.terminal!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceId") {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("Ip") {
                    self.ip = dict["Ip"] as! String
                }
                if dict.keys.contains("NetWorking") {
                    self.netWorking = dict["NetWorking"] as! String
                }
                if dict.keys.contains("Sid") {
                    self.sid = dict["Sid"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SystemVersion") {
                    self.systemVersion = dict["SystemVersion"] as! String
                }
                if dict.keys.contains("Terminal") {
                    self.terminal = dict["Terminal"] as! String
                }
                if dict.keys.contains("Time") {
                    self.time = dict["Time"] as! Int64
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public var list: [ListConnectLogsResponseBody.Logs.List]?

        public var pagination: ListConnectLogsResponseBody.Logs.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
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
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListConnectLogsResponseBody.Logs.List]
            }
            if dict.keys.contains("Pagination") {
                var model = ListConnectLogsResponseBody.Logs.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var logs: ListConnectLogsResponseBody.Logs?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logs != nil {
            map["Logs"] = self.logs?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Logs") {
            var model = ListConnectLogsResponseBody.Logs()
            model.fromMap(dict["Logs"] as! [String: Any])
            self.logs = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListConnectLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConnectLogsResponseBody?

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
            var model = ListConnectLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeployedFunctionsRequest : Tea.TeaModel {
    public var fileId: Int64?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListDeployedFunctionsResponseBody : Tea.TeaModel {
    public class Functions : Tea.TeaModel {
        public var fileId: Int64?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var name: String?

        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileId != nil {
                map["FileId"] = self.fileId!
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileId") {
                self.fileId = dict["FileId"] as! Int64
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
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
        }
    }
    public var functions: [ListDeployedFunctionsResponseBody.Functions]?

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
        if self.functions != nil {
            var tmp : [Any] = []
            for k in self.functions! {
                tmp.append(k.toMap())
            }
            map["Functions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Functions") {
            self.functions = dict["Functions"] as! [ListDeployedFunctionsResponseBody.Functions]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDeployedFunctionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeployedFunctionsResponseBody?

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
            var model = ListDeployedFunctionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeviceBrandsRequest : Tea.TeaModel {
    public var deviceBrand: String?

    public var deviceBrandId: Int64?

    public var length: String?

    public var projectId: String?

    public var start: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceBrand != nil {
            map["DeviceBrand"] = self.deviceBrand!
        }
        if self.deviceBrandId != nil {
            map["DeviceBrandId"] = self.deviceBrandId!
        }
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceBrand") {
            self.deviceBrand = dict["DeviceBrand"] as! String
        }
        if dict.keys.contains("DeviceBrandId") {
            self.deviceBrandId = dict["DeviceBrandId"] as! Int64
        }
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! String
        }
    }
}

public class ListDeviceBrandsResponseBody : Tea.TeaModel {
    public class DeviceBrands : Tea.TeaModel {
        public var description_: String?

        public var deviceBrand: String?

        public var deviceBrandId: Int64?

        public var manufacture: String?

        public var projectId: String?

        public override init() {
            super.init()
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
            if self.deviceBrand != nil {
                map["DeviceBrand"] = self.deviceBrand!
            }
            if self.deviceBrandId != nil {
                map["DeviceBrandId"] = self.deviceBrandId!
            }
            if self.manufacture != nil {
                map["Manufacture"] = self.manufacture!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceBrand") {
                self.deviceBrand = dict["DeviceBrand"] as! String
            }
            if dict.keys.contains("DeviceBrandId") {
                self.deviceBrandId = dict["DeviceBrandId"] as! Int64
            }
            if dict.keys.contains("Manufacture") {
                self.manufacture = dict["Manufacture"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
        }
    }
    public var deviceBrands: [ListDeviceBrandsResponseBody.DeviceBrands]?

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
        if self.deviceBrands != nil {
            var tmp : [Any] = []
            for k in self.deviceBrands! {
                tmp.append(k.toMap())
            }
            map["DeviceBrands"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceBrands") {
            self.deviceBrands = dict["DeviceBrands"] as! [ListDeviceBrandsResponseBody.DeviceBrands]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDeviceBrandsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceBrandsResponseBody?

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
            var model = ListDeviceBrandsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeviceModelsRequest : Tea.TeaModel {
    public var deviceBrand: String?

    public var deviceBrandId: Int64?

    public var deviceModel: String?

    public var deviceModelId: Int32?

    public var length: String?

    public var projectId: String?

    public var start: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceBrand != nil {
            map["DeviceBrand"] = self.deviceBrand!
        }
        if self.deviceBrandId != nil {
            map["DeviceBrandId"] = self.deviceBrandId!
        }
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceBrand") {
            self.deviceBrand = dict["DeviceBrand"] as! String
        }
        if dict.keys.contains("DeviceBrandId") {
            self.deviceBrandId = dict["DeviceBrandId"] as! Int64
        }
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! Int32
        }
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! String
        }
    }
}

public class ListDeviceModelsResponseBody : Tea.TeaModel {
    public class DeviceModels : Tea.TeaModel {
        public var canCreateDeviceId: Int32?

        public var description_: String?

        public var deviceBrand: String?

        public var deviceLogoUrl: String?

        public var deviceModel: String?

        public var deviceModelId: Int64?

        public var deviceName: String?

        public var deviceType: String?

        public var hardwareType: String?

        public var initUsageType: Int32?

        public var initUsageTypeDesc: String?

        public var objectKey: String?

        public var osPlatform: String?

        public var projectId: String?

        public var securityChip: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canCreateDeviceId != nil {
                map["CanCreateDeviceId"] = self.canCreateDeviceId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceBrand != nil {
                map["DeviceBrand"] = self.deviceBrand!
            }
            if self.deviceLogoUrl != nil {
                map["DeviceLogoUrl"] = self.deviceLogoUrl!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceModelId != nil {
                map["DeviceModelId"] = self.deviceModelId!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.hardwareType != nil {
                map["HardwareType"] = self.hardwareType!
            }
            if self.initUsageType != nil {
                map["InitUsageType"] = self.initUsageType!
            }
            if self.initUsageTypeDesc != nil {
                map["InitUsageTypeDesc"] = self.initUsageTypeDesc!
            }
            if self.objectKey != nil {
                map["ObjectKey"] = self.objectKey!
            }
            if self.osPlatform != nil {
                map["OsPlatform"] = self.osPlatform!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.securityChip != nil {
                map["SecurityChip"] = self.securityChip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanCreateDeviceId") {
                self.canCreateDeviceId = dict["CanCreateDeviceId"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceBrand") {
                self.deviceBrand = dict["DeviceBrand"] as! String
            }
            if dict.keys.contains("DeviceLogoUrl") {
                self.deviceLogoUrl = dict["DeviceLogoUrl"] as! String
            }
            if dict.keys.contains("DeviceModel") {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceModelId") {
                self.deviceModelId = dict["DeviceModelId"] as! Int64
            }
            if dict.keys.contains("DeviceName") {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("HardwareType") {
                self.hardwareType = dict["HardwareType"] as! String
            }
            if dict.keys.contains("InitUsageType") {
                self.initUsageType = dict["InitUsageType"] as! Int32
            }
            if dict.keys.contains("InitUsageTypeDesc") {
                self.initUsageTypeDesc = dict["InitUsageTypeDesc"] as! String
            }
            if dict.keys.contains("ObjectKey") {
                self.objectKey = dict["ObjectKey"] as! String
            }
            if dict.keys.contains("OsPlatform") {
                self.osPlatform = dict["OsPlatform"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("SecurityChip") {
                self.securityChip = dict["SecurityChip"] as! String
            }
        }
    }
    public var deviceModels: [ListDeviceModelsResponseBody.DeviceModels]?

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
        if self.deviceModels != nil {
            var tmp : [Any] = []
            for k in self.deviceModels! {
                tmp.append(k.toMap())
            }
            map["DeviceModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModels") {
            self.deviceModels = dict["DeviceModels"] as! [ListDeviceModelsResponseBody.DeviceModels]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDeviceModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceModelsResponseBody?

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
            var model = ListDeviceModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeviceTypesRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListDeviceTypesResponseBody : Tea.TeaModel {
    public class DeviceTypes : Tea.TeaModel {
        public var deviceType: String?

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
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var deviceTypes: [ListDeviceTypesResponseBody.DeviceTypes]?

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
        if self.deviceTypes != nil {
            var tmp : [Any] = []
            for k in self.deviceTypes! {
                tmp.append(k.toMap())
            }
            map["DeviceTypes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceTypes") {
            self.deviceTypes = dict["DeviceTypes"] as! [ListDeviceTypesResponseBody.DeviceTypes]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDeviceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceTypesResponseBody?

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
            var model = ListDeviceTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDevicesRequest : Tea.TeaModel {
    public var deviceModel: String?

    public var deviceModelId: Int32?

    public var length: String?

    public var projectId: String?

    public var start: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! Int32
        }
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! String
        }
    }
}

public class ListDevicesResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var deviceBrand: String?

        public var deviceId: String?

        public var deviceModel: String?

        public var deviceModelId: Int64?

        public var deviceType: String?

        public var hardwareId: String?

        public var macAddress: String?

        public var name: String?

        public var projectId: String?

        public var region: String?

        public var serialNumber: String?

        public var softwareId: String?

        public var status: String?

        public var usageType: Int32?

        public var usageTypeDesc: String?

        public var uuid: String?

        public var vin: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceBrand != nil {
                map["DeviceBrand"] = self.deviceBrand!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceModelId != nil {
                map["DeviceModelId"] = self.deviceModelId!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.hardwareId != nil {
                map["HardwareId"] = self.hardwareId!
            }
            if self.macAddress != nil {
                map["MacAddress"] = self.macAddress!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.softwareId != nil {
                map["SoftwareId"] = self.softwareId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.usageType != nil {
                map["UsageType"] = self.usageType!
            }
            if self.usageTypeDesc != nil {
                map["UsageTypeDesc"] = self.usageTypeDesc!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            if self.vin != nil {
                map["Vin"] = self.vin!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceBrand") {
                self.deviceBrand = dict["DeviceBrand"] as! String
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DeviceModel") {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceModelId") {
                self.deviceModelId = dict["DeviceModelId"] as! Int64
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("HardwareId") {
                self.hardwareId = dict["HardwareId"] as! String
            }
            if dict.keys.contains("MacAddress") {
                self.macAddress = dict["MacAddress"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("SoftwareId") {
                self.softwareId = dict["SoftwareId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UsageType") {
                self.usageType = dict["UsageType"] as! Int32
            }
            if dict.keys.contains("UsageTypeDesc") {
                self.usageTypeDesc = dict["UsageTypeDesc"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
            if dict.keys.contains("Vin") {
                self.vin = dict["Vin"] as! String
            }
        }
    }
    public var devices: [ListDevicesResponseBody.Devices]?

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
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Devices") {
            self.devices = dict["Devices"] as! [ListDevicesResponseBody.Devices]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = ListDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionExecuteLogRequest : Tea.TeaModel {
    public var env: Int32?

    public var fileId: Int64?

    public var functionName: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! Int32
        }
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("FunctionName") {
            self.functionName = dict["FunctionName"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListFunctionExecuteLogResponseBody : Tea.TeaModel {
    public class LogList : Tea.TeaModel {
        public class Logs : Tea.TeaModel {
            public var backEndRequestId: String?

            public var message: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backEndRequestId != nil {
                    map["BackEndRequestId"] = self.backEndRequestId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackEndRequestId") {
                    self.backEndRequestId = dict["BackEndRequestId"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var hasNextPage: Bool?

            public var pageIndex: Int32?

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
                if self.hasNextPage != nil {
                    map["HasNextPage"] = self.hasNextPage!
                }
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HasNextPage") {
                    self.hasNextPage = dict["HasNextPage"] as! Bool
                }
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
            }
        }
        public var logs: [ListFunctionExecuteLogResponseBody.LogList.Logs]?

        public var pagination: ListFunctionExecuteLogResponseBody.LogList.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logs != nil {
                var tmp : [Any] = []
                for k in self.logs! {
                    tmp.append(k.toMap())
                }
                map["Logs"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Logs") {
                self.logs = dict["Logs"] as! [ListFunctionExecuteLogResponseBody.LogList.Logs]
            }
            if dict.keys.contains("Pagination") {
                var model = ListFunctionExecuteLogResponseBody.LogList.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var logList: ListFunctionExecuteLogResponseBody.LogList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logList != nil {
            map["LogList"] = self.logList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogList") {
            var model = ListFunctionExecuteLogResponseBody.LogList()
            model.fromMap(dict["LogList"] as! [String: Any])
            self.logList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFunctionExecuteLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionExecuteLogResponseBody?

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
            var model = ListFunctionExecuteLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionFilesRequest : Tea.TeaModel {
    public var fileType: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileType") {
            self.fileType = dict["FileType"] as! Int32
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListFunctionFilesResponseBody : Tea.TeaModel {
    public class FileList : Tea.TeaModel {
        public class Files : Tea.TeaModel {
            public var contentId: Int64?

            public var description_: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: Int64?

            public var name: String?

            public var productionDeployStatus: Int32?

            public var productionDeployTime: Int64?

            public var sandboxDeployStatus: Int32?

            public var sandboxDeployTime: Int64?

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
                if self.contentId != nil {
                    map["ContentId"] = self.contentId!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.productionDeployStatus != nil {
                    map["ProductionDeployStatus"] = self.productionDeployStatus!
                }
                if self.productionDeployTime != nil {
                    map["ProductionDeployTime"] = self.productionDeployTime!
                }
                if self.sandboxDeployStatus != nil {
                    map["SandboxDeployStatus"] = self.sandboxDeployStatus!
                }
                if self.sandboxDeployTime != nil {
                    map["SandboxDeployTime"] = self.sandboxDeployTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ContentId") {
                    self.contentId = dict["ContentId"] as! Int64
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
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
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ProductionDeployStatus") {
                    self.productionDeployStatus = dict["ProductionDeployStatus"] as! Int32
                }
                if dict.keys.contains("ProductionDeployTime") {
                    self.productionDeployTime = dict["ProductionDeployTime"] as! Int64
                }
                if dict.keys.contains("SandboxDeployStatus") {
                    self.sandboxDeployStatus = dict["SandboxDeployStatus"] as! Int32
                }
                if dict.keys.contains("SandboxDeployTime") {
                    self.sandboxDeployTime = dict["SandboxDeployTime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public var files: [ListFunctionFilesResponseBody.FileList.Files]?

        public var pagination: ListFunctionFilesResponseBody.FileList.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.files != nil {
                var tmp : [Any] = []
                for k in self.files! {
                    tmp.append(k.toMap())
                }
                map["Files"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Files") {
                self.files = dict["Files"] as! [ListFunctionFilesResponseBody.FileList.Files]
            }
            if dict.keys.contains("Pagination") {
                var model = ListFunctionFilesResponseBody.FileList.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var fileList: ListFunctionFilesResponseBody.FileList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.fileList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileList != nil {
            map["FileList"] = self.fileList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileList") {
            var model = ListFunctionFilesResponseBody.FileList()
            model.fromMap(dict["FileList"] as! [String: Any])
            self.fileList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFunctionFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionFilesResponseBody?

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
            var model = ListFunctionFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionFilesByProjectIdRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListFunctionFilesByProjectIdResponseBody : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var contentId: Int64?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var name: String?

        public var status: Int32?

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
            if self.contentId != nil {
                map["ContentId"] = self.contentId!
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContentId") {
                self.contentId = dict["ContentId"] as! Int64
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
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var files: [ListFunctionFilesByProjectIdResponseBody.Files]?

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
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [ListFunctionFilesByProjectIdResponseBody.Files]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFunctionFilesByProjectIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionFilesByProjectIdResponseBody?

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
            var model = ListFunctionFilesByProjectIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMessageAcksRequest : Tea.TeaModel {
    public var deviceId: String?

    public var messageId: Int64?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! Int64
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListMessageAcksResponseBody : Tea.TeaModel {
    public class MessageAcks : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var ackTime: Int64?

            public var deviceId: String?

            public var mid: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ackTime != nil {
                    map["AckTime"] = self.ackTime!
                }
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                if self.mid != nil {
                    map["Mid"] = self.mid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AckTime") {
                    self.ackTime = dict["AckTime"] as! Int64
                }
                if dict.keys.contains("DeviceId") {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("Mid") {
                    self.mid = dict["Mid"] as! Int64
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public var list: [ListMessageAcksResponseBody.MessageAcks.List]?

        public var pagination: ListMessageAcksResponseBody.MessageAcks.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
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
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListMessageAcksResponseBody.MessageAcks.List]
            }
            if dict.keys.contains("Pagination") {
                var model = ListMessageAcksResponseBody.MessageAcks.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var messageAcks: ListMessageAcksResponseBody.MessageAcks?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.messageAcks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageAcks != nil {
            map["MessageAcks"] = self.messageAcks?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageAcks") {
            var model = ListMessageAcksResponseBody.MessageAcks()
            model.fromMap(dict["MessageAcks"] as! [String: Any])
            self.messageAcks = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListMessageAcksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMessageAcksResponseBody?

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
            var model = ListMessageAcksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMessageReceiversRequest : Tea.TeaModel {
    public var messageId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListMessageReceiversResponseBody : Tea.TeaModel {
    public class MessageReceivers : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var mid: Int64?

            public var type: String?

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
                if self.mid != nil {
                    map["Mid"] = self.mid!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Mid") {
                    self.mid = dict["Mid"] as! Int64
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public var list: [ListMessageReceiversResponseBody.MessageReceivers.List]?

        public var pagination: ListMessageReceiversResponseBody.MessageReceivers.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
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
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListMessageReceiversResponseBody.MessageReceivers.List]
            }
            if dict.keys.contains("Pagination") {
                var model = ListMessageReceiversResponseBody.MessageReceivers.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var messageReceivers: ListMessageReceiversResponseBody.MessageReceivers?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.messageReceivers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageReceivers != nil {
            map["MessageReceivers"] = self.messageReceivers?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageReceivers") {
            var model = ListMessageReceiversResponseBody.MessageReceivers()
            model.fromMap(dict["MessageReceivers"] as! [String: Any])
            self.messageReceivers = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListMessageReceiversResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMessageReceiversResponseBody?

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
            var model = ListMessageReceiversResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNamespacesRequest : Tea.TeaModel {
    public var authType: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthType") {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListNamespacesResponseBody : Tea.TeaModel {
    public class Namespaces : Tea.TeaModel {
        public var authType: Int32?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var name: String?

        public var namespace: String?

        public var projectId: String?

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
            if self.authType != nil {
                map["AuthType"] = self.authType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthType") {
                self.authType = dict["AuthType"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Namespace") {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var namespaces: [ListNamespacesResponseBody.Namespaces]?

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
        if self.namespaces != nil {
            var tmp : [Any] = []
            for k in self.namespaces! {
                tmp.append(k.toMap())
            }
            map["Namespaces"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespaces") {
            self.namespaces = dict["Namespaces"] as! [ListNamespacesResponseBody.Namespaces]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListNamespacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNamespacesResponseBody?

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
            var model = ListNamespacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOfflineMessagesRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var type: String?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class ListOfflineMessagesResponseBody : Tea.TeaModel {
    public class OfflineMessages : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var expiredTime: Int64?

            public var gmtCreate: Int64?

            public var mid: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.mid != nil {
                    map["Mid"] = self.mid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! Int64
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("Mid") {
                    self.mid = dict["Mid"] as! Int64
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public var list: [ListOfflineMessagesResponseBody.OfflineMessages.List]?

        public var pagination: ListOfflineMessagesResponseBody.OfflineMessages.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
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
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListOfflineMessagesResponseBody.OfflineMessages.List]
            }
            if dict.keys.contains("Pagination") {
                var model = ListOfflineMessagesResponseBody.OfflineMessages.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var offlineMessages: ListOfflineMessagesResponseBody.OfflineMessages?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.offlineMessages?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.offlineMessages != nil {
            map["OfflineMessages"] = self.offlineMessages?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OfflineMessages") {
            var model = ListOfflineMessagesResponseBody.OfflineMessages()
            model.fromMap(dict["OfflineMessages"] as! [String: Any])
            self.offlineMessages = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListOfflineMessagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOfflineMessagesResponseBody?

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
            var model = ListOfflineMessagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOpenAccountLinksRequest : Tea.TeaModel {
    public var identityId: String?

    public var idp: String?

    public var openId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityId != nil {
            map["IdentityId"] = self.identityId!
        }
        if self.idp != nil {
            map["Idp"] = self.idp!
        }
        if self.openId != nil {
            map["OpenId"] = self.openId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentityId") {
            self.identityId = dict["IdentityId"] as! String
        }
        if dict.keys.contains("Idp") {
            self.idp = dict["Idp"] as! String
        }
        if dict.keys.contains("OpenId") {
            self.openId = dict["OpenId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListOpenAccountLinksResponseBody : Tea.TeaModel {
    public class OpenAccounts : Tea.TeaModel {
        public var aliyunId: String?

        public var createAccessKey: String?

        public var displayName: String?

        public var identityId: String?

        public var idp: String?

        public var loginId: String?

        public var mobile: String?

        public var openId: String?

        public var region: String?

        public var status: Int32?

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
            if self.aliyunId != nil {
                map["AliyunId"] = self.aliyunId!
            }
            if self.createAccessKey != nil {
                map["CreateAccessKey"] = self.createAccessKey!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.identityId != nil {
                map["IdentityId"] = self.identityId!
            }
            if self.idp != nil {
                map["Idp"] = self.idp!
            }
            if self.loginId != nil {
                map["LoginId"] = self.loginId!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.openId != nil {
                map["OpenId"] = self.openId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunId") {
                self.aliyunId = dict["AliyunId"] as! String
            }
            if dict.keys.contains("CreateAccessKey") {
                self.createAccessKey = dict["CreateAccessKey"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("IdentityId") {
                self.identityId = dict["IdentityId"] as! String
            }
            if dict.keys.contains("Idp") {
                self.idp = dict["Idp"] as! String
            }
            if dict.keys.contains("LoginId") {
                self.loginId = dict["LoginId"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("OpenId") {
                self.openId = dict["OpenId"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var openAccounts: [ListOpenAccountLinksResponseBody.OpenAccounts]?

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
        if self.openAccounts != nil {
            var tmp : [Any] = []
            for k in self.openAccounts! {
                tmp.append(k.toMap())
            }
            map["OpenAccounts"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpenAccounts") {
            self.openAccounts = dict["OpenAccounts"] as! [ListOpenAccountLinksResponseBody.OpenAccounts]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListOpenAccountLinksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOpenAccountLinksResponseBody?

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
            var model = ListOpenAccountLinksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOpenAccountsRequest : Tea.TeaModel {
    public var displayName: String?

    public var email: String?

    public var length: Int32?

    public var mobile: String?

    public var projectId: String?

    public var start: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! Int32
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! Int32
        }
    }
}

public class ListOpenAccountsResponseBody : Tea.TeaModel {
    public class OpenAccounts : Tea.TeaModel {
        public var aliyunId: String?

        public var createAccessKey: String?

        public var displayName: String?

        public var identityId: String?

        public var idp: String?

        public var loginId: String?

        public var mobile: String?

        public var openId: String?

        public var region: String?

        public var status: Int32?

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
            if self.aliyunId != nil {
                map["AliyunId"] = self.aliyunId!
            }
            if self.createAccessKey != nil {
                map["CreateAccessKey"] = self.createAccessKey!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.identityId != nil {
                map["IdentityId"] = self.identityId!
            }
            if self.idp != nil {
                map["Idp"] = self.idp!
            }
            if self.loginId != nil {
                map["LoginId"] = self.loginId!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.openId != nil {
                map["OpenId"] = self.openId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunId") {
                self.aliyunId = dict["AliyunId"] as! String
            }
            if dict.keys.contains("CreateAccessKey") {
                self.createAccessKey = dict["CreateAccessKey"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("IdentityId") {
                self.identityId = dict["IdentityId"] as! String
            }
            if dict.keys.contains("Idp") {
                self.idp = dict["Idp"] as! String
            }
            if dict.keys.contains("LoginId") {
                self.loginId = dict["LoginId"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("OpenId") {
                self.openId = dict["OpenId"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var openAccounts: [ListOpenAccountsResponseBody.OpenAccounts]?

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
        if self.openAccounts != nil {
            var tmp : [Any] = []
            for k in self.openAccounts! {
                tmp.append(k.toMap())
            }
            map["OpenAccounts"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpenAccounts") {
            self.openAccounts = dict["OpenAccounts"] as! [ListOpenAccountsResponseBody.OpenAccounts]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListOpenAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOpenAccountsResponseBody?

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
            var model = ListOpenAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPreChecksResponseBody : Tea.TeaModel {
    public class PreChecks : Tea.TeaModel {
        public var key: String?

        public var link: String?

        public var price: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.link != nil {
                map["Link"] = self.link!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Link") {
                self.link = dict["Link"] as! String
            }
            if dict.keys.contains("Price") {
                self.price = dict["Price"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var preChecks: [ListPreChecksResponseBody.PreChecks]?

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
        if self.preChecks != nil {
            var tmp : [Any] = []
            for k in self.preChecks! {
                tmp.append(k.toMap())
            }
            map["PreChecks"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PreChecks") {
            self.preChecks = dict["PreChecks"] as! [ListPreChecksResponseBody.PreChecks]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPreChecksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPreChecksResponseBody?

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
            var model = ListPreChecksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectAppsRequest : Tea.TeaModel {
    public var keywords: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keywords") {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListProjectAppsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ProjectApps : Tea.TeaModel {
            public var appId: String?

            public var appKey: String?

            public var appName: String?

            public var appPkgName: String?

            public var appSecret: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: Int64?

            public var osType: Int32?

            public var projectId: String?

            public var status: Int32?

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
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appPkgName != nil {
                    map["AppPkgName"] = self.appPkgName!
                }
                if self.appSecret != nil {
                    map["AppSecret"] = self.appSecret!
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
                if self.osType != nil {
                    map["OsType"] = self.osType!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
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
                if dict.keys.contains("AppKey") {
                    self.appKey = dict["AppKey"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppPkgName") {
                    self.appPkgName = dict["AppPkgName"] as! String
                }
                if dict.keys.contains("AppSecret") {
                    self.appSecret = dict["AppSecret"] as! String
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
                if dict.keys.contains("OsType") {
                    self.osType = dict["OsType"] as! Int32
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var projectApps: [ListProjectAppsResponseBody.Result.ProjectApps]?

        public var totalCount: Int32?

        public var totalPage: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.projectApps != nil {
                var tmp : [Any] = []
                for k in self.projectApps! {
                    tmp.append(k.toMap())
                }
                map["ProjectApps"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProjectApps") {
                self.projectApps = dict["ProjectApps"] as! [ListProjectAppsResponseBody.Result.ProjectApps]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("TotalPage") {
                self.totalPage = dict["TotalPage"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: ListProjectAppsResponseBody.Result?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListProjectAppsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListProjectAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectAppsResponseBody?

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
            var model = ListProjectAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class Projects : Tea.TeaModel {
        public var creator: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var name: String?

        public var projectId: String?

        public var status: Int32?

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
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
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
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var projects: [ListProjectsResponseBody.Projects]?

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
        if self.projects != nil {
            var tmp : [Any] = []
            for k in self.projects! {
                tmp.append(k.toMap())
            }
            map["Projects"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Projects") {
            self.projects = dict["Projects"] as! [ListProjectsResponseBody.Projects]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

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
            var model = ListProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRpcServicesRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListRpcServicesResponseBody : Tea.TeaModel {
    public class RpcServices : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var appKey: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var groupName: String?

            public var id: Int64?

            public var interfaceName: String?

            public var isDelete: String?

            public var methodName: String?

            public var params: String?

            public var type: String?

            public var versionCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.interfaceName != nil {
                    map["InterfaceName"] = self.interfaceName!
                }
                if self.isDelete != nil {
                    map["IsDelete"] = self.isDelete!
                }
                if self.methodName != nil {
                    map["MethodName"] = self.methodName!
                }
                if self.params != nil {
                    map["Params"] = self.params!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.versionCode != nil {
                    map["VersionCode"] = self.versionCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppKey") {
                    self.appKey = dict["AppKey"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("InterfaceName") {
                    self.interfaceName = dict["InterfaceName"] as! String
                }
                if dict.keys.contains("IsDelete") {
                    self.isDelete = dict["IsDelete"] as! String
                }
                if dict.keys.contains("MethodName") {
                    self.methodName = dict["MethodName"] as! String
                }
                if dict.keys.contains("Params") {
                    self.params = dict["Params"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("VersionCode") {
                    self.versionCode = dict["VersionCode"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public var list: [ListRpcServicesResponseBody.RpcServices.List]?

        public var pagination: ListRpcServicesResponseBody.RpcServices.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
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
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListRpcServicesResponseBody.RpcServices.List]
            }
            if dict.keys.contains("Pagination") {
                var model = ListRpcServicesResponseBody.RpcServices.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var rpcServices: ListRpcServicesResponseBody.RpcServices?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rpcServices?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rpcServices != nil {
            map["RpcServices"] = self.rpcServices?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RpcServices") {
            var model = ListRpcServicesResponseBody.RpcServices()
            model.fromMap(dict["RpcServices"] as! [String: Any])
            self.rpcServices = model
        }
    }
}

public class ListRpcServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRpcServicesResponseBody?

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
            var model = ListRpcServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSchemaSubscribesRequest : Tea.TeaModel {
    public var deviceModel: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListSchemaSubscribesResponseBody : Tea.TeaModel {
    public class PageList : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var deviceModel: String?

            public var deviceModelId: Int64?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: Int64?

            public var namespace: String?

            public var projectId: String?

            public var validitySchema: String?

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
                if self.deviceModel != nil {
                    map["DeviceModel"] = self.deviceModel!
                }
                if self.deviceModelId != nil {
                    map["DeviceModelId"] = self.deviceModelId!
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
                if self.namespace != nil {
                    map["Namespace"] = self.namespace!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.validitySchema != nil {
                    map["ValiditySchema"] = self.validitySchema!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceModel") {
                    self.deviceModel = dict["DeviceModel"] as! String
                }
                if dict.keys.contains("DeviceModelId") {
                    self.deviceModelId = dict["DeviceModelId"] as! Int64
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
                if dict.keys.contains("Namespace") {
                    self.namespace = dict["Namespace"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("ValiditySchema") {
                    self.validitySchema = dict["ValiditySchema"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var hasNextPage: Bool?

            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var simpleSign: Bool?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hasNextPage != nil {
                    map["HasNextPage"] = self.hasNextPage!
                }
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.simpleSign != nil {
                    map["SimpleSign"] = self.simpleSign!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HasNextPage") {
                    self.hasNextPage = dict["HasNextPage"] as! Bool
                }
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("SimpleSign") {
                    self.simpleSign = dict["SimpleSign"] as! Bool
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public var list: [ListSchemaSubscribesResponseBody.PageList.List]?

        public var pagination: ListSchemaSubscribesResponseBody.PageList.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
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
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListSchemaSubscribesResponseBody.PageList.List]
            }
            if dict.keys.contains("Pagination") {
                var model = ListSchemaSubscribesResponseBody.PageList.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var pageList: [ListSchemaSubscribesResponseBody.PageList]?

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
        if self.pageList != nil {
            var tmp : [Any] = []
            for k in self.pageList! {
                tmp.append(k.toMap())
            }
            map["PageList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageList") {
            self.pageList = dict["PageList"] as! [ListSchemaSubscribesResponseBody.PageList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListSchemaSubscribesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSchemaSubscribesResponseBody?

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
            var model = ListSchemaSubscribesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServicesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceList: [String]?

    public override init() {
        super.init()
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
        if self.serviceList != nil {
            map["ServiceList"] = self.serviceList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceList") {
            self.serviceList = dict["ServiceList"] as! [String]
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServicesResponseBody?

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
            var model = ListServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListShadowSchemaDeviceModelsRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListShadowSchemaDeviceModelsResponseBody : Tea.TeaModel {
    public class ModelList : Tea.TeaModel {
        public var canCreateDeviceId: Int32?

        public var description_: String?

        public var deviceBrand: String?

        public var deviceModel: String?

        public var deviceModelId: Int64?

        public var deviceType: String?

        public var hardwareType: String?

        public var initUsageType: Int32?

        public var initUsageTypeDesc: String?

        public var osPlatform: String?

        public var projectId: String?

        public var securityChip: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canCreateDeviceId != nil {
                map["CanCreateDeviceId"] = self.canCreateDeviceId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceBrand != nil {
                map["DeviceBrand"] = self.deviceBrand!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceModelId != nil {
                map["DeviceModelId"] = self.deviceModelId!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.hardwareType != nil {
                map["HardwareType"] = self.hardwareType!
            }
            if self.initUsageType != nil {
                map["InitUsageType"] = self.initUsageType!
            }
            if self.initUsageTypeDesc != nil {
                map["InitUsageTypeDesc"] = self.initUsageTypeDesc!
            }
            if self.osPlatform != nil {
                map["OsPlatform"] = self.osPlatform!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.securityChip != nil {
                map["SecurityChip"] = self.securityChip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanCreateDeviceId") {
                self.canCreateDeviceId = dict["CanCreateDeviceId"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceBrand") {
                self.deviceBrand = dict["DeviceBrand"] as! String
            }
            if dict.keys.contains("DeviceModel") {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceModelId") {
                self.deviceModelId = dict["DeviceModelId"] as! Int64
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("HardwareType") {
                self.hardwareType = dict["HardwareType"] as! String
            }
            if dict.keys.contains("InitUsageType") {
                self.initUsageType = dict["InitUsageType"] as! Int32
            }
            if dict.keys.contains("InitUsageTypeDesc") {
                self.initUsageTypeDesc = dict["InitUsageTypeDesc"] as! String
            }
            if dict.keys.contains("OsPlatform") {
                self.osPlatform = dict["OsPlatform"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("SecurityChip") {
                self.securityChip = dict["SecurityChip"] as! Int32
            }
        }
    }
    public var modelList: [ListShadowSchemaDeviceModelsResponseBody.ModelList]?

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
        if self.modelList != nil {
            var tmp : [Any] = []
            for k in self.modelList! {
                tmp.append(k.toMap())
            }
            map["ModelList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelList") {
            self.modelList = dict["ModelList"] as! [ListShadowSchemaDeviceModelsResponseBody.ModelList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListShadowSchemaDeviceModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListShadowSchemaDeviceModelsResponseBody?

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
            var model = ListShadowSchemaDeviceModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListShadowSchemasRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var queryType: String?

    public var queryValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.queryValue != nil {
            map["QueryValue"] = self.queryValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("QueryValue") {
            self.queryValue = dict["QueryValue"] as! String
        }
    }
}

public class ListShadowSchemasResponseBody : Tea.TeaModel {
    public class PageList : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var authType: Int32?

            public var authTypeDesc: String?

            public var deviceModel: String?

            public var deviceModelId: Int64?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: Int64?

            public var moduleSchema: String?

            public var namespace: String?

            public var projectId: String?

            public override init() {
                super.init()
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
                if self.authTypeDesc != nil {
                    map["AuthTypeDesc"] = self.authTypeDesc!
                }
                if self.deviceModel != nil {
                    map["DeviceModel"] = self.deviceModel!
                }
                if self.deviceModelId != nil {
                    map["DeviceModelId"] = self.deviceModelId!
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
                if self.moduleSchema != nil {
                    map["ModuleSchema"] = self.moduleSchema!
                }
                if self.namespace != nil {
                    map["Namespace"] = self.namespace!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthType") {
                    self.authType = dict["AuthType"] as! Int32
                }
                if dict.keys.contains("AuthTypeDesc") {
                    self.authTypeDesc = dict["AuthTypeDesc"] as! String
                }
                if dict.keys.contains("DeviceModel") {
                    self.deviceModel = dict["DeviceModel"] as! String
                }
                if dict.keys.contains("DeviceModelId") {
                    self.deviceModelId = dict["DeviceModelId"] as! Int64
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
                if dict.keys.contains("ModuleSchema") {
                    self.moduleSchema = dict["ModuleSchema"] as! String
                }
                if dict.keys.contains("Namespace") {
                    self.namespace = dict["Namespace"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var hasNextPage: Bool?

            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var simpleSign: Bool?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hasNextPage != nil {
                    map["HasNextPage"] = self.hasNextPage!
                }
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.simpleSign != nil {
                    map["SimpleSign"] = self.simpleSign!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HasNextPage") {
                    self.hasNextPage = dict["HasNextPage"] as! Bool
                }
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("SimpleSign") {
                    self.simpleSign = dict["SimpleSign"] as! Bool
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public var list: [ListShadowSchemasResponseBody.PageList.List]?

        public var pagination: ListShadowSchemasResponseBody.PageList.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
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
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListShadowSchemasResponseBody.PageList.List]
            }
            if dict.keys.contains("Pagination") {
                var model = ListShadowSchemasResponseBody.PageList.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var pageList: ListShadowSchemasResponseBody.PageList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageList != nil {
            map["PageList"] = self.pageList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageList") {
            var model = ListShadowSchemasResponseBody.PageList()
            model.fromMap(dict["PageList"] as! [String: Any])
            self.pageList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListShadowSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListShadowSchemasResponseBody?

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
            var model = ListShadowSchemasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSupportFeaturesResponseBody : Tea.TeaModel {
    public class SupportFeatures : Tea.TeaModel {
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
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var requestId: String?

    public var supportFeatures: [ListSupportFeaturesResponseBody.SupportFeatures]?

    public override init() {
        super.init()
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
        if self.supportFeatures != nil {
            var tmp : [Any] = []
            for k in self.supportFeatures! {
                tmp.append(k.toMap())
            }
            map["SupportFeatures"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SupportFeatures") {
            self.supportFeatures = dict["SupportFeatures"] as! [ListSupportFeaturesResponseBody.SupportFeatures]
        }
    }
}

public class ListSupportFeaturesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSupportFeaturesResponseBody?

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
            var model = ListSupportFeaturesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTriggersRequest : Tea.TeaModel {
    public var namespace: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListTriggersResponseBody : Tea.TeaModel {
    public class TriggerList : Tea.TeaModel {
        public class Pagination : Tea.TeaModel {
            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public class Triggers : Tea.TeaModel {
            public class Functions : Tea.TeaModel {
                public var fileId: Int64?

                public var fileName: String?

                public var gmtCreate: Int64?

                public var gmtModified: Int64?

                public var id: Int64?

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
                    if self.fileId != nil {
                        map["FileId"] = self.fileId!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FileId") {
                        self.fileId = dict["FileId"] as! Int64
                    }
                    if dict.keys.contains("FileName") {
                        self.fileName = dict["FileName"] as! String
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
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var chainedFunctionIds: String?

            public var functions: [ListTriggersResponseBody.TriggerList.Triggers.Functions]?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: Int64?

            public var invocationMode: Int32?

            public var namespace: String?

            public var production: Int32?

            public var sandbox: Int32?

            public var source: String?

            public var status: Int32?

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
                if self.chainedFunctionIds != nil {
                    map["ChainedFunctionIds"] = self.chainedFunctionIds!
                }
                if self.functions != nil {
                    var tmp : [Any] = []
                    for k in self.functions! {
                        tmp.append(k.toMap())
                    }
                    map["Functions"] = tmp
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
                if self.invocationMode != nil {
                    map["InvocationMode"] = self.invocationMode!
                }
                if self.namespace != nil {
                    map["Namespace"] = self.namespace!
                }
                if self.production != nil {
                    map["Production"] = self.production!
                }
                if self.sandbox != nil {
                    map["Sandbox"] = self.sandbox!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChainedFunctionIds") {
                    self.chainedFunctionIds = dict["ChainedFunctionIds"] as! String
                }
                if dict.keys.contains("Functions") {
                    self.functions = dict["Functions"] as! [ListTriggersResponseBody.TriggerList.Triggers.Functions]
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
                if dict.keys.contains("InvocationMode") {
                    self.invocationMode = dict["InvocationMode"] as! Int32
                }
                if dict.keys.contains("Namespace") {
                    self.namespace = dict["Namespace"] as! String
                }
                if dict.keys.contains("Production") {
                    self.production = dict["Production"] as! Int32
                }
                if dict.keys.contains("Sandbox") {
                    self.sandbox = dict["Sandbox"] as! Int32
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! Int32
                }
            }
        }
        public var pagination: ListTriggersResponseBody.TriggerList.Pagination?

        public var triggers: [ListTriggersResponseBody.TriggerList.Triggers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            if self.triggers != nil {
                var tmp : [Any] = []
                for k in self.triggers! {
                    tmp.append(k.toMap())
                }
                map["Triggers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Pagination") {
                var model = ListTriggersResponseBody.TriggerList.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
            if dict.keys.contains("Triggers") {
                self.triggers = dict["Triggers"] as! [ListTriggersResponseBody.TriggerList.Triggers]
            }
        }
    }
    public var requestId: String?

    public var triggerList: ListTriggersResponseBody.TriggerList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.triggerList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.triggerList != nil {
            map["TriggerList"] = self.triggerList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TriggerList") {
            var model = ListTriggersResponseBody.TriggerList()
            model.fromMap(dict["TriggerList"] as! [String: Any])
            self.triggerList = model
        }
    }
}

public class ListTriggersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTriggersResponseBody?

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
            var model = ListTriggersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUpstreamAppKeyRelationsRequest : Tea.TeaModel {
    public var appServerId: Int64?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appServerId != nil {
            map["AppServerId"] = self.appServerId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppServerId") {
            self.appServerId = dict["AppServerId"] as! Int64
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListUpstreamAppKeyRelationsResponseBody : Tea.TeaModel {
    public class RelationList : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var appKey: String?

            public var appName: String?

            public var appPackage: String?

            public var gmtCreate: Int64?

            public var id: Int64?

            public var PAppKey: String?

            public var projectId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appPackage != nil {
                    map["AppPackage"] = self.appPackage!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.PAppKey != nil {
                    map["PAppKey"] = self.PAppKey!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppKey") {
                    self.appKey = dict["AppKey"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppPackage") {
                    self.appPackage = dict["AppPackage"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("PAppKey") {
                    self.PAppKey = dict["PAppKey"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public var list: [ListUpstreamAppKeyRelationsResponseBody.RelationList.List]?

        public var pagination: ListUpstreamAppKeyRelationsResponseBody.RelationList.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
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
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListUpstreamAppKeyRelationsResponseBody.RelationList.List]
            }
            if dict.keys.contains("Pagination") {
                var model = ListUpstreamAppKeyRelationsResponseBody.RelationList.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var relationList: ListUpstreamAppKeyRelationsResponseBody.RelationList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.relationList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.relationList != nil {
            map["RelationList"] = self.relationList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RelationList") {
            var model = ListUpstreamAppKeyRelationsResponseBody.RelationList()
            model.fromMap(dict["RelationList"] as! [String: Any])
            self.relationList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUpstreamAppKeyRelationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUpstreamAppKeyRelationsResponseBody?

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
            var model = ListUpstreamAppKeyRelationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUpstreamAppServersRequest : Tea.TeaModel {
    public var pageIndex: String?

    public var pageSize: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListUpstreamAppServersResponseBody : Tea.TeaModel {
    public class AppServers : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: Int64?

            public var name: String?

            public var PAppKey: String?

            public var projectId: String?

            public var queueNameList: String?

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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.PAppKey != nil {
                    map["PAppKey"] = self.PAppKey!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.queueNameList != nil {
                    map["QueueNameList"] = self.queueNameList!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PAppKey") {
                    self.PAppKey = dict["PAppKey"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("QueueNameList") {
                    self.queueNameList = dict["QueueNameList"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var pageIndex: Int32?

            public var pageSize: Int32?

            public var totalCount: Int32?

            public var totalPageCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pageIndex != nil {
                    map["PageIndex"] = self.pageIndex!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.totalPageCount != nil {
                    map["TotalPageCount"] = self.totalPageCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PageIndex") {
                    self.pageIndex = dict["PageIndex"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("TotalPageCount") {
                    self.totalPageCount = dict["TotalPageCount"] as! Int32
                }
            }
        }
        public var list: [ListUpstreamAppServersResponseBody.AppServers.List]?

        public var pagination: ListUpstreamAppServersResponseBody.AppServers.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
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
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListUpstreamAppServersResponseBody.AppServers.List]
            }
            if dict.keys.contains("Pagination") {
                var model = ListUpstreamAppServersResponseBody.AppServers.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var appServers: ListUpstreamAppServersResponseBody.AppServers?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appServers != nil {
            map["AppServers"] = self.appServers?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppServers") {
            var model = ListUpstreamAppServersResponseBody.AppServers()
            model.fromMap(dict["AppServers"] as! [String: Any])
            self.appServers = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUpstreamAppServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUpstreamAppServersResponseBody?

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
            var model = ListUpstreamAppServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVersionDeviceGroupsRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListVersionDeviceGroupsResponseBody : Tea.TeaModel {
    public class DeviceGroupList : Tea.TeaModel {
        public var description_: String?

        public var gmtCreate: String?

        public var gmtModify: String?

        public var id: String?

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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModify != nil {
                map["GmtModify"] = self.gmtModify!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModify") {
                self.gmtModify = dict["GmtModify"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var deviceGroupList: [ListVersionDeviceGroupsResponseBody.DeviceGroupList]?

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
        if self.deviceGroupList != nil {
            var tmp : [Any] = []
            for k in self.deviceGroupList! {
                tmp.append(k.toMap())
            }
            map["DeviceGroupList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceGroupList") {
            self.deviceGroupList = dict["DeviceGroupList"] as! [ListVersionDeviceGroupsResponseBody.DeviceGroupList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListVersionDeviceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVersionDeviceGroupsResponseBody?

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
            var model = ListVersionDeviceGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishAppVersionRequest : Tea.TeaModel {
    public var projectId: String?

    public var sendMessage: Bool?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sendMessage != nil {
            map["SendMessage"] = self.sendMessage!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SendMessage") {
            self.sendMessage = dict["SendMessage"] as! Bool
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class PublishAppVersionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PublishAppVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishAppVersionResponseBody?

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
            var model = PublishAppVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishOsVersionRequest : Tea.TeaModel {
    public var projectId: String?

    public var sendMessage: Bool?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sendMessage != nil {
            map["SendMessage"] = self.sendMessage!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SendMessage") {
            self.sendMessage = dict["SendMessage"] as! Bool
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class PublishOsVersionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PublishOsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishOsVersionResponseBody?

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
            var model = PublishOsVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushMessageRequest : Tea.TeaModel {
    public var act: String?

    public var appKey: String?

    public var appPackage: String?

    public var customContent: String?

    public var desc: String?

    public var expiredTime: Int64?

    public var pkgContent: String?

    public var projectId: String?

    public var receiverType: String?

    public var receiverValues: String?

    public var title: String?

    public var type: Int32?

    public var uri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.act != nil {
            map["Act"] = self.act!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.appPackage != nil {
            map["AppPackage"] = self.appPackage!
        }
        if self.customContent != nil {
            map["CustomContent"] = self.customContent!
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.pkgContent != nil {
            map["PkgContent"] = self.pkgContent!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.receiverType != nil {
            map["ReceiverType"] = self.receiverType!
        }
        if self.receiverValues != nil {
            map["ReceiverValues"] = self.receiverValues!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Act") {
            self.act = dict["Act"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("AppPackage") {
            self.appPackage = dict["AppPackage"] as! String
        }
        if dict.keys.contains("CustomContent") {
            self.customContent = dict["CustomContent"] as! String
        }
        if dict.keys.contains("Desc") {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! Int64
        }
        if dict.keys.contains("PkgContent") {
            self.pkgContent = dict["PkgContent"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ReceiverType") {
            self.receiverType = dict["ReceiverType"] as! String
        }
        if dict.keys.contains("ReceiverValues") {
            self.receiverValues = dict["ReceiverValues"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
        }
    }
}

public class PushMessageResponseBody : Tea.TeaModel {
    public var mid: Int64?

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
        if self.mid != nil {
            map["Mid"] = self.mid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Mid") {
            self.mid = dict["Mid"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PushMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushMessageResponseBody?

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
            var model = PushMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushVersionMessageRequest : Tea.TeaModel {
    public var projectId: String?

    public var versionId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionType != nil {
            map["VersionType"] = self.versionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionType") {
            self.versionType = dict["VersionType"] as! String
        }
    }
}

public class PushVersionMessageResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PushVersionMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushVersionMessageResponseBody?

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
            var model = PushVersionMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPrepublishPassedDeviceCountRequest : Tea.TeaModel {
    public var prepublishId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prepublishId != nil {
            map["PrepublishId"] = self.prepublishId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrepublishId") {
            self.prepublishId = dict["PrepublishId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class QueryPrepublishPassedDeviceCountResponseBody : Tea.TeaModel {
    public var count: Int32?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryPrepublishPassedDeviceCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPrepublishPassedDeviceCountResponseBody?

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
            var model = QueryPrepublishPassedDeviceCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitAssistReportRequest : Tea.TeaModel {
    public var assistDescription: String?

    public var assistId: String?

    public var assistReason: String?

    public var assistResult: String?

    public var assistTag: String?

    public var deviceModel: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assistDescription != nil {
            map["AssistDescription"] = self.assistDescription!
        }
        if self.assistId != nil {
            map["AssistId"] = self.assistId!
        }
        if self.assistReason != nil {
            map["AssistReason"] = self.assistReason!
        }
        if self.assistResult != nil {
            map["AssistResult"] = self.assistResult!
        }
        if self.assistTag != nil {
            map["AssistTag"] = self.assistTag!
        }
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssistDescription") {
            self.assistDescription = dict["AssistDescription"] as! String
        }
        if dict.keys.contains("AssistId") {
            self.assistId = dict["AssistId"] as! String
        }
        if dict.keys.contains("AssistReason") {
            self.assistReason = dict["AssistReason"] as! String
        }
        if dict.keys.contains("AssistResult") {
            self.assistResult = dict["AssistResult"] as! String
        }
        if dict.keys.contains("AssistTag") {
            self.assistTag = dict["AssistTag"] as! String
        }
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class SubmitAssistReportResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitAssistReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitAssistReportResponseBody?

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
            var model = SubmitAssistReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApiGatewayAppStatusRequest : Tea.TeaModel {
    public var gatewayAppId: String?

    public var projectId: String?

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
        if self.gatewayAppId != nil {
            map["GatewayAppId"] = self.gatewayAppId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayAppId") {
            self.gatewayAppId = dict["GatewayAppId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class UpdateApiGatewayAppStatusResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateApiGatewayAppStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApiGatewayAppStatusResponseBody?

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
            var model = UpdateApiGatewayAppStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppBlackWhiteVersionsRequest : Tea.TeaModel {
    public var blackAppVersions: String?

    public var projectId: String?

    public var versionId: String?

    public var whiteAppVersions: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackAppVersions != nil {
            map["BlackAppVersions"] = self.blackAppVersions!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.whiteAppVersions != nil {
            map["WhiteAppVersions"] = self.whiteAppVersions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackAppVersions") {
            self.blackAppVersions = dict["BlackAppVersions"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("WhiteAppVersions") {
            self.whiteAppVersions = dict["WhiteAppVersions"] as! String
        }
    }
}

public class UpdateAppBlackWhiteVersionsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppBlackWhiteVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppBlackWhiteVersionsResponseBody?

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
            var model = UpdateAppBlackWhiteVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppVersionRequest : Tea.TeaModel {
    public var apkMd5: String?

    public var appId: String?

    public var appVersion: String?

    public var blackVersionList: String?

    public var deviceAdapterList: String?

    public var installType: String?

    public var isAllowNewInstall: String?

    public var isForceUpgrade: String?

    public var isNeedRestart: String?

    public var isSilentUpgrade: String?

    public var packageUrl: String?

    public var projectId: String?

    public var releaseNote: String?

    public var remark: String?

    public var restartAppParam: String?

    public var restartAppType: String?

    public var restartType: String?

    public var versionCode: String?

    public var versionId: String?

    public var whiteVersionList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apkMd5 != nil {
            map["ApkMd5"] = self.apkMd5!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.blackVersionList != nil {
            map["BlackVersionList"] = self.blackVersionList!
        }
        if self.deviceAdapterList != nil {
            map["DeviceAdapterList"] = self.deviceAdapterList!
        }
        if self.installType != nil {
            map["InstallType"] = self.installType!
        }
        if self.isAllowNewInstall != nil {
            map["IsAllowNewInstall"] = self.isAllowNewInstall!
        }
        if self.isForceUpgrade != nil {
            map["IsForceUpgrade"] = self.isForceUpgrade!
        }
        if self.isNeedRestart != nil {
            map["IsNeedRestart"] = self.isNeedRestart!
        }
        if self.isSilentUpgrade != nil {
            map["IsSilentUpgrade"] = self.isSilentUpgrade!
        }
        if self.packageUrl != nil {
            map["PackageUrl"] = self.packageUrl!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.releaseNote != nil {
            map["ReleaseNote"] = self.releaseNote!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.restartAppParam != nil {
            map["RestartAppParam"] = self.restartAppParam!
        }
        if self.restartAppType != nil {
            map["RestartAppType"] = self.restartAppType!
        }
        if self.restartType != nil {
            map["RestartType"] = self.restartType!
        }
        if self.versionCode != nil {
            map["VersionCode"] = self.versionCode!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.whiteVersionList != nil {
            map["WhiteVersionList"] = self.whiteVersionList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApkMd5") {
            self.apkMd5 = dict["ApkMd5"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("BlackVersionList") {
            self.blackVersionList = dict["BlackVersionList"] as! String
        }
        if dict.keys.contains("DeviceAdapterList") {
            self.deviceAdapterList = dict["DeviceAdapterList"] as! String
        }
        if dict.keys.contains("InstallType") {
            self.installType = dict["InstallType"] as! String
        }
        if dict.keys.contains("IsAllowNewInstall") {
            self.isAllowNewInstall = dict["IsAllowNewInstall"] as! String
        }
        if dict.keys.contains("IsForceUpgrade") {
            self.isForceUpgrade = dict["IsForceUpgrade"] as! String
        }
        if dict.keys.contains("IsNeedRestart") {
            self.isNeedRestart = dict["IsNeedRestart"] as! String
        }
        if dict.keys.contains("IsSilentUpgrade") {
            self.isSilentUpgrade = dict["IsSilentUpgrade"] as! String
        }
        if dict.keys.contains("PackageUrl") {
            self.packageUrl = dict["PackageUrl"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ReleaseNote") {
            self.releaseNote = dict["ReleaseNote"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("RestartAppParam") {
            self.restartAppParam = dict["RestartAppParam"] as! String
        }
        if dict.keys.contains("RestartAppType") {
            self.restartAppType = dict["RestartAppType"] as! String
        }
        if dict.keys.contains("RestartType") {
            self.restartType = dict["RestartType"] as! String
        }
        if dict.keys.contains("VersionCode") {
            self.versionCode = dict["VersionCode"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("WhiteVersionList") {
            self.whiteVersionList = dict["WhiteVersionList"] as! String
        }
    }
}

public class UpdateAppVersionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppVersionResponseBody?

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
            var model = UpdateAppVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppVersionReleaseNoteRequest : Tea.TeaModel {
    public var projectId: String?

    public var releaseNote: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.releaseNote != nil {
            map["ReleaseNote"] = self.releaseNote!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ReleaseNote") {
            self.releaseNote = dict["ReleaseNote"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class UpdateAppVersionReleaseNoteResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppVersionReleaseNoteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppVersionReleaseNoteResponseBody?

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
            var model = UpdateAppVersionReleaseNoteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppVersionRemarkRequest : Tea.TeaModel {
    public var projectId: String?

    public var remark: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class UpdateAppVersionRemarkResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppVersionRemarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppVersionRemarkResponseBody?

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
            var model = UpdateAppVersionRemarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppVersionStatusRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateAppVersionStatusResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppVersionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppVersionStatusResponseBody?

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
            var model = UpdateAppVersionStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomizedFilterRequest : Tea.TeaModel {
    public var blackWhiteType: String?

    public var id: Int64?

    public var name: String?

    public var projectId: String?

    public var value: String?

    public var valueCompareType: String?

    public var valueType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackWhiteType != nil {
            map["BlackWhiteType"] = self.blackWhiteType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.valueCompareType != nil {
            map["ValueCompareType"] = self.valueCompareType!
        }
        if self.valueType != nil {
            map["ValueType"] = self.valueType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackWhiteType") {
            self.blackWhiteType = dict["BlackWhiteType"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
        if dict.keys.contains("ValueCompareType") {
            self.valueCompareType = dict["ValueCompareType"] as! String
        }
        if dict.keys.contains("ValueType") {
            self.valueType = dict["ValueType"] as! String
        }
    }
}

public class UpdateCustomizedFilterResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateCustomizedFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomizedFilterResponseBody?

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
            var model = UpdateCustomizedFilterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDeviceModelRequest : Tea.TeaModel {
    public var brandName: String?

    public var canCreateDeviceId: String?

    public var description_: String?

    public var deviceName: String?

    public var deviceType: String?

    public var hardwareType: String?

    public var id: String?

    public var initUsageType: String?

    public var modelName: String?

    public var objectKey: String?

    public var osPlatform: String?

    public var projectId: String?

    public var securityChip: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brandName != nil {
            map["BrandName"] = self.brandName!
        }
        if self.canCreateDeviceId != nil {
            map["CanCreateDeviceId"] = self.canCreateDeviceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceName != nil {
            map["DeviceName"] = self.deviceName!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.hardwareType != nil {
            map["HardwareType"] = self.hardwareType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.initUsageType != nil {
            map["InitUsageType"] = self.initUsageType!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.osPlatform != nil {
            map["OsPlatform"] = self.osPlatform!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.securityChip != nil {
            map["SecurityChip"] = self.securityChip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BrandName") {
            self.brandName = dict["BrandName"] as! String
        }
        if dict.keys.contains("CanCreateDeviceId") {
            self.canCreateDeviceId = dict["CanCreateDeviceId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DeviceName") {
            self.deviceName = dict["DeviceName"] as! String
        }
        if dict.keys.contains("DeviceType") {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("HardwareType") {
            self.hardwareType = dict["HardwareType"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InitUsageType") {
            self.initUsageType = dict["InitUsageType"] as! String
        }
        if dict.keys.contains("ModelName") {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("ObjectKey") {
            self.objectKey = dict["ObjectKey"] as! String
        }
        if dict.keys.contains("OsPlatform") {
            self.osPlatform = dict["OsPlatform"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SecurityChip") {
            self.securityChip = dict["SecurityChip"] as! String
        }
    }
}

public class UpdateDeviceModelResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateDeviceModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeviceModelResponseBody?

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
            var model = UpdateDeviceModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNamespaceDataRequest : Tea.TeaModel {
    public var accountId: String?

    public var accountType: String?

    public var authType: String?

    public var deviceId: String?

    public var deviceIdType: String?

    public var namespace: String?

    public var newData: String?

    public var oldData: String?

    public var path: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.deviceIdType != nil {
            map["DeviceIdType"] = self.deviceIdType!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.newData != nil {
            map["NewData"] = self.newData!
        }
        if self.oldData != nil {
            map["OldData"] = self.oldData!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("AuthType") {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("DeviceIdType") {
            self.deviceIdType = dict["DeviceIdType"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NewData") {
            self.newData = dict["NewData"] as! String
        }
        if dict.keys.contains("OldData") {
            self.oldData = dict["OldData"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class UpdateNamespaceDataResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateNamespaceDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNamespaceDataResponseBody?

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
            var model = UpdateNamespaceDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOsBlackWhiteVersionsRequest : Tea.TeaModel {
    public var blackVersions: String?

    public var projectId: String?

    public var versionId: String?

    public var whiteVersions: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackVersions != nil {
            map["BlackVersions"] = self.blackVersions!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.whiteVersions != nil {
            map["WhiteVersions"] = self.whiteVersions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackVersions") {
            self.blackVersions = dict["BlackVersions"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("WhiteVersions") {
            self.whiteVersions = dict["WhiteVersions"] as! String
        }
    }
}

public class UpdateOsBlackWhiteVersionsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOsBlackWhiteVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOsBlackWhiteVersionsResponseBody?

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
            var model = UpdateOsBlackWhiteVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOsVersionRequest : Tea.TeaModel {
    public var blackVersionList: String?

    public var deviceModelId: String?

    public var enableMobileDownload: String?

    public var id: String?

    public var isForceNightUpgrade: String?

    public var isForceUpgrade: String?

    public var isMilestone: String?

    public var maxClientVersion: String?

    public var minClientVersion: String?

    public var mobileDownloadMaxSize: String?

    public var nightUpgradeDownloadType: String?

    public var nightUpgradeIsAllowedCancel: String?

    public var nightUpgradeIsShowTip: String?

    public var projectId: String?

    public var releaseNote: String?

    public var remark: String?

    public var romList: String?

    public var systemVersion: String?

    public var whiteVersionList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackVersionList != nil {
            map["BlackVersionList"] = self.blackVersionList!
        }
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.enableMobileDownload != nil {
            map["EnableMobileDownload"] = self.enableMobileDownload!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.isForceNightUpgrade != nil {
            map["IsForceNightUpgrade"] = self.isForceNightUpgrade!
        }
        if self.isForceUpgrade != nil {
            map["IsForceUpgrade"] = self.isForceUpgrade!
        }
        if self.isMilestone != nil {
            map["IsMilestone"] = self.isMilestone!
        }
        if self.maxClientVersion != nil {
            map["MaxClientVersion"] = self.maxClientVersion!
        }
        if self.minClientVersion != nil {
            map["MinClientVersion"] = self.minClientVersion!
        }
        if self.mobileDownloadMaxSize != nil {
            map["MobileDownloadMaxSize"] = self.mobileDownloadMaxSize!
        }
        if self.nightUpgradeDownloadType != nil {
            map["NightUpgradeDownloadType"] = self.nightUpgradeDownloadType!
        }
        if self.nightUpgradeIsAllowedCancel != nil {
            map["NightUpgradeIsAllowedCancel"] = self.nightUpgradeIsAllowedCancel!
        }
        if self.nightUpgradeIsShowTip != nil {
            map["NightUpgradeIsShowTip"] = self.nightUpgradeIsShowTip!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.releaseNote != nil {
            map["ReleaseNote"] = self.releaseNote!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.romList != nil {
            map["RomList"] = self.romList!
        }
        if self.systemVersion != nil {
            map["SystemVersion"] = self.systemVersion!
        }
        if self.whiteVersionList != nil {
            map["WhiteVersionList"] = self.whiteVersionList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackVersionList") {
            self.blackVersionList = dict["BlackVersionList"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! String
        }
        if dict.keys.contains("EnableMobileDownload") {
            self.enableMobileDownload = dict["EnableMobileDownload"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("IsForceNightUpgrade") {
            self.isForceNightUpgrade = dict["IsForceNightUpgrade"] as! String
        }
        if dict.keys.contains("IsForceUpgrade") {
            self.isForceUpgrade = dict["IsForceUpgrade"] as! String
        }
        if dict.keys.contains("IsMilestone") {
            self.isMilestone = dict["IsMilestone"] as! String
        }
        if dict.keys.contains("MaxClientVersion") {
            self.maxClientVersion = dict["MaxClientVersion"] as! String
        }
        if dict.keys.contains("MinClientVersion") {
            self.minClientVersion = dict["MinClientVersion"] as! String
        }
        if dict.keys.contains("MobileDownloadMaxSize") {
            self.mobileDownloadMaxSize = dict["MobileDownloadMaxSize"] as! String
        }
        if dict.keys.contains("NightUpgradeDownloadType") {
            self.nightUpgradeDownloadType = dict["NightUpgradeDownloadType"] as! String
        }
        if dict.keys.contains("NightUpgradeIsAllowedCancel") {
            self.nightUpgradeIsAllowedCancel = dict["NightUpgradeIsAllowedCancel"] as! String
        }
        if dict.keys.contains("NightUpgradeIsShowTip") {
            self.nightUpgradeIsShowTip = dict["NightUpgradeIsShowTip"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ReleaseNote") {
            self.releaseNote = dict["ReleaseNote"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("RomList") {
            self.romList = dict["RomList"] as! String
        }
        if dict.keys.contains("SystemVersion") {
            self.systemVersion = dict["SystemVersion"] as! String
        }
        if dict.keys.contains("WhiteVersionList") {
            self.whiteVersionList = dict["WhiteVersionList"] as! String
        }
    }
}

public class UpdateOsVersionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOsVersionResponseBody?

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
            var model = UpdateOsVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOsVersionReleaseNoteRequest : Tea.TeaModel {
    public var projectId: String?

    public var releaseNote: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.releaseNote != nil {
            map["ReleaseNote"] = self.releaseNote!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ReleaseNote") {
            self.releaseNote = dict["ReleaseNote"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class UpdateOsVersionReleaseNoteResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOsVersionReleaseNoteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOsVersionReleaseNoteResponseBody?

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
            var model = UpdateOsVersionReleaseNoteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOsVersionRemarkRequest : Tea.TeaModel {
    public var projectId: String?

    public var remark: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class UpdateOsVersionRemarkResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOsVersionRemarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOsVersionRemarkResponseBody?

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
            var model = UpdateOsVersionRemarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOsVersionStatusRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateOsVersionStatusResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOsVersionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOsVersionStatusResponseBody?

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
            var model = UpdateOsVersionStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

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
            var model = UpdateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSchemaSubscribeRequest : Tea.TeaModel {
    public var deviceModel: String?

    public var projectId: String?

    public var schemaVersion: String?

    public var subscribeList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceModel != nil {
            map["DeviceModel"] = self.deviceModel!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.subscribeList != nil {
            map["SubscribeList"] = self.subscribeList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceModel") {
            self.deviceModel = dict["DeviceModel"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SchemaVersion") {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("SubscribeList") {
            self.subscribeList = dict["SubscribeList"] as! String
        }
    }
}

public class UpdateSchemaSubscribeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateSchemaSubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSchemaSubscribeResponseBody?

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
            var model = UpdateSchemaSubscribeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateShadowSchemaRequest : Tea.TeaModel {
    public var authType: String?

    public var deviceModelId: String?

    public var id: String?

    public var namespace: String?

    public var projectId: String?

    public var schema: String?

    public override init() {
        super.init()
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
        if self.deviceModelId != nil {
            map["DeviceModelId"] = self.deviceModelId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthType") {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("DeviceModelId") {
            self.deviceModelId = dict["DeviceModelId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Schema") {
            self.schema = dict["Schema"] as! String
        }
    }
}

public class UpdateShadowSchemaResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateShadowSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateShadowSchemaResponseBody?

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
            var model = UpdateShadowSchemaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTriggerRequest : Tea.TeaModel {
    public var id: Int64?

    public var production: Int32?

    public var projectId: String?

    public var sandbox: Int32?

    public override init() {
        super.init()
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
        if self.production != nil {
            map["Production"] = self.production!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sandbox != nil {
            map["Sandbox"] = self.sandbox!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Production") {
            self.production = dict["Production"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Sandbox") {
            self.sandbox = dict["Sandbox"] as! Int32
        }
    }
}

public class UpdateTriggerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTriggerResponseBody?

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
            var model = UpdateTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUpstreamAppServerRequest : Tea.TeaModel {
    public var id: Int64?

    public var name: String?

    public var projectId: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class UpdateUpstreamAppServerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateUpstreamAppServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUpstreamAppServerResponseBody?

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
            var model = UpdateUpstreamAppServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateVersionDeviceGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var id: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class UpdateVersionDeviceGroupResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateVersionDeviceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVersionDeviceGroupResponseBody?

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
            var model = UpdateVersionDeviceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateVersionPrepublishActiveStatusRequest : Tea.TeaModel {
    public var isActive: String?

    public var prepublishId: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isActive != nil {
            map["IsActive"] = self.isActive!
        }
        if self.prepublishId != nil {
            map["PrepublishId"] = self.prepublishId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsActive") {
            self.isActive = dict["IsActive"] as! String
        }
        if dict.keys.contains("PrepublishId") {
            self.prepublishId = dict["PrepublishId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class UpdateVersionPrepublishActiveStatusResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateVersionPrepublishActiveStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVersionPrepublishActiveStatusResponseBody?

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
            var model = UpdateVersionPrepublishActiveStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
