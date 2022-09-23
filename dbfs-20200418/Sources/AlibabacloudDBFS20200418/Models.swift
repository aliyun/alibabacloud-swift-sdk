import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddTagsBatchRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dbfsList: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dbfsList != nil {
            map["DbfsList"] = self.dbfsList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DbfsList") {
            self.dbfsList = dict["DbfsList"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class AddTagsBatchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class AddTagsBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTagsBatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddTagsBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachDbfsRequest : Tea.TeaModel {
    public var attachMode: String?

    public var attachPoint: String?

    public var ECSInstanceId: String?

    public var fsId: String?

    public var regionId: String?

    public var serverUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachMode != nil {
            map["AttachMode"] = self.attachMode!
        }
        if self.attachPoint != nil {
            map["AttachPoint"] = self.attachPoint!
        }
        if self.ECSInstanceId != nil {
            map["ECSInstanceId"] = self.ECSInstanceId!
        }
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serverUrl != nil {
            map["ServerUrl"] = self.serverUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttachMode") {
            self.attachMode = dict["AttachMode"] as! String
        }
        if dict.keys.contains("AttachPoint") {
            self.attachPoint = dict["AttachPoint"] as! String
        }
        if dict.keys.contains("ECSInstanceId") {
            self.ECSInstanceId = dict["ECSInstanceId"] as! String
        }
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServerUrl") {
            self.serverUrl = dict["ServerUrl"] as! String
        }
    }
}

public class AttachDbfsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class AttachDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AttachDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDbfsRequest : Tea.TeaModel {
    public var advancedFeatures: String?

    public var category: String?

    public var clientToken: String?

    public var deleteSnapshot: Bool?

    public var enableRaid: Bool?

    public var encryption: Bool?

    public var fsName: String?

    public var instanceType: String?

    public var KMSKeyId: String?

    public var performanceLevel: String?

    public var raidStripeUnitNumber: Int32?

    public var regionId: String?

    public var sizeG: Int32?

    public var snapshotId: String?

    public var usedScene: String?

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
        if self.advancedFeatures != nil {
            map["AdvancedFeatures"] = self.advancedFeatures!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deleteSnapshot != nil {
            map["DeleteSnapshot"] = self.deleteSnapshot!
        }
        if self.enableRaid != nil {
            map["EnableRaid"] = self.enableRaid!
        }
        if self.encryption != nil {
            map["Encryption"] = self.encryption!
        }
        if self.fsName != nil {
            map["FsName"] = self.fsName!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.KMSKeyId != nil {
            map["KMSKeyId"] = self.KMSKeyId!
        }
        if self.performanceLevel != nil {
            map["PerformanceLevel"] = self.performanceLevel!
        }
        if self.raidStripeUnitNumber != nil {
            map["RaidStripeUnitNumber"] = self.raidStripeUnitNumber!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sizeG != nil {
            map["SizeG"] = self.sizeG!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.usedScene != nil {
            map["UsedScene"] = self.usedScene!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdvancedFeatures") {
            self.advancedFeatures = dict["AdvancedFeatures"] as! String
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeleteSnapshot") {
            self.deleteSnapshot = dict["DeleteSnapshot"] as! Bool
        }
        if dict.keys.contains("EnableRaid") {
            self.enableRaid = dict["EnableRaid"] as! Bool
        }
        if dict.keys.contains("Encryption") {
            self.encryption = dict["Encryption"] as! Bool
        }
        if dict.keys.contains("FsName") {
            self.fsName = dict["FsName"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("KMSKeyId") {
            self.KMSKeyId = dict["KMSKeyId"] as! String
        }
        if dict.keys.contains("PerformanceLevel") {
            self.performanceLevel = dict["PerformanceLevel"] as! String
        }
        if dict.keys.contains("RaidStripeUnitNumber") {
            self.raidStripeUnitNumber = dict["RaidStripeUnitNumber"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SizeG") {
            self.sizeG = dict["SizeG"] as! Int32
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("UsedScene") {
            self.usedScene = dict["UsedScene"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateDbfsResponseBody : Tea.TeaModel {
    public var fsId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceLinkedRoleRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateServiceLinkedRoleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceLinkedRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceLinkedRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSnapshotRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var fsId: String?

    public var regionId: String?

    public var retentionDays: Int32?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.snapshotName != nil {
            map["SnapshotName"] = self.snapshotName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RetentionDays") {
            self.retentionDays = dict["RetentionDays"] as! Int32
        }
        if dict.keys.contains("SnapshotName") {
            self.snapshotName = dict["SnapshotName"] as! String
        }
    }
}

public class CreateSnapshotResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var snapshotId: String?

    public override init() {
        super.init()
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
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
    }
}

public class CreateSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSnapshotResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDbfsRequest : Tea.TeaModel {
    public var fsId: String?

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
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDbfsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSnapshotRequest : Tea.TeaModel {
    public var force: Bool?

    public var regionId: String?

    public var snapshotId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
    }
}

public class DeleteSnapshotResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSnapshotResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTagsBatchRequest : Tea.TeaModel {
    public var dbfsList: String?

    public var regionId: String?

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
        if self.dbfsList != nil {
            map["DbfsList"] = self.dbfsList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbfsList") {
            self.dbfsList = dict["DbfsList"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class DeleteTagsBatchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteTagsBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTagsBatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTagsBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDbfsSpecificationsRequest : Tea.TeaModel {
    public var category: String?

    public var ecsInstanceType: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.ecsInstanceType != nil {
            map["EcsInstanceType"] = self.ecsInstanceType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("EcsInstanceType") {
            self.ecsInstanceType = dict["EcsInstanceType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDbfsSpecificationsResponseBody : Tea.TeaModel {
    public var maxDbfsNumberPerEcs: [String: Any]?

    public var requestId: String?

    public var supportedEcsInstanceTypeFamily: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxDbfsNumberPerEcs != nil {
            map["MaxDbfsNumberPerEcs"] = self.maxDbfsNumberPerEcs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.supportedEcsInstanceTypeFamily != nil {
            map["SupportedEcsInstanceTypeFamily"] = self.supportedEcsInstanceTypeFamily!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxDbfsNumberPerEcs") {
            self.maxDbfsNumberPerEcs = dict["MaxDbfsNumberPerEcs"] as! [String: Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SupportedEcsInstanceTypeFamily") {
            self.supportedEcsInstanceTypeFamily = dict["SupportedEcsInstanceTypeFamily"] as! [String]
        }
    }
}

public class DescribeDbfsSpecificationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDbfsSpecificationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDbfsSpecificationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceTypesRequest : Tea.TeaModel {
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeInstanceTypesResponseBody : Tea.TeaModel {
    public class InstanceTypes : Tea.TeaModel {
        public var cpuCoreCount: Double?

        public var instanceTypeDescription: String?

        public var instanceTypeId: String?

        public var memorySize: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpuCoreCount != nil {
                map["CpuCoreCount"] = self.cpuCoreCount!
            }
            if self.instanceTypeDescription != nil {
                map["InstanceTypeDescription"] = self.instanceTypeDescription!
            }
            if self.instanceTypeId != nil {
                map["InstanceTypeId"] = self.instanceTypeId!
            }
            if self.memorySize != nil {
                map["MemorySize"] = self.memorySize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CpuCoreCount") {
                self.cpuCoreCount = dict["CpuCoreCount"] as! Double
            }
            if dict.keys.contains("InstanceTypeDescription") {
                self.instanceTypeDescription = dict["InstanceTypeDescription"] as! String
            }
            if dict.keys.contains("InstanceTypeId") {
                self.instanceTypeId = dict["InstanceTypeId"] as! String
            }
            if dict.keys.contains("MemorySize") {
                self.memorySize = dict["MemorySize"] as! Double
            }
        }
    }
    public var instanceTypes: [DescribeInstanceTypesResponseBody.InstanceTypes]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceTypes != nil {
            var tmp : [Any] = []
            for k in self.instanceTypes! {
                tmp.append(k.toMap())
            }
            map["InstanceTypes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceTypes") {
            self.instanceTypes = dict["InstanceTypes"] as! [DescribeInstanceTypesResponseBody.InstanceTypes]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceTypesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachDbfsRequest : Tea.TeaModel {
    public var ECSInstanceId: String?

    public var fsId: String?

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
        if self.ECSInstanceId != nil {
            map["ECSInstanceId"] = self.ECSInstanceId!
        }
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ECSInstanceId") {
            self.ECSInstanceId = dict["ECSInstanceId"] as! String
        }
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DetachDbfsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DetachDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetachDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDbfsRequest : Tea.TeaModel {
    public var fsId: String?

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
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetDbfsResponseBody : Tea.TeaModel {
    public class DBFSInfo : Tea.TeaModel {
        public class EbsList : Tea.TeaModel {
            public var ebsId: String?

            public var sizeG: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ebsId != nil {
                    map["EbsId"] = self.ebsId!
                }
                if self.sizeG != nil {
                    map["SizeG"] = self.sizeG!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EbsId") {
                    self.ebsId = dict["EbsId"] as! String
                }
                if dict.keys.contains("SizeG") {
                    self.sizeG = dict["SizeG"] as! Int32
                }
            }
        }
        public class EcsList : Tea.TeaModel {
            public var ecsId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ecsId != nil {
                    map["EcsId"] = self.ecsId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EcsId") {
                    self.ecsId = dict["EcsId"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var id: Int32?

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
                if self.id != nil {
                    map["Id"] = self.id!
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
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var attachNodeNumber: Int32?

        public var category: String?

        public var createdTime: String?

        public var DBFSClusterId: String?

        public var description_: String?

        public var ebsList: [GetDbfsResponseBody.DBFSInfo.EbsList]?

        public var ecsList: [GetDbfsResponseBody.DBFSInfo.EcsList]?

        public var enableRaid: Bool?

        public var encryption: Bool?

        public var fsId: String?

        public var fsName: String?

        public var instanceType: String?

        public var KMSKeyId: String?

        public var lastFailed: String?

        public var lastMountTime: String?

        public var lastUmountTime: String?

        public var payType: String?

        public var performanceLevel: String?

        public var raidStrip: Int32?

        public var regionId: String?

        public var sizeG: Int32?

        public var status: String?

        public var tags: [GetDbfsResponseBody.DBFSInfo.Tags]?

        public var usedScene: String?

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
            if self.attachNodeNumber != nil {
                map["AttachNodeNumber"] = self.attachNodeNumber!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.DBFSClusterId != nil {
                map["DBFSClusterId"] = self.DBFSClusterId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ebsList != nil {
                var tmp : [Any] = []
                for k in self.ebsList! {
                    tmp.append(k.toMap())
                }
                map["EbsList"] = tmp
            }
            if self.ecsList != nil {
                var tmp : [Any] = []
                for k in self.ecsList! {
                    tmp.append(k.toMap())
                }
                map["EcsList"] = tmp
            }
            if self.enableRaid != nil {
                map["EnableRaid"] = self.enableRaid!
            }
            if self.encryption != nil {
                map["Encryption"] = self.encryption!
            }
            if self.fsId != nil {
                map["FsId"] = self.fsId!
            }
            if self.fsName != nil {
                map["FsName"] = self.fsName!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.KMSKeyId != nil {
                map["KMSKeyId"] = self.KMSKeyId!
            }
            if self.lastFailed != nil {
                map["LastFailed"] = self.lastFailed!
            }
            if self.lastMountTime != nil {
                map["LastMountTime"] = self.lastMountTime!
            }
            if self.lastUmountTime != nil {
                map["LastUmountTime"] = self.lastUmountTime!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            if self.raidStrip != nil {
                map["RaidStrip"] = self.raidStrip!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sizeG != nil {
                map["SizeG"] = self.sizeG!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.usedScene != nil {
                map["UsedScene"] = self.usedScene!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttachNodeNumber") {
                self.attachNodeNumber = dict["AttachNodeNumber"] as! Int32
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("DBFSClusterId") {
                self.DBFSClusterId = dict["DBFSClusterId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EbsList") {
                self.ebsList = dict["EbsList"] as! [GetDbfsResponseBody.DBFSInfo.EbsList]
            }
            if dict.keys.contains("EcsList") {
                self.ecsList = dict["EcsList"] as! [GetDbfsResponseBody.DBFSInfo.EcsList]
            }
            if dict.keys.contains("EnableRaid") {
                self.enableRaid = dict["EnableRaid"] as! Bool
            }
            if dict.keys.contains("Encryption") {
                self.encryption = dict["Encryption"] as! Bool
            }
            if dict.keys.contains("FsId") {
                self.fsId = dict["FsId"] as! String
            }
            if dict.keys.contains("FsName") {
                self.fsName = dict["FsName"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("KMSKeyId") {
                self.KMSKeyId = dict["KMSKeyId"] as! String
            }
            if dict.keys.contains("LastFailed") {
                self.lastFailed = dict["LastFailed"] as! String
            }
            if dict.keys.contains("LastMountTime") {
                self.lastMountTime = dict["LastMountTime"] as! String
            }
            if dict.keys.contains("LastUmountTime") {
                self.lastUmountTime = dict["LastUmountTime"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("PerformanceLevel") {
                self.performanceLevel = dict["PerformanceLevel"] as! String
            }
            if dict.keys.contains("RaidStrip") {
                self.raidStrip = dict["RaidStrip"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SizeG") {
                self.sizeG = dict["SizeG"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [GetDbfsResponseBody.DBFSInfo.Tags]
            }
            if dict.keys.contains("UsedScene") {
                self.usedScene = dict["UsedScene"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var DBFSInfo: GetDbfsResponseBody.DBFSInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.DBFSInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBFSInfo != nil {
            map["DBFSInfo"] = self.DBFSInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBFSInfo") {
            var model = GetDbfsResponseBody.DBFSInfo()
            model.fromMap(dict["DBFSInfo"] as! [String: Any])
            self.DBFSInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceLinkedRoleRequest : Tea.TeaModel {
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetServiceLinkedRoleResponseBody : Tea.TeaModel {
    public var accountId: String?

    public var dbfsLinkedRole: Bool?

    public var regionId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.dbfsLinkedRole != nil {
            map["DbfsLinkedRole"] = self.dbfsLinkedRole!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("DbfsLinkedRole") {
            self.dbfsLinkedRole = dict["DbfsLinkedRole"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceLinkedRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceLinkedRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDbfsRequest : Tea.TeaModel {
    public var filterKey: String?

    public var filterValue: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var sortKey: String?

    public var sortType: String?

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
        if self.filterKey != nil {
            map["FilterKey"] = self.filterKey!
        }
        if self.filterValue != nil {
            map["FilterValue"] = self.filterValue!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortKey != nil {
            map["SortKey"] = self.sortKey!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilterKey") {
            self.filterKey = dict["FilterKey"] as! String
        }
        if dict.keys.contains("FilterValue") {
            self.filterValue = dict["FilterValue"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SortKey") {
            self.sortKey = dict["SortKey"] as! String
        }
        if dict.keys.contains("SortType") {
            self.sortType = dict["SortType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class ListDbfsResponseBody : Tea.TeaModel {
    public class DBFSInfo : Tea.TeaModel {
        public class EbsList : Tea.TeaModel {
            public var ebsId: String?

            public var sizeG: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ebsId != nil {
                    map["EbsId"] = self.ebsId!
                }
                if self.sizeG != nil {
                    map["SizeG"] = self.sizeG!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EbsId") {
                    self.ebsId = dict["EbsId"] as! String
                }
                if dict.keys.contains("SizeG") {
                    self.sizeG = dict["SizeG"] as! Int32
                }
            }
        }
        public class EcsList : Tea.TeaModel {
            public var ecsId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ecsId != nil {
                    map["EcsId"] = self.ecsId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EcsId") {
                    self.ecsId = dict["EcsId"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var id: Int64?

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
                if self.id != nil {
                    map["Id"] = self.id!
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
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var attachNodeNumber: Int32?

        public var category: String?

        public var createdTime: String?

        public var DBFSClusterId: String?

        public var ebsList: [ListDbfsResponseBody.DBFSInfo.EbsList]?

        public var ecsList: [ListDbfsResponseBody.DBFSInfo.EcsList]?

        public var enableRaid: Bool?

        public var encryption: Bool?

        public var fsId: String?

        public var fsName: String?

        public var instanceType: String?

        public var KMSKeyId: String?

        public var lastFailed: String?

        public var lastMountTime: String?

        public var lastUmountTime: String?

        public var payType: String?

        public var performanceLevel: String?

        public var raidStrip: Int32?

        public var regionId: String?

        public var sizeG: Int32?

        public var status: String?

        public var tags: [ListDbfsResponseBody.DBFSInfo.Tags]?

        public var usedScene: String?

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
            if self.attachNodeNumber != nil {
                map["AttachNodeNumber"] = self.attachNodeNumber!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.DBFSClusterId != nil {
                map["DBFSClusterId"] = self.DBFSClusterId!
            }
            if self.ebsList != nil {
                var tmp : [Any] = []
                for k in self.ebsList! {
                    tmp.append(k.toMap())
                }
                map["EbsList"] = tmp
            }
            if self.ecsList != nil {
                var tmp : [Any] = []
                for k in self.ecsList! {
                    tmp.append(k.toMap())
                }
                map["EcsList"] = tmp
            }
            if self.enableRaid != nil {
                map["EnableRaid"] = self.enableRaid!
            }
            if self.encryption != nil {
                map["Encryption"] = self.encryption!
            }
            if self.fsId != nil {
                map["FsId"] = self.fsId!
            }
            if self.fsName != nil {
                map["FsName"] = self.fsName!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.KMSKeyId != nil {
                map["KMSKeyId"] = self.KMSKeyId!
            }
            if self.lastFailed != nil {
                map["LastFailed"] = self.lastFailed!
            }
            if self.lastMountTime != nil {
                map["LastMountTime"] = self.lastMountTime!
            }
            if self.lastUmountTime != nil {
                map["LastUmountTime"] = self.lastUmountTime!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            if self.raidStrip != nil {
                map["RaidStrip"] = self.raidStrip!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sizeG != nil {
                map["SizeG"] = self.sizeG!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.usedScene != nil {
                map["UsedScene"] = self.usedScene!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttachNodeNumber") {
                self.attachNodeNumber = dict["AttachNodeNumber"] as! Int32
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("DBFSClusterId") {
                self.DBFSClusterId = dict["DBFSClusterId"] as! String
            }
            if dict.keys.contains("EbsList") {
                self.ebsList = dict["EbsList"] as! [ListDbfsResponseBody.DBFSInfo.EbsList]
            }
            if dict.keys.contains("EcsList") {
                self.ecsList = dict["EcsList"] as! [ListDbfsResponseBody.DBFSInfo.EcsList]
            }
            if dict.keys.contains("EnableRaid") {
                self.enableRaid = dict["EnableRaid"] as! Bool
            }
            if dict.keys.contains("Encryption") {
                self.encryption = dict["Encryption"] as! Bool
            }
            if dict.keys.contains("FsId") {
                self.fsId = dict["FsId"] as! String
            }
            if dict.keys.contains("FsName") {
                self.fsName = dict["FsName"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("KMSKeyId") {
                self.KMSKeyId = dict["KMSKeyId"] as! String
            }
            if dict.keys.contains("LastFailed") {
                self.lastFailed = dict["LastFailed"] as! String
            }
            if dict.keys.contains("LastMountTime") {
                self.lastMountTime = dict["LastMountTime"] as! String
            }
            if dict.keys.contains("LastUmountTime") {
                self.lastUmountTime = dict["LastUmountTime"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("PerformanceLevel") {
                self.performanceLevel = dict["PerformanceLevel"] as! String
            }
            if dict.keys.contains("RaidStrip") {
                self.raidStrip = dict["RaidStrip"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SizeG") {
                self.sizeG = dict["SizeG"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [ListDbfsResponseBody.DBFSInfo.Tags]
            }
            if dict.keys.contains("UsedScene") {
                self.usedScene = dict["UsedScene"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var DBFSInfo: [ListDbfsResponseBody.DBFSInfo]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBFSInfo != nil {
            var tmp : [Any] = []
            for k in self.DBFSInfo! {
                tmp.append(k.toMap())
            }
            map["DBFSInfo"] = tmp
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
        if dict.keys.contains("DBFSInfo") {
            self.DBFSInfo = dict["DBFSInfo"] as! [ListDbfsResponseBody.DBFSInfo]
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

public class ListDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDbfsAttachableEcsInstancesRequest : Tea.TeaModel {
    public var filterKey: String?

    public var filterValue: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.filterKey != nil {
            map["FilterKey"] = self.filterKey!
        }
        if self.filterValue != nil {
            map["FilterValue"] = self.filterValue!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilterKey") {
            self.filterKey = dict["FilterKey"] as! String
        }
        if dict.keys.contains("FilterValue") {
            self.filterValue = dict["FilterValue"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListDbfsAttachableEcsInstancesResponseBody : Tea.TeaModel {
    public class EcsLabelInfo : Tea.TeaModel {
        public var instanceTypeFamily: String?

        public var OSName: String?

        public var status: String?

        public var zoneId: String?

        public var label: String?

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
            if self.instanceTypeFamily != nil {
                map["InstanceTypeFamily"] = self.instanceTypeFamily!
            }
            if self.OSName != nil {
                map["OSName"] = self.OSName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            if self.label != nil {
                map["label"] = self.label!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceTypeFamily") {
                self.instanceTypeFamily = dict["InstanceTypeFamily"] as! String
            }
            if dict.keys.contains("OSName") {
                self.OSName = dict["OSName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
            if dict.keys.contains("label") {
                self.label = dict["label"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var ecsLabelInfo: [ListDbfsAttachableEcsInstancesResponseBody.EcsLabelInfo]?

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
        if self.ecsLabelInfo != nil {
            var tmp : [Any] = []
            for k in self.ecsLabelInfo! {
                tmp.append(k.toMap())
            }
            map["EcsLabelInfo"] = tmp
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
        if dict.keys.contains("EcsLabelInfo") {
            self.ecsLabelInfo = dict["EcsLabelInfo"] as! [ListDbfsAttachableEcsInstancesResponseBody.EcsLabelInfo]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListDbfsAttachableEcsInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDbfsAttachableEcsInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDbfsAttachableEcsInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDbfsAttachedEcsInstancesRequest : Tea.TeaModel {
    public var fsId: String?

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
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListDbfsAttachedEcsInstancesResponseBody : Tea.TeaModel {
    public class EcsLabelInfo : Tea.TeaModel {
        public var instanceTypeFamily: String?

        public var mountPoint: String?

        public var mountedTime: String?

        public var OSName: String?

        public var label: String?

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
            if self.instanceTypeFamily != nil {
                map["InstanceTypeFamily"] = self.instanceTypeFamily!
            }
            if self.mountPoint != nil {
                map["MountPoint"] = self.mountPoint!
            }
            if self.mountedTime != nil {
                map["MountedTime"] = self.mountedTime!
            }
            if self.OSName != nil {
                map["OSName"] = self.OSName!
            }
            if self.label != nil {
                map["label"] = self.label!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceTypeFamily") {
                self.instanceTypeFamily = dict["InstanceTypeFamily"] as! String
            }
            if dict.keys.contains("MountPoint") {
                self.mountPoint = dict["MountPoint"] as! String
            }
            if dict.keys.contains("MountedTime") {
                self.mountedTime = dict["MountedTime"] as! String
            }
            if dict.keys.contains("OSName") {
                self.OSName = dict["OSName"] as! String
            }
            if dict.keys.contains("label") {
                self.label = dict["label"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var ecsLabelInfo: [ListDbfsAttachedEcsInstancesResponseBody.EcsLabelInfo]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecsLabelInfo != nil {
            var tmp : [Any] = []
            for k in self.ecsLabelInfo! {
                tmp.append(k.toMap())
            }
            map["EcsLabelInfo"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EcsLabelInfo") {
            self.ecsLabelInfo = dict["EcsLabelInfo"] as! [ListDbfsAttachedEcsInstancesResponseBody.EcsLabelInfo]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDbfsAttachedEcsInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDbfsAttachedEcsInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDbfsAttachedEcsInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSnapshotRequest : Tea.TeaModel {
    public var filterKey: String?

    public var filterValue: String?

    public var fsId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var snapshotIds: String?

    public var snapshotName: String?

    public var snapshotType: String?

    public var sortKey: String?

    public var sortType: String?

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
        if self.filterKey != nil {
            map["FilterKey"] = self.filterKey!
        }
        if self.filterValue != nil {
            map["FilterValue"] = self.filterValue!
        }
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.snapshotIds != nil {
            map["SnapshotIds"] = self.snapshotIds!
        }
        if self.snapshotName != nil {
            map["SnapshotName"] = self.snapshotName!
        }
        if self.snapshotType != nil {
            map["SnapshotType"] = self.snapshotType!
        }
        if self.sortKey != nil {
            map["SortKey"] = self.sortKey!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilterKey") {
            self.filterKey = dict["FilterKey"] as! String
        }
        if dict.keys.contains("FilterValue") {
            self.filterValue = dict["FilterValue"] as! String
        }
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SnapshotIds") {
            self.snapshotIds = dict["SnapshotIds"] as! String
        }
        if dict.keys.contains("SnapshotName") {
            self.snapshotName = dict["SnapshotName"] as! String
        }
        if dict.keys.contains("SnapshotType") {
            self.snapshotType = dict["SnapshotType"] as! String
        }
        if dict.keys.contains("SortKey") {
            self.sortKey = dict["SortKey"] as! String
        }
        if dict.keys.contains("SortType") {
            self.sortType = dict["SortType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListSnapshotResponseBody : Tea.TeaModel {
    public class Snapshots : Tea.TeaModel {
        public var category: String?

        public var creationTime: String?

        public var description_: String?

        public var lastModifiedTime: String?

        public var progress: String?

        public var remainTime: Int32?

        public var retentionDays: Int32?

        public var snapshotId: String?

        public var snapshotName: String?

        public var snapshotType: String?

        public var sourceFsId: String?

        public var sourceFsSize: Int32?

        public var sourceFsStripeWidth: Int32?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.remainTime != nil {
                map["RemainTime"] = self.remainTime!
            }
            if self.retentionDays != nil {
                map["RetentionDays"] = self.retentionDays!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.snapshotName != nil {
                map["SnapshotName"] = self.snapshotName!
            }
            if self.snapshotType != nil {
                map["SnapshotType"] = self.snapshotType!
            }
            if self.sourceFsId != nil {
                map["SourceFsId"] = self.sourceFsId!
            }
            if self.sourceFsSize != nil {
                map["SourceFsSize"] = self.sourceFsSize!
            }
            if self.sourceFsStripeWidth != nil {
                map["SourceFsStripeWidth"] = self.sourceFsStripeWidth!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LastModifiedTime") {
                self.lastModifiedTime = dict["LastModifiedTime"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("RemainTime") {
                self.remainTime = dict["RemainTime"] as! Int32
            }
            if dict.keys.contains("RetentionDays") {
                self.retentionDays = dict["RetentionDays"] as! Int32
            }
            if dict.keys.contains("SnapshotId") {
                self.snapshotId = dict["SnapshotId"] as! String
            }
            if dict.keys.contains("SnapshotName") {
                self.snapshotName = dict["SnapshotName"] as! String
            }
            if dict.keys.contains("SnapshotType") {
                self.snapshotType = dict["SnapshotType"] as! String
            }
            if dict.keys.contains("SourceFsId") {
                self.sourceFsId = dict["SourceFsId"] as! String
            }
            if dict.keys.contains("SourceFsSize") {
                self.sourceFsSize = dict["SourceFsSize"] as! Int32
            }
            if dict.keys.contains("SourceFsStripeWidth") {
                self.sourceFsStripeWidth = dict["SourceFsStripeWidth"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var snapshots: [ListSnapshotResponseBody.Snapshots]?

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
            var tmp : [Any] = []
            for k in self.snapshots! {
                tmp.append(k.toMap())
            }
            map["Snapshots"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Snapshots") {
            self.snapshots = dict["Snapshots"] as! [ListSnapshotResponseBody.Snapshots]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSnapshotResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tagKeys: [String]?

    public override init() {
        super.init()
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
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagKeys") {
            self.tagKeys = dict["TagKeys"] as! [String]
        }
    }
}

public class ListTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagValuesRequest : Tea.TeaModel {
    public var regionId: String?

    public var tagKey: String?

    public override init() {
        super.init()
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
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! String
        }
    }
}

public class ListTagValuesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tagValues: [String]?

    public override init() {
        super.init()
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
        if self.tagValues != nil {
            map["TagValues"] = self.tagValues!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagValues") {
            self.tagValues = dict["TagValues"] as! [String]
        }
    }
}

public class ListTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagValuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagValuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenameDbfsRequest : Tea.TeaModel {
    public var fsId: String?

    public var fsName: String?

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
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.fsName != nil {
            map["FsName"] = self.fsName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("FsName") {
            self.fsName = dict["FsName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RenameDbfsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class RenameDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RenameDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResizeDbfsRequest : Tea.TeaModel {
    public var fsId: String?

    public var newSizeG: Int32?

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
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.newSizeG != nil {
            map["NewSizeG"] = self.newSizeG!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("NewSizeG") {
            self.newSizeG = dict["NewSizeG"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ResizeDbfsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ResizeDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResizeDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagDbfsRequest : Tea.TeaModel {
    public var dbfsId: String?

    public var regionId: String?

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
        if self.dbfsId != nil {
            map["DbfsId"] = self.dbfsId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbfsId") {
            self.dbfsId = dict["DbfsId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class TagDbfsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class TagDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDbfsRequest : Tea.TeaModel {
    public var advancedFeatures: String?

    public var fsId: String?

    public var instanceType: String?

    public var regionId: String?

    public var usedScene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advancedFeatures != nil {
            map["AdvancedFeatures"] = self.advancedFeatures!
        }
        if self.fsId != nil {
            map["FsId"] = self.fsId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.usedScene != nil {
            map["UsedScene"] = self.usedScene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdvancedFeatures") {
            self.advancedFeatures = dict["AdvancedFeatures"] as! String
        }
        if dict.keys.contains("FsId") {
            self.fsId = dict["FsId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UsedScene") {
            self.usedScene = dict["UsedScene"] as! String
        }
    }
}

public class UpdateDbfsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
