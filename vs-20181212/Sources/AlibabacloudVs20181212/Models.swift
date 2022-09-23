import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddRenderingDeviceInternetPortsRequest : Tea.TeaModel {
    public var ISP: String?

    public var instanceIds: String?

    public var internalPort: String?

    public var ipProtocol: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ISP != nil {
            map["ISP"] = self.ISP!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.internalPort != nil {
            map["InternalPort"] = self.internalPort!
        }
        if self.ipProtocol != nil {
            map["IpProtocol"] = self.ipProtocol!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ISP") {
            self.ISP = dict["ISP"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("InternalPort") {
            self.internalPort = dict["InternalPort"] as! String
        }
        if dict.keys.contains("IpProtocol") {
            self.ipProtocol = dict["IpProtocol"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class AddRenderingDeviceInternetPortsResponseBody : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddRenderingDeviceInternetPortsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddRenderingDeviceInternetPortsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddRenderingDeviceInternetPortsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddVsPullStreamInfoConfigRequest : Tea.TeaModel {
    public var always: String?

    public var appName: String?

    public var domainName: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var sourceUrl: String?

    public var startTime: String?

    public var streamName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.always != nil {
            map["Always"] = self.always!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.streamName != nil {
            map["StreamName"] = self.streamName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Always") {
            self.always = dict["Always"] as! String
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SourceUrl") {
            self.sourceUrl = dict["SourceUrl"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StreamName") {
            self.streamName = dict["StreamName"] as! String
        }
    }
}

public class AddVsPullStreamInfoConfigResponseBody : Tea.TeaModel {
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

public class AddVsPullStreamInfoConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddVsPullStreamInfoConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddVsPullStreamInfoConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchBindDirectoriesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var directoryId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class BatchBindDirectoriesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var deviceId: String?

        public var directoryId: String?

        public var error: String?

        public override init() {
            super.init()
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
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchBindDirectoriesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchBindDirectoriesResponseBody.Results]
        }
    }
}

public class BatchBindDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchBindDirectoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchBindDirectoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchBindParentPlatformDevicesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var ownerId: Int64?

    public var parentPlatformId: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.parentPlatformId != nil {
            map["ParentPlatformId"] = self.parentPlatformId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ParentPlatformId") {
            self.parentPlatformId = dict["ParentPlatformId"] as! String
        }
    }
}

public class BatchBindParentPlatformDevicesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var deviceId: String?

        public var error: String?

        public var parentPlatformId: String?

        public override init() {
            super.init()
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
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.parentPlatformId != nil {
                map["ParentPlatformId"] = self.parentPlatformId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("ParentPlatformId") {
                self.parentPlatformId = dict["ParentPlatformId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchBindParentPlatformDevicesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchBindParentPlatformDevicesResponseBody.Results]
        }
    }
}

public class BatchBindParentPlatformDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchBindParentPlatformDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchBindParentPlatformDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchBindPurchasedDevicesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var groupId: String?

    public var ownerId: Int64?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
    }
}

public class BatchBindPurchasedDevicesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var deviceId: String?

        public var error: String?

        public var groupId: String?

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
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchBindPurchasedDevicesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchBindPurchasedDevicesResponseBody.Results]
        }
    }
}

public class BatchBindPurchasedDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchBindPurchasedDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchBindPurchasedDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchBindTemplateRequest : Tea.TeaModel {
    public var applyAll: Bool?

    public var instanceId: String?

    public var instanceType: String?

    public var ownerId: Int64?

    public var replace: Bool?

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
        if self.applyAll != nil {
            map["ApplyAll"] = self.applyAll!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.replace != nil {
            map["Replace"] = self.replace!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyAll") {
            self.applyAll = dict["ApplyAll"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Replace") {
            self.replace = dict["Replace"] as! Bool
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class BatchBindTemplateResponseBody : Tea.TeaModel {
    public class Bindings : Tea.TeaModel {
        public var error: String?

        public var instanceId: String?

        public var instanceType: String?

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
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
        }
    }
    public var bindings: [BatchBindTemplateResponseBody.Bindings]?

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
        if self.bindings != nil {
            var tmp : [Any] = []
            for k in self.bindings! {
                tmp.append(k.toMap())
            }
            map["Bindings"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bindings") {
            self.bindings = dict["Bindings"] as! [BatchBindTemplateResponseBody.Bindings]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchBindTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchBindTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchBindTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchBindTemplatesRequest : Tea.TeaModel {
    public var applyAll: Bool?

    public var instanceId: String?

    public var instanceType: String?

    public var ownerId: Int64?

    public var replace: Bool?

    public var templateId: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyAll != nil {
            map["ApplyAll"] = self.applyAll!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.replace != nil {
            map["Replace"] = self.replace!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyAll") {
            self.applyAll = dict["ApplyAll"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Replace") {
            self.replace = dict["Replace"] as! Bool
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class BatchBindTemplatesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var error: String?

        public var instanceId: String?

        public var instanceType: String?

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
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchBindTemplatesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchBindTemplatesResponseBody.Results]
        }
    }
}

public class BatchBindTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchBindTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchBindTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDeleteDevicesRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class BatchDeleteDevicesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var error: String?

        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchDeleteDevicesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchDeleteDevicesResponseBody.Results]
        }
    }
}

public class BatchDeleteDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchDeleteDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDeleteVsDomainConfigsRequest : Tea.TeaModel {
    public var domainNames: String?

    public var functionNames: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.functionNames != nil {
            map["FunctionNames"] = self.functionNames!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") {
            self.domainNames = dict["DomainNames"] as! String
        }
        if dict.keys.contains("FunctionNames") {
            self.functionNames = dict["FunctionNames"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class BatchDeleteVsDomainConfigsResponseBody : Tea.TeaModel {
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

public class BatchDeleteVsDomainConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteVsDomainConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchDeleteVsDomainConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchForbidVsStreamRequest : Tea.TeaModel {
    public var channel: String?

    public var controlStreamAction: String?

    public var domainName: String?

    public var liveStreamType: String?

    public var oneshot: String?

    public var ownerId: Int64?

    public var resumeTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.controlStreamAction != nil {
            map["ControlStreamAction"] = self.controlStreamAction!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.liveStreamType != nil {
            map["LiveStreamType"] = self.liveStreamType!
        }
        if self.oneshot != nil {
            map["Oneshot"] = self.oneshot!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resumeTime != nil {
            map["ResumeTime"] = self.resumeTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Channel") {
            self.channel = dict["Channel"] as! String
        }
        if dict.keys.contains("ControlStreamAction") {
            self.controlStreamAction = dict["ControlStreamAction"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("LiveStreamType") {
            self.liveStreamType = dict["LiveStreamType"] as! String
        }
        if dict.keys.contains("Oneshot") {
            self.oneshot = dict["Oneshot"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResumeTime") {
            self.resumeTime = dict["ResumeTime"] as! String
        }
    }
}

public class BatchForbidVsStreamResponseBody : Tea.TeaModel {
    public class ForbidResult : Tea.TeaModel {
        public class ForbidResultInfo : Tea.TeaModel {
            public class Channels : Tea.TeaModel {
                public var channel: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.channel != nil {
                        map["Channel"] = self.channel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Channel") {
                        self.channel = dict["Channel"] as! [String]
                    }
                }
            }
            public var channels: BatchForbidVsStreamResponseBody.ForbidResult.ForbidResultInfo.Channels?

            public var count: Int32?

            public var detail: String?

            public var result: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.channels?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channels != nil {
                    map["Channels"] = self.channels?.toMap()
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Channels") {
                    var model = BatchForbidVsStreamResponseBody.ForbidResult.ForbidResultInfo.Channels()
                    model.fromMap(dict["Channels"] as! [String: Any])
                    self.channels = model
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("Detail") {
                    self.detail = dict["Detail"] as! String
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! String
                }
            }
        }
        public var forbidResultInfo: [BatchForbidVsStreamResponseBody.ForbidResult.ForbidResultInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forbidResultInfo != nil {
                var tmp : [Any] = []
                for k in self.forbidResultInfo! {
                    tmp.append(k.toMap())
                }
                map["ForbidResultInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForbidResultInfo") {
                self.forbidResultInfo = dict["ForbidResultInfo"] as! [BatchForbidVsStreamResponseBody.ForbidResult.ForbidResultInfo]
            }
        }
    }
    public var forbidResult: BatchForbidVsStreamResponseBody.ForbidResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.forbidResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forbidResult != nil {
            map["ForbidResult"] = self.forbidResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForbidResult") {
            var model = BatchForbidVsStreamResponseBody.ForbidResult()
            model.fromMap(dict["ForbidResult"] as! [String: Any])
            self.forbidResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchForbidVsStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchForbidVsStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchForbidVsStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchResumeVsStreamRequest : Tea.TeaModel {
    public var channel: String?

    public var controlStreamAction: String?

    public var domainName: String?

    public var liveStreamType: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.controlStreamAction != nil {
            map["ControlStreamAction"] = self.controlStreamAction!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.liveStreamType != nil {
            map["LiveStreamType"] = self.liveStreamType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Channel") {
            self.channel = dict["Channel"] as! String
        }
        if dict.keys.contains("ControlStreamAction") {
            self.controlStreamAction = dict["ControlStreamAction"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("LiveStreamType") {
            self.liveStreamType = dict["LiveStreamType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class BatchResumeVsStreamResponseBody : Tea.TeaModel {
    public class ResumeResult : Tea.TeaModel {
        public class ResumeResultInfo : Tea.TeaModel {
            public class Channels : Tea.TeaModel {
                public var channel: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.channel != nil {
                        map["Channel"] = self.channel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Channel") {
                        self.channel = dict["Channel"] as! [String]
                    }
                }
            }
            public var channels: BatchResumeVsStreamResponseBody.ResumeResult.ResumeResultInfo.Channels?

            public var count: Int32?

            public var detail: String?

            public var result: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.channels?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channels != nil {
                    map["Channels"] = self.channels?.toMap()
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Channels") {
                    var model = BatchResumeVsStreamResponseBody.ResumeResult.ResumeResultInfo.Channels()
                    model.fromMap(dict["Channels"] as! [String: Any])
                    self.channels = model
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("Detail") {
                    self.detail = dict["Detail"] as! String
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! String
                }
            }
        }
        public var resumeResultInfo: [BatchResumeVsStreamResponseBody.ResumeResult.ResumeResultInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resumeResultInfo != nil {
                var tmp : [Any] = []
                for k in self.resumeResultInfo! {
                    tmp.append(k.toMap())
                }
                map["ResumeResultInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResumeResultInfo") {
                self.resumeResultInfo = dict["ResumeResultInfo"] as! [BatchResumeVsStreamResponseBody.ResumeResult.ResumeResultInfo]
            }
        }
    }
    public var requestId: String?

    public var resumeResult: BatchResumeVsStreamResponseBody.ResumeResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resumeResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resumeResult != nil {
            map["ResumeResult"] = self.resumeResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResumeResult") {
            var model = BatchResumeVsStreamResponseBody.ResumeResult()
            model.fromMap(dict["ResumeResult"] as! [String: Any])
            self.resumeResult = model
        }
    }
}

public class BatchResumeVsStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchResumeVsStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchResumeVsStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchSetVsDomainConfigsRequest : Tea.TeaModel {
    public var domainNames: String?

    public var functions: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.functions != nil {
            map["Functions"] = self.functions!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") {
            self.domainNames = dict["DomainNames"] as! String
        }
        if dict.keys.contains("Functions") {
            self.functions = dict["Functions"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class BatchSetVsDomainConfigsResponseBody : Tea.TeaModel {
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

public class BatchSetVsDomainConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchSetVsDomainConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchSetVsDomainConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchStartDevicesRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class BatchStartDevicesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class Streams : Tea.TeaModel {
            public var error: String?

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
                if self.error != nil {
                    map["Error"] = self.error!
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
                if dict.keys.contains("Error") {
                    self.error = dict["Error"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var id: String?

        public var streams: [BatchStartDevicesResponseBody.Results.Streams]?

        public override init() {
            super.init()
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
            if self.streams != nil {
                var tmp : [Any] = []
                for k in self.streams! {
                    tmp.append(k.toMap())
                }
                map["Streams"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Streams") {
                self.streams = dict["Streams"] as! [BatchStartDevicesResponseBody.Results.Streams]
            }
        }
    }
    public var requestId: String?

    public var results: [BatchStartDevicesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchStartDevicesResponseBody.Results]
        }
    }
}

public class BatchStartDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchStartDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchStartDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchStartStreamsRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class BatchStartStreamsResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var error: String?

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
            if self.error != nil {
                map["Error"] = self.error!
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
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchStartStreamsResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchStartStreamsResponseBody.Results]
        }
    }
}

public class BatchStartStreamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchStartStreamsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchStartStreamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchStopDevicesRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class BatchStopDevicesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class Streams : Tea.TeaModel {
            public var error: String?

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
                if self.error != nil {
                    map["Error"] = self.error!
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
                if dict.keys.contains("Error") {
                    self.error = dict["Error"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var id: String?

        public var streams: [BatchStopDevicesResponseBody.Results.Streams]?

        public override init() {
            super.init()
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
            if self.streams != nil {
                var tmp : [Any] = []
                for k in self.streams! {
                    tmp.append(k.toMap())
                }
                map["Streams"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Streams") {
                self.streams = dict["Streams"] as! [BatchStopDevicesResponseBody.Results.Streams]
            }
        }
    }
    public var requestId: String?

    public var results: [BatchStopDevicesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchStopDevicesResponseBody.Results]
        }
    }
}

public class BatchStopDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchStopDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchStopDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchStopStreamsRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class BatchStopStreamsResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var error: String?

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
            if self.error != nil {
                map["Error"] = self.error!
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
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchStopStreamsResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchStopStreamsResponseBody.Results]
        }
    }
}

public class BatchStopStreamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchStopStreamsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchStopStreamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUnbindDirectoriesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var directoryId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class BatchUnbindDirectoriesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var deviceId: String?

        public var directoryId: String?

        public var error: String?

        public override init() {
            super.init()
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
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchUnbindDirectoriesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchUnbindDirectoriesResponseBody.Results]
        }
    }
}

public class BatchUnbindDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUnbindDirectoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchUnbindDirectoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUnbindParentPlatformDevicesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var ownerId: Int64?

    public var parentPlatformId: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.parentPlatformId != nil {
            map["ParentPlatformId"] = self.parentPlatformId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ParentPlatformId") {
            self.parentPlatformId = dict["ParentPlatformId"] as! String
        }
    }
}

public class BatchUnbindParentPlatformDevicesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var deviceId: String?

        public var error: String?

        public var parentPlatformId: String?

        public override init() {
            super.init()
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
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.parentPlatformId != nil {
                map["ParentPlatformId"] = self.parentPlatformId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("ParentPlatformId") {
                self.parentPlatformId = dict["ParentPlatformId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchUnbindParentPlatformDevicesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchUnbindParentPlatformDevicesResponseBody.Results]
        }
    }
}

public class BatchUnbindParentPlatformDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUnbindParentPlatformDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchUnbindParentPlatformDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUnbindPurchasedDevicesRequest : Tea.TeaModel {
    public var deviceId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class BatchUnbindPurchasedDevicesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var deviceId: String?

        public var error: String?

        public override init() {
            super.init()
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
            if self.error != nil {
                map["Error"] = self.error!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchUnbindPurchasedDevicesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchUnbindPurchasedDevicesResponseBody.Results]
        }
    }
}

public class BatchUnbindPurchasedDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUnbindPurchasedDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchUnbindPurchasedDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUnbindTemplateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceType: String?

    public var ownerId: Int64?

    public var templateId: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class BatchUnbindTemplateResponseBody : Tea.TeaModel {
    public class Bindings : Tea.TeaModel {
        public var error: String?

        public var instanceId: String?

        public var instanceType: String?

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
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
        }
    }
    public var bindings: [BatchUnbindTemplateResponseBody.Bindings]?

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
        if self.bindings != nil {
            var tmp : [Any] = []
            for k in self.bindings! {
                tmp.append(k.toMap())
            }
            map["Bindings"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bindings") {
            self.bindings = dict["Bindings"] as! [BatchUnbindTemplateResponseBody.Bindings]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchUnbindTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUnbindTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchUnbindTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUnbindTemplatesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceType: String?

    public var ownerId: Int64?

    public var templateId: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class BatchUnbindTemplatesResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var error: String?

        public var instanceId: String?

        public var instanceType: String?

        public var templateId: String?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [BatchUnbindTemplatesResponseBody.Results]?

    public override init() {
        super.init()
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
            self.results = dict["Results"] as! [BatchUnbindTemplatesResponseBody.Results]
        }
    }
}

public class BatchUnbindTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUnbindTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchUnbindTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindDirectoryRequest : Tea.TeaModel {
    public var deviceId: String?

    public var directoryId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class BindDirectoryResponseBody : Tea.TeaModel {
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

public class BindDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BindDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindParentPlatformDeviceRequest : Tea.TeaModel {
    public var deviceId: String?

    public var ownerId: Int64?

    public var parentPlatformId: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.parentPlatformId != nil {
            map["ParentPlatformId"] = self.parentPlatformId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ParentPlatformId") {
            self.parentPlatformId = dict["ParentPlatformId"] as! String
        }
    }
}

public class BindParentPlatformDeviceResponseBody : Tea.TeaModel {
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

public class BindParentPlatformDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindParentPlatformDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BindParentPlatformDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindPurchasedDeviceRequest : Tea.TeaModel {
    public var deviceId: String?

    public var groupId: String?

    public var ownerId: Int64?

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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
    }
}

public class BindPurchasedDeviceResponseBody : Tea.TeaModel {
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

public class BindPurchasedDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindPurchasedDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BindPurchasedDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindTemplateRequest : Tea.TeaModel {
    public var applyAll: Bool?

    public var instanceId: String?

    public var instanceType: String?

    public var ownerId: Int64?

    public var replace: Bool?

    public var templateId: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyAll != nil {
            map["ApplyAll"] = self.applyAll!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.replace != nil {
            map["Replace"] = self.replace!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyAll") {
            self.applyAll = dict["ApplyAll"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Replace") {
            self.replace = dict["Replace"] as! Bool
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class BindTemplateResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var instanceType: String?

    public var requestId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class BindTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BindTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ContinuousAdjustRequest : Tea.TeaModel {
    public var focus: String?

    public var id: String?

    public var iris: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.focus != nil {
            map["Focus"] = self.focus!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.iris != nil {
            map["Iris"] = self.iris!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Focus") {
            self.focus = dict["Focus"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Iris") {
            self.iris = dict["Iris"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class ContinuousAdjustResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ContinuousAdjustResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinuousAdjustResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ContinuousAdjustResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ContinuousMoveRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public var pan: String?

    public var tilt: String?

    public var zoom: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pan != nil {
            map["Pan"] = self.pan!
        }
        if self.tilt != nil {
            map["Tilt"] = self.tilt!
        }
        if self.zoom != nil {
            map["Zoom"] = self.zoom!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Pan") {
            self.pan = dict["Pan"] as! String
        }
        if dict.keys.contains("Tilt") {
            self.tilt = dict["Tilt"] as! String
        }
        if dict.keys.contains("Zoom") {
            self.zoom = dict["Zoom"] as! String
        }
    }
}

public class ContinuousMoveResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ContinuousMoveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinuousMoveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ContinuousMoveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public var description_: String?

    public var internalPorts: String?

    public var maintainTime: String?

    public var name: String?

    public var ownerId: Int64?

    public var securityGroupId: String?

    public override init() {
        super.init()
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
        if self.internalPorts != nil {
            map["InternalPorts"] = self.internalPorts!
        }
        if self.maintainTime != nil {
            map["MaintainTime"] = self.maintainTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InternalPorts") {
            self.internalPorts = dict["InternalPorts"] as! String
        }
        if dict.keys.contains("MaintainTime") {
            self.maintainTime = dict["MaintainTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDeviceRequest : Tea.TeaModel {
    public var alarmMethod: String?

    public var autoPos: Bool?

    public var autoStart: Bool?

    public var description_: String?

    public var directoryId: String?

    public var dsn: String?

    public var gbId: String?

    public var groupId: String?

    public var ip: String?

    public var latitude: String?

    public var longitude: String?

    public var name: String?

    public var ownerId: Int64?

    public var params: String?

    public var parentId: String?

    public var password: String?

    public var port: Int64?

    public var posInterval: Int64?

    public var type: String?

    public var url: String?

    public var username: String?

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
        if self.alarmMethod != nil {
            map["AlarmMethod"] = self.alarmMethod!
        }
        if self.autoPos != nil {
            map["AutoPos"] = self.autoPos!
        }
        if self.autoStart != nil {
            map["AutoStart"] = self.autoStart!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.dsn != nil {
            map["Dsn"] = self.dsn!
        }
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.latitude != nil {
            map["Latitude"] = self.latitude!
        }
        if self.longitude != nil {
            map["Longitude"] = self.longitude!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.posInterval != nil {
            map["PosInterval"] = self.posInterval!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmMethod") {
            self.alarmMethod = dict["AlarmMethod"] as! String
        }
        if dict.keys.contains("AutoPos") {
            self.autoPos = dict["AutoPos"] as! Bool
        }
        if dict.keys.contains("AutoStart") {
            self.autoStart = dict["AutoStart"] as! Bool
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Dsn") {
            self.dsn = dict["Dsn"] as! String
        }
        if dict.keys.contains("GbId") {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Latitude") {
            self.latitude = dict["Latitude"] as! String
        }
        if dict.keys.contains("Longitude") {
            self.longitude = dict["Longitude"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int64
        }
        if dict.keys.contains("PosInterval") {
            self.posInterval = dict["PosInterval"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("Vendor") {
            self.vendor = dict["Vendor"] as! String
        }
    }
}

public class CreateDeviceResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDeviceAlarmRequest : Tea.TeaModel {
    public var alarm: Int32?

    public var channelId: Int32?

    public var endTime: Int64?

    public var expire: Int64?

    public var id: String?

    public var objectType: Int32?

    public var ownerId: Int64?

    public var startTime: Int64?

    public var subAlarm: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarm != nil {
            map["Alarm"] = self.alarm!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.subAlarm != nil {
            map["SubAlarm"] = self.subAlarm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Alarm") {
            self.alarm = dict["Alarm"] as! Int32
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Expire") {
            self.expire = dict["Expire"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("SubAlarm") {
            self.subAlarm = dict["SubAlarm"] as! Int32
        }
    }
}

public class CreateDeviceAlarmResponseBody : Tea.TeaModel {
    public var alarmDelay: Int64?

    public var alarmId: String?

    public var expire: Int64?

    public var requestId: String?

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
        if self.alarmDelay != nil {
            map["AlarmDelay"] = self.alarmDelay!
        }
        if self.alarmId != nil {
            map["AlarmId"] = self.alarmId!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmDelay") {
            self.alarmDelay = dict["AlarmDelay"] as! Int64
        }
        if dict.keys.contains("AlarmId") {
            self.alarmId = dict["AlarmId"] as! String
        }
        if dict.keys.contains("Expire") {
            self.expire = dict["Expire"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class CreateDeviceAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeviceAlarmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDeviceAlarmResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDirectoryRequest : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var name: String?

    public var ownerId: Int64?

    public var parentId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
    }
}

public class CreateDirectoryResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public var app: String?

    public var callback: String?

    public var description_: String?

    public var inProtocol: String?

    public var lazyPull: Bool?

    public var name: String?

    public var outProtocol: String?

    public var ownerId: Int64?

    public var playDomain: String?

    public var pushDomain: String?

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
        if self.app != nil {
            map["App"] = self.app!
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.inProtocol != nil {
            map["InProtocol"] = self.inProtocol!
        }
        if self.lazyPull != nil {
            map["LazyPull"] = self.lazyPull!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.outProtocol != nil {
            map["OutProtocol"] = self.outProtocol!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playDomain != nil {
            map["PlayDomain"] = self.playDomain!
        }
        if self.pushDomain != nil {
            map["PushDomain"] = self.pushDomain!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.app = dict["App"] as! String
        }
        if dict.keys.contains("Callback") {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InProtocol") {
            self.inProtocol = dict["InProtocol"] as! String
        }
        if dict.keys.contains("LazyPull") {
            self.lazyPull = dict["LazyPull"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OutProtocol") {
            self.outProtocol = dict["OutProtocol"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayDomain") {
            self.playDomain = dict["PlayDomain"] as! String
        }
        if dict.keys.contains("PushDomain") {
            self.pushDomain = dict["PushDomain"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public var gbId: String?

    public var gbIp: String?

    public var gbPort: Int64?

    public var id: String?

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
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.gbIp != nil {
            map["GbIp"] = self.gbIp!
        }
        if self.gbPort != nil {
            map["GbPort"] = self.gbPort!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GbId") {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("GbIp") {
            self.gbIp = dict["GbIp"] as! String
        }
        if dict.keys.contains("GbPort") {
            self.gbPort = dict["GbPort"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateParentPlatformRequest : Tea.TeaModel {
    public var autoStart: Bool?

    public var clientAuth: Bool?

    public var clientPassword: String?

    public var clientUsername: String?

    public var description_: String?

    public var gbId: String?

    public var ip: String?

    public var name: String?

    public var ownerId: Int64?

    public var port: Int64?

    public var protocol_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoStart != nil {
            map["AutoStart"] = self.autoStart!
        }
        if self.clientAuth != nil {
            map["ClientAuth"] = self.clientAuth!
        }
        if self.clientPassword != nil {
            map["ClientPassword"] = self.clientPassword!
        }
        if self.clientUsername != nil {
            map["ClientUsername"] = self.clientUsername!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoStart") {
            self.autoStart = dict["AutoStart"] as! Bool
        }
        if dict.keys.contains("ClientAuth") {
            self.clientAuth = dict["ClientAuth"] as! Bool
        }
        if dict.keys.contains("ClientPassword") {
            self.clientPassword = dict["ClientPassword"] as! String
        }
        if dict.keys.contains("ClientUsername") {
            self.clientUsername = dict["ClientUsername"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GbId") {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int64
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
    }
}

public class CreateParentPlatformResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateParentPlatformResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateParentPlatformResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateParentPlatformResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRenderingDeviceRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewPeriod: Int32?

    public var clusterId: String?

    public var count: Int32?

    public var description_: String?

    public var edgeNodeName: String?

    public var ISP: String?

    public var imageId: String?

    public var instanceChargeType: String?

    public var instanceName: String?

    public var ownerId: Int64?

    public var password: String?

    public var period: Int32?

    public var periodUnit: String?

    public var securityGroupId: String?

    public var specification: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.edgeNodeName != nil {
            map["EdgeNodeName"] = self.edgeNodeName!
        }
        if self.ISP != nil {
            map["ISP"] = self.ISP!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.specification != nil {
            map["Specification"] = self.specification!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EdgeNodeName") {
            self.edgeNodeName = dict["EdgeNodeName"] as! String
        }
        if dict.keys.contains("ISP") {
            self.ISP = dict["ISP"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceChargeType") {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("Specification") {
            self.specification = dict["Specification"] as! String
        }
    }
}

public class CreateRenderingDeviceResponseBody : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRenderingDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRenderingDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateRenderingDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateStreamSnapshotRequest : Tea.TeaModel {
    public var id: String?

    public var location: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class CreateStreamSnapshotResponseBody : Tea.TeaModel {
    public var format: String?

    public var height: Int64?

    public var id: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var ossObject: String?

    public var requestId: String?

    public var timestamp: Int64?

    public var url: String?

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
        if self.format != nil {
            map["Format"] = self.format!
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.ossObject != nil {
            map["OssObject"] = self.ossObject!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Format") {
            self.format = dict["Format"] as! String
        }
        if dict.keys.contains("Height") {
            self.height = dict["Height"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OssBucket") {
            self.ossBucket = dict["OssBucket"] as! String
        }
        if dict.keys.contains("OssEndpoint") {
            self.ossEndpoint = dict["OssEndpoint"] as! String
        }
        if dict.keys.contains("OssObject") {
            self.ossObject = dict["OssObject"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("Width") {
            self.width = dict["Width"] as! Int64
        }
    }
}

public class CreateStreamSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStreamSnapshotResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateStreamSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
    public var callback: String?

    public var description_: String?

    public var fileFormat: String?

    public var flv: String?

    public var hlsM3u8: String?

    public var hlsTs: String?

    public var interval: Int64?

    public var jpgOnDemand: String?

    public var jpgOverwrite: String?

    public var jpgSequence: String?

    public var mp4: String?

    public var name: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var ossFilePrefix: String?

    public var ownerId: Int64?

    public var region: String?

    public var retention: Int64?

    public var transConfigsJSON: String?

    public var trigger: String?

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
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileFormat != nil {
            map["FileFormat"] = self.fileFormat!
        }
        if self.flv != nil {
            map["Flv"] = self.flv!
        }
        if self.hlsM3u8 != nil {
            map["HlsM3u8"] = self.hlsM3u8!
        }
        if self.hlsTs != nil {
            map["HlsTs"] = self.hlsTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.jpgOnDemand != nil {
            map["JpgOnDemand"] = self.jpgOnDemand!
        }
        if self.jpgOverwrite != nil {
            map["JpgOverwrite"] = self.jpgOverwrite!
        }
        if self.jpgSequence != nil {
            map["JpgSequence"] = self.jpgSequence!
        }
        if self.mp4 != nil {
            map["Mp4"] = self.mp4!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.ossFilePrefix != nil {
            map["OssFilePrefix"] = self.ossFilePrefix!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.transConfigsJSON != nil {
            map["TransConfigsJSON"] = self.transConfigsJSON!
        }
        if self.trigger != nil {
            map["Trigger"] = self.trigger!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Callback") {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileFormat") {
            self.fileFormat = dict["FileFormat"] as! String
        }
        if dict.keys.contains("Flv") {
            self.flv = dict["Flv"] as! String
        }
        if dict.keys.contains("HlsM3u8") {
            self.hlsM3u8 = dict["HlsM3u8"] as! String
        }
        if dict.keys.contains("HlsTs") {
            self.hlsTs = dict["HlsTs"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("JpgOnDemand") {
            self.jpgOnDemand = dict["JpgOnDemand"] as! String
        }
        if dict.keys.contains("JpgOverwrite") {
            self.jpgOverwrite = dict["JpgOverwrite"] as! String
        }
        if dict.keys.contains("JpgSequence") {
            self.jpgSequence = dict["JpgSequence"] as! String
        }
        if dict.keys.contains("Mp4") {
            self.mp4 = dict["Mp4"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucket") {
            self.ossBucket = dict["OssBucket"] as! String
        }
        if dict.keys.contains("OssEndpoint") {
            self.ossEndpoint = dict["OssEndpoint"] as! String
        }
        if dict.keys.contains("OssFilePrefix") {
            self.ossFilePrefix = dict["OssFilePrefix"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("Retention") {
            self.retention = dict["Retention"] as! Int64
        }
        if dict.keys.contains("TransConfigsJSON") {
            self.transConfigsJSON = dict["TransConfigsJSON"] as! String
        }
        if dict.keys.contains("Trigger") {
            self.trigger = dict["Trigger"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateTemplateResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBucketRequest : Tea.TeaModel {
    public var bucketName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteBucketResponseBody : Tea.TeaModel {
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

public class DeleteBucketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBucketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteBucketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteClusterResponseBody : Tea.TeaModel {
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

public class DeleteClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDeviceRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
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

public class DeleteDirectoryRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteDirectoryResponseBody : Tea.TeaModel {
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

public class DeleteDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteGroupResponseBody : Tea.TeaModel {
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

public class DeleteGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteParentPlatformRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteParentPlatformResponseBody : Tea.TeaModel {
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

public class DeleteParentPlatformResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteParentPlatformResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteParentPlatformResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePresetRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public var presetId: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.presetId != nil {
            map["PresetId"] = self.presetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PresetId") {
            self.presetId = dict["PresetId"] as! String
        }
    }
}

public class DeletePresetResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeletePresetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePresetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeletePresetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRenderingDeviceInternetPortsRequest : Tea.TeaModel {
    public var ISP: String?

    public var instanceIds: String?

    public var internalPort: String?

    public var ipProtocol: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ISP != nil {
            map["ISP"] = self.ISP!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.internalPort != nil {
            map["InternalPort"] = self.internalPort!
        }
        if self.ipProtocol != nil {
            map["IpProtocol"] = self.ipProtocol!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ISP") {
            self.ISP = dict["ISP"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("InternalPort") {
            self.internalPort = dict["InternalPort"] as! String
        }
        if dict.keys.contains("IpProtocol") {
            self.ipProtocol = dict["IpProtocol"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteRenderingDeviceInternetPortsResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var instanceIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceIds != nil {
                map["instanceIds"] = self.instanceIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceIds") {
                self.instanceIds = dict["instanceIds"] as! [String]
            }
        }
    }
    public var instanceIds: DeleteRenderingDeviceInternetPortsResponseBody.InstanceIds?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            var model = DeleteRenderingDeviceInternetPortsResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteRenderingDeviceInternetPortsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRenderingDeviceInternetPortsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteRenderingDeviceInternetPortsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRenderingDevicesRequest : Tea.TeaModel {
    public var instanceIds: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteRenderingDevicesResponseBody : Tea.TeaModel {
    public var failedIds: [String]?

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
        if self.failedIds != nil {
            map["FailedIds"] = self.failedIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailedIds") {
            self.failedIds = dict["FailedIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteRenderingDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRenderingDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteRenderingDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTemplateRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteTemplateResponseBody : Tea.TeaModel {
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

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVsPullStreamInfoConfigRequest : Tea.TeaModel {
    public var appName: String?

    public var domainName: String?

    public var ownerId: Int64?

    public var streamName: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.streamName != nil {
            map["StreamName"] = self.streamName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StreamName") {
            self.streamName = dict["StreamName"] as! String
        }
    }
}

public class DeleteVsPullStreamInfoConfigResponseBody : Tea.TeaModel {
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

public class DeleteVsPullStreamInfoConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVsPullStreamInfoConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteVsPullStreamInfoConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVsStreamsNotifyUrlConfigRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteVsStreamsNotifyUrlConfigResponseBody : Tea.TeaModel {
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

public class DeleteVsStreamsNotifyUrlConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVsStreamsNotifyUrlConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteVsStreamsNotifyUrlConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountStatRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeAccountStatResponseBody : Tea.TeaModel {
    public var groupLimit: Int64?

    public var groupNum: Int64?

    public var id: String?

    public var requestId: String?

    public var templateLimit: Int64?

    public var templateNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupLimit != nil {
            map["GroupLimit"] = self.groupLimit!
        }
        if self.groupNum != nil {
            map["GroupNum"] = self.groupNum!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateLimit != nil {
            map["TemplateLimit"] = self.templateLimit!
        }
        if self.templateNum != nil {
            map["TemplateNum"] = self.templateNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupLimit") {
            self.groupLimit = dict["GroupLimit"] as! Int64
        }
        if dict.keys.contains("GroupNum") {
            self.groupNum = dict["GroupNum"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateLimit") {
            self.templateLimit = dict["TemplateLimit"] as! Int64
        }
        if dict.keys.contains("TemplateNum") {
            self.templateNum = dict["TemplateNum"] as! Int64
        }
    }
}

public class DescribeAccountStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountStatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAccountStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeClusterResponseBody : Tea.TeaModel {
    public class InternalPorts : Tea.TeaModel {
        public var ipProtocol: String?

        public var platform: String?

        public var port: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipProtocol != nil {
                map["IpProtocol"] = self.ipProtocol!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IpProtocol") {
                self.ipProtocol = dict["IpProtocol"] as! String
            }
            if dict.keys.contains("Platform") {
                self.platform = dict["Platform"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! [String]
            }
        }
    }
    public var clusterId: String?

    public var description_: String?

    public var internalPorts: [DescribeClusterResponseBody.InternalPorts]?

    public var maintainTime: String?

    public var name: String?

    public var requestId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.internalPorts != nil {
            var tmp : [Any] = []
            for k in self.internalPorts! {
                tmp.append(k.toMap())
            }
            map["InternalPorts"] = tmp
        }
        if self.maintainTime != nil {
            map["MaintainTime"] = self.maintainTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InternalPorts") {
            self.internalPorts = dict["InternalPorts"] as! [DescribeClusterResponseBody.InternalPorts]
        }
        if dict.keys.contains("MaintainTime") {
            self.maintainTime = dict["MaintainTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterDevicesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var description_: String?

    public var edgeNodeName: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var platform: String?

    public var specification: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.edgeNodeName != nil {
            map["EdgeNodeName"] = self.edgeNodeName!
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
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.specification != nil {
            map["Specification"] = self.specification!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EdgeNodeName") {
            self.edgeNodeName = dict["EdgeNodeName"] as! String
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
        if dict.keys.contains("Platform") {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("Specification") {
            self.specification = dict["Specification"] as! String
        }
    }
}

public class DescribeClusterDevicesResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public class IpInfos : Tea.TeaModel {
            public var externalIp: String?

            public var externalPort: String?

            public var ISP: String?

            public var internalIp: String?

            public var internalPort: String?

            public var ipProtocol: String?

            public var natType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.externalIp != nil {
                    map["ExternalIp"] = self.externalIp!
                }
                if self.externalPort != nil {
                    map["ExternalPort"] = self.externalPort!
                }
                if self.ISP != nil {
                    map["ISP"] = self.ISP!
                }
                if self.internalIp != nil {
                    map["InternalIp"] = self.internalIp!
                }
                if self.internalPort != nil {
                    map["InternalPort"] = self.internalPort!
                }
                if self.ipProtocol != nil {
                    map["IpProtocol"] = self.ipProtocol!
                }
                if self.natType != nil {
                    map["NatType"] = self.natType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExternalIp") {
                    self.externalIp = dict["ExternalIp"] as! String
                }
                if dict.keys.contains("ExternalPort") {
                    self.externalPort = dict["ExternalPort"] as! String
                }
                if dict.keys.contains("ISP") {
                    self.ISP = dict["ISP"] as! String
                }
                if dict.keys.contains("InternalIp") {
                    self.internalIp = dict["InternalIp"] as! String
                }
                if dict.keys.contains("InternalPort") {
                    self.internalPort = dict["InternalPort"] as! String
                }
                if dict.keys.contains("IpProtocol") {
                    self.ipProtocol = dict["IpProtocol"] as! String
                }
                if dict.keys.contains("NatType") {
                    self.natType = dict["NatType"] as! String
                }
            }
        }
        public class PodInfos : Tea.TeaModel {
            public class Network : Tea.TeaModel {
                public var containerPorts: String?

                public var externalIp: String?

                public var externalIsp: String?

                public var externalPorts: String?

                public var outgoingIp: String?

                public var outgoingIsp: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.containerPorts != nil {
                        map["ContainerPorts"] = self.containerPorts!
                    }
                    if self.externalIp != nil {
                        map["ExternalIp"] = self.externalIp!
                    }
                    if self.externalIsp != nil {
                        map["ExternalIsp"] = self.externalIsp!
                    }
                    if self.externalPorts != nil {
                        map["ExternalPorts"] = self.externalPorts!
                    }
                    if self.outgoingIp != nil {
                        map["OutgoingIp"] = self.outgoingIp!
                    }
                    if self.outgoingIsp != nil {
                        map["OutgoingIsp"] = self.outgoingIsp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ContainerPorts") {
                        self.containerPorts = dict["ContainerPorts"] as! String
                    }
                    if dict.keys.contains("ExternalIp") {
                        self.externalIp = dict["ExternalIp"] as! String
                    }
                    if dict.keys.contains("ExternalIsp") {
                        self.externalIsp = dict["ExternalIsp"] as! String
                    }
                    if dict.keys.contains("ExternalPorts") {
                        self.externalPorts = dict["ExternalPorts"] as! String
                    }
                    if dict.keys.contains("OutgoingIp") {
                        self.outgoingIp = dict["OutgoingIp"] as! String
                    }
                    if dict.keys.contains("OutgoingIsp") {
                        self.outgoingIsp = dict["OutgoingIsp"] as! String
                    }
                }
            }
            public var network: [DescribeClusterDevicesResponseBody.Devices.PodInfos.Network]?

            public var podId: String?

            public var podIp: String?

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
                if self.network != nil {
                    var tmp : [Any] = []
                    for k in self.network! {
                        tmp.append(k.toMap())
                    }
                    map["Network"] = tmp
                }
                if self.podId != nil {
                    map["PodId"] = self.podId!
                }
                if self.podIp != nil {
                    map["PodIp"] = self.podIp!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Network") {
                    self.network = dict["Network"] as! [DescribeClusterDevicesResponseBody.Devices.PodInfos.Network]
                }
                if dict.keys.contains("PodId") {
                    self.podId = dict["PodId"] as! String
                }
                if dict.keys.contains("PodIp") {
                    self.podIp = dict["PodIp"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var autoRenew: Bool?

        public var autoRenewPeriod: Int32?

        public var description_: String?

        public var edgeNodeName: String?

        public var hostRom: String?

        public var imageId: String?

        public var instanceChargeType: String?

        public var instanceId: String?

        public var instanceName: String?

        public var ipInfos: [DescribeClusterDevicesResponseBody.Devices.IpInfos]?

        public var macAddress: String?

        public var period: Int32?

        public var periodUnit: String?

        public var platformType: String?

        public var podInfos: [DescribeClusterDevicesResponseBody.Devices.PodInfos]?

        public var server: String?

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
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.autoRenewPeriod != nil {
                map["AutoRenewPeriod"] = self.autoRenewPeriod!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.edgeNodeName != nil {
                map["EdgeNodeName"] = self.edgeNodeName!
            }
            if self.hostRom != nil {
                map["HostRom"] = self.hostRom!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.instanceChargeType != nil {
                map["InstanceChargeType"] = self.instanceChargeType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.ipInfos != nil {
                var tmp : [Any] = []
                for k in self.ipInfos! {
                    tmp.append(k.toMap())
                }
                map["IpInfos"] = tmp
            }
            if self.macAddress != nil {
                map["MacAddress"] = self.macAddress!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.periodUnit != nil {
                map["PeriodUnit"] = self.periodUnit!
            }
            if self.platformType != nil {
                map["PlatformType"] = self.platformType!
            }
            if self.podInfos != nil {
                var tmp : [Any] = []
                for k in self.podInfos! {
                    tmp.append(k.toMap())
                }
                map["PodInfos"] = tmp
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenew") {
                self.autoRenew = dict["AutoRenew"] as! Bool
            }
            if dict.keys.contains("AutoRenewPeriod") {
                self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EdgeNodeName") {
                self.edgeNodeName = dict["EdgeNodeName"] as! String
            }
            if dict.keys.contains("HostRom") {
                self.hostRom = dict["HostRom"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("InstanceChargeType") {
                self.instanceChargeType = dict["InstanceChargeType"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("IpInfos") {
                self.ipInfos = dict["IpInfos"] as! [DescribeClusterDevicesResponseBody.Devices.IpInfos]
            }
            if dict.keys.contains("MacAddress") {
                self.macAddress = dict["MacAddress"] as! String
            }
            if dict.keys.contains("Period") {
                self.period = dict["Period"] as! Int32
            }
            if dict.keys.contains("PeriodUnit") {
                self.periodUnit = dict["PeriodUnit"] as! String
            }
            if dict.keys.contains("PlatformType") {
                self.platformType = dict["PlatformType"] as! String
            }
            if dict.keys.contains("PodInfos") {
                self.podInfos = dict["PodInfos"] as! [DescribeClusterDevicesResponseBody.Devices.PodInfos]
            }
            if dict.keys.contains("Server") {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var devices: [DescribeClusterDevicesResponseBody.Devices]?

    public var requestId: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Devices") {
            self.devices = dict["Devices"] as! [DescribeClusterDevicesResponseBody.Devices]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class DescribeClusterDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeClusterDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClustersRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class DescribeClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class InternalPorts : Tea.TeaModel {
            public var ipProtocol: String?

            public var platform: String?

            public var port: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ipProtocol != nil {
                    map["IpProtocol"] = self.ipProtocol!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IpProtocol") {
                    self.ipProtocol = dict["IpProtocol"] as! String
                }
                if dict.keys.contains("Platform") {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! [String]
                }
            }
        }
        public var clusterId: String?

        public var description_: String?

        public var internalPorts: [DescribeClustersResponseBody.Clusters.InternalPorts]?

        public var maintainTime: String?

        public var name: String?

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
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.internalPorts != nil {
                var tmp : [Any] = []
                for k in self.internalPorts! {
                    tmp.append(k.toMap())
                }
                map["InternalPorts"] = tmp
            }
            if self.maintainTime != nil {
                map["MaintainTime"] = self.maintainTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InternalPorts") {
                self.internalPorts = dict["InternalPorts"] as! [DescribeClustersResponseBody.Clusters.InternalPorts]
            }
            if dict.keys.contains("MaintainTime") {
                self.maintainTime = dict["MaintainTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var clusters: [DescribeClustersResponseBody.Clusters]?

    public var requestId: String?

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
        if self.clusters != nil {
            var tmp : [Any] = []
            for k in self.clusters! {
                tmp.append(k.toMap())
            }
            map["Clusters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") {
            self.clusters = dict["Clusters"] as! [DescribeClustersResponseBody.Clusters]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class DescribeClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeContainerInstanceIdRequest : Tea.TeaModel {
    public var nodeName: String?

    public var ownerId: Int64?

    public var podIndex: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.podIndex != nil {
            map["PodIndex"] = self.podIndex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PodIndex") {
            self.podIndex = dict["PodIndex"] as! Int32
        }
    }
}

public class DescribeContainerInstanceIdResponseBody : Tea.TeaModel {
    public class InstanceDetail : Tea.TeaModel {
        public var instanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
        }
    }
    public var instanceDetail: DescribeContainerInstanceIdResponseBody.InstanceDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceDetail != nil {
            map["InstanceDetail"] = self.instanceDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceDetail") {
            var model = DescribeContainerInstanceIdResponseBody.InstanceDetail()
            model.fromMap(dict["InstanceDetail"] as! [String: Any])
            self.instanceDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeContainerInstanceIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerInstanceIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeContainerInstanceIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceRequest : Tea.TeaModel {
    public var id: String?

    public var includeDirectory: Bool?

    public var includeStats: Bool?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.includeDirectory != nil {
            map["IncludeDirectory"] = self.includeDirectory!
        }
        if self.includeStats != nil {
            map["IncludeStats"] = self.includeStats!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("IncludeDirectory") {
            self.includeDirectory = dict["IncludeDirectory"] as! Bool
        }
        if dict.keys.contains("IncludeStats") {
            self.includeStats = dict["IncludeStats"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeDeviceResponseBody : Tea.TeaModel {
    public class Directory : Tea.TeaModel {
        public var createdTime: String?

        public var description_: String?

        public var groupId: String?

        public var id: String?

        public var name: String?

        public var parentId: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
        }
    }
    public class Stats : Tea.TeaModel {
        public var channelNum: Int64?

        public var failedNum: Int64?

        public var offlineNum: Int64?

        public var onlineNum: Int64?

        public var streamNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelNum != nil {
                map["ChannelNum"] = self.channelNum!
            }
            if self.failedNum != nil {
                map["FailedNum"] = self.failedNum!
            }
            if self.offlineNum != nil {
                map["OfflineNum"] = self.offlineNum!
            }
            if self.onlineNum != nil {
                map["OnlineNum"] = self.onlineNum!
            }
            if self.streamNum != nil {
                map["StreamNum"] = self.streamNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelNum") {
                self.channelNum = dict["ChannelNum"] as! Int64
            }
            if dict.keys.contains("FailedNum") {
                self.failedNum = dict["FailedNum"] as! Int64
            }
            if dict.keys.contains("OfflineNum") {
                self.offlineNum = dict["OfflineNum"] as! Int64
            }
            if dict.keys.contains("OnlineNum") {
                self.onlineNum = dict["OnlineNum"] as! Int64
            }
            if dict.keys.contains("StreamNum") {
                self.streamNum = dict["StreamNum"] as! Int64
            }
        }
    }
    public var alarmMethod: String?

    public var autoPos: Bool?

    public var autoStart: Bool?

    public var channelSyncTime: String?

    public var createdTime: String?

    public var description_: String?

    public var directory: DescribeDeviceResponseBody.Directory?

    public var directoryId: String?

    public var dsn: String?

    public var enabled: Bool?

    public var gbId: String?

    public var groupId: String?

    public var id: String?

    public var ip: String?

    public var latitude: String?

    public var longitude: String?

    public var name: String?

    public var params: String?

    public var parentId: String?

    public var password: String?

    public var port: Int64?

    public var posInterval: Int64?

    public var protocol_: String?

    public var registeredTime: String?

    public var requestId: String?

    public var stats: DescribeDeviceResponseBody.Stats?

    public var status: String?

    public var type: String?

    public var url: String?

    public var username: String?

    public var vendor: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.directory?.validate()
        try self.stats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmMethod != nil {
            map["AlarmMethod"] = self.alarmMethod!
        }
        if self.autoPos != nil {
            map["AutoPos"] = self.autoPos!
        }
        if self.autoStart != nil {
            map["AutoStart"] = self.autoStart!
        }
        if self.channelSyncTime != nil {
            map["ChannelSyncTime"] = self.channelSyncTime!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.directory != nil {
            map["Directory"] = self.directory?.toMap()
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.dsn != nil {
            map["Dsn"] = self.dsn!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.latitude != nil {
            map["Latitude"] = self.latitude!
        }
        if self.longitude != nil {
            map["Longitude"] = self.longitude!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.posInterval != nil {
            map["PosInterval"] = self.posInterval!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.registeredTime != nil {
            map["RegisteredTime"] = self.registeredTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stats != nil {
            map["Stats"] = self.stats?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmMethod") {
            self.alarmMethod = dict["AlarmMethod"] as! String
        }
        if dict.keys.contains("AutoPos") {
            self.autoPos = dict["AutoPos"] as! Bool
        }
        if dict.keys.contains("AutoStart") {
            self.autoStart = dict["AutoStart"] as! Bool
        }
        if dict.keys.contains("ChannelSyncTime") {
            self.channelSyncTime = dict["ChannelSyncTime"] as! String
        }
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Directory") {
            var model = DescribeDeviceResponseBody.Directory()
            model.fromMap(dict["Directory"] as! [String: Any])
            self.directory = model
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Dsn") {
            self.dsn = dict["Dsn"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("GbId") {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Latitude") {
            self.latitude = dict["Latitude"] as! String
        }
        if dict.keys.contains("Longitude") {
            self.longitude = dict["Longitude"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int64
        }
        if dict.keys.contains("PosInterval") {
            self.posInterval = dict["PosInterval"] as! Int64
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegisteredTime") {
            self.registeredTime = dict["RegisteredTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Stats") {
            var model = DescribeDeviceResponseBody.Stats()
            model.fromMap(dict["Stats"] as! [String: Any])
            self.stats = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("Vendor") {
            self.vendor = dict["Vendor"] as! String
        }
    }
}

public class DescribeDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceChannelsRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class DescribeDeviceChannelsResponseBody : Tea.TeaModel {
    public class Channels : Tea.TeaModel {
        public var channelId: Int64?

        public var deviceId: String?

        public var deviceStatus: String?

        public var gbId: String?

        public var name: String?

        public var params: String?

        public var streamId: String?

        public var streamStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.gbId != nil {
                map["GbId"] = self.gbId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            if self.streamId != nil {
                map["StreamId"] = self.streamId!
            }
            if self.streamStatus != nil {
                map["StreamStatus"] = self.streamStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! Int64
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DeviceStatus") {
                self.deviceStatus = dict["DeviceStatus"] as! String
            }
            if dict.keys.contains("GbId") {
                self.gbId = dict["GbId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Params") {
                self.params = dict["Params"] as! String
            }
            if dict.keys.contains("StreamId") {
                self.streamId = dict["StreamId"] as! String
            }
            if dict.keys.contains("StreamStatus") {
                self.streamStatus = dict["StreamStatus"] as! String
            }
        }
    }
    public var channels: [DescribeDeviceChannelsResponseBody.Channels]?

    public var pageCount: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

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
        if self.channels != nil {
            var tmp : [Any] = []
            for k in self.channels! {
                tmp.append(k.toMap())
            }
            map["Channels"] = tmp
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if dict.keys.contains("Channels") {
            self.channels = dict["Channels"] as! [DescribeDeviceChannelsResponseBody.Channels]
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDeviceChannelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceChannelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDeviceChannelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceGatewayRequest : Tea.TeaModel {
    public var clientIp: String?

    public var expire: Int64?

    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIp") {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("Expire") {
            self.expire = dict["Expire"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeDeviceGatewayResponseBody : Tea.TeaModel {
    public var host: String?

    public var port: Int64?

    public var protocol_: String?

    public var requestId: String?

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
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int64
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class DescribeDeviceGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDeviceGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeviceURLRequest : Tea.TeaModel {
    public var auth: Bool?

    public var expire: Int64?

    public var id: String?

    public var mode: String?

    public var outProtocol: String?

    public var ownerId: Int64?

    public var stream: String?

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
        if self.auth != nil {
            map["Auth"] = self.auth!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.outProtocol != nil {
            map["OutProtocol"] = self.outProtocol!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Auth") {
            self.auth = dict["Auth"] as! Bool
        }
        if dict.keys.contains("Expire") {
            self.expire = dict["Expire"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("OutProtocol") {
            self.outProtocol = dict["OutProtocol"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Stream") {
            self.stream = dict["Stream"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeDeviceURLResponseBody : Tea.TeaModel {
    public var expireTime: Int64?

    public var requestId: String?

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
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class DescribeDeviceURLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceURLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDeviceURLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDevicesRequest : Tea.TeaModel {
    public var directoryId: String?

    public var dsn: String?

    public var gbId: String?

    public var groupId: String?

    public var id: String?

    public var includeDirectory: Bool?

    public var includeStats: Bool?

    public var name: String?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var parentId: String?

    public var sortBy: String?

    public var sortDirection: String?

    public var status: String?

    public var type: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.dsn != nil {
            map["Dsn"] = self.dsn!
        }
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.includeDirectory != nil {
            map["IncludeDirectory"] = self.includeDirectory!
        }
        if self.includeStats != nil {
            map["IncludeStats"] = self.includeStats!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortDirection != nil {
            map["SortDirection"] = self.sortDirection!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Dsn") {
            self.dsn = dict["Dsn"] as! String
        }
        if dict.keys.contains("GbId") {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("IncludeDirectory") {
            self.includeDirectory = dict["IncludeDirectory"] as! Bool
        }
        if dict.keys.contains("IncludeStats") {
            self.includeStats = dict["IncludeStats"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortDirection") {
            self.sortDirection = dict["SortDirection"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Vendor") {
            self.vendor = dict["Vendor"] as! String
        }
    }
}

public class DescribeDevicesResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public class Directory : Tea.TeaModel {
            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var id: String?

            public var name: String?

            public var parentId: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedTime") {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ParentId") {
                    self.parentId = dict["ParentId"] as! String
                }
            }
        }
        public class Stats : Tea.TeaModel {
            public var channelNum: Int64?

            public var failedNum: Int64?

            public var offlineNum: Int64?

            public var onlineNum: Int64?

            public var streamNum: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channelNum != nil {
                    map["ChannelNum"] = self.channelNum!
                }
                if self.failedNum != nil {
                    map["FailedNum"] = self.failedNum!
                }
                if self.offlineNum != nil {
                    map["OfflineNum"] = self.offlineNum!
                }
                if self.onlineNum != nil {
                    map["OnlineNum"] = self.onlineNum!
                }
                if self.streamNum != nil {
                    map["StreamNum"] = self.streamNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChannelNum") {
                    self.channelNum = dict["ChannelNum"] as! Int64
                }
                if dict.keys.contains("FailedNum") {
                    self.failedNum = dict["FailedNum"] as! Int64
                }
                if dict.keys.contains("OfflineNum") {
                    self.offlineNum = dict["OfflineNum"] as! Int64
                }
                if dict.keys.contains("OnlineNum") {
                    self.onlineNum = dict["OnlineNum"] as! Int64
                }
                if dict.keys.contains("StreamNum") {
                    self.streamNum = dict["StreamNum"] as! Int64
                }
            }
        }
        public var alarmMethod: String?

        public var autoDirectory: Bool?

        public var autoPos: Bool?

        public var autoStart: Bool?

        public var channelSyncTime: String?

        public var createdTime: String?

        public var description_: String?

        public var directory: DescribeDevicesResponseBody.Devices.Directory?

        public var directoryId: String?

        public var dsn: String?

        public var enabled: Bool?

        public var gbId: String?

        public var groupId: String?

        public var id: String?

        public var ip: String?

        public var latitude: String?

        public var longitude: String?

        public var name: String?

        public var params: String?

        public var parentId: String?

        public var password: String?

        public var port: Int64?

        public var posInterval: Int64?

        public var protocol_: String?

        public var registeredTime: String?

        public var stats: DescribeDevicesResponseBody.Devices.Stats?

        public var status: String?

        public var type: String?

        public var url: String?

        public var username: String?

        public var vendor: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.directory?.validate()
            try self.stats?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmMethod != nil {
                map["AlarmMethod"] = self.alarmMethod!
            }
            if self.autoDirectory != nil {
                map["AutoDirectory"] = self.autoDirectory!
            }
            if self.autoPos != nil {
                map["AutoPos"] = self.autoPos!
            }
            if self.autoStart != nil {
                map["AutoStart"] = self.autoStart!
            }
            if self.channelSyncTime != nil {
                map["ChannelSyncTime"] = self.channelSyncTime!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.directory != nil {
                map["Directory"] = self.directory?.toMap()
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.dsn != nil {
                map["Dsn"] = self.dsn!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.gbId != nil {
                map["GbId"] = self.gbId!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.latitude != nil {
                map["Latitude"] = self.latitude!
            }
            if self.longitude != nil {
                map["Longitude"] = self.longitude!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.posInterval != nil {
                map["PosInterval"] = self.posInterval!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.registeredTime != nil {
                map["RegisteredTime"] = self.registeredTime!
            }
            if self.stats != nil {
                map["Stats"] = self.stats?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlarmMethod") {
                self.alarmMethod = dict["AlarmMethod"] as! String
            }
            if dict.keys.contains("AutoDirectory") {
                self.autoDirectory = dict["AutoDirectory"] as! Bool
            }
            if dict.keys.contains("AutoPos") {
                self.autoPos = dict["AutoPos"] as! Bool
            }
            if dict.keys.contains("AutoStart") {
                self.autoStart = dict["AutoStart"] as! Bool
            }
            if dict.keys.contains("ChannelSyncTime") {
                self.channelSyncTime = dict["ChannelSyncTime"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Directory") {
                var model = DescribeDevicesResponseBody.Devices.Directory()
                model.fromMap(dict["Directory"] as! [String: Any])
                self.directory = model
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("Dsn") {
                self.dsn = dict["Dsn"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("GbId") {
                self.gbId = dict["GbId"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Latitude") {
                self.latitude = dict["Latitude"] as! String
            }
            if dict.keys.contains("Longitude") {
                self.longitude = dict["Longitude"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Params") {
                self.params = dict["Params"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int64
            }
            if dict.keys.contains("PosInterval") {
                self.posInterval = dict["PosInterval"] as! Int64
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("RegisteredTime") {
                self.registeredTime = dict["RegisteredTime"] as! String
            }
            if dict.keys.contains("Stats") {
                var model = DescribeDevicesResponseBody.Devices.Stats()
                model.fromMap(dict["Stats"] as! [String: Any])
                self.stats = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
            if dict.keys.contains("Vendor") {
                self.vendor = dict["Vendor"] as! String
            }
        }
    }
    public var devices: [DescribeDevicesResponseBody.Devices]?

    public var pageCount: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

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
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if dict.keys.contains("Devices") {
            self.devices = dict["Devices"] as! [DescribeDevicesResponseBody.Devices]
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDirectoriesRequest : Tea.TeaModel {
    public var groupId: String?

    public var noPagination: Bool?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var parentId: String?

    public var sortBy: String?

    public var sortDirection: String?

    public override init() {
        super.init()
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
        if self.noPagination != nil {
            map["NoPagination"] = self.noPagination!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortDirection != nil {
            map["SortDirection"] = self.sortDirection!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("NoPagination") {
            self.noPagination = dict["NoPagination"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortDirection") {
            self.sortDirection = dict["SortDirection"] as! String
        }
    }
}

public class DescribeDirectoriesResponseBody : Tea.TeaModel {
    public class Directories : Tea.TeaModel {
        public var createdTime: String?

        public var description_: String?

        public var groupId: String?

        public var id: String?

        public var name: String?

        public var parentId: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
        }
    }
    public var directories: [DescribeDirectoriesResponseBody.Directories]?

    public var pageCount: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

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
        if self.directories != nil {
            var tmp : [Any] = []
            for k in self.directories! {
                tmp.append(k.toMap())
            }
            map["Directories"] = tmp
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if dict.keys.contains("Directories") {
            self.directories = dict["Directories"] as! [DescribeDirectoriesResponseBody.Directories]
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDirectoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDirectoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDirectoryRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeDirectoryResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var groupId: String?

    public var id: String?

    public var name: String?

    public var parentId: String?

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
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGroupRequest : Tea.TeaModel {
    public var id: String?

    public var includeStats: Bool?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.includeStats != nil {
            map["IncludeStats"] = self.includeStats!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("IncludeStats") {
            self.includeStats = dict["IncludeStats"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeGroupResponseBody : Tea.TeaModel {
    public class Stats : Tea.TeaModel {
        public var deviceNum: Int64?

        public var iedNum: Int64?

        public var ipcNum: Int64?

        public var platformNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceNum != nil {
                map["DeviceNum"] = self.deviceNum!
            }
            if self.iedNum != nil {
                map["IedNum"] = self.iedNum!
            }
            if self.ipcNum != nil {
                map["IpcNum"] = self.ipcNum!
            }
            if self.platformNum != nil {
                map["PlatformNum"] = self.platformNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceNum") {
                self.deviceNum = dict["DeviceNum"] as! Int64
            }
            if dict.keys.contains("IedNum") {
                self.iedNum = dict["IedNum"] as! Int64
            }
            if dict.keys.contains("IpcNum") {
                self.ipcNum = dict["IpcNum"] as! Int64
            }
            if dict.keys.contains("PlatformNum") {
                self.platformNum = dict["PlatformNum"] as! Int64
            }
        }
    }
    public var aliasId: String?

    public var app: String?

    public var callback: String?

    public var createdTime: String?

    public var description_: String?

    public var enabled: Bool?

    public var gbId: String?

    public var gbIp: String?

    public var gbPort: Int64?

    public var gbTcpPorts: [String]?

    public var gbUdpPorts: [String]?

    public var id: String?

    public var inProtocol: String?

    public var lazyPull: Bool?

    public var name: String?

    public var outProtocol: String?

    public var playDomain: String?

    public var pushDomain: String?

    public var region: String?

    public var requestId: String?

    public var stats: DescribeGroupResponseBody.Stats?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasId != nil {
            map["AliasId"] = self.aliasId!
        }
        if self.app != nil {
            map["App"] = self.app!
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.gbIp != nil {
            map["GbIp"] = self.gbIp!
        }
        if self.gbPort != nil {
            map["GbPort"] = self.gbPort!
        }
        if self.gbTcpPorts != nil {
            map["GbTcpPorts"] = self.gbTcpPorts!
        }
        if self.gbUdpPorts != nil {
            map["GbUdpPorts"] = self.gbUdpPorts!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.inProtocol != nil {
            map["InProtocol"] = self.inProtocol!
        }
        if self.lazyPull != nil {
            map["LazyPull"] = self.lazyPull!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.outProtocol != nil {
            map["OutProtocol"] = self.outProtocol!
        }
        if self.playDomain != nil {
            map["PlayDomain"] = self.playDomain!
        }
        if self.pushDomain != nil {
            map["PushDomain"] = self.pushDomain!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stats != nil {
            map["Stats"] = self.stats?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasId") {
            self.aliasId = dict["AliasId"] as! String
        }
        if dict.keys.contains("App") {
            self.app = dict["App"] as! String
        }
        if dict.keys.contains("Callback") {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("GbId") {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("GbIp") {
            self.gbIp = dict["GbIp"] as! String
        }
        if dict.keys.contains("GbPort") {
            self.gbPort = dict["GbPort"] as! Int64
        }
        if dict.keys.contains("GbTcpPorts") {
            self.gbTcpPorts = dict["GbTcpPorts"] as! [String]
        }
        if dict.keys.contains("GbUdpPorts") {
            self.gbUdpPorts = dict["GbUdpPorts"] as! [String]
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InProtocol") {
            self.inProtocol = dict["InProtocol"] as! String
        }
        if dict.keys.contains("LazyPull") {
            self.lazyPull = dict["LazyPull"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OutProtocol") {
            self.outProtocol = dict["OutProtocol"] as! String
        }
        if dict.keys.contains("PlayDomain") {
            self.playDomain = dict["PlayDomain"] as! String
        }
        if dict.keys.contains("PushDomain") {
            self.pushDomain = dict["PushDomain"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Stats") {
            var model = DescribeGroupResponseBody.Stats()
            model.fromMap(dict["Stats"] as! [String: Any])
            self.stats = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGroupsRequest : Tea.TeaModel {
    public var id: String?

    public var inProtocol: String?

    public var includeStats: Bool?

    public var name: String?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var region: String?

    public var sortBy: String?

    public var sortDirection: String?

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
        if self.inProtocol != nil {
            map["InProtocol"] = self.inProtocol!
        }
        if self.includeStats != nil {
            map["IncludeStats"] = self.includeStats!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortDirection != nil {
            map["SortDirection"] = self.sortDirection!
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
        if dict.keys.contains("InProtocol") {
            self.inProtocol = dict["InProtocol"] as! String
        }
        if dict.keys.contains("IncludeStats") {
            self.includeStats = dict["IncludeStats"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortDirection") {
            self.sortDirection = dict["SortDirection"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Stats : Tea.TeaModel {
            public var deviceNum: Int64?

            public var iedNum: Int64?

            public var ipcNum: Int64?

            public var platformNum: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceNum != nil {
                    map["DeviceNum"] = self.deviceNum!
                }
                if self.iedNum != nil {
                    map["IedNum"] = self.iedNum!
                }
                if self.ipcNum != nil {
                    map["IpcNum"] = self.ipcNum!
                }
                if self.platformNum != nil {
                    map["PlatformNum"] = self.platformNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceNum") {
                    self.deviceNum = dict["DeviceNum"] as! Int64
                }
                if dict.keys.contains("IedNum") {
                    self.iedNum = dict["IedNum"] as! Int64
                }
                if dict.keys.contains("IpcNum") {
                    self.ipcNum = dict["IpcNum"] as! Int64
                }
                if dict.keys.contains("PlatformNum") {
                    self.platformNum = dict["PlatformNum"] as! Int64
                }
            }
        }
        public var aliasId: String?

        public var app: String?

        public var callback: String?

        public var createdTime: String?

        public var description_: String?

        public var enabled: Bool?

        public var gbId: String?

        public var gbIp: String?

        public var gbPort: Int64?

        public var gbTcpPorts: [String]?

        public var gbUdpPorts: [String]?

        public var id: String?

        public var inProtocol: String?

        public var lazyPull: Bool?

        public var name: String?

        public var outProtocol: String?

        public var playDomain: String?

        public var pushDomain: String?

        public var region: String?

        public var stats: DescribeGroupsResponseBody.Groups.Stats?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.stats?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliasId != nil {
                map["AliasId"] = self.aliasId!
            }
            if self.app != nil {
                map["App"] = self.app!
            }
            if self.callback != nil {
                map["Callback"] = self.callback!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.gbId != nil {
                map["GbId"] = self.gbId!
            }
            if self.gbIp != nil {
                map["GbIp"] = self.gbIp!
            }
            if self.gbPort != nil {
                map["GbPort"] = self.gbPort!
            }
            if self.gbTcpPorts != nil {
                map["GbTcpPorts"] = self.gbTcpPorts!
            }
            if self.gbUdpPorts != nil {
                map["GbUdpPorts"] = self.gbUdpPorts!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.inProtocol != nil {
                map["InProtocol"] = self.inProtocol!
            }
            if self.lazyPull != nil {
                map["LazyPull"] = self.lazyPull!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.outProtocol != nil {
                map["OutProtocol"] = self.outProtocol!
            }
            if self.playDomain != nil {
                map["PlayDomain"] = self.playDomain!
            }
            if self.pushDomain != nil {
                map["PushDomain"] = self.pushDomain!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.stats != nil {
                map["Stats"] = self.stats?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliasId") {
                self.aliasId = dict["AliasId"] as! String
            }
            if dict.keys.contains("App") {
                self.app = dict["App"] as! String
            }
            if dict.keys.contains("Callback") {
                self.callback = dict["Callback"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("GbId") {
                self.gbId = dict["GbId"] as! String
            }
            if dict.keys.contains("GbIp") {
                self.gbIp = dict["GbIp"] as! String
            }
            if dict.keys.contains("GbPort") {
                self.gbPort = dict["GbPort"] as! Int64
            }
            if dict.keys.contains("GbTcpPorts") {
                self.gbTcpPorts = dict["GbTcpPorts"] as! [String]
            }
            if dict.keys.contains("GbUdpPorts") {
                self.gbUdpPorts = dict["GbUdpPorts"] as! [String]
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("InProtocol") {
                self.inProtocol = dict["InProtocol"] as! String
            }
            if dict.keys.contains("LazyPull") {
                self.lazyPull = dict["LazyPull"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OutProtocol") {
                self.outProtocol = dict["OutProtocol"] as! String
            }
            if dict.keys.contains("PlayDomain") {
                self.playDomain = dict["PlayDomain"] as! String
            }
            if dict.keys.contains("PushDomain") {
                self.pushDomain = dict["PushDomain"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Stats") {
                var model = DescribeGroupsResponseBody.Groups.Stats()
                model.fromMap(dict["Stats"] as! [String: Any])
                self.stats = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var groups: [DescribeGroupsResponseBody.Groups]?

    public var pageCount: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

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
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if dict.keys.contains("Groups") {
            self.groups = dict["Groups"] as! [DescribeGroupsResponseBody.Groups]
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNodeDevicesInfoRequest : Tea.TeaModel {
    public var nodeName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeNodeDevicesInfoResponseBody : Tea.TeaModel {
    public class NodeDevices : Tea.TeaModel {
        public class DeviceInfos : Tea.TeaModel {
            public var IP: String?

            public var instanceId: String?

            public var name: String?

            public var server: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.server != nil {
                    map["Server"] = self.server!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IP") {
                    self.IP = dict["IP"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Server") {
                    self.server = dict["Server"] as! String
                }
            }
        }
        public var deviceInfos: [DescribeNodeDevicesInfoResponseBody.NodeDevices.DeviceInfos]?

        public var nodeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceInfos != nil {
                var tmp : [Any] = []
                for k in self.deviceInfos! {
                    tmp.append(k.toMap())
                }
                map["DeviceInfos"] = tmp
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceInfos") {
                self.deviceInfos = dict["DeviceInfos"] as! [DescribeNodeDevicesInfoResponseBody.NodeDevices.DeviceInfos]
            }
            if dict.keys.contains("NodeName") {
                self.nodeName = dict["NodeName"] as! String
            }
        }
    }
    public var nodeDevices: [DescribeNodeDevicesInfoResponseBody.NodeDevices]?

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
        if self.nodeDevices != nil {
            var tmp : [Any] = []
            for k in self.nodeDevices! {
                tmp.append(k.toMap())
            }
            map["NodeDevices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeDevices") {
            self.nodeDevices = dict["NodeDevices"] as! [DescribeNodeDevicesInfoResponseBody.NodeDevices]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeNodeDevicesInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeDevicesInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeNodeDevicesInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParentPlatformRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeParentPlatformResponseBody : Tea.TeaModel {
    public var autoStart: Bool?

    public var clientAuth: Bool?

    public var clientGbId: String?

    public var clientIp: String?

    public var clientPassword: String?

    public var clientPort: Int64?

    public var clientUsername: String?

    public var createdTime: String?

    public var description_: String?

    public var gbId: String?

    public var id: String?

    public var ip: String?

    public var name: String?

    public var port: Int64?

    public var protocol_: String?

    public var requestId: String?

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
        if self.autoStart != nil {
            map["AutoStart"] = self.autoStart!
        }
        if self.clientAuth != nil {
            map["ClientAuth"] = self.clientAuth!
        }
        if self.clientGbId != nil {
            map["ClientGbId"] = self.clientGbId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientPassword != nil {
            map["ClientPassword"] = self.clientPassword!
        }
        if self.clientPort != nil {
            map["ClientPort"] = self.clientPort!
        }
        if self.clientUsername != nil {
            map["ClientUsername"] = self.clientUsername!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoStart") {
            self.autoStart = dict["AutoStart"] as! Bool
        }
        if dict.keys.contains("ClientAuth") {
            self.clientAuth = dict["ClientAuth"] as! Bool
        }
        if dict.keys.contains("ClientGbId") {
            self.clientGbId = dict["ClientGbId"] as! String
        }
        if dict.keys.contains("ClientIp") {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("ClientPassword") {
            self.clientPassword = dict["ClientPassword"] as! String
        }
        if dict.keys.contains("ClientPort") {
            self.clientPort = dict["ClientPort"] as! Int64
        }
        if dict.keys.contains("ClientUsername") {
            self.clientUsername = dict["ClientUsername"] as! String
        }
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GbId") {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int64
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeParentPlatformResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParentPlatformResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeParentPlatformResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParentPlatformDevicesRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var sortBy: String?

    public var sortDirection: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortDirection != nil {
            map["SortDirection"] = self.sortDirection!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortDirection") {
            self.sortDirection = dict["SortDirection"] as! String
        }
    }
}

public class DescribeParentPlatformDevicesResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var gbId: String?

        public var groupId: String?

        public var id: String?

        public var name: String?

        public var parentId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gbId != nil {
                map["GbId"] = self.gbId!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GbId") {
                self.gbId = dict["GbId"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
        }
    }
    public var devices: [DescribeParentPlatformDevicesResponseBody.Devices]?

    public var pageCount: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

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
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if dict.keys.contains("Devices") {
            self.devices = dict["Devices"] as! [DescribeParentPlatformDevicesResponseBody.Devices]
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeParentPlatformDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParentPlatformDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeParentPlatformDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParentPlatformsRequest : Tea.TeaModel {
    public var gbId: String?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var sortBy: String?

    public var sortDirection: String?

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
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortDirection != nil {
            map["SortDirection"] = self.sortDirection!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GbId") {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortDirection") {
            self.sortDirection = dict["SortDirection"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeParentPlatformsResponseBody : Tea.TeaModel {
    public class Platforms : Tea.TeaModel {
        public var autoStart: Bool?

        public var clientAuth: Bool?

        public var clientGbId: String?

        public var clientIp: String?

        public var clientPassword: String?

        public var clientPort: Int64?

        public var clientUsername: String?

        public var createdTime: String?

        public var description_: String?

        public var gbId: String?

        public var id: String?

        public var ip: String?

        public var name: String?

        public var port: Int64?

        public var protocol_: String?

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
            if self.autoStart != nil {
                map["AutoStart"] = self.autoStart!
            }
            if self.clientAuth != nil {
                map["ClientAuth"] = self.clientAuth!
            }
            if self.clientGbId != nil {
                map["ClientGbId"] = self.clientGbId!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.clientPassword != nil {
                map["ClientPassword"] = self.clientPassword!
            }
            if self.clientPort != nil {
                map["ClientPort"] = self.clientPort!
            }
            if self.clientUsername != nil {
                map["ClientUsername"] = self.clientUsername!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gbId != nil {
                map["GbId"] = self.gbId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoStart") {
                self.autoStart = dict["AutoStart"] as! Bool
            }
            if dict.keys.contains("ClientAuth") {
                self.clientAuth = dict["ClientAuth"] as! Bool
            }
            if dict.keys.contains("ClientGbId") {
                self.clientGbId = dict["ClientGbId"] as! String
            }
            if dict.keys.contains("ClientIp") {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("ClientPassword") {
                self.clientPassword = dict["ClientPassword"] as! String
            }
            if dict.keys.contains("ClientPort") {
                self.clientPort = dict["ClientPort"] as! Int64
            }
            if dict.keys.contains("ClientUsername") {
                self.clientUsername = dict["ClientUsername"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GbId") {
                self.gbId = dict["GbId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int64
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var pageCount: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var platforms: [DescribeParentPlatformsResponseBody.Platforms]?

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
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.platforms != nil {
            var tmp : [Any] = []
            for k in self.platforms! {
                tmp.append(k.toMap())
            }
            map["Platforms"] = tmp
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
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Platforms") {
            self.platforms = dict["Platforms"] as! [DescribeParentPlatformsResponseBody.Platforms]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeParentPlatformsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParentPlatformsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeParentPlatformsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePresetsRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribePresetsResponseBody : Tea.TeaModel {
    public class Presets : Tea.TeaModel {
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var id: String?

    public var presets: [DescribePresetsResponseBody.Presets]?

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
        if self.presets != nil {
            var tmp : [Any] = []
            for k in self.presets! {
                tmp.append(k.toMap())
            }
            map["Presets"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Presets") {
            self.presets = dict["Presets"] as! [DescribePresetsResponseBody.Presets]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePresetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePresetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePresetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurchasedDeviceRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribePurchasedDeviceResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var groupId: String?

    public var groupName: String?

    public var id: String?

    public var name: String?

    public var orderId: String?

    public var region: String?

    public var registerCode: String?

    public var requestId: String?

    public var subType: String?

    public var type: String?

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
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.registerCode != nil {
            map["RegisterCode"] = self.registerCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegisterCode") {
            self.registerCode = dict["RegisterCode"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubType") {
            self.subType = dict["SubType"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Vendor") {
            self.vendor = dict["Vendor"] as! String
        }
    }
}

public class DescribePurchasedDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurchasedDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePurchasedDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurchasedDevicesRequest : Tea.TeaModel {
    public var groupId: String?

    public var id: String?

    public var name: String?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var sortBy: String?

    public var sortDirection: String?

    public var subType: String?

    public var type: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortDirection != nil {
            map["SortDirection"] = self.sortDirection!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortDirection") {
            self.sortDirection = dict["SortDirection"] as! String
        }
        if dict.keys.contains("SubType") {
            self.subType = dict["SubType"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Vendor") {
            self.vendor = dict["Vendor"] as! String
        }
    }
}

public class DescribePurchasedDevicesResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var createdTime: String?

        public var description_: String?

        public var groupId: String?

        public var groupName: String?

        public var id: String?

        public var name: String?

        public var orderId: String?

        public var region: String?

        public var registerCode: String?

        public var subType: String?

        public var type: String?

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
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.registerCode != nil {
                map["RegisterCode"] = self.registerCode!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("RegisterCode") {
                self.registerCode = dict["RegisterCode"] as! String
            }
            if dict.keys.contains("SubType") {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Vendor") {
                self.vendor = dict["Vendor"] as! String
            }
        }
    }
    public var devices: [DescribePurchasedDevicesResponseBody.Devices]?

    public var pageCount: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

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
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if dict.keys.contains("Devices") {
            self.devices = dict["Devices"] as! [DescribePurchasedDevicesResponseBody.Devices]
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribePurchasedDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurchasedDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePurchasedDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRecordsRequest : Tea.TeaModel {
    public var endTime: String?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var privateBucket: Bool?

    public var sortBy: String?

    public var sortDirection: String?

    public var startTime: String?

    public var streamId: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.privateBucket != nil {
            map["PrivateBucket"] = self.privateBucket!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortDirection != nil {
            map["SortDirection"] = self.sortDirection!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.streamId != nil {
            map["StreamId"] = self.streamId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PrivateBucket") {
            self.privateBucket = dict["PrivateBucket"] as! Bool
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortDirection") {
            self.sortDirection = dict["SortDirection"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StreamId") {
            self.streamId = dict["StreamId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var endTime: String?

        public var fileFormat: String?

        public var height: Int64?

        public var id: String?

        public var ossBucket: String?

        public var ossEndpoint: String?

        public var ossObject: String?

        public var startTime: String?

        public var streamId: String?

        public var templateId: String?

        public var type: String?

        public var url: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.fileFormat != nil {
                map["FileFormat"] = self.fileFormat!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.ossBucket != nil {
                map["OssBucket"] = self.ossBucket!
            }
            if self.ossEndpoint != nil {
                map["OssEndpoint"] = self.ossEndpoint!
            }
            if self.ossObject != nil {
                map["OssObject"] = self.ossObject!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.streamId != nil {
                map["StreamId"] = self.streamId!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("FileFormat") {
                self.fileFormat = dict["FileFormat"] as! String
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("OssBucket") {
                self.ossBucket = dict["OssBucket"] as! String
            }
            if dict.keys.contains("OssEndpoint") {
                self.ossEndpoint = dict["OssEndpoint"] as! String
            }
            if dict.keys.contains("OssObject") {
                self.ossObject = dict["OssObject"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StreamId") {
                self.streamId = dict["StreamId"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Int64
            }
        }
    }
    public var nextStartTime: String?

    public var pageCount: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var records: [DescribeRecordsResponseBody.Records]?

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
        if self.nextStartTime != nil {
            map["NextStartTime"] = self.nextStartTime!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
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
        if dict.keys.contains("NextStartTime") {
            self.nextStartTime = dict["NextStartTime"] as! String
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Records") {
            self.records = dict["Records"] as! [DescribeRecordsResponseBody.Records]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRenderingDevicesRequest : Tea.TeaModel {
    public var instanceIds: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeRenderingDevicesResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public class IpInfos : Tea.TeaModel {
            public var externalIp: String?

            public var externalPort: String?

            public var ISP: String?

            public var internalIp: String?

            public var internalPort: String?

            public var ipProtocol: String?

            public var natType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.externalIp != nil {
                    map["ExternalIp"] = self.externalIp!
                }
                if self.externalPort != nil {
                    map["ExternalPort"] = self.externalPort!
                }
                if self.ISP != nil {
                    map["ISP"] = self.ISP!
                }
                if self.internalIp != nil {
                    map["InternalIp"] = self.internalIp!
                }
                if self.internalPort != nil {
                    map["InternalPort"] = self.internalPort!
                }
                if self.ipProtocol != nil {
                    map["IpProtocol"] = self.ipProtocol!
                }
                if self.natType != nil {
                    map["NatType"] = self.natType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExternalIp") {
                    self.externalIp = dict["ExternalIp"] as! String
                }
                if dict.keys.contains("ExternalPort") {
                    self.externalPort = dict["ExternalPort"] as! String
                }
                if dict.keys.contains("ISP") {
                    self.ISP = dict["ISP"] as! String
                }
                if dict.keys.contains("InternalIp") {
                    self.internalIp = dict["InternalIp"] as! String
                }
                if dict.keys.contains("InternalPort") {
                    self.internalPort = dict["InternalPort"] as! String
                }
                if dict.keys.contains("IpProtocol") {
                    self.ipProtocol = dict["IpProtocol"] as! String
                }
                if dict.keys.contains("NatType") {
                    self.natType = dict["NatType"] as! String
                }
            }
        }
        public class PodInfos : Tea.TeaModel {
            public class Network : Tea.TeaModel {
                public var containerPorts: String?

                public var externalIp: String?

                public var externalIsp: String?

                public var externalPorts: String?

                public var outgoingIp: String?

                public var outgoingIsp: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.containerPorts != nil {
                        map["ContainerPorts"] = self.containerPorts!
                    }
                    if self.externalIp != nil {
                        map["ExternalIp"] = self.externalIp!
                    }
                    if self.externalIsp != nil {
                        map["ExternalIsp"] = self.externalIsp!
                    }
                    if self.externalPorts != nil {
                        map["ExternalPorts"] = self.externalPorts!
                    }
                    if self.outgoingIp != nil {
                        map["OutgoingIp"] = self.outgoingIp!
                    }
                    if self.outgoingIsp != nil {
                        map["OutgoingIsp"] = self.outgoingIsp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ContainerPorts") {
                        self.containerPorts = dict["ContainerPorts"] as! String
                    }
                    if dict.keys.contains("ExternalIp") {
                        self.externalIp = dict["ExternalIp"] as! String
                    }
                    if dict.keys.contains("ExternalIsp") {
                        self.externalIsp = dict["ExternalIsp"] as! String
                    }
                    if dict.keys.contains("ExternalPorts") {
                        self.externalPorts = dict["ExternalPorts"] as! String
                    }
                    if dict.keys.contains("OutgoingIp") {
                        self.outgoingIp = dict["OutgoingIp"] as! String
                    }
                    if dict.keys.contains("OutgoingIsp") {
                        self.outgoingIsp = dict["OutgoingIsp"] as! String
                    }
                }
            }
            public var network: [DescribeRenderingDevicesResponseBody.Devices.PodInfos.Network]?

            public var podId: String?

            public var podIp: String?

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
                if self.network != nil {
                    var tmp : [Any] = []
                    for k in self.network! {
                        tmp.append(k.toMap())
                    }
                    map["Network"] = tmp
                }
                if self.podId != nil {
                    map["PodId"] = self.podId!
                }
                if self.podIp != nil {
                    map["PodIp"] = self.podIp!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Network") {
                    self.network = dict["Network"] as! [DescribeRenderingDevicesResponseBody.Devices.PodInfos.Network]
                }
                if dict.keys.contains("PodId") {
                    self.podId = dict["PodId"] as! String
                }
                if dict.keys.contains("PodIp") {
                    self.podIp = dict["PodIp"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var autoRenew: Bool?

        public var autoRenewPeriod: Int32?

        public var clusterId: String?

        public var description_: String?

        public var edgeNodeName: String?

        public var hostRom: String?

        public var imageId: String?

        public var instanceChargeType: String?

        public var instanceId: String?

        public var instanceName: String?

        public var ipInfos: [DescribeRenderingDevicesResponseBody.Devices.IpInfos]?

        public var macAddress: String?

        public var period: Int32?

        public var periodUnit: String?

        public var platformType: String?

        public var podInfos: [DescribeRenderingDevicesResponseBody.Devices.PodInfos]?

        public var serverName: String?

        public var specification: String?

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
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.autoRenewPeriod != nil {
                map["AutoRenewPeriod"] = self.autoRenewPeriod!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.edgeNodeName != nil {
                map["EdgeNodeName"] = self.edgeNodeName!
            }
            if self.hostRom != nil {
                map["HostRom"] = self.hostRom!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.instanceChargeType != nil {
                map["InstanceChargeType"] = self.instanceChargeType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.ipInfos != nil {
                var tmp : [Any] = []
                for k in self.ipInfos! {
                    tmp.append(k.toMap())
                }
                map["IpInfos"] = tmp
            }
            if self.macAddress != nil {
                map["MacAddress"] = self.macAddress!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.periodUnit != nil {
                map["PeriodUnit"] = self.periodUnit!
            }
            if self.platformType != nil {
                map["PlatformType"] = self.platformType!
            }
            if self.podInfos != nil {
                var tmp : [Any] = []
                for k in self.podInfos! {
                    tmp.append(k.toMap())
                }
                map["PodInfos"] = tmp
            }
            if self.serverName != nil {
                map["ServerName"] = self.serverName!
            }
            if self.specification != nil {
                map["Specification"] = self.specification!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenew") {
                self.autoRenew = dict["AutoRenew"] as! Bool
            }
            if dict.keys.contains("AutoRenewPeriod") {
                self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EdgeNodeName") {
                self.edgeNodeName = dict["EdgeNodeName"] as! String
            }
            if dict.keys.contains("HostRom") {
                self.hostRom = dict["HostRom"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("InstanceChargeType") {
                self.instanceChargeType = dict["InstanceChargeType"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("IpInfos") {
                self.ipInfos = dict["IpInfos"] as! [DescribeRenderingDevicesResponseBody.Devices.IpInfos]
            }
            if dict.keys.contains("MacAddress") {
                self.macAddress = dict["MacAddress"] as! String
            }
            if dict.keys.contains("Period") {
                self.period = dict["Period"] as! Int32
            }
            if dict.keys.contains("PeriodUnit") {
                self.periodUnit = dict["PeriodUnit"] as! String
            }
            if dict.keys.contains("PlatformType") {
                self.platformType = dict["PlatformType"] as! String
            }
            if dict.keys.contains("PodInfos") {
                self.podInfos = dict["PodInfos"] as! [DescribeRenderingDevicesResponseBody.Devices.PodInfos]
            }
            if dict.keys.contains("ServerName") {
                self.serverName = dict["ServerName"] as! String
            }
            if dict.keys.contains("Specification") {
                self.specification = dict["Specification"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var devices: [DescribeRenderingDevicesResponseBody.Devices]?

    public var requestId: String?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Devices") {
            self.devices = dict["Devices"] as! [DescribeRenderingDevicesResponseBody.Devices]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class DescribeRenderingDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRenderingDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRenderingDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStreamRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeStreamResponseBody : Tea.TeaModel {
    public var app: String?

    public var createdTime: String?

    public var deviceId: String?

    public var enabled: Bool?

    public var groupId: String?

    public var height: Int32?

    public var id: String?

    public var name: String?

    public var playDomain: String?

    public var protocol_: String?

    public var pushDomain: String?

    public var requestId: String?

    public var status: String?

    public var width: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.playDomain != nil {
            map["PlayDomain"] = self.playDomain!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.pushDomain != nil {
            map["PushDomain"] = self.pushDomain!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.app = dict["App"] as! String
        }
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Height") {
            self.height = dict["Height"] as! Int32
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PlayDomain") {
            self.playDomain = dict["PlayDomain"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("PushDomain") {
            self.pushDomain = dict["PushDomain"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Width") {
            self.width = dict["Width"] as! Int32
        }
    }
}

public class DescribeStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStreamURLRequest : Tea.TeaModel {
    public var auth: Bool?

    public var authKey: String?

    public var endTime: Int64?

    public var expire: Int64?

    public var id: String?

    public var outProtocol: String?

    public var ownerId: Int64?

    public var startTime: Int64?

    public var transcode: String?

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
        if self.auth != nil {
            map["Auth"] = self.auth!
        }
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.outProtocol != nil {
            map["OutProtocol"] = self.outProtocol!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.transcode != nil {
            map["Transcode"] = self.transcode!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Auth") {
            self.auth = dict["Auth"] as! Bool
        }
        if dict.keys.contains("AuthKey") {
            self.authKey = dict["AuthKey"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Expire") {
            self.expire = dict["Expire"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OutProtocol") {
            self.outProtocol = dict["OutProtocol"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Transcode") {
            self.transcode = dict["Transcode"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeStreamURLResponseBody : Tea.TeaModel {
    public var expireTime: Int64?

    public var requestId: String?

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
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class DescribeStreamURLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStreamURLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeStreamURLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStreamVodListRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var id: String?

    public var ownerId: Int64?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeStreamVodListResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var endTime: Int64?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var records: [DescribeStreamVodListResponseBody.Records]?

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
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Records") {
            self.records = dict["Records"] as! [DescribeStreamVodListResponseBody.Records]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeStreamVodListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStreamVodListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeStreamVodListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStreamsRequest : Tea.TeaModel {
    public var app: String?

    public var deviceId: String?

    public var domain: String?

    public var groupId: String?

    public var id: String?

    public var name: String?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var parentId: String?

    public var sortBy: String?

    public var sortDirection: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortDirection != nil {
            map["SortDirection"] = self.sortDirection!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.app = dict["App"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortDirection") {
            self.sortDirection = dict["SortDirection"] as! String
        }
    }
}

public class DescribeStreamsResponseBody : Tea.TeaModel {
    public class Streams : Tea.TeaModel {
        public var app: String?

        public var createdTime: String?

        public var deviceId: String?

        public var enabled: Bool?

        public var groupId: String?

        public var height: Int32?

        public var id: String?

        public var name: String?

        public var playDomain: String?

        public var protocol_: String?

        public var pushDomain: String?

        public var status: String?

        public var width: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.app != nil {
                map["App"] = self.app!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.playDomain != nil {
                map["PlayDomain"] = self.playDomain!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.pushDomain != nil {
                map["PushDomain"] = self.pushDomain!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("App") {
                self.app = dict["App"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Int32
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PlayDomain") {
                self.playDomain = dict["PlayDomain"] as! String
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("PushDomain") {
                self.pushDomain = dict["PushDomain"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Int32
            }
        }
    }
    public var pageCount: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var streams: [DescribeStreamsResponseBody.Streams]?

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
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.streams != nil {
            var tmp : [Any] = []
            for k in self.streams! {
                tmp.append(k.toMap())
            }
            map["Streams"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Streams") {
            self.streams = dict["Streams"] as! [DescribeStreamsResponseBody.Streams]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeStreamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStreamsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeStreamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTemplateRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeTemplateResponseBody : Tea.TeaModel {
    public class TransConfigs : Tea.TeaModel {
        public var fps: Int64?

        public var gop: Int64?

        public var height: Int64?

        public var id: String?

        public var name: String?

        public var videoBitrate: Int64?

        public var videoCodec: String?

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
            if self.fps != nil {
                map["Fps"] = self.fps!
            }
            if self.gop != nil {
                map["Gop"] = self.gop!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.videoBitrate != nil {
                map["VideoBitrate"] = self.videoBitrate!
            }
            if self.videoCodec != nil {
                map["VideoCodec"] = self.videoCodec!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Fps") {
                self.fps = dict["Fps"] as! Int64
            }
            if dict.keys.contains("Gop") {
                self.gop = dict["Gop"] as! Int64
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("VideoBitrate") {
                self.videoBitrate = dict["VideoBitrate"] as! Int64
            }
            if dict.keys.contains("VideoCodec") {
                self.videoCodec = dict["VideoCodec"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Int64
            }
        }
    }
    public var callback: String?

    public var createdTime: String?

    public var description_: String?

    public var fileFormat: String?

    public var flv: String?

    public var hlsM3u8: String?

    public var hlsTs: String?

    public var id: String?

    public var interval: Int64?

    public var jpgOnDemand: String?

    public var jpgOverwrite: String?

    public var jpgSequence: String?

    public var mp4: String?

    public var name: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var ossFilePrefix: String?

    public var region: String?

    public var requestId: String?

    public var retention: Int64?

    public var transConfigs: [DescribeTemplateResponseBody.TransConfigs]?

    public var trigger: String?

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
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileFormat != nil {
            map["FileFormat"] = self.fileFormat!
        }
        if self.flv != nil {
            map["Flv"] = self.flv!
        }
        if self.hlsM3u8 != nil {
            map["HlsM3u8"] = self.hlsM3u8!
        }
        if self.hlsTs != nil {
            map["HlsTs"] = self.hlsTs!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.jpgOnDemand != nil {
            map["JpgOnDemand"] = self.jpgOnDemand!
        }
        if self.jpgOverwrite != nil {
            map["JpgOverwrite"] = self.jpgOverwrite!
        }
        if self.jpgSequence != nil {
            map["JpgSequence"] = self.jpgSequence!
        }
        if self.mp4 != nil {
            map["Mp4"] = self.mp4!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.ossFilePrefix != nil {
            map["OssFilePrefix"] = self.ossFilePrefix!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.transConfigs != nil {
            var tmp : [Any] = []
            for k in self.transConfigs! {
                tmp.append(k.toMap())
            }
            map["TransConfigs"] = tmp
        }
        if self.trigger != nil {
            map["Trigger"] = self.trigger!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Callback") {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileFormat") {
            self.fileFormat = dict["FileFormat"] as! String
        }
        if dict.keys.contains("Flv") {
            self.flv = dict["Flv"] as! String
        }
        if dict.keys.contains("HlsM3u8") {
            self.hlsM3u8 = dict["HlsM3u8"] as! String
        }
        if dict.keys.contains("HlsTs") {
            self.hlsTs = dict["HlsTs"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("JpgOnDemand") {
            self.jpgOnDemand = dict["JpgOnDemand"] as! String
        }
        if dict.keys.contains("JpgOverwrite") {
            self.jpgOverwrite = dict["JpgOverwrite"] as! String
        }
        if dict.keys.contains("JpgSequence") {
            self.jpgSequence = dict["JpgSequence"] as! String
        }
        if dict.keys.contains("Mp4") {
            self.mp4 = dict["Mp4"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucket") {
            self.ossBucket = dict["OssBucket"] as! String
        }
        if dict.keys.contains("OssEndpoint") {
            self.ossEndpoint = dict["OssEndpoint"] as! String
        }
        if dict.keys.contains("OssFilePrefix") {
            self.ossFilePrefix = dict["OssFilePrefix"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Retention") {
            self.retention = dict["Retention"] as! Int64
        }
        if dict.keys.contains("TransConfigs") {
            self.transConfigs = dict["TransConfigs"] as! [DescribeTemplateResponseBody.TransConfigs]
        }
        if dict.keys.contains("Trigger") {
            self.trigger = dict["Trigger"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTemplatesRequest : Tea.TeaModel {
    public var id: String?

    public var instanceId: String?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var sortBy: String?

    public var sortDirection: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sortDirection != nil {
            map["SortDirection"] = self.sortDirection!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SortDirection") {
            self.sortDirection = dict["SortDirection"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public class TransConfigs : Tea.TeaModel {
            public var fps: Int64?

            public var gop: Int64?

            public var height: Int64?

            public var name: String?

            public var videoBitrate: Int64?

            public var videoCodec: String?

            public var width: Int64?

            public var id: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fps != nil {
                    map["Fps"] = self.fps!
                }
                if self.gop != nil {
                    map["Gop"] = self.gop!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.videoBitrate != nil {
                    map["VideoBitrate"] = self.videoBitrate!
                }
                if self.videoCodec != nil {
                    map["VideoCodec"] = self.videoCodec!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Fps") {
                    self.fps = dict["Fps"] as! Int64
                }
                if dict.keys.contains("Gop") {
                    self.gop = dict["Gop"] as! Int64
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("VideoBitrate") {
                    self.videoBitrate = dict["VideoBitrate"] as! Int64
                }
                if dict.keys.contains("VideoCodec") {
                    self.videoCodec = dict["VideoCodec"] as! String
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Int64
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
            }
        }
        public var callback: String?

        public var createdTime: String?

        public var description_: String?

        public var fileFormat: String?

        public var flv: String?

        public var hlsM3u8: String?

        public var hlsTs: String?

        public var id: String?

        public var interval: Int64?

        public var jpgOnDemand: String?

        public var jpgOverwrite: String?

        public var jpgSequence: String?

        public var mp4: String?

        public var name: String?

        public var ossBucket: String?

        public var ossEndpoint: String?

        public var ossFilePrefix: String?

        public var region: String?

        public var retention: Int64?

        public var transConfigs: [DescribeTemplatesResponseBody.Templates.TransConfigs]?

        public var trigger: String?

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
            if self.callback != nil {
                map["Callback"] = self.callback!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fileFormat != nil {
                map["FileFormat"] = self.fileFormat!
            }
            if self.flv != nil {
                map["Flv"] = self.flv!
            }
            if self.hlsM3u8 != nil {
                map["HlsM3u8"] = self.hlsM3u8!
            }
            if self.hlsTs != nil {
                map["HlsTs"] = self.hlsTs!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.jpgOnDemand != nil {
                map["JpgOnDemand"] = self.jpgOnDemand!
            }
            if self.jpgOverwrite != nil {
                map["JpgOverwrite"] = self.jpgOverwrite!
            }
            if self.jpgSequence != nil {
                map["JpgSequence"] = self.jpgSequence!
            }
            if self.mp4 != nil {
                map["Mp4"] = self.mp4!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ossBucket != nil {
                map["OssBucket"] = self.ossBucket!
            }
            if self.ossEndpoint != nil {
                map["OssEndpoint"] = self.ossEndpoint!
            }
            if self.ossFilePrefix != nil {
                map["OssFilePrefix"] = self.ossFilePrefix!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.retention != nil {
                map["Retention"] = self.retention!
            }
            if self.transConfigs != nil {
                var tmp : [Any] = []
                for k in self.transConfigs! {
                    tmp.append(k.toMap())
                }
                map["TransConfigs"] = tmp
            }
            if self.trigger != nil {
                map["Trigger"] = self.trigger!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Callback") {
                self.callback = dict["Callback"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("FileFormat") {
                self.fileFormat = dict["FileFormat"] as! String
            }
            if dict.keys.contains("Flv") {
                self.flv = dict["Flv"] as! String
            }
            if dict.keys.contains("HlsM3u8") {
                self.hlsM3u8 = dict["HlsM3u8"] as! String
            }
            if dict.keys.contains("HlsTs") {
                self.hlsTs = dict["HlsTs"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Interval") {
                self.interval = dict["Interval"] as! Int64
            }
            if dict.keys.contains("JpgOnDemand") {
                self.jpgOnDemand = dict["JpgOnDemand"] as! String
            }
            if dict.keys.contains("JpgOverwrite") {
                self.jpgOverwrite = dict["JpgOverwrite"] as! String
            }
            if dict.keys.contains("JpgSequence") {
                self.jpgSequence = dict["JpgSequence"] as! String
            }
            if dict.keys.contains("Mp4") {
                self.mp4 = dict["Mp4"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OssBucket") {
                self.ossBucket = dict["OssBucket"] as! String
            }
            if dict.keys.contains("OssEndpoint") {
                self.ossEndpoint = dict["OssEndpoint"] as! String
            }
            if dict.keys.contains("OssFilePrefix") {
                self.ossFilePrefix = dict["OssFilePrefix"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Retention") {
                self.retention = dict["Retention"] as! Int64
            }
            if dict.keys.contains("TransConfigs") {
                self.transConfigs = dict["TransConfigs"] as! [DescribeTemplatesResponseBody.Templates.TransConfigs]
            }
            if dict.keys.contains("Trigger") {
                self.trigger = dict["Trigger"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var pageCount: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var templates: [DescribeTemplatesResponseBody.Templates]?

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
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["Templates"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Templates") {
            self.templates = dict["Templates"] as! [DescribeTemplatesResponseBody.Templates]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserDevicesRequest : Tea.TeaModel {
    public var ensInstanceIds: String?

    public var ownerId: Int64?

    public var serverName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ensInstanceIds != nil {
            map["EnsInstanceIds"] = self.ensInstanceIds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.serverName != nil {
            map["ServerName"] = self.serverName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnsInstanceIds") {
            self.ensInstanceIds = dict["EnsInstanceIds"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ServerName") {
            self.serverName = dict["ServerName"] as! String
        }
    }
}

public class DescribeUserDevicesResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var aliUid: String?

        public var edgeNodeName: String?

        public var instanceId: String?

        public var macAddress: String?

        public var matrixId: String?

        public var server: String?

        public var specification: String?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.edgeNodeName != nil {
                map["EdgeNodeName"] = self.edgeNodeName!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.macAddress != nil {
                map["MacAddress"] = self.macAddress!
            }
            if self.matrixId != nil {
                map["MatrixId"] = self.matrixId!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.specification != nil {
                map["Specification"] = self.specification!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("EdgeNodeName") {
                self.edgeNodeName = dict["EdgeNodeName"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MacAddress") {
                self.macAddress = dict["MacAddress"] as! String
            }
            if dict.keys.contains("MatrixId") {
                self.matrixId = dict["MatrixId"] as! String
            }
            if dict.keys.contains("Server") {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("Specification") {
                self.specification = dict["Specification"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var list: [DescribeUserDevicesResponseBody.List]?

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
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("List") {
            self.list = dict["List"] as! [DescribeUserDevicesResponseBody.List]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeUserDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeUserDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVodStreamURLRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var txId: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.txId != nil {
            map["TxId"] = self.txId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TxId") {
            self.txId = dict["TxId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class DescribeVodStreamURLResponseBody : Tea.TeaModel {
    public var outProtocol: String?

    public var port: Int64?

    public var requestId: String?

    public var txId: String?

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
        if self.outProtocol != nil {
            map["OutProtocol"] = self.outProtocol!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.txId != nil {
            map["TxId"] = self.txId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutProtocol") {
            self.outProtocol = dict["OutProtocol"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TxId") {
            self.txId = dict["TxId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class DescribeVodStreamURLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVodStreamURLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVodStreamURLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsCertificateDetailRequest : Tea.TeaModel {
    public var certName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertName") {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeVsCertificateDetailResponseBody : Tea.TeaModel {
    public var cert: String?

    public var certId: Int64?

    public var certName: String?

    public var key: String?

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
        if self.cert != nil {
            map["Cert"] = self.cert!
        }
        if self.certId != nil {
            map["CertId"] = self.certId!
        }
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cert") {
            self.cert = dict["Cert"] as! String
        }
        if dict.keys.contains("CertId") {
            self.certId = dict["CertId"] as! Int64
        }
        if dict.keys.contains("CertName") {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVsCertificateDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsCertificateDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsCertificateDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsCertificateListRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeVsCertificateListResponseBody : Tea.TeaModel {
    public class CertificateListModel : Tea.TeaModel {
        public class CertList : Tea.TeaModel {
            public var certId: Int64?

            public var certName: String?

            public var common: String?

            public var fingerprint: String?

            public var issuer: String?

            public var lastTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certId != nil {
                    map["CertId"] = self.certId!
                }
                if self.certName != nil {
                    map["CertName"] = self.certName!
                }
                if self.common != nil {
                    map["Common"] = self.common!
                }
                if self.fingerprint != nil {
                    map["Fingerprint"] = self.fingerprint!
                }
                if self.issuer != nil {
                    map["Issuer"] = self.issuer!
                }
                if self.lastTime != nil {
                    map["LastTime"] = self.lastTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CertId") {
                    self.certId = dict["CertId"] as! Int64
                }
                if dict.keys.contains("CertName") {
                    self.certName = dict["CertName"] as! String
                }
                if dict.keys.contains("Common") {
                    self.common = dict["Common"] as! String
                }
                if dict.keys.contains("Fingerprint") {
                    self.fingerprint = dict["Fingerprint"] as! String
                }
                if dict.keys.contains("Issuer") {
                    self.issuer = dict["Issuer"] as! String
                }
                if dict.keys.contains("LastTime") {
                    self.lastTime = dict["LastTime"] as! Int64
                }
            }
        }
        public var certList: [DescribeVsCertificateListResponseBody.CertificateListModel.CertList]?

        public var count: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certList != nil {
                var tmp : [Any] = []
                for k in self.certList! {
                    tmp.append(k.toMap())
                }
                map["CertList"] = tmp
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertList") {
                self.certList = dict["CertList"] as! [DescribeVsCertificateListResponseBody.CertificateListModel.CertList]
            }
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
        }
    }
    public var certificateListModel: DescribeVsCertificateListResponseBody.CertificateListModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certificateListModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateListModel != nil {
            map["CertificateListModel"] = self.certificateListModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateListModel") {
            var model = DescribeVsCertificateListResponseBody.CertificateListModel()
            model.fromMap(dict["CertificateListModel"] as! [String: Any])
            self.certificateListModel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVsCertificateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsCertificateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsCertificateListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDevicesDataRequest : Tea.TeaModel {
    public var endTime: String?

    public var groupId: String?

    public var ownerId: Int64?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDevicesDataResponseBody : Tea.TeaModel {
    public class DevicesDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var devicesDataValue: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.devicesDataValue != nil {
                    map["DevicesDataValue"] = self.devicesDataValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DevicesDataValue") {
                    self.devicesDataValue = dict["DevicesDataValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeVsDevicesDataResponseBody.DevicesDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeVsDevicesDataResponseBody.DevicesDataPerInterval.DataModule]
            }
        }
    }
    public var devicesDataPerInterval: DescribeVsDevicesDataResponseBody.DevicesDataPerInterval?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.devicesDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.devicesDataPerInterval != nil {
            map["DevicesDataPerInterval"] = self.devicesDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DevicesDataPerInterval") {
            var model = DescribeVsDevicesDataResponseBody.DevicesDataPerInterval()
            model.fromMap(dict["DevicesDataPerInterval"] as! [String: Any])
            self.devicesDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVsDevicesDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDevicesDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDevicesDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainBpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

    public var ownerId: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainBpsDataResponseBody : Tea.TeaModel {
    public class BpsDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var bpsValue: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bpsValue != nil {
                    map["BpsValue"] = self.bpsValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BpsValue") {
                    self.bpsValue = dict["BpsValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeVsDomainBpsDataResponseBody.BpsDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeVsDomainBpsDataResponseBody.BpsDataPerInterval.DataModule]
            }
        }
    }
    public var bpsDataPerInterval: DescribeVsDomainBpsDataResponseBody.BpsDataPerInterval?

    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bpsDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bpsDataPerInterval != nil {
            map["BpsDataPerInterval"] = self.bpsDataPerInterval?.toMap()
        }
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BpsDataPerInterval") {
            var model = DescribeVsDomainBpsDataResponseBody.BpsDataPerInterval()
            model.fromMap(dict["BpsDataPerInterval"] as! [String: Any])
            self.bpsDataPerInterval = model
        }
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainBpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainBpsDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainBpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainCertificateInfoRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeVsDomainCertificateInfoResponseBody : Tea.TeaModel {
    public class CertInfos : Tea.TeaModel {
        public class CertInfo : Tea.TeaModel {
            public var certDomainName: String?

            public var certExpireTime: String?

            public var certLife: String?

            public var certName: String?

            public var certOrg: String?

            public var certType: String?

            public var domainName: String?

            public var SSLPub: String?

            public var serverCertificateStatus: String?

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
                if self.certDomainName != nil {
                    map["CertDomainName"] = self.certDomainName!
                }
                if self.certExpireTime != nil {
                    map["CertExpireTime"] = self.certExpireTime!
                }
                if self.certLife != nil {
                    map["CertLife"] = self.certLife!
                }
                if self.certName != nil {
                    map["CertName"] = self.certName!
                }
                if self.certOrg != nil {
                    map["CertOrg"] = self.certOrg!
                }
                if self.certType != nil {
                    map["CertType"] = self.certType!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.SSLPub != nil {
                    map["SSLPub"] = self.SSLPub!
                }
                if self.serverCertificateStatus != nil {
                    map["ServerCertificateStatus"] = self.serverCertificateStatus!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CertDomainName") {
                    self.certDomainName = dict["CertDomainName"] as! String
                }
                if dict.keys.contains("CertExpireTime") {
                    self.certExpireTime = dict["CertExpireTime"] as! String
                }
                if dict.keys.contains("CertLife") {
                    self.certLife = dict["CertLife"] as! String
                }
                if dict.keys.contains("CertName") {
                    self.certName = dict["CertName"] as! String
                }
                if dict.keys.contains("CertOrg") {
                    self.certOrg = dict["CertOrg"] as! String
                }
                if dict.keys.contains("CertType") {
                    self.certType = dict["CertType"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("SSLPub") {
                    self.SSLPub = dict["SSLPub"] as! String
                }
                if dict.keys.contains("ServerCertificateStatus") {
                    self.serverCertificateStatus = dict["ServerCertificateStatus"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var certInfo: [DescribeVsDomainCertificateInfoResponseBody.CertInfos.CertInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certInfo != nil {
                var tmp : [Any] = []
                for k in self.certInfo! {
                    tmp.append(k.toMap())
                }
                map["CertInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertInfo") {
                self.certInfo = dict["CertInfo"] as! [DescribeVsDomainCertificateInfoResponseBody.CertInfos.CertInfo]
            }
        }
    }
    public var certInfos: DescribeVsDomainCertificateInfoResponseBody.CertInfos?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certInfos != nil {
            map["CertInfos"] = self.certInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertInfos") {
            var model = DescribeVsDomainCertificateInfoResponseBody.CertInfos()
            model.fromMap(dict["CertInfos"] as! [String: Any])
            self.certInfos = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVsDomainCertificateInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainCertificateInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainCertificateInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainConfigsRequest : Tea.TeaModel {
    public var domainName: String?

    public var functionNames: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.functionNames != nil {
            map["FunctionNames"] = self.functionNames!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("FunctionNames") {
            self.functionNames = dict["FunctionNames"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeVsDomainConfigsResponseBody : Tea.TeaModel {
    public class DomainConfigs : Tea.TeaModel {
        public class FunctionArgs : Tea.TeaModel {
            public var argName: String?

            public var argValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.argName != nil {
                    map["ArgName"] = self.argName!
                }
                if self.argValue != nil {
                    map["ArgValue"] = self.argValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArgName") {
                    self.argName = dict["ArgName"] as! String
                }
                if dict.keys.contains("ArgValue") {
                    self.argValue = dict["ArgValue"] as! String
                }
            }
        }
        public var configId: String?

        public var functionArgs: [DescribeVsDomainConfigsResponseBody.DomainConfigs.FunctionArgs]?

        public var functionName: String?

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
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            if self.functionArgs != nil {
                var tmp : [Any] = []
                for k in self.functionArgs! {
                    tmp.append(k.toMap())
                }
                map["FunctionArgs"] = tmp
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigId") {
                self.configId = dict["ConfigId"] as! String
            }
            if dict.keys.contains("FunctionArgs") {
                self.functionArgs = dict["FunctionArgs"] as! [DescribeVsDomainConfigsResponseBody.DomainConfigs.FunctionArgs]
            }
            if dict.keys.contains("FunctionName") {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var domainConfigs: [DescribeVsDomainConfigsResponseBody.DomainConfigs]?

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
        if self.domainConfigs != nil {
            var tmp : [Any] = []
            for k in self.domainConfigs! {
                tmp.append(k.toMap())
            }
            map["DomainConfigs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainConfigs") {
            self.domainConfigs = dict["DomainConfigs"] as! [DescribeVsDomainConfigsResponseBody.DomainConfigs]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVsDomainConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainDetailRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeVsDomainDetailResponseBody : Tea.TeaModel {
    public class DomainConfig : Tea.TeaModel {
        public var cname: String?

        public var description_: String?

        public var domainName: String?

        public var domainStatus: String?

        public var domainType: String?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var region: String?

        public var SSLProtocol: String?

        public var scope: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainStatus != nil {
                map["DomainStatus"] = self.domainStatus!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.SSLProtocol != nil {
                map["SSLProtocol"] = self.SSLProtocol!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cname") {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainStatus") {
                self.domainStatus = dict["DomainStatus"] as! String
            }
            if dict.keys.contains("DomainType") {
                self.domainType = dict["DomainType"] as! String
            }
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SSLProtocol") {
                self.SSLProtocol = dict["SSLProtocol"] as! String
            }
            if dict.keys.contains("Scope") {
                self.scope = dict["Scope"] as! String
            }
        }
    }
    public var domainConfig: DescribeVsDomainDetailResponseBody.DomainConfig?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainConfig != nil {
            map["DomainConfig"] = self.domainConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainConfig") {
            var model = DescribeVsDomainDetailResponseBody.DomainConfig()
            model.fromMap(dict["DomainConfig"] as! [String: Any])
            self.domainConfig = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVsDomainDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainPvDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var ownerId: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainPvDataResponseBody : Tea.TeaModel {
    public class PvDataInterval : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var timeStamp: String?

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
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var usageData: [DescribeVsDomainPvDataResponseBody.PvDataInterval.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [DescribeVsDomainPvDataResponseBody.PvDataInterval.UsageData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var pvDataInterval: DescribeVsDomainPvDataResponseBody.PvDataInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pvDataInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pvDataInterval != nil {
            map["PvDataInterval"] = self.pvDataInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PvDataInterval") {
            var model = DescribeVsDomainPvDataResponseBody.PvDataInterval()
            model.fromMap(dict["PvDataInterval"] as! [String: Any])
            self.pvDataInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainPvDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainPvDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainPvDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainPvUvDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var ownerId: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainPvUvDataResponseBody : Tea.TeaModel {
    public class PvUvDataInfos : Tea.TeaModel {
        public class PvUvDataInfo : Tea.TeaModel {
            public var PV: String?

            public var timeStamp: String?

            public var UV: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.PV != nil {
                    map["PV"] = self.PV!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.UV != nil {
                    map["UV"] = self.UV!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PV") {
                    self.PV = dict["PV"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("UV") {
                    self.UV = dict["UV"] as! String
                }
            }
        }
        public var pvUvDataInfo: [DescribeVsDomainPvUvDataResponseBody.PvUvDataInfos.PvUvDataInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pvUvDataInfo != nil {
                var tmp : [Any] = []
                for k in self.pvUvDataInfo! {
                    tmp.append(k.toMap())
                }
                map["PvUvDataInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PvUvDataInfo") {
                self.pvUvDataInfo = dict["PvUvDataInfo"] as! [DescribeVsDomainPvUvDataResponseBody.PvUvDataInfos.PvUvDataInfo]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var pvUvDataInfos: DescribeVsDomainPvUvDataResponseBody.PvUvDataInfos?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pvUvDataInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pvUvDataInfos != nil {
            map["PvUvDataInfos"] = self.pvUvDataInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PvUvDataInfos") {
            var model = DescribeVsDomainPvUvDataResponseBody.PvUvDataInfos()
            model.fromMap(dict["PvUvDataInfos"] as! [String: Any])
            self.pvUvDataInfos = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainPvUvDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainPvUvDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainPvUvDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainRecordDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var region: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainRecordDataResponseBody : Tea.TeaModel {
    public class RecordDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var recordValue: String?

            public var streamCountValue: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.recordValue != nil {
                    map["RecordValue"] = self.recordValue!
                }
                if self.streamCountValue != nil {
                    map["StreamCountValue"] = self.streamCountValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RecordValue") {
                    self.recordValue = dict["RecordValue"] as! String
                }
                if dict.keys.contains("StreamCountValue") {
                    self.streamCountValue = dict["StreamCountValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeVsDomainRecordDataResponseBody.RecordDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeVsDomainRecordDataResponseBody.RecordDataPerInterval.DataModule]
            }
        }
    }
    public var recordDataPerInterval: DescribeVsDomainRecordDataResponseBody.RecordDataPerInterval?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.recordDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordDataPerInterval != nil {
            map["RecordDataPerInterval"] = self.recordDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordDataPerInterval") {
            var model = DescribeVsDomainRecordDataResponseBody.RecordDataPerInterval()
            model.fromMap(dict["RecordDataPerInterval"] as! [String: Any])
            self.recordDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVsDomainRecordDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainRecordDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainRecordDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainRegionDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var ownerId: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainRegionDataResponseBody : Tea.TeaModel {
    public class Value : Tea.TeaModel {
        public class RegionProportionData : Tea.TeaModel {
            public var avgObjectSize: String?

            public var avgResponseRate: String?

            public var avgResponseTime: String?

            public var bps: String?

            public var bytesProportion: String?

            public var proportion: String?

            public var qps: String?

            public var region: String?

            public var regionEname: String?

            public var reqErrRate: String?

            public var totalBytes: String?

            public var totalQuery: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avgObjectSize != nil {
                    map["AvgObjectSize"] = self.avgObjectSize!
                }
                if self.avgResponseRate != nil {
                    map["AvgResponseRate"] = self.avgResponseRate!
                }
                if self.avgResponseTime != nil {
                    map["AvgResponseTime"] = self.avgResponseTime!
                }
                if self.bps != nil {
                    map["Bps"] = self.bps!
                }
                if self.bytesProportion != nil {
                    map["BytesProportion"] = self.bytesProportion!
                }
                if self.proportion != nil {
                    map["Proportion"] = self.proportion!
                }
                if self.qps != nil {
                    map["Qps"] = self.qps!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.regionEname != nil {
                    map["RegionEname"] = self.regionEname!
                }
                if self.reqErrRate != nil {
                    map["ReqErrRate"] = self.reqErrRate!
                }
                if self.totalBytes != nil {
                    map["TotalBytes"] = self.totalBytes!
                }
                if self.totalQuery != nil {
                    map["TotalQuery"] = self.totalQuery!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvgObjectSize") {
                    self.avgObjectSize = dict["AvgObjectSize"] as! String
                }
                if dict.keys.contains("AvgResponseRate") {
                    self.avgResponseRate = dict["AvgResponseRate"] as! String
                }
                if dict.keys.contains("AvgResponseTime") {
                    self.avgResponseTime = dict["AvgResponseTime"] as! String
                }
                if dict.keys.contains("Bps") {
                    self.bps = dict["Bps"] as! String
                }
                if dict.keys.contains("BytesProportion") {
                    self.bytesProportion = dict["BytesProportion"] as! String
                }
                if dict.keys.contains("Proportion") {
                    self.proportion = dict["Proportion"] as! String
                }
                if dict.keys.contains("Qps") {
                    self.qps = dict["Qps"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("RegionEname") {
                    self.regionEname = dict["RegionEname"] as! String
                }
                if dict.keys.contains("ReqErrRate") {
                    self.reqErrRate = dict["ReqErrRate"] as! String
                }
                if dict.keys.contains("TotalBytes") {
                    self.totalBytes = dict["TotalBytes"] as! String
                }
                if dict.keys.contains("TotalQuery") {
                    self.totalQuery = dict["TotalQuery"] as! String
                }
            }
        }
        public var regionProportionData: [DescribeVsDomainRegionDataResponseBody.Value.RegionProportionData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionProportionData != nil {
                var tmp : [Any] = []
                for k in self.regionProportionData! {
                    tmp.append(k.toMap())
                }
                map["RegionProportionData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionProportionData") {
                self.regionProportionData = dict["RegionProportionData"] as! [DescribeVsDomainRegionDataResponseBody.Value.RegionProportionData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var value: DescribeVsDomainRegionDataResponseBody.Value?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.value?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.value != nil {
            map["Value"] = self.value?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Value") {
            var model = DescribeVsDomainRegionDataResponseBody.Value()
            model.fromMap(dict["Value"] as! [String: Any])
            self.value = model
        }
    }
}

public class DescribeVsDomainRegionDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainRegionDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainRegionDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainReqBpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

    public var ownerId: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainReqBpsDataResponseBody : Tea.TeaModel {
    public class ReqBpsDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var reqBpsValue: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.reqBpsValue != nil {
                    map["ReqBpsValue"] = self.reqBpsValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ReqBpsValue") {
                    self.reqBpsValue = dict["ReqBpsValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeVsDomainReqBpsDataResponseBody.ReqBpsDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeVsDomainReqBpsDataResponseBody.ReqBpsDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var reqBpsDataPerInterval: DescribeVsDomainReqBpsDataResponseBody.ReqBpsDataPerInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.reqBpsDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.reqBpsDataPerInterval != nil {
            map["ReqBpsDataPerInterval"] = self.reqBpsDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ReqBpsDataPerInterval") {
            var model = DescribeVsDomainReqBpsDataResponseBody.ReqBpsDataPerInterval()
            model.fromMap(dict["ReqBpsDataPerInterval"] as! [String: Any])
            self.reqBpsDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainReqBpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainReqBpsDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainReqBpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainReqTrafficDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

    public var ownerId: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainReqTrafficDataResponseBody : Tea.TeaModel {
    public class ReqTrafficDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var reqTrafficValue: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.reqTrafficValue != nil {
                    map["ReqTrafficValue"] = self.reqTrafficValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ReqTrafficValue") {
                    self.reqTrafficValue = dict["ReqTrafficValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeVsDomainReqTrafficDataResponseBody.ReqTrafficDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeVsDomainReqTrafficDataResponseBody.ReqTrafficDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var reqTrafficDataPerInterval: DescribeVsDomainReqTrafficDataResponseBody.ReqTrafficDataPerInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.reqTrafficDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.reqTrafficDataPerInterval != nil {
            map["ReqTrafficDataPerInterval"] = self.reqTrafficDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ReqTrafficDataPerInterval") {
            var model = DescribeVsDomainReqTrafficDataResponseBody.ReqTrafficDataPerInterval()
            model.fromMap(dict["ReqTrafficDataPerInterval"] as! [String: Any])
            self.reqTrafficDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainReqTrafficDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainReqTrafficDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainReqTrafficDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainSnapshotDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var ownerId: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainSnapshotDataResponseBody : Tea.TeaModel {
    public class SnapshotDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var snapshotValue: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.snapshotValue != nil {
                    map["SnapshotValue"] = self.snapshotValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SnapshotValue") {
                    self.snapshotValue = dict["SnapshotValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeVsDomainSnapshotDataResponseBody.SnapshotDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeVsDomainSnapshotDataResponseBody.SnapshotDataPerInterval.DataModule]
            }
        }
    }
    public var requestId: String?

    public var snapshotDataPerInterval: DescribeVsDomainSnapshotDataResponseBody.SnapshotDataPerInterval?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.snapshotDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshotDataPerInterval != nil {
            map["SnapshotDataPerInterval"] = self.snapshotDataPerInterval?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SnapshotDataPerInterval") {
            var model = DescribeVsDomainSnapshotDataResponseBody.SnapshotDataPerInterval()
            model.fromMap(dict["SnapshotDataPerInterval"] as! [String: Any])
            self.snapshotDataPerInterval = model
        }
    }
}

public class DescribeVsDomainSnapshotDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainSnapshotDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainSnapshotDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainTrafficDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

    public var ownerId: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainTrafficDataResponseBody : Tea.TeaModel {
    public class TrafficDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var timeStamp: String?

            public var trafficValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.trafficValue != nil {
                    map["TrafficValue"] = self.trafficValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("TrafficValue") {
                    self.trafficValue = dict["TrafficValue"] as! String
                }
            }
        }
        public var dataModule: [DescribeVsDomainTrafficDataResponseBody.TrafficDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeVsDomainTrafficDataResponseBody.TrafficDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var trafficDataPerInterval: DescribeVsDomainTrafficDataResponseBody.TrafficDataPerInterval?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trafficDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.trafficDataPerInterval != nil {
            map["TrafficDataPerInterval"] = self.trafficDataPerInterval?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TrafficDataPerInterval") {
            var model = DescribeVsDomainTrafficDataResponseBody.TrafficDataPerInterval()
            model.fromMap(dict["TrafficDataPerInterval"] as! [String: Any])
            self.trafficDataPerInterval = model
        }
    }
}

public class DescribeVsDomainTrafficDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainTrafficDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainTrafficDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsDomainUvDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var ownerId: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsDomainUvDataResponseBody : Tea.TeaModel {
    public class UvDataInterval : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var timeStamp: String?

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
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var usageData: [DescribeVsDomainUvDataResponseBody.UvDataInterval.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [DescribeVsDomainUvDataResponseBody.UvDataInterval.UsageData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var uvDataInterval: DescribeVsDomainUvDataResponseBody.UvDataInterval?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.uvDataInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.uvDataInterval != nil {
            map["UvDataInterval"] = self.uvDataInterval?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("UvDataInterval") {
            var model = DescribeVsDomainUvDataResponseBody.UvDataInterval()
            model.fromMap(dict["UvDataInterval"] as! [String: Any])
            self.uvDataInterval = model
        }
    }
}

public class DescribeVsDomainUvDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsDomainUvDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsDomainUvDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsPullStreamInfoConfigRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeVsPullStreamInfoConfigResponseBody : Tea.TeaModel {
    public class LiveAppRecordList : Tea.TeaModel {
        public class LiveAppRecord : Tea.TeaModel {
            public var appName: String?

            public var domainName: String?

            public var endTime: String?

            public var sourceUrl: String?

            public var startTime: String?

            public var streamName: String?

            public override init() {
                super.init()
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
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.sourceUrl != nil {
                    map["SourceUrl"] = self.sourceUrl!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.streamName != nil {
                    map["StreamName"] = self.streamName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("SourceUrl") {
                    self.sourceUrl = dict["SourceUrl"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StreamName") {
                    self.streamName = dict["StreamName"] as! String
                }
            }
        }
        public var liveAppRecord: [DescribeVsPullStreamInfoConfigResponseBody.LiveAppRecordList.LiveAppRecord]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.liveAppRecord != nil {
                var tmp : [Any] = []
                for k in self.liveAppRecord! {
                    tmp.append(k.toMap())
                }
                map["LiveAppRecord"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LiveAppRecord") {
                self.liveAppRecord = dict["LiveAppRecord"] as! [DescribeVsPullStreamInfoConfigResponseBody.LiveAppRecordList.LiveAppRecord]
            }
        }
    }
    public var liveAppRecordList: DescribeVsPullStreamInfoConfigResponseBody.LiveAppRecordList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.liveAppRecordList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.liveAppRecordList != nil {
            map["LiveAppRecordList"] = self.liveAppRecordList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LiveAppRecordList") {
            var model = DescribeVsPullStreamInfoConfigResponseBody.LiveAppRecordList()
            model.fromMap(dict["LiveAppRecordList"] as! [String: Any])
            self.liveAppRecordList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVsPullStreamInfoConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsPullStreamInfoConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsPullStreamInfoConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsStorageTrafficUsageDataRequest : Tea.TeaModel {
    public var bucket: String?

    public var endTime: String?

    public var interval: String?

    public var ownerId: Int64?

    public var splitBy: String?

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
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.splitBy != nil {
            map["SplitBy"] = self.splitBy!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bucket") {
            self.bucket = dict["Bucket"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SplitBy") {
            self.splitBy = dict["SplitBy"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsStorageTrafficUsageDataResponseBody : Tea.TeaModel {
    public class TrafficUsage : Tea.TeaModel {
        public class TrafficUsageDataModule : Tea.TeaModel {
            public var bucket: String?

            public var lanBandwidthInDataValue: Double?

            public var lanBandwidthOutDataValue: Double?

            public var lanTrafficInDataValue: Int64?

            public var lanTrafficOutDataValue: Int64?

            public var timeStamp: String?

            public var wanBandwidthInDataValue: Double?

            public var wanBandwidthOutDataValue: Double?

            public var wanTrafficInDataValue: Int64?

            public var wanTrafficOutDataValue: Int64?

            public override init() {
                super.init()
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
                    map["Bucket"] = self.bucket!
                }
                if self.lanBandwidthInDataValue != nil {
                    map["LanBandwidthInDataValue"] = self.lanBandwidthInDataValue!
                }
                if self.lanBandwidthOutDataValue != nil {
                    map["LanBandwidthOutDataValue"] = self.lanBandwidthOutDataValue!
                }
                if self.lanTrafficInDataValue != nil {
                    map["LanTrafficInDataValue"] = self.lanTrafficInDataValue!
                }
                if self.lanTrafficOutDataValue != nil {
                    map["LanTrafficOutDataValue"] = self.lanTrafficOutDataValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.wanBandwidthInDataValue != nil {
                    map["WanBandwidthInDataValue"] = self.wanBandwidthInDataValue!
                }
                if self.wanBandwidthOutDataValue != nil {
                    map["WanBandwidthOutDataValue"] = self.wanBandwidthOutDataValue!
                }
                if self.wanTrafficInDataValue != nil {
                    map["WanTrafficInDataValue"] = self.wanTrafficInDataValue!
                }
                if self.wanTrafficOutDataValue != nil {
                    map["WanTrafficOutDataValue"] = self.wanTrafficOutDataValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bucket") {
                    self.bucket = dict["Bucket"] as! String
                }
                if dict.keys.contains("LanBandwidthInDataValue") {
                    self.lanBandwidthInDataValue = dict["LanBandwidthInDataValue"] as! Double
                }
                if dict.keys.contains("LanBandwidthOutDataValue") {
                    self.lanBandwidthOutDataValue = dict["LanBandwidthOutDataValue"] as! Double
                }
                if dict.keys.contains("LanTrafficInDataValue") {
                    self.lanTrafficInDataValue = dict["LanTrafficInDataValue"] as! Int64
                }
                if dict.keys.contains("LanTrafficOutDataValue") {
                    self.lanTrafficOutDataValue = dict["LanTrafficOutDataValue"] as! Int64
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("WanBandwidthInDataValue") {
                    self.wanBandwidthInDataValue = dict["WanBandwidthInDataValue"] as! Double
                }
                if dict.keys.contains("WanBandwidthOutDataValue") {
                    self.wanBandwidthOutDataValue = dict["WanBandwidthOutDataValue"] as! Double
                }
                if dict.keys.contains("WanTrafficInDataValue") {
                    self.wanTrafficInDataValue = dict["WanTrafficInDataValue"] as! Int64
                }
                if dict.keys.contains("WanTrafficOutDataValue") {
                    self.wanTrafficOutDataValue = dict["WanTrafficOutDataValue"] as! Int64
                }
            }
        }
        public var trafficUsageDataModule: [DescribeVsStorageTrafficUsageDataResponseBody.TrafficUsage.TrafficUsageDataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trafficUsageDataModule != nil {
                var tmp : [Any] = []
                for k in self.trafficUsageDataModule! {
                    tmp.append(k.toMap())
                }
                map["TrafficUsageDataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TrafficUsageDataModule") {
                self.trafficUsageDataModule = dict["TrafficUsageDataModule"] as! [DescribeVsStorageTrafficUsageDataResponseBody.TrafficUsage.TrafficUsageDataModule]
            }
        }
    }
    public var requestId: String?

    public var trafficUsage: DescribeVsStorageTrafficUsageDataResponseBody.TrafficUsage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trafficUsage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trafficUsage != nil {
            map["TrafficUsage"] = self.trafficUsage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficUsage") {
            var model = DescribeVsStorageTrafficUsageDataResponseBody.TrafficUsage()
            model.fromMap(dict["TrafficUsage"] as! [String: Any])
            self.trafficUsage = model
        }
    }
}

public class DescribeVsStorageTrafficUsageDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsStorageTrafficUsageDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsStorageTrafficUsageDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsStorageUsageDataRequest : Tea.TeaModel {
    public var bucket: String?

    public var endTime: String?

    public var interval: String?

    public var ownerId: Int64?

    public var splitBy: String?

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
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.splitBy != nil {
            map["SplitBy"] = self.splitBy!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bucket") {
            self.bucket = dict["Bucket"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SplitBy") {
            self.splitBy = dict["SplitBy"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsStorageUsageDataResponseBody : Tea.TeaModel {
    public class StorageUsage : Tea.TeaModel {
        public class StorageUsageDataModule : Tea.TeaModel {
            public var bucket: String?

            public var storageDataValue: Int32?

            public var timeStamp: String?

            public override init() {
                super.init()
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
                    map["Bucket"] = self.bucket!
                }
                if self.storageDataValue != nil {
                    map["StorageDataValue"] = self.storageDataValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bucket") {
                    self.bucket = dict["Bucket"] as! String
                }
                if dict.keys.contains("StorageDataValue") {
                    self.storageDataValue = dict["StorageDataValue"] as! Int32
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var storageUsageDataModule: [DescribeVsStorageUsageDataResponseBody.StorageUsage.StorageUsageDataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.storageUsageDataModule != nil {
                var tmp : [Any] = []
                for k in self.storageUsageDataModule! {
                    tmp.append(k.toMap())
                }
                map["StorageUsageDataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StorageUsageDataModule") {
                self.storageUsageDataModule = dict["StorageUsageDataModule"] as! [DescribeVsStorageUsageDataResponseBody.StorageUsage.StorageUsageDataModule]
            }
        }
    }
    public var requestId: String?

    public var storageUsage: DescribeVsStorageUsageDataResponseBody.StorageUsage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.storageUsage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storageUsage != nil {
            map["StorageUsage"] = self.storageUsage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StorageUsage") {
            var model = DescribeVsStorageUsageDataResponseBody.StorageUsage()
            model.fromMap(dict["StorageUsage"] as! [String: Any])
            self.storageUsage = model
        }
    }
}

public class DescribeVsStorageUsageDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsStorageUsageDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsStorageUsageDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsStreamsNotifyUrlConfigRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeVsStreamsNotifyUrlConfigResponseBody : Tea.TeaModel {
    public class LiveStreamsNotifyConfig : Tea.TeaModel {
        public var authKey: String?

        public var authType: String?

        public var domainName: String?

        public var notifyUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authKey != nil {
                map["AuthKey"] = self.authKey!
            }
            if self.authType != nil {
                map["AuthType"] = self.authType!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.notifyUrl != nil {
                map["NotifyUrl"] = self.notifyUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthKey") {
                self.authKey = dict["AuthKey"] as! String
            }
            if dict.keys.contains("AuthType") {
                self.authType = dict["AuthType"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("NotifyUrl") {
                self.notifyUrl = dict["NotifyUrl"] as! String
            }
        }
    }
    public var liveStreamsNotifyConfig: DescribeVsStreamsNotifyUrlConfigResponseBody.LiveStreamsNotifyConfig?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.liveStreamsNotifyConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.liveStreamsNotifyConfig != nil {
            map["LiveStreamsNotifyConfig"] = self.liveStreamsNotifyConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LiveStreamsNotifyConfig") {
            var model = DescribeVsStreamsNotifyUrlConfigResponseBody.LiveStreamsNotifyConfig()
            model.fromMap(dict["LiveStreamsNotifyConfig"] as! [String: Any])
            self.liveStreamsNotifyConfig = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVsStreamsNotifyUrlConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsStreamsNotifyUrlConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsStreamsNotifyUrlConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsStreamsOnlineListRequest : Tea.TeaModel {
    public var appName: String?

    public var domainName: String?

    public var endTime: String?

    public var orderBy: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var queryType: String?

    public var startTime: String?

    public var streamName: String?

    public var streamType: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.streamName != nil {
            map["StreamName"] = self.streamName!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StreamName") {
            self.streamName = dict["StreamName"] as! String
        }
        if dict.keys.contains("StreamType") {
            self.streamType = dict["StreamType"] as! String
        }
    }
}

public class DescribeVsStreamsOnlineListResponseBody : Tea.TeaModel {
    public class OnlineInfo : Tea.TeaModel {
        public class LiveStreamOnlineInfo : Tea.TeaModel {
            public var appName: String?

            public var domainName: String?

            public var publishDomain: String?

            public var publishTime: String?

            public var publishType: String?

            public var publishUrl: String?

            public var streamName: String?

            public var transcodeId: String?

            public var transcoded: String?

            public override init() {
                super.init()
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
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.publishDomain != nil {
                    map["PublishDomain"] = self.publishDomain!
                }
                if self.publishTime != nil {
                    map["PublishTime"] = self.publishTime!
                }
                if self.publishType != nil {
                    map["PublishType"] = self.publishType!
                }
                if self.publishUrl != nil {
                    map["PublishUrl"] = self.publishUrl!
                }
                if self.streamName != nil {
                    map["StreamName"] = self.streamName!
                }
                if self.transcodeId != nil {
                    map["TranscodeId"] = self.transcodeId!
                }
                if self.transcoded != nil {
                    map["Transcoded"] = self.transcoded!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("PublishDomain") {
                    self.publishDomain = dict["PublishDomain"] as! String
                }
                if dict.keys.contains("PublishTime") {
                    self.publishTime = dict["PublishTime"] as! String
                }
                if dict.keys.contains("PublishType") {
                    self.publishType = dict["PublishType"] as! String
                }
                if dict.keys.contains("PublishUrl") {
                    self.publishUrl = dict["PublishUrl"] as! String
                }
                if dict.keys.contains("StreamName") {
                    self.streamName = dict["StreamName"] as! String
                }
                if dict.keys.contains("TranscodeId") {
                    self.transcodeId = dict["TranscodeId"] as! String
                }
                if dict.keys.contains("Transcoded") {
                    self.transcoded = dict["Transcoded"] as! String
                }
            }
        }
        public var liveStreamOnlineInfo: [DescribeVsStreamsOnlineListResponseBody.OnlineInfo.LiveStreamOnlineInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.liveStreamOnlineInfo != nil {
                var tmp : [Any] = []
                for k in self.liveStreamOnlineInfo! {
                    tmp.append(k.toMap())
                }
                map["LiveStreamOnlineInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LiveStreamOnlineInfo") {
                self.liveStreamOnlineInfo = dict["LiveStreamOnlineInfo"] as! [DescribeVsStreamsOnlineListResponseBody.OnlineInfo.LiveStreamOnlineInfo]
            }
        }
    }
    public var onlineInfo: DescribeVsStreamsOnlineListResponseBody.OnlineInfo?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalNum: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.onlineInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.onlineInfo != nil {
            map["OnlineInfo"] = self.onlineInfo?.toMap()
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OnlineInfo") {
            var model = DescribeVsStreamsOnlineListResponseBody.OnlineInfo()
            model.fromMap(dict["OnlineInfo"] as! [String: Any])
            self.onlineInfo = model
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int32
        }
    }
}

public class DescribeVsStreamsOnlineListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsStreamsOnlineListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsStreamsOnlineListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsStreamsPublishListRequest : Tea.TeaModel {
    public var appName: String?

    public var domainName: String?

    public var endTime: String?

    public var orderBy: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryType: String?

    public var startTime: String?

    public var streamName: String?

    public var streamType: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.streamName != nil {
            map["StreamName"] = self.streamName!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StreamName") {
            self.streamName = dict["StreamName"] as! String
        }
        if dict.keys.contains("StreamType") {
            self.streamType = dict["StreamType"] as! String
        }
    }
}

public class DescribeVsStreamsPublishListResponseBody : Tea.TeaModel {
    public class PublishInfo : Tea.TeaModel {
        public class LiveStreamPublishInfo : Tea.TeaModel {
            public var appName: String?

            public var clientAddr: String?

            public var domainName: String?

            public var edgeNodeAddr: String?

            public var publishDomain: String?

            public var publishTime: String?

            public var publishType: String?

            public var publishUrl: String?

            public var stopTime: String?

            public var streamName: String?

            public var streamUrl: String?

            public var transcodeId: String?

            public var transcoded: String?

            public override init() {
                super.init()
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
                if self.clientAddr != nil {
                    map["ClientAddr"] = self.clientAddr!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.edgeNodeAddr != nil {
                    map["EdgeNodeAddr"] = self.edgeNodeAddr!
                }
                if self.publishDomain != nil {
                    map["PublishDomain"] = self.publishDomain!
                }
                if self.publishTime != nil {
                    map["PublishTime"] = self.publishTime!
                }
                if self.publishType != nil {
                    map["PublishType"] = self.publishType!
                }
                if self.publishUrl != nil {
                    map["PublishUrl"] = self.publishUrl!
                }
                if self.stopTime != nil {
                    map["StopTime"] = self.stopTime!
                }
                if self.streamName != nil {
                    map["StreamName"] = self.streamName!
                }
                if self.streamUrl != nil {
                    map["StreamUrl"] = self.streamUrl!
                }
                if self.transcodeId != nil {
                    map["TranscodeId"] = self.transcodeId!
                }
                if self.transcoded != nil {
                    map["Transcoded"] = self.transcoded!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("ClientAddr") {
                    self.clientAddr = dict["ClientAddr"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("EdgeNodeAddr") {
                    self.edgeNodeAddr = dict["EdgeNodeAddr"] as! String
                }
                if dict.keys.contains("PublishDomain") {
                    self.publishDomain = dict["PublishDomain"] as! String
                }
                if dict.keys.contains("PublishTime") {
                    self.publishTime = dict["PublishTime"] as! String
                }
                if dict.keys.contains("PublishType") {
                    self.publishType = dict["PublishType"] as! String
                }
                if dict.keys.contains("PublishUrl") {
                    self.publishUrl = dict["PublishUrl"] as! String
                }
                if dict.keys.contains("StopTime") {
                    self.stopTime = dict["StopTime"] as! String
                }
                if dict.keys.contains("StreamName") {
                    self.streamName = dict["StreamName"] as! String
                }
                if dict.keys.contains("StreamUrl") {
                    self.streamUrl = dict["StreamUrl"] as! String
                }
                if dict.keys.contains("TranscodeId") {
                    self.transcodeId = dict["TranscodeId"] as! String
                }
                if dict.keys.contains("Transcoded") {
                    self.transcoded = dict["Transcoded"] as! String
                }
            }
        }
        public var liveStreamPublishInfo: [DescribeVsStreamsPublishListResponseBody.PublishInfo.LiveStreamPublishInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.liveStreamPublishInfo != nil {
                var tmp : [Any] = []
                for k in self.liveStreamPublishInfo! {
                    tmp.append(k.toMap())
                }
                map["LiveStreamPublishInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LiveStreamPublishInfo") {
                self.liveStreamPublishInfo = dict["LiveStreamPublishInfo"] as! [DescribeVsStreamsPublishListResponseBody.PublishInfo.LiveStreamPublishInfo]
            }
        }
    }
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var publishInfo: DescribeVsStreamsPublishListResponseBody.PublishInfo?

    public var requestId: String?

    public var totalNum: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.publishInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.publishInfo != nil {
            map["PublishInfo"] = self.publishInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PublishInfo") {
            var model = DescribeVsStreamsPublishListResponseBody.PublishInfo()
            model.fromMap(dict["PublishInfo"] as! [String: Any])
            self.publishInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int32
        }
    }
}

public class DescribeVsStreamsPublishListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsStreamsPublishListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsStreamsPublishListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsTopDomainsByFlowRequest : Tea.TeaModel {
    public var endTime: String?

    public var limit: Int64?

    public var ownerId: Int64?

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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsTopDomainsByFlowResponseBody : Tea.TeaModel {
    public class TopDomains : Tea.TeaModel {
        public class TopDomain : Tea.TeaModel {
            public var domainName: String?

            public var maxBps: Int64?

            public var maxBpsTime: String?

            public var rank: Int64?

            public var totalAccess: Int64?

            public var totalTraffic: String?

            public var trafficPercent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.maxBps != nil {
                    map["MaxBps"] = self.maxBps!
                }
                if self.maxBpsTime != nil {
                    map["MaxBpsTime"] = self.maxBpsTime!
                }
                if self.rank != nil {
                    map["Rank"] = self.rank!
                }
                if self.totalAccess != nil {
                    map["TotalAccess"] = self.totalAccess!
                }
                if self.totalTraffic != nil {
                    map["TotalTraffic"] = self.totalTraffic!
                }
                if self.trafficPercent != nil {
                    map["TrafficPercent"] = self.trafficPercent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("MaxBps") {
                    self.maxBps = dict["MaxBps"] as! Int64
                }
                if dict.keys.contains("MaxBpsTime") {
                    self.maxBpsTime = dict["MaxBpsTime"] as! String
                }
                if dict.keys.contains("Rank") {
                    self.rank = dict["Rank"] as! Int64
                }
                if dict.keys.contains("TotalAccess") {
                    self.totalAccess = dict["TotalAccess"] as! Int64
                }
                if dict.keys.contains("TotalTraffic") {
                    self.totalTraffic = dict["TotalTraffic"] as! String
                }
                if dict.keys.contains("TrafficPercent") {
                    self.trafficPercent = dict["TrafficPercent"] as! String
                }
            }
        }
        public var topDomain: [DescribeVsTopDomainsByFlowResponseBody.TopDomains.TopDomain]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.topDomain != nil {
                var tmp : [Any] = []
                for k in self.topDomain! {
                    tmp.append(k.toMap())
                }
                map["TopDomain"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TopDomain") {
                self.topDomain = dict["TopDomain"] as! [DescribeVsTopDomainsByFlowResponseBody.TopDomains.TopDomain]
            }
        }
    }
    public var domainCount: Int64?

    public var domainOnlineCount: Int64?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var topDomains: DescribeVsTopDomainsByFlowResponseBody.TopDomains?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.topDomains?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainCount != nil {
            map["DomainCount"] = self.domainCount!
        }
        if self.domainOnlineCount != nil {
            map["DomainOnlineCount"] = self.domainOnlineCount!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.topDomains != nil {
            map["TopDomains"] = self.topDomains?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainCount") {
            self.domainCount = dict["DomainCount"] as! Int64
        }
        if dict.keys.contains("DomainOnlineCount") {
            self.domainOnlineCount = dict["DomainOnlineCount"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TopDomains") {
            var model = DescribeVsTopDomainsByFlowResponseBody.TopDomains()
            model.fromMap(dict["TopDomains"] as! [String: Any])
            self.topDomains = model
        }
    }
}

public class DescribeVsTopDomainsByFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsTopDomainsByFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsTopDomainsByFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsUpPeakPublishStreamDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var domainSwitch: String?

    public var endTime: String?

    public var ownerId: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainSwitch != nil {
            map["DomainSwitch"] = self.domainSwitch!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainSwitch") {
            self.domainSwitch = dict["DomainSwitch"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeVsUpPeakPublishStreamDataResponseBody : Tea.TeaModel {
    public class DescribeVsUpPeakPublishStreamDatas : Tea.TeaModel {
        public class DescribeVsUpPeakPublishStreamData : Tea.TeaModel {
            public var bandWidth: String?

            public var peakTime: String?

            public var publishStreamNum: Int32?

            public var queryTime: String?

            public var statName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandWidth != nil {
                    map["BandWidth"] = self.bandWidth!
                }
                if self.peakTime != nil {
                    map["PeakTime"] = self.peakTime!
                }
                if self.publishStreamNum != nil {
                    map["PublishStreamNum"] = self.publishStreamNum!
                }
                if self.queryTime != nil {
                    map["QueryTime"] = self.queryTime!
                }
                if self.statName != nil {
                    map["StatName"] = self.statName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BandWidth") {
                    self.bandWidth = dict["BandWidth"] as! String
                }
                if dict.keys.contains("PeakTime") {
                    self.peakTime = dict["PeakTime"] as! String
                }
                if dict.keys.contains("PublishStreamNum") {
                    self.publishStreamNum = dict["PublishStreamNum"] as! Int32
                }
                if dict.keys.contains("QueryTime") {
                    self.queryTime = dict["QueryTime"] as! String
                }
                if dict.keys.contains("StatName") {
                    self.statName = dict["StatName"] as! String
                }
            }
        }
        public var describeVsUpPeakPublishStreamData: [DescribeVsUpPeakPublishStreamDataResponseBody.DescribeVsUpPeakPublishStreamDatas.DescribeVsUpPeakPublishStreamData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.describeVsUpPeakPublishStreamData != nil {
                var tmp : [Any] = []
                for k in self.describeVsUpPeakPublishStreamData! {
                    tmp.append(k.toMap())
                }
                map["DescribeVsUpPeakPublishStreamData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DescribeVsUpPeakPublishStreamData") {
                self.describeVsUpPeakPublishStreamData = dict["DescribeVsUpPeakPublishStreamData"] as! [DescribeVsUpPeakPublishStreamDataResponseBody.DescribeVsUpPeakPublishStreamDatas.DescribeVsUpPeakPublishStreamData]
            }
        }
    }
    public var describeVsUpPeakPublishStreamDatas: DescribeVsUpPeakPublishStreamDataResponseBody.DescribeVsUpPeakPublishStreamDatas?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.describeVsUpPeakPublishStreamDatas?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.describeVsUpPeakPublishStreamDatas != nil {
            map["DescribeVsUpPeakPublishStreamDatas"] = self.describeVsUpPeakPublishStreamDatas?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DescribeVsUpPeakPublishStreamDatas") {
            var model = DescribeVsUpPeakPublishStreamDataResponseBody.DescribeVsUpPeakPublishStreamDatas()
            model.fromMap(dict["DescribeVsUpPeakPublishStreamDatas"] as! [String: Any])
            self.describeVsUpPeakPublishStreamDatas = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVsUpPeakPublishStreamDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsUpPeakPublishStreamDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsUpPeakPublishStreamDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVsUserResourcePackageRequest : Tea.TeaModel {
    public var ownerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeVsUserResourcePackageResponseBody : Tea.TeaModel {
    public class ResourcePackageInfos : Tea.TeaModel {
        public class ResourcePackageInfo : Tea.TeaModel {
            public var commodityCode: String?

            public var currCapacity: String?

            public var displayName: String?

            public var initCapacity: String?

            public var instanceId: String?

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
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.currCapacity != nil {
                    map["CurrCapacity"] = self.currCapacity!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.initCapacity != nil {
                    map["InitCapacity"] = self.initCapacity!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommodityCode") {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("CurrCapacity") {
                    self.currCapacity = dict["CurrCapacity"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("InitCapacity") {
                    self.initCapacity = dict["InitCapacity"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var resourcePackageInfo: [DescribeVsUserResourcePackageResponseBody.ResourcePackageInfos.ResourcePackageInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourcePackageInfo != nil {
                var tmp : [Any] = []
                for k in self.resourcePackageInfo! {
                    tmp.append(k.toMap())
                }
                map["ResourcePackageInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourcePackageInfo") {
                self.resourcePackageInfo = dict["ResourcePackageInfo"] as! [DescribeVsUserResourcePackageResponseBody.ResourcePackageInfos.ResourcePackageInfo]
            }
        }
    }
    public var requestId: String?

    public var resourcePackageInfos: DescribeVsUserResourcePackageResponseBody.ResourcePackageInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourcePackageInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourcePackageInfos != nil {
            map["ResourcePackageInfos"] = self.resourcePackageInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourcePackageInfos") {
            var model = DescribeVsUserResourcePackageResponseBody.ResourcePackageInfos()
            model.fromMap(dict["ResourcePackageInfos"] as! [String: Any])
            self.resourcePackageInfos = model
        }
    }
}

public class DescribeVsUserResourcePackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVsUserResourcePackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVsUserResourcePackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ForbidVsStreamRequest : Tea.TeaModel {
    public var appName: String?

    public var controlStreamAction: String?

    public var domainName: String?

    public var liveStreamType: String?

    public var oneshot: String?

    public var ownerId: Int64?

    public var resumeTime: String?

    public var streamName: String?

    public override init() {
        super.init()
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
        if self.controlStreamAction != nil {
            map["ControlStreamAction"] = self.controlStreamAction!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.liveStreamType != nil {
            map["LiveStreamType"] = self.liveStreamType!
        }
        if self.oneshot != nil {
            map["Oneshot"] = self.oneshot!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resumeTime != nil {
            map["ResumeTime"] = self.resumeTime!
        }
        if self.streamName != nil {
            map["StreamName"] = self.streamName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("ControlStreamAction") {
            self.controlStreamAction = dict["ControlStreamAction"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("LiveStreamType") {
            self.liveStreamType = dict["LiveStreamType"] as! String
        }
        if dict.keys.contains("Oneshot") {
            self.oneshot = dict["Oneshot"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResumeTime") {
            self.resumeTime = dict["ResumeTime"] as! String
        }
        if dict.keys.contains("StreamName") {
            self.streamName = dict["StreamName"] as! String
        }
    }
}

public class ForbidVsStreamResponseBody : Tea.TeaModel {
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

public class ForbidVsStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ForbidVsStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ForbidVsStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBucketInfoRequest : Tea.TeaModel {
    public var bucketName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class GetBucketInfoResponseBody : Tea.TeaModel {
    public class BucketInfo : Tea.TeaModel {
        public var bucketAcl: String?

        public var bucketName: String?

        public var comment: String?

        public var createTime: String?

        public var dataRedundancyType: String?

        public var dispatcherType: String?

        public var endpoint: String?

        public var modifyTime: String?

        public var resourceType: String?

        public var storageClass: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketAcl != nil {
                map["BucketAcl"] = self.bucketAcl!
            }
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataRedundancyType != nil {
                map["DataRedundancyType"] = self.dataRedundancyType!
            }
            if self.dispatcherType != nil {
                map["DispatcherType"] = self.dispatcherType!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.storageClass != nil {
                map["StorageClass"] = self.storageClass!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketAcl") {
                self.bucketAcl = dict["BucketAcl"] as! String
            }
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DataRedundancyType") {
                self.dataRedundancyType = dict["DataRedundancyType"] as! String
            }
            if dict.keys.contains("DispatcherType") {
                self.dispatcherType = dict["DispatcherType"] as! String
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("StorageClass") {
                self.storageClass = dict["StorageClass"] as! String
            }
        }
    }
    public var bucketInfo: GetBucketInfoResponseBody.BucketInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bucketInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketInfo != nil {
            map["BucketInfo"] = self.bucketInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketInfo") {
            var model = GetBucketInfoResponseBody.BucketInfo()
            model.fromMap(dict["BucketInfo"] as! [String: Any])
            self.bucketInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetBucketInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBucketInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBucketInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GotoPresetRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public var presetId: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.presetId != nil {
            map["PresetId"] = self.presetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PresetId") {
            self.presetId = dict["PresetId"] as! String
        }
    }
}

public class GotoPresetResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GotoPresetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GotoPresetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GotoPresetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBucketsRequest : Tea.TeaModel {
    public var keyword: String?

    public var marker: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var prefix_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Prefix") {
            self.prefix_ = dict["Prefix"] as! String
        }
    }
}

public class ListBucketsResponseBody : Tea.TeaModel {
    public class BucketInfos : Tea.TeaModel {
        public var bucketAcl: String?

        public var bucketName: String?

        public var comment: String?

        public var createTime: String?

        public var dataRedundancyType: String?

        public var dispatcherType: String?

        public var endpoint: String?

        public var modifyTime: String?

        public var resourceType: String?

        public var storageClass: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketAcl != nil {
                map["BucketAcl"] = self.bucketAcl!
            }
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataRedundancyType != nil {
                map["DataRedundancyType"] = self.dataRedundancyType!
            }
            if self.dispatcherType != nil {
                map["DispatcherType"] = self.dispatcherType!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.storageClass != nil {
                map["StorageClass"] = self.storageClass!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketAcl") {
                self.bucketAcl = dict["BucketAcl"] as! String
            }
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DataRedundancyType") {
                self.dataRedundancyType = dict["DataRedundancyType"] as! String
            }
            if dict.keys.contains("DispatcherType") {
                self.dispatcherType = dict["DispatcherType"] as! String
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("StorageClass") {
                self.storageClass = dict["StorageClass"] as! String
            }
        }
    }
    public var bucketInfos: [ListBucketsResponseBody.BucketInfos]?

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
        if self.bucketInfos != nil {
            var tmp : [Any] = []
            for k in self.bucketInfos! {
                tmp.append(k.toMap())
            }
            map["BucketInfos"] = tmp
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
        if dict.keys.contains("BucketInfos") {
            self.bucketInfos = dict["BucketInfos"] as! [ListBucketsResponseBody.BucketInfos]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListBucketsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBucketsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListBucketsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListObjectsRequest : Tea.TeaModel {
    public var bucketName: String?

    public var continuationToken: String?

    public var delimiter: String?

    public var encodingType: String?

    public var marker: String?

    public var maxKeys: Int32?

    public var ownerId: Int64?

    public var prefix_: String?

    public var startAfter: String?

    public override init() {
        super.init()
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
        if self.continuationToken != nil {
            map["ContinuationToken"] = self.continuationToken!
        }
        if self.delimiter != nil {
            map["Delimiter"] = self.delimiter!
        }
        if self.encodingType != nil {
            map["EncodingType"] = self.encodingType!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxKeys != nil {
            map["MaxKeys"] = self.maxKeys!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.startAfter != nil {
            map["StartAfter"] = self.startAfter!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("ContinuationToken") {
            self.continuationToken = dict["ContinuationToken"] as! String
        }
        if dict.keys.contains("Delimiter") {
            self.delimiter = dict["Delimiter"] as! String
        }
        if dict.keys.contains("EncodingType") {
            self.encodingType = dict["EncodingType"] as! String
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxKeys") {
            self.maxKeys = dict["MaxKeys"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Prefix") {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("StartAfter") {
            self.startAfter = dict["StartAfter"] as! String
        }
    }
}

public class ListObjectsResponseBody : Tea.TeaModel {
    public class Contents : Tea.TeaModel {
        public var ETag: String?

        public var key: String?

        public var lastModified: String?

        public var size: Int64?

        public var storageClass: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ETag != nil {
                map["ETag"] = self.ETag!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.lastModified != nil {
                map["LastModified"] = self.lastModified!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.storageClass != nil {
                map["StorageClass"] = self.storageClass!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ETag") {
                self.ETag = dict["ETag"] as! String
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("LastModified") {
                self.lastModified = dict["LastModified"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("StorageClass") {
                self.storageClass = dict["StorageClass"] as! String
            }
        }
    }
    public var bucketName: String?

    public var commonPrefixes: [String]?

    public var contents: [ListObjectsResponseBody.Contents]?

    public var continuationToken: String?

    public var delimiter: String?

    public var encodingType: String?

    public var isTruncated: Bool?

    public var keyCount: Int32?

    public var marker: String?

    public var maxKeys: Int32?

    public var nextContinuationToken: String?

    public var nextMarker: String?

    public var prefix_: String?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.commonPrefixes != nil {
            map["CommonPrefixes"] = self.commonPrefixes!
        }
        if self.contents != nil {
            var tmp : [Any] = []
            for k in self.contents! {
                tmp.append(k.toMap())
            }
            map["Contents"] = tmp
        }
        if self.continuationToken != nil {
            map["ContinuationToken"] = self.continuationToken!
        }
        if self.delimiter != nil {
            map["Delimiter"] = self.delimiter!
        }
        if self.encodingType != nil {
            map["EncodingType"] = self.encodingType!
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.keyCount != nil {
            map["KeyCount"] = self.keyCount!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxKeys != nil {
            map["MaxKeys"] = self.maxKeys!
        }
        if self.nextContinuationToken != nil {
            map["NextContinuationToken"] = self.nextContinuationToken!
        }
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("CommonPrefixes") {
            self.commonPrefixes = dict["CommonPrefixes"] as! [String]
        }
        if dict.keys.contains("Contents") {
            self.contents = dict["Contents"] as! [ListObjectsResponseBody.Contents]
        }
        if dict.keys.contains("ContinuationToken") {
            self.continuationToken = dict["ContinuationToken"] as! String
        }
        if dict.keys.contains("Delimiter") {
            self.delimiter = dict["Delimiter"] as! String
        }
        if dict.keys.contains("EncodingType") {
            self.encodingType = dict["EncodingType"] as! String
        }
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("KeyCount") {
            self.keyCount = dict["KeyCount"] as! Int32
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxKeys") {
            self.maxKeys = dict["MaxKeys"] as! Int32
        }
        if dict.keys.contains("NextContinuationToken") {
            self.nextContinuationToken = dict["NextContinuationToken"] as! String
        }
        if dict.keys.contains("NextMarker") {
            self.nextMarker = dict["NextMarker"] as! String
        }
        if dict.keys.contains("Prefix") {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListObjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListObjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListObjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDeviceRequest : Tea.TeaModel {
    public var alarmMethod: String?

    public var autoPos: Bool?

    public var autoStart: Bool?

    public var description_: String?

    public var directoryId: String?

    public var gbId: String?

    public var groupId: String?

    public var id: String?

    public var ip: String?

    public var latitude: String?

    public var longitude: String?

    public var name: String?

    public var ownerId: Int64?

    public var params: String?

    public var parentId: String?

    public var password: String?

    public var port: Int64?

    public var posInterval: Int64?

    public var type: String?

    public var url: String?

    public var username: String?

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
        if self.alarmMethod != nil {
            map["AlarmMethod"] = self.alarmMethod!
        }
        if self.autoPos != nil {
            map["AutoPos"] = self.autoPos!
        }
        if self.autoStart != nil {
            map["AutoStart"] = self.autoStart!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.latitude != nil {
            map["Latitude"] = self.latitude!
        }
        if self.longitude != nil {
            map["Longitude"] = self.longitude!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.posInterval != nil {
            map["PosInterval"] = self.posInterval!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmMethod") {
            self.alarmMethod = dict["AlarmMethod"] as! String
        }
        if dict.keys.contains("AutoPos") {
            self.autoPos = dict["AutoPos"] as! Bool
        }
        if dict.keys.contains("AutoStart") {
            self.autoStart = dict["AutoStart"] as! Bool
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("GbId") {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Latitude") {
            self.latitude = dict["Latitude"] as! String
        }
        if dict.keys.contains("Longitude") {
            self.longitude = dict["Longitude"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int64
        }
        if dict.keys.contains("PosInterval") {
            self.posInterval = dict["PosInterval"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("Vendor") {
            self.vendor = dict["Vendor"] as! String
        }
    }
}

public class ModifyDeviceResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDeviceAlarmRequest : Tea.TeaModel {
    public var alarmId: String?

    public var channelId: Int32?

    public var id: String?

    public var ownerId: Int64?

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
        if self.alarmId != nil {
            map["AlarmId"] = self.alarmId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmId") {
            self.alarmId = dict["AlarmId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! Int32
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class ModifyDeviceAlarmResponseBody : Tea.TeaModel {
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

public class ModifyDeviceAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDeviceAlarmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDeviceAlarmResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDeviceCaptureRequest : Tea.TeaModel {
    public var id: String?

    public var image: Int32?

    public var ownerId: Int64?

    public var video: Int32?

    public override init() {
        super.init()
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
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.video != nil {
            map["Video"] = self.video!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Image") {
            self.image = dict["Image"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Video") {
            self.video = dict["Video"] as! Int32
        }
    }
}

public class ModifyDeviceCaptureResponseBody : Tea.TeaModel {
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

public class ModifyDeviceCaptureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDeviceCaptureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDeviceCaptureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDeviceChannelsRequest : Tea.TeaModel {
    public var channels: String?

    public var deviceStatus: String?

    public var dsn: String?

    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channels != nil {
            map["Channels"] = self.channels!
        }
        if self.deviceStatus != nil {
            map["DeviceStatus"] = self.deviceStatus!
        }
        if self.dsn != nil {
            map["Dsn"] = self.dsn!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Channels") {
            self.channels = dict["Channels"] as! String
        }
        if dict.keys.contains("DeviceStatus") {
            self.deviceStatus = dict["DeviceStatus"] as! String
        }
        if dict.keys.contains("Dsn") {
            self.dsn = dict["Dsn"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class ModifyDeviceChannelsResponseBody : Tea.TeaModel {
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

public class ModifyDeviceChannelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDeviceChannelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDeviceChannelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDirectoryRequest : Tea.TeaModel {
    public var description_: String?

    public var id: String?

    public var name: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class ModifyDirectoryResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyGroupRequest : Tea.TeaModel {
    public var callback: String?

    public var description_: String?

    public var enabled: Bool?

    public var id: String?

    public var inProtocol: String?

    public var lazyPull: Bool?

    public var name: String?

    public var outProtocol: String?

    public var ownerId: Int64?

    public var playDomain: String?

    public var pushDomain: String?

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
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.inProtocol != nil {
            map["InProtocol"] = self.inProtocol!
        }
        if self.lazyPull != nil {
            map["LazyPull"] = self.lazyPull!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.outProtocol != nil {
            map["OutProtocol"] = self.outProtocol!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playDomain != nil {
            map["PlayDomain"] = self.playDomain!
        }
        if self.pushDomain != nil {
            map["PushDomain"] = self.pushDomain!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Callback") {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InProtocol") {
            self.inProtocol = dict["InProtocol"] as! String
        }
        if dict.keys.contains("LazyPull") {
            self.lazyPull = dict["LazyPull"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OutProtocol") {
            self.outProtocol = dict["OutProtocol"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayDomain") {
            self.playDomain = dict["PlayDomain"] as! String
        }
        if dict.keys.contains("PushDomain") {
            self.pushDomain = dict["PushDomain"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
    }
}

public class ModifyGroupResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyParentPlatformRequest : Tea.TeaModel {
    public var autoStart: Bool?

    public var clientAuth: Bool?

    public var clientPassword: String?

    public var clientUsername: String?

    public var description_: String?

    public var gbId: String?

    public var id: String?

    public var ip: String?

    public var name: String?

    public var ownerId: Int64?

    public var port: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoStart != nil {
            map["AutoStart"] = self.autoStart!
        }
        if self.clientAuth != nil {
            map["ClientAuth"] = self.clientAuth!
        }
        if self.clientPassword != nil {
            map["ClientPassword"] = self.clientPassword!
        }
        if self.clientUsername != nil {
            map["ClientUsername"] = self.clientUsername!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gbId != nil {
            map["GbId"] = self.gbId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoStart") {
            self.autoStart = dict["AutoStart"] as! Bool
        }
        if dict.keys.contains("ClientAuth") {
            self.clientAuth = dict["ClientAuth"] as! Bool
        }
        if dict.keys.contains("ClientPassword") {
            self.clientPassword = dict["ClientPassword"] as! String
        }
        if dict.keys.contains("ClientUsername") {
            self.clientUsername = dict["ClientUsername"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GbId") {
            self.gbId = dict["GbId"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int64
        }
    }
}

public class ModifyParentPlatformResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyParentPlatformResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyParentPlatformResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyParentPlatformResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTemplateRequest : Tea.TeaModel {
    public var callback: String?

    public var description_: String?

    public var fileFormat: String?

    public var flv: String?

    public var hlsM3u8: String?

    public var hlsTs: String?

    public var id: String?

    public var interval: Int64?

    public var jpgOnDemand: String?

    public var jpgOverwrite: String?

    public var jpgSequence: String?

    public var mp4: String?

    public var name: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var ossFilePrefix: String?

    public var ownerId: Int64?

    public var region: String?

    public var retention: Int64?

    public var transConfigsJSON: String?

    public var trigger: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileFormat != nil {
            map["FileFormat"] = self.fileFormat!
        }
        if self.flv != nil {
            map["Flv"] = self.flv!
        }
        if self.hlsM3u8 != nil {
            map["HlsM3u8"] = self.hlsM3u8!
        }
        if self.hlsTs != nil {
            map["HlsTs"] = self.hlsTs!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.jpgOnDemand != nil {
            map["JpgOnDemand"] = self.jpgOnDemand!
        }
        if self.jpgOverwrite != nil {
            map["JpgOverwrite"] = self.jpgOverwrite!
        }
        if self.jpgSequence != nil {
            map["JpgSequence"] = self.jpgSequence!
        }
        if self.mp4 != nil {
            map["Mp4"] = self.mp4!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.ossFilePrefix != nil {
            map["OssFilePrefix"] = self.ossFilePrefix!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.transConfigsJSON != nil {
            map["TransConfigsJSON"] = self.transConfigsJSON!
        }
        if self.trigger != nil {
            map["Trigger"] = self.trigger!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Callback") {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileFormat") {
            self.fileFormat = dict["FileFormat"] as! String
        }
        if dict.keys.contains("Flv") {
            self.flv = dict["Flv"] as! String
        }
        if dict.keys.contains("HlsM3u8") {
            self.hlsM3u8 = dict["HlsM3u8"] as! String
        }
        if dict.keys.contains("HlsTs") {
            self.hlsTs = dict["HlsTs"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("JpgOnDemand") {
            self.jpgOnDemand = dict["JpgOnDemand"] as! String
        }
        if dict.keys.contains("JpgOverwrite") {
            self.jpgOverwrite = dict["JpgOverwrite"] as! String
        }
        if dict.keys.contains("JpgSequence") {
            self.jpgSequence = dict["JpgSequence"] as! String
        }
        if dict.keys.contains("Mp4") {
            self.mp4 = dict["Mp4"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucket") {
            self.ossBucket = dict["OssBucket"] as! String
        }
        if dict.keys.contains("OssEndpoint") {
            self.ossEndpoint = dict["OssEndpoint"] as! String
        }
        if dict.keys.contains("OssFilePrefix") {
            self.ossFilePrefix = dict["OssFilePrefix"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("Retention") {
            self.retention = dict["Retention"] as! Int64
        }
        if dict.keys.contains("TransConfigsJSON") {
            self.transConfigsJSON = dict["TransConfigsJSON"] as! String
        }
        if dict.keys.contains("Trigger") {
            self.trigger = dict["Trigger"] as! String
        }
    }
}

public class ModifyTemplateResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenVsServiceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenVsServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenVsServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OpenVsServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OperateRenderingDevicesRequest : Tea.TeaModel {
    public var instanceIds: String?

    public var operation: String?

    public var ownerId: Int64?

    public var podId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.podId != nil {
            map["PodId"] = self.podId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("Operation") {
            self.operation = dict["Operation"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PodId") {
            self.podId = dict["PodId"] as! String
        }
    }
}

public class OperateRenderingDevicesResponseBody : Tea.TeaModel {
    public var failedIds: [String]?

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
        if self.failedIds != nil {
            map["FailedIds"] = self.failedIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailedIds") {
            self.failedIds = dict["FailedIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OperateRenderingDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateRenderingDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OperateRenderingDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PrepareUploadRequest : Tea.TeaModel {
    public var bucketName: String?

    public var clientIp: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("ClientIp") {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class PrepareUploadResponseBody : Tea.TeaModel {
    public var bucketName: String?

    public var endpoint: String?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PrepareUploadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PrepareUploadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PrepareUploadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutBucketRequest : Tea.TeaModel {
    public var bucketAcl: String?

    public var bucketName: String?

    public var comment: String?

    public var dataRedundancyType: String?

    public var dispatcherType: String?

    public var endpoint: String?

    public var ownerId: Int64?

    public var resourceType: String?

    public var storageClass: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketAcl != nil {
            map["BucketAcl"] = self.bucketAcl!
        }
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.dataRedundancyType != nil {
            map["DataRedundancyType"] = self.dataRedundancyType!
        }
        if self.dispatcherType != nil {
            map["DispatcherType"] = self.dispatcherType!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.storageClass != nil {
            map["StorageClass"] = self.storageClass!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketAcl") {
            self.bucketAcl = dict["BucketAcl"] as! String
        }
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("DataRedundancyType") {
            self.dataRedundancyType = dict["DataRedundancyType"] as! String
        }
        if dict.keys.contains("DispatcherType") {
            self.dispatcherType = dict["DispatcherType"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StorageClass") {
            self.storageClass = dict["StorageClass"] as! String
        }
    }
}

public class PutBucketResponseBody : Tea.TeaModel {
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

public class PutBucketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutBucketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PutBucketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetRenderingDevicesRequest : Tea.TeaModel {
    public var imageId: String?

    public var instanceIds: String?

    public var ownerId: Int64?

    public var podId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.podId != nil {
            map["PodId"] = self.podId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PodId") {
            self.podId = dict["PodId"] as! String
        }
    }
}

public class ResetRenderingDevicesResponseBody : Tea.TeaModel {
    public var failedIds: [String]?

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
        if self.failedIds != nil {
            map["FailedIds"] = self.failedIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailedIds") {
            self.failedIds = dict["FailedIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResetRenderingDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetRenderingDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResetRenderingDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeVsStreamRequest : Tea.TeaModel {
    public var appName: String?

    public var controlStreamAction: String?

    public var domainName: String?

    public var liveStreamType: String?

    public var ownerId: Int64?

    public var streamName: String?

    public override init() {
        super.init()
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
        if self.controlStreamAction != nil {
            map["ControlStreamAction"] = self.controlStreamAction!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.liveStreamType != nil {
            map["LiveStreamType"] = self.liveStreamType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.streamName != nil {
            map["StreamName"] = self.streamName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("ControlStreamAction") {
            self.controlStreamAction = dict["ControlStreamAction"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("LiveStreamType") {
            self.liveStreamType = dict["LiveStreamType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StreamName") {
            self.streamName = dict["StreamName"] as! String
        }
    }
}

public class ResumeVsStreamResponseBody : Tea.TeaModel {
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

public class ResumeVsStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeVsStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResumeVsStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPresetRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public var presetId: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.presetId != nil {
            map["PresetId"] = self.presetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PresetId") {
            self.presetId = dict["PresetId"] as! String
        }
    }
}

public class SetPresetResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetPresetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPresetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetPresetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetVsDomainCertificateRequest : Tea.TeaModel {
    public var certName: String?

    public var certType: String?

    public var domainName: String?

    public var forceSet: String?

    public var ownerId: Int64?

    public var region: String?

    public var SSLPri: String?

    public var SSLProtocol: String?

    public var SSLPub: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.forceSet != nil {
            map["ForceSet"] = self.forceSet!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.SSLPri != nil {
            map["SSLPri"] = self.SSLPri!
        }
        if self.SSLProtocol != nil {
            map["SSLProtocol"] = self.SSLProtocol!
        }
        if self.SSLPub != nil {
            map["SSLPub"] = self.SSLPub!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertName") {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("CertType") {
            self.certType = dict["CertType"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("ForceSet") {
            self.forceSet = dict["ForceSet"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SSLPri") {
            self.SSLPri = dict["SSLPri"] as! String
        }
        if dict.keys.contains("SSLProtocol") {
            self.SSLProtocol = dict["SSLProtocol"] as! String
        }
        if dict.keys.contains("SSLPub") {
            self.SSLPub = dict["SSLPub"] as! String
        }
    }
}

public class SetVsDomainCertificateResponseBody : Tea.TeaModel {
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

public class SetVsDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetVsDomainCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetVsDomainCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetVsStreamsNotifyUrlConfigRequest : Tea.TeaModel {
    public var authKey: String?

    public var authType: String?

    public var domainName: String?

    public var notifyUrl: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.notifyUrl != nil {
            map["NotifyUrl"] = self.notifyUrl!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthKey") {
            self.authKey = dict["AuthKey"] as! String
        }
        if dict.keys.contains("AuthType") {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("NotifyUrl") {
            self.notifyUrl = dict["NotifyUrl"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class SetVsStreamsNotifyUrlConfigResponseBody : Tea.TeaModel {
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

public class SetVsStreamsNotifyUrlConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetVsStreamsNotifyUrlConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetVsStreamsNotifyUrlConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDeviceRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class StartDeviceResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartParentPlatformRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class StartParentPlatformResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartParentPlatformResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartParentPlatformResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartParentPlatformResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartRecordStreamRequest : Tea.TeaModel {
    public var app: String?

    public var id: String?

    public var name: String?

    public var ownerId: Int64?

    public var playDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playDomain != nil {
            map["PlayDomain"] = self.playDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.app = dict["App"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayDomain") {
            self.playDomain = dict["PlayDomain"] as! String
        }
    }
}

public class StartRecordStreamResponseBody : Tea.TeaModel {
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

public class StartRecordStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartRecordStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartRecordStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartStreamRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var id: String?

    public var ownerId: Int64?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class StartStreamResponseBody : Tea.TeaModel {
    public var id: String?

    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartTransferStreamRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public var transcode: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.transcode != nil {
            map["Transcode"] = self.transcode!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Transcode") {
            self.transcode = dict["Transcode"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class StartTransferStreamResponseBody : Tea.TeaModel {
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

public class StartTransferStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartTransferStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartTransferStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopAdjustRequest : Tea.TeaModel {
    public var focus: Bool?

    public var id: String?

    public var iris: Bool?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.focus != nil {
            map["Focus"] = self.focus!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.iris != nil {
            map["Iris"] = self.iris!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Focus") {
            self.focus = dict["Focus"] as! Bool
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Iris") {
            self.iris = dict["Iris"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class StopAdjustResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopAdjustResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAdjustResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopAdjustResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDeviceRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class StopDeviceResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopMoveRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public var pan: Bool?

    public var tilt: Bool?

    public var zoom: Bool?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pan != nil {
            map["Pan"] = self.pan!
        }
        if self.tilt != nil {
            map["Tilt"] = self.tilt!
        }
        if self.zoom != nil {
            map["Zoom"] = self.zoom!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Pan") {
            self.pan = dict["Pan"] as! Bool
        }
        if dict.keys.contains("Tilt") {
            self.tilt = dict["Tilt"] as! Bool
        }
        if dict.keys.contains("Zoom") {
            self.zoom = dict["Zoom"] as! Bool
        }
    }
}

public class StopMoveResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopMoveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopMoveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopMoveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopRecordStreamRequest : Tea.TeaModel {
    public var app: String?

    public var id: String?

    public var name: String?

    public var ownerId: Int64?

    public var playDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playDomain != nil {
            map["PlayDomain"] = self.playDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") {
            self.app = dict["App"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayDomain") {
            self.playDomain = dict["PlayDomain"] as! String
        }
    }
}

public class StopRecordStreamResponseBody : Tea.TeaModel {
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

public class StopRecordStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopRecordStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopRecordStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopStreamRequest : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var ownerId: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class StopStreamResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopTransferStreamRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public var transcode: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.transcode != nil {
            map["Transcode"] = self.transcode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Transcode") {
            self.transcode = dict["Transcode"] as! String
        }
    }
}

public class StopTransferStreamResponseBody : Tea.TeaModel {
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

public class StopTransferStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopTransferStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopTransferStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncCatalogsRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class SyncCatalogsResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SyncCatalogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncCatalogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SyncCatalogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindDirectoryRequest : Tea.TeaModel {
    public var deviceId: String?

    public var directoryId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class UnbindDirectoryResponseBody : Tea.TeaModel {
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

public class UnbindDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnbindDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindParentPlatformDeviceRequest : Tea.TeaModel {
    public var deviceId: String?

    public var ownerId: Int64?

    public var parentPlatformId: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.parentPlatformId != nil {
            map["ParentPlatformId"] = self.parentPlatformId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ParentPlatformId") {
            self.parentPlatformId = dict["ParentPlatformId"] as! String
        }
    }
}

public class UnbindParentPlatformDeviceResponseBody : Tea.TeaModel {
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

public class UnbindParentPlatformDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindParentPlatformDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnbindParentPlatformDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindPurchasedDeviceRequest : Tea.TeaModel {
    public var deviceId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class UnbindPurchasedDeviceResponseBody : Tea.TeaModel {
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

public class UnbindPurchasedDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindPurchasedDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnbindPurchasedDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindTemplateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceType: String?

    public var ownerId: Int64?

    public var templateId: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class UnbindTemplateResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var instanceType: String?

    public var requestId: String?

    public var templateId: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class UnbindTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnbindTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnlockDeviceRequest : Tea.TeaModel {
    public var id: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class UnlockDeviceResponseBody : Tea.TeaModel {
    public var id: String?

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
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnlockDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnlockDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBucketInfoRequest : Tea.TeaModel {
    public var bucketName: String?

    public var comment: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class UpdateBucketInfoResponseBody : Tea.TeaModel {
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

public class UpdateBucketInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBucketInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateBucketInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var description_: String?

    public var effectiveTime: String?

    public var internalPorts: String?

    public var maintainTime: String?

    public var name: String?

    public var ownerId: Int64?

    public var securityGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.effectiveTime != nil {
            map["EffectiveTime"] = self.effectiveTime!
        }
        if self.internalPorts != nil {
            map["InternalPorts"] = self.internalPorts!
        }
        if self.maintainTime != nil {
            map["MaintainTime"] = self.maintainTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EffectiveTime") {
            self.effectiveTime = dict["EffectiveTime"] as! String
        }
        if dict.keys.contains("InternalPorts") {
            self.internalPorts = dict["InternalPorts"] as! String
        }
        if dict.keys.contains("MaintainTime") {
            self.maintainTime = dict["MaintainTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
    }
}

public class UpdateClusterResponseBody : Tea.TeaModel {
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

public class UpdateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateVsPullStreamInfoConfigRequest : Tea.TeaModel {
    public var always: String?

    public var appName: String?

    public var domainName: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var sourceUrl: String?

    public var startTime: String?

    public var streamName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.always != nil {
            map["Always"] = self.always!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.streamName != nil {
            map["StreamName"] = self.streamName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Always") {
            self.always = dict["Always"] as! String
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SourceUrl") {
            self.sourceUrl = dict["SourceUrl"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StreamName") {
            self.streamName = dict["StreamName"] as! String
        }
    }
}

public class UpdateVsPullStreamInfoConfigResponseBody : Tea.TeaModel {
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

public class UpdateVsPullStreamInfoConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVsPullStreamInfoConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateVsPullStreamInfoConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeRenderingDevicesHostOSRequest : Tea.TeaModel {
    public var imageId: String?

    public var instanceIds: String?

    public var ownerId: Int64?

    public var romName: String?

    public var romPath: String?

    public var romVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.romName != nil {
            map["RomName"] = self.romName!
        }
        if self.romPath != nil {
            map["RomPath"] = self.romPath!
        }
        if self.romVersion != nil {
            map["RomVersion"] = self.romVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RomName") {
            self.romName = dict["RomName"] as! String
        }
        if dict.keys.contains("RomPath") {
            self.romPath = dict["RomPath"] as! String
        }
        if dict.keys.contains("RomVersion") {
            self.romVersion = dict["RomVersion"] as! String
        }
    }
}

public class UpgradeRenderingDevicesHostOSResponseBody : Tea.TeaModel {
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

public class UpgradeRenderingDevicesHostOSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeRenderingDevicesHostOSResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeRenderingDevicesHostOSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeRenderingDevicesImageRequest : Tea.TeaModel {
    public var imageId: String?

    public var instanceIds: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class UpgradeRenderingDevicesImageResponseBody : Tea.TeaModel {
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

public class UpgradeRenderingDevicesImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeRenderingDevicesImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeRenderingDevicesImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
